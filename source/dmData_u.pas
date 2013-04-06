unit dmData_u;

interface

uses
  SysUtils, Classes, DB, ADODB, uVar, SakMsg, SakSMTP, Dialogs, Windows, Variants,
  ck7GetData;


type
  TdmData = class(TDataModule)
    adcData: TADOConnection;
    adcComandARM: TADOConnection;
    SakSMTP1: TSakSMTP;
    SakMsg1: TSakMsg;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    ck2007: Tck7Data;
    function ConnectDB: Boolean;  
    procedure DisconnectDB;
    procedure GetIni;
    procedure PutIni;
    function Crypt(s: string): string;
    function DeCrypt(s: string): string;
    function SendMailSMTP(mail :recSMTPSendMail; filesatt:array of string; countatt:Integer): Boolean;
    function ParseStr(s: string): string;
    function GetComputerName: string;
    function GetUserName: string;
    function RoundCount(val: Real; cou: Byte): Real;
    function FileOfSize(fl: string): Longint;
    procedure PutLog(tbl: string; dt: TDateTime; id: Integer; val: Variant);                 
  end;

var
  dmData: TdmData;

implementation

uses IniFiles, dlgProcess_u, dlgInputSQLPas_u, uAdoUtils;

{$R *.dfm}

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
  DecimalSeparator := '.';
  ck2007 := Tck7Data.Create('Макет 80020');
  mServersCK[1].Pclass := ck2007;
  DisconnectDB;
  GetIni;
  ConnectDB;
  if bLoged and mServersAccess[1].Active then
    dmData.PutLog('', Date(), 0, 'connect');
end;

function TdmData.ConnectDB: Boolean;
var
  scon: string;
  i: Integer;
  adc: TADOConnection;
  bInputBox: Boolean;
begin
  Result:=false;
  try
    ShowProcessCancel(self,'Подключение к базам данных...');
    DisconnectDB;

    for i:=1 to COUNT_SERVERS_ACCESS do
      if mServersAccess[i].Active then
      try
        adc := TADOConnection(FindComponent( mServersAccess[i].NameComponents));
        adc.DefaultDatabase := '';
        {Jet OLEDB:System database="MDA";Jet OLEDB:Database Password="";}
        sCon := Format('Provider=MSDASQL.1;User ID=%s;Password="%s";'
          +'Persist Security Info=True;Mode=ReadWrite;'
          +'Extended Properties="DBQ=%s;'
          +'Driver={Driver do Microsoft Access (*.mdb)};MaxBufferSize=2048;'
          +'MaxScanRows=8;PageTimeout=5;SafeTransactions=0;Threads=3;'
          +'UID=admin;UserCommitSync=Yes;"'
          , [mServersAccess[i].User,mServersAccess[i].Password,mServersAccess[i].NameDB]);
        adc.ConnectionString := sCon;
        adc.LoginPrompt:=false;
        adc.Connected:=true;
      except
        on E : Exception do
        begin
          mServersAccess[i].Active:= false;
          MessageDlg(Format('Ошибка при подключении к базе данных %s :'#10#13' %s', [mServersAccess[i].Name,E.Message]),mtError,[mbOk],0);
        end;  
      end;

    for i:=1 to COUNT_SERVERS_CK do
      if mServersCK[i].Active then
      try
        mServersCK[i].Pclass.SQLServers.Clear();
        if mServersCK[i].WinAuth_1 then
          mServersCK[i].Pclass.SQLServers.Add(Tck7SQLServer.Create(mServersCK[i].Server_1))
        else
          mServersCK[i].Pclass.SQLServers.Add(Tck7SQLServer.Create(mServersCK[i].Server_1, mServersCK[i].Login_1, mServersCK[i].Pas_1));                  
        if mServersCK[i].WinAuth_2 then
          mServersCK[i].Pclass.SQLServers.Add(Tck7SQLServer.Create(mServersCK[i].Server_2))
        else
          mServersCK[i].Pclass.SQLServers.Add(Tck7SQLServer.Create(mServersCK[i].Server_2, mServersCK[i].Login_2, mServersCK[i].Pas_2));
        if mServersCK[i].WinAuth_3 then
          mServersCK[i].Pclass.SQLServers.Add(Tck7SQLServer.Create(mServersCK[i].Server_3))
        else
          mServersCK[i].Pclass.SQLServers.Add(Tck7SQLServer.Create(mServersCK[i].Server_3, mServersCK[i].Login_3, mServersCK[i].Pas_3));
        mServersCK[i].Pclass.TimeOut := mServersCK[i].TimeOut; 
        mServersCK[i].Active := mServersCK[i].Pclass.OpenConnection();
{
        if not mServersCK[i].Active then
        begin
          MessageDlg(Format('Не удалось подключиться к базе данных %s .', [mServersCK[i].Name]),mtError,[mbOk],0)
        end;
}
      except
        on E : Exception do
        begin
          mServersCK[i].Active:= false;
          MessageDlg(Format('Ошибка при подключении к базе данных %s :'#10#13' %s', [mServersCK[i].Name,E.Message]),mtError,[mbOk],0)
        end;
      end;

  finally
    HideProcessCancel;
  end;       
end;


procedure TdmData.DisconnectDB;
var
  i: Integer;
begin
  for i:=1 to COUNT_SERVERS_CK do
    mServersCK[i].Pclass.CloseConnection();
  for i:=1 to COUNT_SERVERS_ACCESS do
    TADOConnection(FindComponent( mServersAccess[i].NameComponents)).Connected := false;
end;

procedure TdmData.GetIni;
var
  i: Integer;
  s: string;
begin
  with TIniFile.Create(sPath + INI_FILE) do
  try
    if COUNT_SERVERS_ACCESS > 0 then
      for i:=1 to COUNT_SERVERS_ACCESS do
      begin
        mServersAccess[i].Active := ReadBool('DBA'+IntToStr(i),'Active',mServersAccess[i].Active);
        mServersAccess[i].Name := ReadString('DBA'+IntToStr(i), 'Name',mServersAccess[i].Name);
        mServersAccess[i].NameDB := ReadString('DBA'+IntToStr(i), 'Database', mServersAccess[i].NameDB);
        mServersAccess[i].User := ReadString('DBA'+IntToStr(i), 'User', mServersAccess[i].User);
        mServersAccess[i].Password := DeCrypt(ReadString('DBA'+IntToStr(i), 'Password', mServersAccess[i].Password));
      end;
{   нету SQLей
    if COUNT_SERVERS_SQL > 0 then
      for i:=1 to COUNT_SERVERS_SQL do
      begin
        mServersSQL[i].Active := ReadBool('DB'+IntToStr(i),'Active',mServersSQL[i].Active);
        mServersSQL[i].Name := ReadString('DB'+IntToStr(i), 'Name',mServersSQL[i].Name);
        mServersSQL[i].ServerIP := ReadString('DB'+IntToStr(i), 'Server',mServersSQL[i].ServerIP);
        mServersSQL[i].NameDB := ReadString('DB'+IntToStr(i), 'Database', mServersSQL[i].NameDB);
        mServersSQL[i].WinNTAuth := ReadBool('DB'+IntToStr(i),'WinNT',mServersSQL[i].WinNTAuth);
        if mServersSQL[i].WinNTAuth then
        begin
          DeleteKey('DB'+IntToStr(i), 'Login');
          DeleteKey('DB'+IntToStr(i), 'Password');
          mServersSQL[i].Login:='';
          mServersSQL[i].Password:='';
        end
        else
        begin
          mServersSQL[i].Login := ReadString('DB'+IntToStr(i), 'Login', mServersSQL[i].Login);
          if ValueExists('DB'+IntToStr(i), 'Password') then
            mServersSQL[i].Password := DeCrypt(ReadString('DB'+IntToStr(i), 'Password', ''))
        end;
        mServersSQL[i].SavePas:=ReadBool('DB'+IntToStr(i), 'SavePass',mServersSQL[i].SavePas);
      end;
}
    if COUNT_SERVERS_CK > 0 then
      for i:=1 to COUNT_SERVERS_CK do
      begin
        mServersCK[i].Active := ReadBool('DBCK'+IntToStr(i),'Active',mServersCK[i].Active);
        mServersCK[i].Name := ReadString('DBCK'+IntToStr(i), 'Name',mServersCK[i].Name);

        mServersCK[i].Server_1 := ReadString('DBCK'+IntToStr(i), 'Server_1',mServersCK[i].Server_1);
        mServersCK[i].WinAuth_1 := ReadBool('DBCK'+IntToStr(i),'WinAuth_1',mServersCK[i].WinAuth_1);        
        mServersCK[i].Login_1 := ReadString('DBCK'+IntToStr(i), 'Login_1',mServersCK[i].Login_1);
        mServersCK[i].Pas_1 := DeCrypt(ReadString('DBCK'+IntToStr(i), 'Pas_1',mServersCK[i].Pas_1));
        mServersCK[i].Server_2 := ReadString('DBCK'+IntToStr(i), 'Server_2',mServersCK[i].Server_2);
        mServersCK[i].WinAuth_2 := ReadBool('DBCK'+IntToStr(i),'WinAuth_2',mServersCK[i].WinAuth_2);
        mServersCK[i].Login_2 := ReadString('DBCK'+IntToStr(i), 'Login_2',mServersCK[i].Login_2);
        mServersCK[i].Pas_2 := DeCrypt(ReadString('DBCK'+IntToStr(i), 'Pas_2',mServersCK[i].Pas_2));
        mServersCK[i].Server_3 := ReadString('DBCK'+IntToStr(i), 'Server_3',mServersCK[i].Server_3);
        mServersCK[i].WinAuth_3 := ReadBool('DBCK'+IntToStr(i),'WinAuth_3',mServersCK[i].WinAuth_3);
        mServersCK[i].Login_3 := ReadString('DBCK'+IntToStr(i), 'Login_3',mServersCK[i].Login_3);
        mServersCK[i].Pas_3 := DeCrypt(ReadString('DBCK'+IntToStr(i), 'Pas_3',mServersCK[i].Pas_3));
      end;

    with  mAOEOsendmail do
    begin
      Active := ReadBool('AOEOsendmail','Active',Active);
      SMTPserver := ReadString('AOEOsendmail', 'SMTPserver',SMTPserver);
      SMTPport := ReadString('AOEOsendmail', 'SMTPport',SMTPport);
      mailbox := ReadString('AOEOsendmail', 'mailbox',mailbox);
      OtKogo := ReadString('AOEOsendmail', 'OtKogo',OtKogo);
      Subject := ReadString('AOEOsendmail', 'Subject',Subject);
      Komu := ReadString('AOEOsendmail', 'Komu',Komu);
      FileFormat := ReadString('AOEOsendmail', 'FileFormat',FileFormat);
      FileTmpDelete := ReadBool('AOEOsendmail','FileTmpDelete',FileTmpDelete);
    end;

    with  mDIRSendMail do
    begin
      Active := ReadBool('DIRsendmail','Active',Active);
      SMTPserver := ReadString('DIRsendmail', 'SMTPserver',SMTPserver);
      SMTPport := ReadString('DIRsendmail', 'SMTPport',SMTPport);
      mailbox := ReadString('DIRsendmail', 'mailbox',mailbox);
      OtKogo := ReadString('DIRsendmail', 'OtKogo',OtKogo);
      Subject := ReadString('DIRsendmail', 'Subject',Subject);
      Komu := ReadString('DIRsendmail', 'Komu',Komu);
      FileFormat := ReadString('DIRsendmail', 'FileFormat',FileFormat);
      FileTmpDelete := ReadBool('DIRsendmail','FileTmpDelete',FileTmpDelete);
    end;

    tiOIKTemper.id:=ReadInteger('TI','OIKTemperTI',tiOIKTemper.id);
    tiOIKTemper.cat:= NumToCat( ReadInteger('TI','OIKTemperCategory',CatToNum(tiOIKTemper.Cat)));
    tiOIKGenPlan.id:=ReadInteger('TI','OIKGenPlanTI',tiOIKGenPlan.id);
    tiOIKGenPlan.cat:= NumToCat( ReadInteger('TI','OIKGenPlanCategory',CatToNum(tiOIKGenPlan.cat)));
    tiOIKGenFact.id:=ReadInteger('TI','OIKGenFactTI',tiOIKGenFact.id);
    tiOIKGenFact.cat:= NumToCat(ReadInteger('TI','OIKGenFactCategory',CatToNum(tiOIKGenFact.cat)));
    tiOIKPotrPlan.id:=ReadInteger('TI','OIKPotrPlanTI',tiOIKPotrPlan.id);
    tiOIKPotrPlan.cat:= NumToCat(ReadInteger('TI','OIKPotrPlanCategory',CatToNum(tiOIKPotrPlan.cat)));
    tiOIKPotrFact.id:=ReadInteger('TI','OIKPotrFactTI',tiOIKPotrFact.id);
    tiOIKPotrFact.cat:= NumToCat(ReadInteger('TI','OIKPotrFactCategory',CatToNum(tiOIKPotrFact.cat)));
    tiOIKJobPowerPlan.id:=ReadInteger('TI','OIKJobPowerPlanTI',tiOIKJobPowerPlan.id);
    tiOIKJobPowerPlan.cat:= NumToCat(ReadInteger('TI','OIKJobPowerPlanCategory',CatToNum(tiOIKJobPowerPlan.cat)));
    tiOIKJobPowerFact.id:=ReadInteger('TI','OIKJobPowerFactTI',tiOIKJobPowerFact.id);
    tiOIKJobPowerFact.cat:= NumToCat(ReadInteger('TI','OIKJobPowerFactCategory',CatToNum(tiOIKJobPowerFact.cat)));
    tiOIKPSSaransk.id:=ReadInteger('TI','OIKPSSaranskTI',tiOIKPSSaransk.id);
    tiOIKPSSaransk.cat:= NumToCat(ReadInteger('TI','OIKPSSaranskCategory',CatToNum(tiOIKPSSaransk.cat)));
    tiOIKPSRuzaevka.id:=ReadInteger('TI','OIKPSRuzaevkaTI',tiOIKPSRuzaevka.id);
    tiOIKPSRuzaevka.cat:= NumToCat(ReadInteger('TI','OIKPSRuzaevkaCategory',CatToNum(tiOIKPSRuzaevka.cat)));
    tiOIKPSMoksha.id:=ReadInteger('TI','OIKPSMokshaTI',tiOIKPSMoksha.id);
    tiOIKPSMoksha.cat:= NumToCat(ReadInteger('TI','OIKPSMokshaCategory',CatToNum(tiOIKPSMoksha.cat)));
    tiOIKPSKomsomolsk.id:=ReadInteger('TI','OIKPSKomsomolskTI',tiOIKPSKomsomolsk.id);
    tiOIKPSKomsomolsk.cat:= NumToCat(ReadInteger('TI','OIKPSKomsomolskCategory',CatToNum(tiOIKPSKomsomolsk.cat)));
    tiOIKPSTEC.id:=ReadInteger('TI','OIKPSTEC2TI',tiOIKPSTEC.id);
    tiOIKPSTEC.cat:= NumToCat(ReadInteger('TI','OIKPSTEC2TICategory',CatToNum(tiOIKPSTEC.cat)));
    tiOIKGenTec2PPBR.id:=ReadInteger('TI','OIKppbrTEC2TI',tiOIKGenTec2PPBR.id);
    tiOIKGenTec2PPBR.cat:= NumToCat(ReadInteger('TI','OIKppbrTEC2Category',CatToNum(tiOIKGenTec2PPBR.cat)));
    tiOIKGenTecGTPPBR.id:=ReadInteger('TI','OIKppbrGTTECTI',tiOIKGenTecGTPPBR.id);
    tiOIKGenTecGTPPBR.cat:= NumToCat(ReadInteger('TI','OIKppbrGTTECCategory',CatToNum(tiOIKGenTecGTPPBR.cat))); 
    tiOIKGenTec4PPBR.id:=ReadInteger('TI','OIKppbrTEC4TI',tiOIKGenTec4PPBR.id);
    tiOIKGenTec4PPBR.cat:= NumToCat(ReadInteger('TI','OIKppbrTEC4Category',CatToNum(tiOIKGenTec4PPBR.cat)));
    tiOIKGenTecALLPBR.id:=ReadInteger('TI','OIKppbrALLTECTI',tiOIKGenTecALLPBR.id);
    tiOIKGenTecALLPBR.cat:= NumToCat(ReadInteger('TI','OIKppbrALLTECCategory',CatToNum(tiOIKGenTecALLPBR.cat)));
    tiOIKPotrPPBR.id:=ReadInteger('TI','OIKppbrPotrTI',tiOIKPotrPPBR.id);
    tiOIKPotrPPBR.cat:= NumToCat(ReadInteger('TI','OIKppbrPotrCategory',CatToNum(tiOIKPotrPPBR.cat)));
    tiOIKSaldoPPBR.id:=ReadInteger('TI','OIKppbrSaldoTI',tiOIKSaldoPPBR.id);
    tiOIKSaldoPPBR.cat:= NumToCat(ReadInteger('TI','OIKppbrSaldoCategory',CatToNum(tiOIKSaldoPPBR.cat)));
    tiOIKGenTecMCPPBR.id := ReadInteger('TI','OIKppbrTecMCTI',tiOIKGenTecMCPPBR.id);
    tiOIKGenTecMCPPBR.cat := NumToCat(ReadInteger('TI','OIKppbrTecMCCategory',CatToNum(tiOIKGenTecMCPPBR.cat)));
  finally
    Free;
  end;
end;

procedure TdmData.PutIni;
var
  i: Integer;
begin
  with TIniFile.Create(sPath + INI_FILE) do
  try
    if COUNT_SERVERS_ACCESS > 0 then
      for i:=1 to COUNT_SERVERS_ACCESS do
      begin
        WriteBool('DBA'+IntToStr(i),'Active',mServersAccess[i].Active);
        WriteString('DBA'+IntToStr(i), 'Name', mServersAccess[i].Name);
        WriteString('DBA'+IntToStr(i), 'Database', mServersAccess[i].NameDB);
        WriteString('DBA'+IntToStr(i), 'User', mServersAccess[i].User);
        WriteString('DBA'+IntToStr(i), 'Password', Crypt(mServersAccess[i].Password));
      end;
{   нету SQLей
    if COUNT_SERVERS_SQL > 0 then
      for i:=1 to COUNT_SERVERS_SQL do
      begin
        WriteBool('DB'+IntToStr(i),'Active',mServersSQL[i].Active);
        WriteString('DB'+IntToStr(i), 'Name', mServersSQL[i].Name);
        WriteString('DB'+IntToStr(i), 'Server', mServersSQL[i].ServerIP);
        WriteString('DB'+IntToStr(i), 'Database', mServersSQL[i].NameDB);
        WriteBool('DB'+IntToStr(i),'WinNT',mServersSQL[i].WinNTAuth);
        if mServersSQL[i].WinNTAuth then
        begin
          DeleteKey('DB'+IntToStr(i), 'Login');
          DeleteKey('DB'+IntToStr(i), 'Password');
          mServersSQL[i].Login:='';
          mServersSQL[i].Password:='';
        end
        else
        begin
          WriteString('DB'+IntToStr(i), 'Login', mServersSQL[i].Login);
          WriteBool('DB'+IntToStr(i), 'SavePass',mServersSQL[i].SavePas);
          if mServersSQL[i].SavePas then
          begin
            WriteString('DB'+IntToStr(i), 'Password', Crypt(mServersSQL[i].Password));
          end
          else
          begin
            DeleteKey('DB'+IntToStr(i), 'Password');
            mServersSQL[i].Password:='';
          end;
        end;
      end;
}
    if COUNT_SERVERS_CK > 0 then      
      for i:=1 to COUNT_SERVERS_CK do
      begin
        WriteBool('DBCK'+IntToStr(i),'Active',mServersCK[i].Active);
        WriteString('DBCK'+IntToStr(i), 'Name', mServersCK[i].Name);
        WriteString('DBCK'+IntToStr(i), 'Server_1', mServersCK[i].Server_1);
        WriteBool('DBCK'+IntToStr(i),'WinAuth_1',mServersCK[i].WinAuth_1);
        WriteString('DBCK'+IntToStr(i), 'Login_1', mServersCK[i].Login_1);
        WriteString('DBCK'+IntToStr(i), 'Pas_1', Crypt(mServersCK[i].Pas_1));
        WriteString('DBCK'+IntToStr(i), 'Server_2', mServersCK[i].Server_2);
        WriteBool('DBCK'+IntToStr(i),'WinAuth_2',mServersCK[i].WinAuth_2);
        WriteString('DBCK'+IntToStr(i), 'Login_2', mServersCK[i].Login_2);
        WriteString('DBCK'+IntToStr(i), 'Pas_2', Crypt(mServersCK[i].Pas_2));
        WriteString('DBCK'+IntToStr(i), 'Server_3', mServersCK[i].Server_3);
        WriteBool('DBCK'+IntToStr(i),'WinAuth_3',mServersCK[i].WinAuth_3);
        WriteString('DBCK'+IntToStr(i), 'Login_3', mServersCK[i].Login_3);
        WriteString('DBCK'+IntToStr(i), 'Pas_3', Crypt(mServersCK[i].Pas_3));
      end;

    with  mAOEOsendmail do
    begin
      WriteBool('AOEOsendmail', 'Active',Active);
      WriteString('AOEOsendmail', 'SMTPserver', SMTPserver);
      WriteString('AOEOsendmail', 'SMTPport', SMTPport);
      WriteString('AOEOsendmail', 'mailbox', mailbox);
      WriteString('AOEOsendmail', 'OtKogo', OtKogo);
      WriteString('AOEOsendmail', 'Subject', Subject);
      WriteString('AOEOsendmail', 'Komu', Komu);
      WriteString('AOEOsendmail', 'FileFormat',FileFormat);
      WriteBool('AOEOsendmail', 'FileTmpDelete',FileTmpDelete);
    end;

    with  mDIRsendmail do
    begin
      WriteBool('DIRsendmail', 'Active',Active);
      WriteString('DIRsendmail', 'SMTPserver', SMTPserver);
      WriteString('DIRsendmail', 'SMTPport', SMTPport);
      WriteString('DIRsendmail', 'mailbox', mailbox);
      WriteString('DIRsendmail', 'OtKogo', OtKogo);
      WriteString('DIRsendmail', 'Subject', Subject);
      WriteString('DIRsendmail', 'Komu', Komu);
      WriteString('DIRsendmail', 'FileFormat',FileFormat);
      WriteBool('DIRsendmail', 'FileTmpDelete',FileTmpDelete);
    end;

    WriteInteger('TI', 'OIKTemperTI',Integer(tiOIKTemper.id));
    WriteInteger('TI', 'OIKTemperCategory',CatToNum(tiOIKTemper.cat));
    WriteInteger('TI', 'OIKGenPlanTI',Integer(tiOIKGenPlan.id));
    WriteInteger('TI', 'OIKGenPlanCategory',CatToNum(tiOIKGenPlan.cat));
    WriteInteger('TI', 'OIKGenFactTI',Integer(tiOIKGenFact.id));
    WriteInteger('TI', 'OIKGenFactCategory',CatToNum(tiOIKGenFact.cat));
    WriteInteger('TI', 'OIKPotrPlanTI',Integer(tiOIKPotrPlan.id));
    WriteInteger('TI', 'OIKPotrPlanCategory',CatToNum(tiOIKPotrPlan.cat));
    WriteInteger('TI', 'OIKPotrFactTI',Integer(tiOIKPotrFact.id));
    WriteInteger('TI', 'OIKPotrFactCategory',CatToNum(tiOIKPotrFact.cat));
    WriteInteger('TI', 'OIKJobPowerPlanTI',Integer(tiOIKJobPowerPlan.id));
    WriteInteger('TI', 'OIKJobPowerPlanCategory',CatToNum(tiOIKJobPowerPlan.cat));
    WriteInteger('TI', 'OIKJobPowerFactTI',Integer(tiOIKJobPowerFact.id));
    WriteInteger('TI', 'OIKJobPowerFactCategory',CatToNum(tiOIKJobPowerFact.cat));
    WriteInteger('TI', 'OIKPSSaranskTI',Integer(tiOIKPSSaransk.id));
    WriteInteger('TI', 'OIKPSSaranskCategory',CatToNum(tiOIKPSSaransk.cat));
    WriteInteger('TI', 'OIKPSRuzaevkaTI',Integer(tiOIKPSRuzaevka.id));
    WriteInteger('TI', 'OIKPSRuzaevkaCategory',CatToNum(tiOIKPSRuzaevka.cat));
    WriteInteger('TI', 'OIKPSMokshaTI',Integer(tiOIKPSMoksha.id));
    WriteInteger('TI', 'OIKPSMokshaCategory',CatToNum(tiOIKPSMoksha.cat));
    WriteInteger('TI', 'OIKPSKomsomolskTI',Integer(tiOIKPSKomsomolsk.id));
    WriteInteger('TI', 'OIKPSKomsomolskCategory',CatToNum(tiOIKPSKomsomolsk.cat));
    WriteInteger('TI', 'OIKPSTEC2TI',Integer(tiOIKPSTEC.id));
    WriteInteger('TI', 'OIKPSTEC2TICategory',CatToNum(tiOIKPSTEC.cat));

    WriteInteger('TI', 'OIKppbrTEC2TI',Integer(tiOIKGenTec2PPBR.id));
    WriteInteger('TI', 'OIKppbrTEC2Category',CatToNum(tiOIKGenTec2PPBR.cat));
    WriteInteger('TI', 'OIKppbrGTTECTI',Integer(tiOIKGenTecGTPPBR.id));
    WriteInteger('TI', 'OIKppbrGTTECCategory',CatToNum(tiOIKGenTecGTPPBR.cat));
    WriteInteger('TI', 'OIKppbrTEC4TI',Integer(tiOIKGenTec4PPBR.id));
    WriteInteger('TI', 'OIKppbrTEC4Category',CatToNum(tiOIKGenTec4PPBR.cat));
    WriteInteger('TI', 'OIKppbrALLTECTI',Integer(tiOIKGenTecALLPBR.id));
    WriteInteger('TI', 'OIKppbrALLTECCategory',CatToNum(tiOIKGenTecALLPBR.cat));
    WriteInteger('TI', 'OIKppbrPotrTI',Integer(tiOIKPotrPPBR.id));
    WriteInteger('TI', 'OIKppbrPotrCategory',CatToNum(tiOIKPotrPPBR.cat));
    WriteInteger('TI', 'OIKppbrSaldoTI',Integer(tiOIKSaldoPPBR.id));
    WriteInteger('TI', 'OIKppbrSaldoCategory',CatToNum(tiOIKSaldoPPBR.cat));
    WriteInteger('TI', 'OIKppbrTecMCTI',Integer(tiOIKGenTecMCPPBR.id));
    WriteInteger('TI', 'OIKppbrTecMCCategory',CatToNum(tiOIKGenTecMCPPBR.cat));

  finally
    Free;
  end;
end;

function TdmData.Crypt(s: string): string;
var
  i: Integer;
  news: string;
begin
  Randomize;
  news:='';
  for i:=1 to Length(s) do
    news:=news+Chr(Ord(s[i]) xor Ord(CRYPT_KEY)) + Chr(Random(50)+150);
  Result:=news;
end;

function TdmData.DeCrypt(s: string): string;
var
  i: Integer;
  news: string;
begin
  news:='';
  for i:=1 to Length(s) do
    if odd(i) then
      news:=news+Chr(Ord(s[i]) xor Ord(CRYPT_KEY));
  Result:=news;
end;

function TdmData.GetComputerName: string;
var
  buffer: array[0..255] of Char;
  Size: Cardinal;
begin
  Size := 256;
  try
    if Windows.GetComputerName(@buffer, Size) then
      Result := StrPas(buffer)
    else
      Result := '';
  except    
      Result := '';
  end;
end;

function TdmData.GetUserName: string;
var
  buffer: array[0..255] of Char;
  Size: Cardinal;
begin
  Size := 256;
  try
    if Windows.GetUserName(@buffer, Size) then
      Result := StrPas(buffer)
    else
      Result := '';
   except
      Result := '';
   end;
end;

function TdmData.ParseStr(s: string): string;
begin
  Result:=s;
  Result:=StringReplace(Result,'<%date%>',FormatDateTime('dd.mm.yyyy',Date()),[rfReplaceAll, rfIgnoreCase]);
  Result:=StringReplace(Result,'<%time%>',FormatDateTime('hh:nn',Now()),[rfReplaceAll, rfIgnoreCase]);
  Result:=StringReplace(Result,'<%user%>',GetUserName,[rfReplaceAll, rfIgnoreCase]);
  Result:=StringReplace(Result,'<%computer%>',GetComputerName,[rfReplaceAll, rfIgnoreCase]);
end;

function  TdmData.SendMailSMTP(mail :recSMTPSendMail; filesatt: array of string; countatt:Integer): Boolean;
var
  i: Integer;
begin
  try
    try
      Result:=false;
      SakSMTP1.host := mail.SMTPserver;
      SakSMTP1.port := mail.SMTPport;

      SakMsg1.CharSet := 'windows-1251';
      SakMsg1.TextEncoding := te8Bit; 
      SakMsg1.From := mail.mailbox;
      SakMsg1.UserName := ParseStr(mail.OtKogo);
      SakMsg1.Subject := ParseStr(mail.Subject);
      SakMsg1.SendTo := mail.Komu;

      SakMsg1.Text.Clear;
      SakMsg1.Text.Add('Отчет вложен в письмо в виде графических файлов формата jpg.');
      SakMsg1.Text.Add('Количество файлов(страниц отчета): '+IntToStr(countatt));

      SakMsg1.Text.Add(' ');
      SakMsg1.Text.Add('Если файлы не читаются свяжитесь с диспетчером (отправителем) и попросите повторить отправку.');
{
      SakMsg1.Text.Add(' ');
      SakMsg1.Text.Add('------------------------------------------------------------');
      SakMsg1.Text.Add('Данное письмо сгенерировано программой.');
}
      SakMsg1.AttachedFiles.clear;
      for i:=1 to countatt do
        if FileExists(filesatt[i-1]) then
          SakMsg1.AttachedFiles.Add(filesatt[i-1]);
          
      SakSMTP1.Connect;
      if not SakSMTP1.SMTPError then
      begin
        SakSMTP1.SendTheMessage(SakMsg1);
        SakSMTP1.Disconnect;
      end;

      SakMsg1.Free;
      SakMsg1 := TSakMsg.Create(self);
     
      Result:=true;      
    except
      Result:=false;
    end;
  finally

  end;

end;

function TdmData.RoundCount(val: Real; cou: Byte): Real;
begin
  Result := StrToFloatDef( Format('%0.'+IntToStr(cou)+'f', [StrToFloatDef(FloatToStr(val), 0)]) ,val);
end;

function TdmData.FileOfSize(fl: string): Longint;
var
  f: file of Byte;
begin
  if FileExists(fl) then
  begin
    AssignFile(f, fl);
    Reset(f);
    try
      Result := FileSize(f);
    finally
      CloseFile(f);
    end;
  end
  else
    Result:=0;
end;

procedure TdmData.PutLog(tbl: string; dt: TDateTime; id: Integer; val: Variant);
begin
  ExecQuerySimple(dmData.adcData,Format('insert into eObject (tablo,comp,user,datefield,idfield,comment) values (''%s'',''%s'',''%s'',%s,%s,''%s'')',[tbl,dmData.GetUserName,dmData.GetComputerName,DateToAccssSQLStr(dt),IntToStr(id),VarToStrDef(val,'') ]));
end;

procedure TdmData.DataModuleDestroy(Sender: TObject);
begin
  ck2007.Free;
  if bLoged and mServersAccess[1].Active then
    dmData.PutLog('',Date(),0,'exit');
end;

initialization
  sPath := ExtractFilePath(ParamStr(0));
  sTempDir := sPath + sTempDir + '\';
  sDirReports := sPath + sDirReports + '\';
  mServersAccess[1].NameDB := sPath + mServersAccess[1].NameDB;
  sRepFile := sDirReports + sRepFile;
  sRepFileETO := sDirReports + sRepFileETO;
  sRepFileForm := sDirReports + sRepFileForm;
end.
