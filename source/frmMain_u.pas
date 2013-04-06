unit frmMain_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TBXStatusBars, TB2Dock, TBX, TBXMDI, ImgList, TB2Item,
  TBXSwitcher, TB2Toolbar, ActnList, TBXDkPanels, ExtCtrls, dxNavBar,
  dxNavBarCollns, dxNavBarBase, cxHint, FR_Class, DateUtils, ADODB;

type
  TfrmMain = class(TForm)
    sbStatus: TTBXStatusBar;
    TBXDock1: TTBXDock;
    TBXDock2: TTBXDock;
    TBXDock3: TTBXDock;
    TBXDock4: TTBXDock;
    TBXSwitcher1: TTBXSwitcher;
    ilMenu: TTBImageList;
    TBXMDIHandler1: TTBXMDIHandler;
    tbxMenu: TTBXToolbar;
    alMain: TActionList;
    TBXDockablePanel1: TTBXDockablePanel;
    nbMain: TdxNavBar;
    nbMainGroup1: TdxNavBarGroup;
    nbMainGroup2: TdxNavBarGroup;
    nbMainGroup3: TdxNavBarGroup;
    nbMainItem1: TdxNavBarItem;
    nbMainItem2: TdxNavBarItem;
    nbMainItem3: TdxNavBarItem;
    nbMainItem4: TdxNavBarItem;
    nbMainItem5: TdxNavBarItem;
    nbMainItem10: TdxNavBarItem;
    nbMainItem11: TdxNavBarItem;
    nbMainItem20: TdxNavBarItem;
    nbMainItem21: TdxNavBarItem;
    ilLarge: TTBImageList;
    aEnergo: TAction;
    aJobPower: TAction;
    aTeplo: TAction;
    aGaz: TAction;
    cxHintStyleController1: TcxHintStyleController;
    aMazut: TAction;
    aAOTO: TAction;
    aAOEO: TAction;
    nbMainItem6: TdxNavBarItem;
    aTEC2: TAction;
    aRep: TAction;
    aOptions: TAction;
    TBXSubmenuItem1: TTBXSubmenuItem;
    TBXItem2: TTBXItem;
    aAbout: TAction;
    TBXSubmenuItem2: TTBXSubmenuItem;
    TBXItem1: TTBXItem;
    aExit: TAction;
    TBXSubmenuItem3: TTBXSubmenuItem;
    TBXItem7: TTBXItem;
    TBXSubmenuItem4: TTBXSubmenuItem;
    TBXItem6: TTBXItem;
    TBXSubmenuItem5: TTBXSubmenuItem;
    TBXItem3: TTBXItem;
    TBXItem8: TTBXItem;
    TBXItem9: TTBXItem;
    TBXItem10: TTBXItem;
    TBXItem11: TTBXItem;
    TBXItem12: TTBXItem;
    TBXSubmenuItem6: TTBXSubmenuItem;
    TBXItem14: TTBXItem;
    TBXItem15: TTBXItem;
    TBXSubmenuItem7: TTBXSubmenuItem;
    aCtrlU: TAction;
    nbMainItem7: TdxNavBarItem;
    TBXSubmenuItem8: TTBXSubmenuItem;
    aSprZach: TAction;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    aSprAotoOborud: TAction;
    TBXItem13: TTBXItem;
    aSprAoeoOborud: TAction;
    TBXItem16: TTBXItem;
    aSprPodpis: TAction;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem17: TTBXItem;
    aRepETO: TAction;
    TBXItem18: TTBXItem;
    nbMainItem8: TdxNavBarItem;
    nbMainItem9: TdxNavBarItem;
    aRepForm: TAction;
    TBXItem19: TTBXItem;
    aAO6_10: TAction;
    nbMainItem12: TdxNavBarItem;
    TBXItem20: TTBXItem;
    aTEC2izm: TAction;
    nbMainItem13: TdxNavBarItem;
    TBXItem21: TTBXItem;
    aSepakOborud: TAction;
    TBXItem22: TTBXItem;
    nbMainItem14: TdxNavBarItem;
    aOtkl110: TAction;
    TBXItem23: TTBXItem;
    nbMainItem15: TdxNavBarItem;
    aTEC_GT: TAction;
    TBXItem24: TTBXItem;
    nbMainItem16: TdxNavBarItem;
    aNarushPorud: TAction;
    TBXItem25: TTBXItem;
    nbMainItem17: TdxNavBarItem;
    aTEC_MC: TAction;
    nbMainItem18: TdxNavBarItem;
    aTEC_4: TAction;
    nbMainItem19: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure aExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    function ShowSimpleForm(AClassName: string): TForm;
    procedure RepSvodData;
    procedure RepETO;
    procedure UpdateStatusBar;
    procedure RepForm; 
  end;

  TfrmClass = class of TForm;
    
var
  frmMain: TfrmMain;

implementation

uses uVar, frmSimple_u, dlgRep_u, dmReports_u, uAdoUtils, dmData_u, DB,
  dlgOptions_u, dlgProcess_u, dlgAbout_u, Math, dlgRepETO_u, dlgRepForm_u,
  frmTEC2izm_u, ck7GetData, frmPakOborud_u;

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  DecimalSeparator := ',';
  frmMain.Caption := NAME_PROGRAM + ' версия '+VERSION_PROGRAM;
  Application.Title :=  NAME_PROGRAM_SMALL;
  TBXSetTheme('Office11Adaptive');
  if not DirectoryExists(sTempDir) then
    if not CreateDir(sTempDir) then
      MessageDlg('Ошибка при создании временной директории.',mtError,[mbOk],0);
end;

function TfrmMain.ShowSimpleForm(AClassName: string): TForm;
var
  F: TFormClass;
  i: Integer;
  Form: TForm;                      
begin
  F := TFormClass(FindClass(AClassName));
  Form := nil;
  for i := 0 to MDIChildCount - 1 do
    if MDIChildren[i] is F then begin
      Form := MDIChildren[i];
      Break;
    end;
  if Assigned(Form) then
  begin
		Form.Show;
		if Form.WindowState = wsMinimized then
      Form.WindowState := wsNormal;
    Result := nil;
  end
  else
  begin
    if F.ClassParent = TfrmSimple then
    begin
      Form := TfrmClass(F).Create(Self);
      Form.BorderStyle := bsSizeable;
      Form.FormStyle := fsMDIChild;
      Form.Show;
    end else
    begin
      Form := F.Create(Application);
    end;
    Form.FormStyle := fsMDIChild;
    Form.Show;
    Result := Form;
  end;
end;

procedure TfrmMain.aExecute(Sender: TObject);
begin
  if TAction(Sender).Name = 'aEnergo' then
  begin
    ShowSimpleForm('TfrmEnergo');
  end
  else if TAction(Sender).Name = 'aJobPower' then
  begin
    ShowSimpleForm('TfrmJobPower');
  end
  else if TAction(Sender).Name = 'aTeplo' then
  begin
    ShowSimpleForm('TfrmTeplo');
  end
  else if TAction(Sender).Name = 'aGaz' then
  begin
    ShowSimpleForm('TfrmGaz');
  end
  else if TAction(Sender).Name = 'aMazut' then
  begin
    ShowSimpleForm('TfrmMazut');
  end
  else if TAction(Sender).Name = 'aAOTO' then
  begin
    ShowSimpleForm('TfrmAOTO');
  end
  else if TAction(Sender).Name = 'aAOEO' then
  begin
    ShowSimpleForm('TfrmAOEO');
  end
  else if TAction(Sender).Name = 'aTEC2' then
  begin
    ShowSimpleForm('TfrmTEC');
  end
  else if TAction(Sender).Name = 'aRep' then
  begin
    RepSvodData;
  end
  else if TAction(Sender).Name = 'aRepETO' then
  begin
    RepETO;
  end
  else if TAction(Sender).Name = 'aOptions' then
  begin
    if GetKeyState(VK_SHIFT) < 0 then
      ShowSimpleForm('TfrmLog')      
    else
      DoOptions(Application.MainForm);
  end
  else if TAction(Sender).Name = 'aAbout' then
  begin
    DoAbout(Application.MainForm);
  end
  else if TAction(Sender).Name = 'aExit' then
  begin
    Application.Terminate;
  end
  else if TAction(Sender).Name = 'aCtrlU' then
  begin
    ShowSimpleForm('TfrmCtrlU');
  end
  else if TAction(Sender).Name = 'aSprZach' then
  begin
    ShowSimpleForm('TfrmSprZach');
  end
  else if TAction(Sender).Name = 'aSprAotoOborud' then
  begin
    ShowSimpleForm('TfrmSprOborudAoto');
  end
  else if TAction(Sender).Name = 'aSprAoeoOborud' then
  begin
    ShowSimpleForm('TfrmSprOborudAoeo');
  end
  else if TAction(Sender).Name = 'aSprPodpis' then
  begin
    ShowSimpleForm('TfrmSprPodpis');
  end
  else if TAction(Sender).Name = 'aRepForm' then
  begin
    RepForm;
  end
  else if TAction(Sender).Name = 'aAO6_10' then
  begin
    ShowSimpleForm('TfrmAO_610');
  end
  else if TAction(Sender).Name = 'aTEC2izm' then
  begin
    ShowSimpleForm('TfrmTEC2izm');
  end
  else if TAction(Sender).Name = 'aSepakOborud' then
  begin
    ShowSimpleForm('TfrmPakOborud');
  end
  else if TAction(Sender).Name = 'aOtkl110' then
  begin
    ShowSimpleForm('TfrmOtkl110');
  end
  else if TAction(Sender).Name = 'aTEC_GT' then
  begin
    ShowSimpleForm('TfrmTEC_GT');
  end
  else if TAction(Sender).Name = 'aNarushPorud' then
  begin
    ShowSimpleForm('TfrmNarushPoryd');
  end
  else if TAction(Sender).Name = 'aTEC_MC' then
  begin
    ShowSimpleForm('TfrmTEC_MC');
  end
  else if TAction(Sender).Name = 'aTEC_4' then
  begin
    ShowSimpleForm('TfrmTEC_4');
  end             

end;

procedure TfrmMain.RepSvodData;
var
  date1,datet1,datet2: TDateTime;
  date1BeginMonth: TDateTime;
  isPrint: Integer;
  ispodpis: Boolean;
  podpisid: Integer;
  vODU: Integer;
  sODU: string;
  aq: TAdoQuery;
  s: string;
  ob,zs: string;
  filesatt: array of string;
  filename,extname: string;
  minisize: Boolean;
  week, year: Word;

  tiTIMany: TTIArray;
  atiRes: TOutCKDataArray;
  atiResMany: TOutCKDataArrayManyTI;  
  arrStr: TStringArray;

  procedure SendMail_loc_sd();
  var
    i: Integer;
    aq1: TADOQuery;
  begin
      if dmReports.frReport.PrepareReport then
      try
        SetLength(filesatt,dmReports.frReport.EMFPages.Count);
        extname:=ExtractFileExt(dmData.ParseStr(mDIRSendMail.FileFormat));
        filename:=dmData.ParseStr(mDIRSendMail.FileFormat);
        if Length(extname)>0 then
        begin
          while filename[Length(filename)]<>'.' do
            Delete(filename,Length(filename),1);
          Delete(filename,Length(filename),1);
        end;
        try
          dmReports.frReport.ExportTo(dmReports.frJPEGExport1,sTempDir+filename+extname);
        except
        end;  
        for i:=0 to dmReports.frReport.EMFPages.Count-1 do
          filesatt[i] := sTempDir + filename + '_' + IntToStr(i+1) + extname;
        if dmData.SendMailSMTP(mDIRSendMail,filesatt,dmReports.frReport.EMFPages.Count) then
        begin
          aq1:=SelectQuerySimple(dmData.adcData,'select [comment] from tblSendMail where [type]=1 and [date]='+DateToAccssSQLStr(Date()));
          try
            if aq1.IsEmpty then
              ExecQuerySimple(dmData.adcData,'insert into tblSendMail ([date],[type],[comment]) values ('+DateToAccssSQLStr(Date())+',1,''Отослано за:'#13+FormatDateTime('dd.mm.yyyy',date1)+''')')
            else
              ExecQuerySimple(dmData.adcData,'update tblSendMail set comment = '''+aq1.FieldByName('comment').AsString+#13+FormatDateTime('dd.mm.yyyy',date1)+''' where type=1 and date='+DateToAccssSQLStr(Date()));
          finally
            aq1.Free;
          end;
          minisize:=false;
          for i:=0 to dmReports.frReport.EMFPages.Count-1 do
            if FileExists(filesatt[i]) then
              if dmData.FileOfSize(filesatt[i]) <= 1024 then  //если размер файла маленький
                minisize:=true;
          if minisize then
            MessageDlg('Письмо отправлено.'#10#13'НО один или несколько вложенных файлов имеют слишком маленький размер,'#10#13'Проверьте правильность отправленных данных, и в случае необходимости повторите отправку.',mtInformation,[mbOk],0)
          else
            MessageDlg('Письмо отправлено.',mtInformation,[mbOk],0);

          if bLoged then
            dmData.PutLog('sendmail',Date(),0,'send mail SD');
        end  
        else
          MessageDlg('Письмо НЕ отправлено.',mtError,[mbOk],0);
      finally
        if mDIRSendMail.FileTmpDelete then
          for i:=1 to dmReports.frReport.EMFPages.Count do
            if FileExists(filesatt[i-1]) then
              DeleteFile(filesatt[i-1]);
        SetLength(filesatt,0);
        filesatt:=nil;
      end
      else
        MessageDlg('Отчет не может быть создан. Письмо не отправлено.',mtError,[mbOk],0);
  end;

begin
  if DoRep(Application.MainForm,date1,datet1,datet2, isPrint, vODU,ispodpis,podpisid ) then
  try
    ShowProcessCancel(Application.MainForm,'Построение отчета....');
    if not FileExists(sRepFile) then
    begin
      ShowMessage('Не найден файл с отчетом.');
      Exit;
    end;

    date1BeginMonth :=EncodeDateTime(YearOf(date1),MonthOf(date1),1,0,0,0,0);

    frVariables['frDate']:=date1;
    frVariables['frDate1']:=datet1;
    frVariables['frDate2']:=datet2;
    frVariables['frDateStr']:=IntToStr(DayOf(date1))+' '+mMonthDayRP[MonthOf(date1)]+' '+IntToStr(YearOf(date1))+'г.  (' + mWeekDay[DayOfTheWeek(date1)]+')';
    frVariables['frNextDateStr']:=IntToStr(DayOf(IncDay(date1)))+' '+mMonthDayRP[MonthOf(IncDay(date1))]+' '+IntToStr(YearOf(IncDay(date1)))+'г.';


// begin СВОДНЫЕ ДАННЫЕ


    // из ОИК  столбец ППБР
    // за день
    frVariables['frSVppbrTGTEC2']:='0';
    frVariables['frSVppbrTGTECGT']:='0';
    frVariables['frSVppbrTGTECMC']:='0';
    frVariables['frSVppbrTGTEC4']:='0';
    frVariables['frSVppbrTGPotr']:='0';
    frVariables['frSVppbrTECSUM']:='0';
    frVariables['frSVppbrSaldo']:='0';
    
    if mServersCK[1].Pclass.Connected then
    try               
      SetLength(tiTIMany, 7);
      tiTIMany[0]:=tiOIKGenTec2PPBR;
      tiTIMany[1]:=tiOIKGenTecGTPPBR;
      tiTIMany[2]:=tiOIKGenTec4PPBR;
      tiTIMany[3]:=tiOIKGenTecALLPBR;
      tiTIMany[4]:=tiOIKPotrPPBR;
      tiTIMany[5]:=tiOIKSaldoPPBR;
      tiTIMany[6]:=tiOIKGenTecMCPPBR;

      atiResMany := mServersCK[1].Pclass.GetArrayValueTI_Sync(tiTIMany,ckTI24,date1);
      RoundArray(atiResMany,0);
      frVariables['frSVppbrTGTEC2']:=GetSum(atiResMany[0]);
      frVariables['frSVppbrTGTECGT']:=GetSum(atiResMany[1]);
      frVariables['frSVppbrTGTEC4']:=GetSum(atiResMany[2]);
      frVariables['frSVppbrTGTECMC']:=GetSum(atiResMany[6]);
      //frVariables['frSVppbrTECSUM']:=GetSum(atiResMany[3]);
      frVariables['frSVppbrTECSUM']:= frVariables['frSVppbrTGTEC2'] + frVariables['frSVppbrTGTEC4'] + frVariables['frSVppbrTGTECGT'] + frVariables['frSVppbrTGTECMC'];
      frVariables['frSVppbrTGPotr']:=GetSum(atiResMany[4]);
      //frVariables['frSVppbrSaldo']:=GetSum(atiResMany[5]);
      frVariables['frSVppbrSaldo']:= frVariables['frSVppbrTGPotr'] - frVariables['frSVppbrTECSUM'] ;

   finally
     tiTIMany := nil;
     atiResMany := nil;
   end;

    // из ОИК столбец ППБР
    // за месяц
    frVariables['frSVppbr2TGTEC2']:='0';
    frVariables['frSVppbr2TGTECGT']:='0';
    frVariables['frSVppbr2TGTECMC']:='0';
    frVariables['frSVppbr2TGTEC4']:='0';
    frVariables['frSVppbr2TGPotr']:='0';
    frVariables['frSVppbr2TECSUM']:='0';
    frVariables['frSVppbr2Saldo']:='0';

    if mServersCK[1].Pclass.Connected then
    try               
      SetLength(tiTIMany, 7);
      tiTIMany[0]:=tiOIKGenTec2PPBR;
      tiTIMany[1]:=tiOIKGenTecGTPPBR;
      tiTIMany[2]:=tiOIKGenTec4PPBR;
      tiTIMany[3]:=tiOIKGenTecALLPBR;
      tiTIMany[4]:=tiOIKPotrPPBR;
      tiTIMany[5]:=tiOIKSaldoPPBR;
      tiTIMany[6]:=tiOIKGenTecMCPPBR;

      atiResMany := mServersCK[1].Pclass.GetArrayValueTI_Sync(tiTIMany,ckTI24, date1BeginMonth, date1+1);
      RoundArray(atiResMany,0);
      frVariables['frSVppbr2TGTEC2']:=GetSum(atiResMany[0]);
      frVariables['frSVppbr2TGTECGT']:=GetSum(atiResMany[1]);
      frVariables['frSVppbr2TGTEC4']:=GetSum(atiResMany[2]);
      frVariables['frSVppbr2TGTECMC']:=GetSum(atiResMany[6]);      
      //frVariables['frSVppbr2TECSUM']:=GetSum(atiResMany[3]);
      frVariables['frSVppbr2TECSUM']:= frVariables['frSVppbr2TGTEC2'] + frVariables['frSVppbr2TGTEC4'] + frVariables['frSVppbr2TGTECGT'] + frVariables['frSVppbr2TGTECMC'];
      frVariables['frSVppbr2TGPotr']:=GetSum(atiResMany[4]);
      //frVariables['frSVppbr2Saldo']:=GetSum(atiResMany[5]);
      frVariables['frSVppbr2Saldo']:= frVariables['frSVppbr2TGPotr'] - frVariables['frSVppbr2TECSUM'];
   finally
     tiTIMany := nil;
     atiResMany := nil;
   end;


  // электроэнергия
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(value_v_tec2) as sumtec2, sum(value_v_tec3) as sumtec3, sum(value_v_tecGT) as sumtecGT, sum(value_v_morcem) as sumtecMC, sum(value_v_tec4) as sumtec4, sum(value_p) as sumpotr '
      +' FROM ePlanValue '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frSVEnPlanTEC2']:=aq.FieldByName('sumtec2').AsFloat;
      frVariables['frSVEnPlanTEC3']:=aq.FieldByName('sumtec3').AsFloat;
      frVariables['frSVEnPlanTECGT']:=aq.FieldByName('sumtecGT').AsFloat;      
      frVariables['frSVEnPlanTEC4']:=aq.FieldByName('sumtec4').AsFloat;
      frVariables['frSVEnPlanTECMC']:=aq.FieldByName('sumtecMC').AsFloat;
      frVariables['frSVEnPlanPotr']:=aq.FieldByName('sumpotr').AsFloat;
    finally
      aq.Free;
    end;    

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(value_v_tec2) as sumtec2, sum(value_v_tec3) as sumtec3, sum(value_v_tecGT) as sumtecGT, sum(value_v_morcem) as sumtecMC, sum(value_v_tec4) as sumtec4, sum(value_p) as sumpotr  '
      +' FROM ePlanValue '
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frSVEnPlan2TEC2']:=aq.FieldByName('sumtec2').AsFloat;
      frVariables['frSVEnPlan2TEC3']:=aq.FieldByName('sumtec3').AsFloat;
      frVariables['frSVEnPlan2TECGT']:=aq.FieldByName('sumtecGT').AsFloat;      
      frVariables['frSVEnPlan2TEC4']:=aq.FieldByName('sumtec4').AsFloat;
      frVariables['frSVEnPlan2TECMC']:=aq.FieldByName('sumtecMC').AsFloat;
      frVariables['frSVEnPlan2Potr']:=aq.FieldByName('sumpotr').AsFloat;
    finally
      aq.Free;
    end;    

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(tec2_v) as sumtec2, sum(tec3_v) as sumtec3, sum(tecGT_v) as sumtecGT, sum(morcem_v) as sumtecMC, sum(tec4_v) as sumtec4, sum(tec2_v+tecGT_v+morcem_v+tec4_v+per_ryazan+per_penza+per_ylyan+per_chuv+per_nnov) as sumpotr '
      +' FROM eFactValue '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frSVEnFactTEC2']:=aq.FieldByName('sumtec2').AsFloat;
      frVariables['frSVEnFactTEC3']:=aq.FieldByName('sumtec3').AsFloat;
      frVariables['frSVEnFactTECGT']:=aq.FieldByName('sumtecGT').AsFloat;      
      frVariables['frSVEnFactTEC4']:=aq.FieldByName('sumtec4').AsFloat;
      frVariables['frSVEnFactTECMC']:=aq.FieldByName('sumtecMC').AsFloat;
      frVariables['frSVEnFactPotr']:=aq.FieldByName('sumpotr').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(tec2_v) as sumtec2, sum(tec3_v) as sumtec3, sum(tecGT_v) as sumtecGT, sum(morcem_v) as sumtecMC, sum(tec4_v) as sumtec4, sum(tec2_v+tecGT_v+morcem_v+tec4_v+per_ryazan+per_penza+per_ylyan+per_chuv+per_nnov) as sumpotr '
      +' FROM eFactValue '
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frSVEnFact2TEC2']:=aq.FieldByName('sumtec2').AsFloat;
      frVariables['frSVEnFact2TEC3']:=aq.FieldByName('sumtec3').AsFloat;
      frVariables['frSVEnFact2TECGT']:=aq.FieldByName('sumtecGT').AsFloat;
      frVariables['frSVEnFact2TEC4']:=aq.FieldByName('sumtec4').AsFloat;
      frVariables['frSVEnFact2TECMC']:=aq.FieldByName('sumtecMC').AsFloat;
      frVariables['frSVEnFact2Potr']:=aq.FieldByName('sumpotr').AsFloat;
    finally
      aq.Free;
    end;

  //тепло
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(tec2_par+tec2_voda+tec3_par+tec3_voda+ck_par+ck_voda) as ssum '
      +' FROM tFactValue '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frSVTeploFact']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(tec2_par+tec2_voda+tec3_par+tec3_voda+ck_par+ck_voda) as ssum '
      +' FROM  tFactValue'
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frSVTeploFact2']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(value) as ssum '
      +' FROM  tPlanValue'
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frSVTeploPlan']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(value) as ssum '
      +' FROM  tPlanValue'
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frSVTeploPlan2']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

  //газ
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(tec2+tec3+kc) as ssum '
      +' FROM gFactValue '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frSVGazRashFact']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT sum(tec2+tec3+kc) as ssum'
      +' FROM gFactValue '
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frSVGazRash2Fact']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT sum(value) as ssum'
      +' FROM gPlanValueToDay '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frSVGazRashPlan'] := aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT sum(value) as ssum'
      +' FROM gPlanValueToDay '
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frSVGazRash2Plan'] := aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

// end СВОДНЫЕ ДАННЫЕ

// begin НАЛИЧИЕ МАЗУТА
  //нарастающая
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name], sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)<='+DateToAccssSQLStr(date1)+')) and (((mValue.date)>='+DateToAccssSQLStr(date1BeginMonth)+')) and mValue.objectid=1 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutMonthTec2']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutMonthTec2']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutMonthTec2']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutMonthTec2']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name],sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)<='+DateToAccssSQLStr(date1)+')) and (((mValue.date)>='+DateToAccssSQLStr(date1BeginMonth)+')) and mValue.objectid=2 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutMonthTec3']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutMonthTec3']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutMonthTec3']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutMonthTec3']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name], sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)<='+DateToAccssSQLStr(date1)+')) and (((mValue.date)>='+DateToAccssSQLStr(date1BeginMonth)+')) and mValue.objectid=3 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutMonthKC']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutMonthKC']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutMonthKC']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutMonthKC']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name], sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)<='+DateToAccssSQLStr(date1)+')) and (((mValue.date)>='+DateToAccssSQLStr(date1BeginMonth)+')) and mValue.objectid=4 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutMonthSZ']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutMonthSZ']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutMonthSZ']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutMonthSZ']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

  //за день
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name], sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)='+DateToAccssSQLStr(date1)+')) and mValue.objectid=1 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutDayTec2']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutDayTec2']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutDayTec2']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutDayTec2']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name],sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)='+DateToAccssSQLStr(date1)+')) and mValue.objectid=2 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutDayTec3']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutDayTec3']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutDayTec3']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutDayTec3']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name], sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)='+DateToAccssSQLStr(date1)+')) and mValue.objectid=3 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutDayKC']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutDayKC']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutDayKC']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutDayKC']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  mObject.[name], sum(prihod) AS  ssump,sum(rashod) AS  ssumr,sum(estub) AS  ssume,sum(korr) AS  ssumk '
      +' FROM mObject INNER JOIN mValue ON mObject.ID = mValue.objectid '
      +' WHERE (((mValue.date)='+DateToAccssSQLStr(date1)+')) and mValue.objectid=4 '
      +' group by mObject.[name] '
      +' order by mObject.[name] ASC '
    );
    try
      frVariables['frPrihodMazutDaySZ']:=aq.FieldByName('ssump').AsFloat;
      frVariables['frRashodMazutDaySZ']:=aq.FieldByName('ssumr').AsFloat;
      frVariables['frEstubMazutDaySZ']:=aq.FieldByName('ssume').AsFloat;
      frVariables['frKorrMazutDaySZ']:=aq.FieldByName('ssumk').AsFloat;
    finally
      aq.Free;
    end;

  // zadanie

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  * '
      +' FROM mPlanParam '
      +' WHERE (((year)='+IntToStr(YearOf(date1))+')) and (month = '+IntToStr(MonthOf(date1))+')'
    );
    try
      frVariables['frZadMazutTEC2']:=aq.FieldByName('tec2').AsFloat;
      frVariables['frZadMazutTEC3']:=aq.FieldByName('tec3').AsFloat;
      frVariables['frZadMazutSZ']:=aq.FieldByName('SZC').AsFloat;
      frVariables['frZadMazutKC']:=aq.FieldByName('KC').AsFloat;
      frVariables['frZadMazutMGK']:=aq.FieldByName('MGK').AsFloat;
      frVariables['frZadMazutMTSK']:=aq.FieldByName('MTSK').AsFloat;
      frVariables['frZadMazutTEC2next']:=aq.FieldByName('tec2next').AsFloat;
      frVariables['frZadMazutTEC3next']:=aq.FieldByName('tec3next').AsFloat;
      frVariables['frZadMazutSZnext']:=aq.FieldByName('SZCnext').AsFloat;
      frVariables['frZadMazutKCnext']:=aq.FieldByName('KCnext').AsFloat;
      frVariables['frZadMazutMGKnext']:=aq.FieldByName('MGKnext').AsFloat;
      frVariables['frZadMazutMTSKnext']:=aq.FieldByName('MTSKnext').AsFloat;   
    finally
      aq.Free;
    end;

// очтаток (нарастающий)

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  objectid, sum(prihod-rashod-estub+korr) AS  ssum '
      +' FROM mValue '
      +' WHERE ((date)<='+DateToAccssSQLStr(date1)+') ' { and mValue.objectid=1 }
      +' group by objectid '
    );
    try
      frVariables['frOstMazutTEC2'] := '0';
      frVariables['frOstMazutTEC3'] := '0';
      frVariables['frOstMazutSZ'] := '0';
      frVariables['frOstMazutKC'] := '0';
      if aq.Locate('objectid',1,[]) then
        frVariables['frOstMazutTEC2'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',2,[]) then
        frVariables['frOstMazutTEC3'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',3,[]) then
        frVariables['frOstMazutKC'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',4,[]) then
        frVariables['frOstMazutSZ'] := aq.FieldByName('ssum').AsFloat;

      frVariables['frMazutTec2']:=aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    
// end НАЛИЧИЕ МАЗУТА

// begin ГАЗ
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  sum(tec2) as ssum2, sum(tec3) as ssum3, sum(kc) as ssumkc '
      +' FROM gFactValue '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frGazRashFactDayTEC2']:=aq.FieldByName('ssum2').AsFloat;
      frVariables['frGazRashFactDayKC']:=aq.FieldByName('ssumkc').AsFloat;
      frVariables['frGazRashFactDayTEC3']:=aq.FieldByName('ssum3').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT sum(tec2) as ssum2, sum(tec3) as ssum3, sum(kc) as ssumkc '
      +' FROM gFactValue '
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
    );
    try
      frVariables['frGazRashFactMonthTEC2']:=aq.FieldByName('ssum2').AsFloat;
      frVariables['frGazRashFactMonthTEC3']:=aq.FieldByName('ssum3').AsFloat;
      frVariables['frGazRashFactMonthKC']:=aq.FieldByName('ssumkc').AsFloat;
    finally
      aq.Free;
    end;
 
    aq:=SelectQuerySimple(dmData.adcData,' SELECT objectid, sum(value) as ssum'
      +' FROM gPlanValueToDay '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
      +' GROUP BY  objectid'
    );
    try
      frVariables['frGazRashPlanDayTEC2'] := '0';
      frVariables['frGazRashPlanDayTEC3'] := '0';
      frVariables['frGazRashPlanDayKC'] := '0';
      if aq.Locate('objectid',1,[]) then
        frVariables['frGazRashPlanDayTEC2'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',3,[]) then
        frVariables['frGazRashPlanDayKC'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',2,[]) then
        frVariables['frGazRashPlanDayTEC3'] := aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;

    aq:=SelectQuerySimple(dmData.adcData,' SELECT objectid, sum(value) as ssum'
      +' FROM gPlanValueToDay '
      +' WHERE (((date)<='+DateToAccssSQLStr(date1)+')) and (((date)>='+DateToAccssSQLStr(date1BeginMonth)+'))'
      +' GROUP BY  objectid'      
    );
    try
      frVariables['frGazRashPlanMonthTEC2'] := '0';
      frVariables['frGazRashPlanMonthTEC3'] := '0';
      frVariables['frGazRashPlanMonthKC'] := '0';
      if aq.Locate('objectid',1,[]) then
        frVariables['frGazRashPlanMonthTEC2'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',2,[]) then
        frVariables['frGazRashPlanMonthTEC3'] := aq.FieldByName('ssum').AsFloat;
      if aq.Locate('objectid',3,[]) then
        frVariables['frGazRashPlanMonthKC'] := aq.FieldByName('ssum').AsFloat;
    finally
      aq.Free;
    end;
// end ГАЗ

// begin ТЭЦ-2 на 7.00
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  *  FROM tec2 '
      +' WHERE (date='+DateToAccssSQLStr(IncDay(date1))+')'
    );

    try
      frVariables['frTEC2k1']:=aq.FieldByName('k1').AsString;
      frVariables['frTEC2k2']:=aq.FieldByName('k2').AsString;
      frVariables['frTEC2k3']:=aq.FieldByName('k3').AsString;
      frVariables['frTEC2k4']:=aq.FieldByName('k4').AsString;
      frVariables['frTEC2k5']:=aq.FieldByName('k5').AsString;
      frVariables['frTEC2k6']:=aq.FieldByName('k6').AsString;
      frVariables['frTEC2k7']:=aq.FieldByName('k7').AsString;
      frVariables['frTEC2k8']:=aq.FieldByName('k8').AsString;
      frVariables['frTEC2bk1']:=aq.FieldByName('bk1').AsString;
      frVariables['frTEC2bk2']:=aq.FieldByName('bk2').AsString;
      frVariables['frTEC2bk3']:=aq.FieldByName('bk3').AsString;
      frVariables['frTEC2t2']:=aq.FieldByName('t2').AsString;
      frVariables['frTEC2t3']:=aq.FieldByName('t3').AsString;
      frVariables['frTEC2t4']:=aq.FieldByName('t4').AsString;
      frVariables['frTEC2t5']:=aq.FieldByName('t5').AsString;
      frVariables['frTEC2glimit']:=aq.FieldByName('glimit').AsString;
      frVariables['frTEC2gg']:=aq.FieldByName('gg').AsString;
      frVariables['frTEC2gp']:=aq.FieldByName('gp').AsString;
      frVariables['frTEC2mg']:=aq.FieldByName('mg').AsString;
      frVariables['frTEC2pg']:=aq.FieldByName('pg').AsString;
      frVariables['frTEC2vbl1']:=aq.FieldByName('vbl1').AsString;
      frVariables['frTEC2vbl2']:=aq.FieldByName('vbl2').AsString;
      frVariables['frTEC2tsnv']:=aq.FieldByName('tsnv').AsString;
      frVariables['frTEC2tsgr']:=aq.FieldByName('tsgr').AsString;
      frVariables['frTEC2tsf']:=aq.FieldByName('tsf').AsString;
      frVariables['frTEC2tsg']:=aq.FieldByName('tsg').AsString;
      frVariables['frTEC2gen']:=aq.FieldByName('gen').AsString;
    finally
      aq.Free;
    end;
// end ТЭЦ-2 на 7.00

// begin ГТ ТЭЦ на 6.00
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  *  FROM tec_gt '
      +' WHERE (date='+DateToAccssSQLStr(IncDay(date1))+')'
    );

    try
      frVariables['frTECGTtg1']:=aq.FieldByName('tg1').AsString;
      frVariables['frTECGTtg2']:=aq.FieldByName('tg2').AsString;
      frVariables['frTECGTgen']:=aq.FieldByName('gen').AsString;
      frVariables['frTECGTgaz_g']:=aq.FieldByName('gaz_g').AsString;
      frVariables['frTECGTgaz_p']:=aq.FieldByName('gaz_p').AsString;
    finally
      aq.Free;
    end;
// end ГТ ТЭЦ на 6.00

// begin ТЭЦ МЦ на 6.00
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  *  FROM tec_mc '
      +' WHERE (date='+DateToAccssSQLStr(IncDay(date1))+')'
    );          
    try
      frVariables['frTECMCgty1']:=aq.FieldByName('gty1').AsString;
      frVariables['frTECMCgty2']:=aq.FieldByName('gty2').AsString;
      frVariables['frTECMCgty3']:=aq.FieldByName('gty3').AsString;      
      frVariables['frTECMCgen']:=aq.FieldByName('gen').AsString;
      frVariables['frTECMCgaz_g']:=aq.FieldByName('gaz_g').AsString;
      frVariables['frTECMCgaz_p']:=aq.FieldByName('gaz_p').AsString;
    finally
      aq.Free;
    end;
// end ТЭЦ МЦ на 6.00

// begin ТЭЦ 4 на 6.00
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  *  FROM tec_4 '
      +' WHERE (date='+DateToAccssSQLStr(IncDay(date1))+')'
    );
    try
      frVariables['frTEC4g1']:=aq.FieldByName('g1').AsString;
      frVariables['frTEC4gen']:=aq.FieldByName('gen').AsString;
      frVariables['frTEC4gaz_g']:=aq.FieldByName('gaz_g').AsString;
      frVariables['frTEC4gaz_p']:=aq.FieldByName('gaz_p').AsString;
    finally
      aq.Free;
    end;
// end ТЭЦ 4 на 6.00

// begin Уровень напряжения в контрольных точках Мордовской энергосистемы 110
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  PSSaransk,PSRuzaevka, PSMoksha, PSKomsomolsk, PStec2 '
      +' FROM uCtrlU '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['ktPlanSar']:=aq.FieldByName('PSSaransk').AsString;
      frVariables['ktPlanRuz']:=aq.FieldByName('PSRuzaevka').AsString;
      frVariables['ktPlanMoksh']:=aq.FieldByName('PSMoksha').AsString;
      frVariables['ktPlanKoms']:=aq.FieldByName('PSKomsomolsk').AsString;
      frVariables['ktPlanTec2']:=aq.FieldByName('PStec2').AsString;
    finally
      aq.Free;
    end;

    frVariables['ktMaxSar']:='';
    frVariables['ktMinSar']:='';
    frVariables['ktMaxRuz']:='';
    frVariables['ktMinRuz']:='';
    frVariables['ktMaxMoksh']:='';
    frVariables['ktMinMoksh']:='';
    frVariables['ktMaxKoms']:='';
    frVariables['ktMinKoms']:='';
    frVariables['ktMaxTEC2']:='';
    frVariables['ktMinTEC2']:='';
   // чтение из ОИК
    if mServersCK[1].Pclass.Connected then
    try
      SetLength(tiTIMany,5);
      tiTIMany[0]:=tiOIKPSSaransk;
      tiTIMany[1]:=tiOIKPSRuzaevka;
      tiTIMany[2]:=tiOIKPSMoksha;
      tiTIMany[3]:=tiOIKPSKomsomolsk;
      tiTIMany[4]:=tiOIKPSTEC;

      atiResMany := mServersCK[1].Pclass.GetArrayValueTI_Sync(tiTIMany,ckTI48,date1);
      RoundArray(atiResMany,2);

      arrStr := GetMaxAndHour(atiResMany);
      frVariables['ktMaxSar']:=arrStr[0];
      frVariables['ktMaxRuz']:=arrStr[1];
      frVariables['ktMaxMoksh']:=arrStr[2];
      frVariables['ktMaxKoms']:=arrStr[3];
      frVariables['ktMaxTEC2']:=arrStr[4];
      arrStr := nil;

      arrStr := GetMinAndHour(atiResMany);
      frVariables['ktMinSar']:=arrStr[0];
      frVariables['ktMinRuz']:=arrStr[1];
      frVariables['ktMinMoksh']:=arrStr[2];
      frVariables['ktMinKoms']:=arrStr[3];
      frVariables['ktMinTEC2']:=arrStr[4];
      arrStr := nil;      
    finally
      arrStr := nil;
      tiTIMany := nil;
      atiResMany := nil;
    end;;
// end Уровень напряжения в контрольных точках Мордовской энергосистемы 110

// begin электротехническое оборудование
    if dmReports.adsrAOEO.State in [dsEdit, dsInsert] then
       dmReports.adsrAOEO.Cancel;
    if dmReports.adsrAOEO.Active then
      dmReports.adsrAOEO.Close;
    dmReports.adsrAOEO.CommandType := cmdText;
    if vODU=0 then
     sODU := ''
    else if vODU=1 then
     sODU := ' and ODU=1'
    else
     sODU := ' and ODU=0';
    dmReports.adsrAOEO.CommandText:=' SELECT  * FROM aoElOb '
      +' WHERE [date]>='+DateToAccssSQLStr(datet1)+' and [date]<='+DateToAccssSQLStr(datet2)
      + sODU
      +' order by [date] ASC, [time] ASC ';
    dmReports.adsrAOEO.Prepared := true;
    dmReports.adsrAOEO.Open;

    if dmReports.adsrAOEOOborud.State in [dsEdit, dsInsert] then
       dmReports.adsrAOEOOborud.Cancel;
    if dmReports.adsrAOEOOborud.Active then
      dmReports.adsrAOEOOborud.Close;
    dmReports.adsrAOEOOborud.CommandType := cmdText;
    dmReports.adsrAOEOOborud.CommandText:=' SELECT  aoeoLinkOborud.ID,aoeoLinkOborud.aoeoID,aoeoType.name+'' : ''+aoeoType2.name+'' : ''+ aoeoOborud.name AS [fullname]'
      +' FROM aoeoLinkOborud, aoeoOborud,  aoeoType2, aoeoType'
      +' WHERE  aoeoLinkOborud.typeid = aoeoType.ID and aoeoLinkOborud.type2id=aoeoType2.ID and aoeoLinkOborud.oborudid=aoeoOborud.ID';
    dmReports.adsrAOEOOborud.DataSource:=dmReports.dsrAOEO;
    dmReports.adsrAOEOOborud.MasterFields:='ID';
    dmReports.adsrAOEOOborud.IndexFieldNames:='aoeoID';
    dmReports.adsrAOEOOborud.Prepared := true;
    dmReports.adsrAOEOOborud.Open;

    if dmReports.adsrAOEOZash.State in [dsEdit, dsInsert] then
       dmReports.adsrAOEOZash.Cancel;
    if dmReports.adsrAOEOZash.Active then
      dmReports.adsrAOEOZash.Close;
    dmReports.adsrAOEOZash.CommandType := cmdText;
    dmReports.adsrAOEOZash.CommandText:=' select aoeoLinkZash.ID, aoeoLinkZash.aoeolinkid, aoeoZash.name '
      +' from aoeoLinkZash,   aoeoZash'
      +' where   aoeoLinkZash.zashid = aoeoZash.ID';
    dmReports.adsrAOEOZash.DataSource:=dmReports.dsrAOEOOborud;
    dmReports.adsrAOEOZash.MasterFields:='ID';
    dmReports.adsrAOEOZash.IndexFieldNames:='aoeolinkid';
    dmReports.adsrAOEOZash.Prepared := true;
    dmReports.adsrAOEOZash.Open;

    dmReports.adsrAOEO.First;
    while not dmReports.cdsAOEO.IsEmpty do
      dmReports.cdsAOEO.Delete;
    while not dmReports.adsrAOEO.Eof do
    begin
      ob:='';
      zs:='';
      dmReports.adsrAOEOOborud.First;      
      while not dmReports.adsrAOEOOborud.Eof do
      begin
        ob:=ob+dmReports.adsrAOEOOborudfullname.AsString+#13;
      //  zs:=zs+#13;
        while not dmReports.adsrAOEOZash.Eof do
        begin
            zs:=zs+dmReports.adsrAOEOZashname.AsString+#13;
            ob:=ob+#13;
            dmReports.adsrAoeoZash.Next;
        end;
        zs:=zs+#13;
        ob:=ob+#13;
        dmReports.adsrAoeoOborud.Next;
      end;
      if not dmReports.cdsAOEO.Active then
        dmReports.cdsAOEO.Open;
      dmReports.cdsAoeo.Insert;
      dmReports.cdsAoeo.FieldByName('ID').AsInteger:=dmReports.adsrAOEOID.AsInteger;
      dmReports.cdsAoeo.FieldByName('oborud').AsString:=ob;
      dmReports.cdsAoeo.FieldByName('zash').AsString:=zs;
      dmReports.cdsAoeo.Post;
      dmReports.adsrAOEO.Next; 
    end;
    if dmReports.adsrAOEO.IsEmpty then frVariables['adsrAOEOIsEmpty']:='no'
    else frVariables['adsrAOEOIsEmpty']:='';
// end электротехническое оборудование

// begin теплотехническое оборудование
    if dmReports.adsrAOTO.State in [dsEdit, dsInsert] then
       dmReports.adsrAOTO.Cancel;
    if dmReports.adsrAOTO.Active then
      dmReports.adsrAOTO.Close;
    dmReports.adsrAOTO.CommandType := cmdText;
    dmReports.adsrAOTO.CommandText:=' SELECT  * FROM aoTeplOb '
      +' WHERE [date]>='+DateToAccssSQLStr(datet1)+' and [date]<='+DateToAccssSQLStr(datet2)
      +' order by [date] ASC, [time] ASC ';
    dmReports.adsrAOTO.Prepared := true;
    dmReports.adsrAOTO.Open;

    if dmReports.adsrAotoObor.State in [dsEdit, dsInsert] then
       dmReports.adsrAotoObor.Cancel;
    if dmReports.adsrAotoObor.Active then
      dmReports.adsrAotoObor.Close;
    dmReports.adsrAotoObor.CommandType := cmdText;
    dmReports.adsrAotoObor.CommandText:=' SELECT aotoLinkOborud.ID, aotoLinkOborud.aoTeplObID, aotoOborud.name, aotoCompany.name, '
      +' aotoCompany.name+'' : ''+aotoOborud.name AS [fullname] FROM aotoLinkOborud, aotoCompany,  aotoOborud '
      +' WHERE aotoCompany.ID=aotoOborud.companyid and  aotoOborud.ID=aotoLinkOborud.oborudid ';
    dmReports.adsrAotoObor.DataSource:=dmReports.dsrAOTO;
    dmReports.adsrAotoObor.MasterFields:='ID';
    dmReports.adsrAotoObor.IndexFieldNames:='aoTeplObID';
    dmReports.adsrAotoObor.Prepared := true;
    dmReports.adsrAotoObor.FieldDefs.Add('lstoborud',ftString,1000);
    dmReports.adsrAotoObor.Open;

    dmReports.adsrAoto.First;
    while not dmReports.cdsAOTO.IsEmpty do
      dmReports.cdsAOTO.Delete;
    while not dmReports.adsrAOTO.Eof do
    begin
      dmReports.adsrAotoObor.First;
      s:='';
      while not dmReports.adsrAotoObor.Eof do
      begin
        s:=s+dmReports.adsrAotoOborfullname.AsString+#13;
        dmReports.adsrAotoObor.Next;
      end;
      if not dmReports.cdsAOTO.Active then
        dmReports.cdsAOTO.Open;
      dmReports.cdsAoto.Insert;
      dmReports.cdsAoto.FieldByName('ID').AsInteger:=dmReports.adsrAOTOID.AsInteger;
      dmReports.cdsAoto.FieldByName('name').AsString:=s;
      dmReports.cdsAoto.Post;
      dmReports.adsrAOTO.Next;
    end;
    if dmReports.adsrAOTO.IsEmpty then frVariables['adsrAOTOIsEmpty']:='no'
    else frVariables['adsrAOTOIsEmpty']:='';
// end теплотехническое оборудование

//begin изменение состояния теплотехнического оборудования ТЭЦ-2
    if dmReports.adsrTEC2izm.State in [dsEdit, dsInsert] then
      dmReports.adsrTEC2izm.Cancel;
    if dmReports.adsrTEC2izm.Active then
      dmReports.adsrTEC2izm.Close;
    dmReports.adsrTEC2izm.CommandType := cmdText;
    dmReports.adsrTEC2izm.CommandText:='select i.ID, i.[date], i.time,i.oper,i.prim, i.messageno, so.name  from izmStatus  i, izmStatusObject so   where i.objectid=so.id  AND [date]>='+DateToAccssSQLStr(datet1)+' and [date]<='+DateToAccssSQLStr(datet2)+' order by [date] ASC, [time] ASC';
    dmReports.adsrTEC2izm.Prepared := true;
    dmReports.adsrTEC2izm.Open;
    if dmReports.adsrTEC2izm.IsEmpty then frVariables['adsrTEC2izmIsEmpty']:='no'
    else frVariables['adsrTEC2izmIsEmpty']:='';
// end изменение состояния теплотехнического оборудования ТЭЦ-2

// begin отключения в сети 6-10 кВ
    if dmReports.adsrAO6_10.State in [dsEdit, dsInsert] then
       dmReports.adsrAO6_10.Cancel;
    if dmReports.adsrAO6_10.Active then
      dmReports.adsrAO6_10.Close;
    dmReports.adsrAO6_10.CommandType := cmdText;
    dmReports.adsrAO6_10.CommandText:=' SELECT *, b.name as name FROM ao6_10 a, ao6_10TypePES b '
      +' WHERE a.pes_id = b.id and [data]>='+DateToAccssSQLStr(datet1)+' and [data]<='+DateToAccssSQLStr(datet2)
      +' order by [data] ASC ';
    dmReports.adsrAO6_10.Prepared := true;
    dmReports.adsrAO6_10.Open;
    if dmReports.adsrAO6_10.IsEmpty then frVariables['adsrAO6_10IsEmpty']:='no'
    else frVariables['adsrAO6_10IsEmpty']:='';
// end отключения в сети 6-10 кВ

// begin нарушения в работе оборудования ТМиС и СИПАК
    if dmReports.adsPakOborud.State in [dsEdit, dsInsert] then
       dmReports.adsPakOborud.Cancel;
    if dmReports.adsPakOborud.Active then
      dmReports.adsPakOborud.Close;
    dmReports.adsPakOborud.CommandType := cmdText;
    dmReports.adsPakOborud.CommandText:=' SELECT * FROM pakOtklOborud '
      +' WHERE  [date]>='+DateToAccssSQLStr(datet1)+' and [date]<='+DateToAccssSQLStr(datet2)
      +' ORDER BY [date] ASC, [time] ASC ';
    dmReports.adsPakOborud.Prepared := true;
    dmReports.adsPakOborud.Open;
    if dmReports.adsPakOborud.IsEmpty then frVariables['adsPakOborudIsEmpty']:='no'
    else frVariables['adsPakOborudIsEmpty']:='';
// end нарушения в работе оборудования ТМиС и СИПАК

// begin информация о нарушении Порядка
    if dmReports.adsNarushPoryd.State in [dsEdit, dsInsert] then
       dmReports.adsNarushPoryd.Cancel;
    if dmReports.adsNarushPoryd.Active then
      dmReports.adsNarushPoryd.Close;
    dmReports.adsNarushPoryd.CommandType := cmdText;
    dmReports.adsNarushPoryd.CommandText:=' SELECT * FROM narushPoryd '
      +' WHERE  [date]>='+DateToAccssSQLStr(datet1)+' and [date]<='+DateToAccssSQLStr(datet2)
      +' ORDER BY [date] ASC, [time] ASC ';
    dmReports.adsNarushPoryd.Prepared := true;
    dmReports.adsNarushPoryd.Open;
    if dmReports.adsNarushPoryd.IsEmpty then frVariables['adsNarushPorydIsEmpty']:='no'
    else frVariables['adsNarushPorydIsEmpty']:='';
// end информация о нарушении Порядка

// begin количество отключений АПВ
    frVariables['frAPV_ok']:=0;
    frVariables['frAPV_no']:=0;
    frVariables['frAPV220_ok']:=0;
    frVariables['frAPV220_no']:=0;
    DateToWeek((date1-1), week, year);
    {
    if (week > 1) then
      week := week-1
    else
    begin
      DateToWeek(date1-7, week, year);
    end;
    }
    aq:=SelectQuerySimple(dmData.adcData,' SELECT  apv_ok, apv_no, apv220_ok, apv220_no '
      +' FROM otkl110 '
      +' WHERE ([year]=' + IntToStr(year) + ') and ( [week]=' + IntToStr(week) + ' ) '
    );
    try
      frVariables['frAPV_ok']:=aq.FieldByName('apv_ok').AsFloat;
      frVariables['frAPV_no']:=aq.FieldByName('apv_no').AsFloat;
      frVariables['frAPV220_ok']:=aq.FieldByName('apv220_ok').AsFloat;
      frVariables['frAPV220_no']:=aq.FieldByName('apv220_no').AsFloat;
    finally
      aq.Free;
    end;
// end количество отключений АПВ

// begin Данные из ОИК
    // Рабочая мощность
    // пока рабочая мощность вводится рукми в программе, потом можно брать из СК-2003

    aq:=SelectQuerySimple(dmData.adcData,' SELECT  plan, fact '
      +' FROM jJobPower '
      +' WHERE (((date)='+DateToAccssSQLStr(date1)+')) '
    );
    try
      frVariables['frJobPowerPlan']:=aq.FieldByName('plan').AsFloat;
      frVariables['frJobPowerFact']:=aq.FieldByName('fact').AsFloat;
    finally
      aq.Free;
    end;

    //Чтение из ОИК

   frVariables['frTempMax']    :='';
   frVariables['frTempMin']    :='';
   frVariables['frTempSr']     :='';
   frVariables['frGenPlanMax'] :='';
   frVariables['frGenFactMax'] :='';
   frVariables['frPotrFactMax']:='';
   frVariables['frPotrPlanMax']:='';
//   frVariables['frJobPowerPlan']:='';
//   frVariables['frJobPowerFact']:='';

   if mServersCK[1].Pclass.Connected then
   try

     atiRes := mServersCK[1].Pclass.GetArrayValueTI_Sync(tiOIKTemper.id,tiOIKTemper.cat,ckTI48,date1);
     RoundArray(atiRes,1);
     frVariables['frTempMax']:= GetMaxAndHour(atiRes);
     frVariables['frTempMin']:= GetMinAndHour(atiRes);
     frVariables['frTempSr'] := dmData.RoundCount(GetAvg(atiRes), 1);

     SetLength(tiTIMany, 4);
     tiTIMany[0]:=tiOIKGenPlan;
     tiTIMany[1]:=tiOIKGenFact;
     tiTIMany[2]:=tiOIKPotrFact;
     tiTIMany[3]:=tiOIKPotrPlan;
//     tiTIMany[4]:=tiOIKJobPowerFact;

     atiResMany := mServersCK[1].Pclass.GetArrayValueTI_Sync(tiTIMany,ckTI48,date1);
     RoundArray(atiResMany,0);
     arrStr := GetMaxAndHour(atiResMany);
     frVariables['frGenPlanMax']:=arrStr[0];
     frVariables['frGenFactMax']:=arrStr[1];
     frVariables['frPotrFactMax']:=arrStr[2];
     frVariables['frPotrPlanMax']:=arrStr[3];
//     frVariables['frJobPowerFact']:=arrStr[4];
   finally
     tiTIMany := nil;
     arrStr := nil;
     atiRes := nil;
     atiResMany := nil;
   end;
// end Данные из ОИК

// begin Данные КомандАРМа
    if dmData.adcComandARM.Connected then
    begin
      if dmReports.adsKomandARM.State in [dsEdit, dsInsert] then
        dmReports.adsKomandARM.Cancel;
      if dmReports.adsKomandARM.Active then
        dmReports.adsKomandARM.Close;
      dmReports.adsKomandARM.CommandType := cmdText;
      dmReports.adsKomandARM.CommandText:=' SELECT Records.RecID, Records.Reg_time, Objects.Object_name, Commands.Command, Records.Ext_initiative, Records.From_minute, Records.To_minute, Cause.description, Records.Extended_cause, Records.Surname , Records.Value'
        +' FROM Objects INNER JOIN (Commands INNER JOIN (Cause INNER JOIN Records ON Cause.CauseID = Records.Cause) ON Commands.CommandID = Records.Command) ON Objects.CodeID = Records.Object '
//        +' WHERE Records.Reg_time>='+DateToAccssSQLStr(date1)+' and Records.Reg_time<'+DateToAccssSQLStr(date1+1);
        +' WHERE Records.From_minute >='+DateToAccssSQLStr(date1)+' and Records.From_minute<'+DateToAccssSQLStr(date1+1)
        +' order by Records.From_minute ASC ';
      dmReports.adsKomandARM.Prepared := true;
      dmReports.adsKomandARM.Open;
      if dmReports.adsKomandARM.IsEmpty then frVariables['adsKomandARMIsEmpty']:='ok'
      else frVariables['adsKomandARMIsEmpty']:='';
    end
    else
    begin
      // чтобы в отчете небыло ошибок откроем его как пустой
      dmReports.adsKomandARM.Connection:=dmData.adcData;
      dmReports.adsKomandARM.CommandType := cmdText;
      dmReports.adsKomandARM.CommandText:=' SELECT fls as Ext_initiative, 0 as RecID, dates as Reg_time, '''' as Object_name, '''' as Command, dates as From_minute, dates as To_minute, '''' as description, '''' as Extended_cause, '''' as Surname , 0 as Value from tblTrueFalse where id=0 ';
      dmReports.adsKomandARM.Prepared := true;
      dmReports.adsKomandARM.Open;
      frVariables['adsKomandARMIsEmpty']:='Нет подключения к базе КомандАРМа';
    end;
// end Данные КомандАРМа

//todo : убрать GrefMes

    frVariables['fradcComandARM']:=dmData.adcComandARM.Connected;
//    frVariables['fradcGrafMes']:=dmData.adcGrafMes.Connected;
    //если лист пустой то последней подписи нет
    frVariables['frLastPage']:=not (dmReports.adsrAOEO.IsEmpty and dmReports.adsKomandARM.IsEmpty);    
    frVariables['frdate']:=FormatDateTime('dd.mm.yyyy',date);

// begin вставка подписи
     if not dmReports.adsrPodpis.Active then
       dmReports.adsrPodpis.Open
     else
       AdoReopen(dmReports.adsrPodpis);
     if ispodpis then
     begin
       if dmReports.adsrPodpis.Locate('ID',podpisid,[]) then
       begin
         frVariables['frispodpis']:=dmReports.adsrPodpisname.AsString;
       end
       else
       begin
         frVariables['frispodpis']:='';
       end;
     end
     else
       frVariables['frispodpis']:='';
// end вставка подписи

    dmReports.frReport.Clear;
    dmReports.frReport.ShowProgress := false;
    dmReports.frReport.ModalPreview := false;
    dmReports.frReport.MDIPreview := true;
    dmReports.frReport.LoadFromFile(sRepFile);
    dmReports.frReport.Title := 'Сводные данные '+DateToStr(date1);
    case isPrint of
    0: begin //email monitor
         dmReports.frReport.ShowReport;
         SendMail_loc_sd();
       end;
    1: begin //email
         SendMail_loc_sd();
       end;
    2: begin //monitor
         dmReports.frReport.ShowReport
       end;
    3: begin //print
         if dmReports.frReport.PrepareReport then
           dmReports.frReport.PrintPreparedReport('',1,true,frAll);
       end;
    end;
  finally
    HideProcessCancel;
    UpdateStatusBar();

    if dmReports.cdsAOEO.Active then
      dmReports.cdsAOEO.Close;
    if dmReports.cdsAOTO.Active then
      dmReports.cdsAOTO.Close;
    if dmReports.adsrAOEO.Active then
      dmReports.adsrAOEO.Close;;
    if dmReports.adsrAOEOOborud.Active then
      dmReports.adsrAOEOOborud.Close;
    if dmReports.adsrAOEOZash.Active then
      dmReports.adsrAOEOZash.Close;
    if dmReports.adsrAOTO.Active then
      dmReports.adsrAOTO.Close;
    if dmReports.adsrAotoObor.Active then
      dmReports.adsrAotoObor.Close;
    if dmReports.adsrAO6_10.Active then
      dmReports.adsrAO6_10.Close;
    if dmReports.adsKomandARM.Active then
      dmReports.adsKomandARM.Close;
    if dmReports.adsrPodpis.Active then
      dmReports.adsrPodpis.Close;
    if dmReports.adsrPodpis.Active then
      dmReports.adsrPodpis.Close;
    if dmReports.adsNarushPoryd.Active then
      dmReports.adsNarushPoryd.Close;      

  end;
end;

procedure TfrmMain.RepETO;
var
  date1,date2: TDateTime;
  ispodpis: Boolean;
  podpisid: Integer;
  inputprint: Integer;
  vODU: Integer;
  sODU, ob, zs: string;
  filesatt: array of string;
  filename,extname,s: string;

  procedure SendMail_loc_aoeo();
  var
    i: Integer;
    aq1: TADOQuery;
  begin
    if not mAOEOsendmail.Active then
      MessageDlg('Отправка по почте аварийных отключений оборудования отключена.',mtInformation,[mbOk],0)
    else
      if dmReports.frReport.PrepareReport then
      try
        SetLength(filesatt,dmReports.frReport.EMFPages.Count);
        extname:=ExtractFileExt(dmData.ParseStr(mAOEOsendmail.FileFormat));
        filename:=dmData.ParseStr(mAOEOsendmail.FileFormat);
        if Length(extname)>0 then
        begin
          while filename[Length(filename)]<>'.' do
            Delete(filename,Length(filename),1);
          Delete(filename,Length(filename),1);
        end;
        dmReports.frReport.ExportTo(dmReports.frJPEGExport1,sTempDir+filename+extname);
        for i:=0 to dmReports.frReport.EMFPages.Count-1 do
          filesatt[i] := sTempDir + filename + '_' + IntToStr(i+1) + extname;
        if dmData.SendMailSMTP(mAOEOsendmail,filesatt,dmReports.frReport.EMFPages.Count) then
        begin
          aq1:=SelectQuerySimple(dmData.adcData,'select [comment] from tblSendMail where [type]=2 and [date]='+DateToAccssSQLStr(Date()));
          try
            if aq1.IsEmpty then
              ExecQuerySimple(dmData.adcData,'insert into tblSendMail ([date],[type],[comment]) values ('+DateToAccssSQLStr(Date())+',2,''Отослано за:'#13+FormatDateTime('dd.mm.yyyy',date1)+' - '+FormatDateTime('dd.mm.yyyy',date2)+''')')
            else
              ExecQuerySimple(dmData.adcData,'update tblSendMail set comment = '''+aq1.FieldByName('comment').AsString+#13+FormatDateTime('dd.mm.yyyy',date1)+' - '+FormatDateTime('dd.mm.yyyy',date2)+''' where type=2 and date='+DateToAccssSQLStr(Date()));
          finally
            aq1.Free;
          end;      
          MessageDlg('Письмо отправлено.',mtInformation,[mbOk],0);
        end
        else
          MessageDlg('Письмо НЕ отправлено.',mtError,[mbOk],0);

          if bLoged then
            dmData.PutLog('sendmail',Date(),0,'send mail AOEO');
      finally
        if mAOEOsendmail.FileTmpDelete then
          for i:=1 to dmReports.frReport.EMFPages.Count do
            if FileExists(filesatt[i-1]) then
              DeleteFile(filesatt[i-1]);
        SetLength(filesatt,0);
        filesatt:=nil;
        UpdateStatusBar();        
      end
      else
        MessageDlg('Отчет не может быть создан. Письмо не отправлено.',mtError,[mbOk],0);
  end;

begin
  if DoRepETO(Application.MainForm,date1,date2,ispodpis,podpisid,inputprint,vODU) then
  try
    ShowProcessCancel(Application.MainForm,'Построение отчета....');
    if not FileExists(sRepFileETO) then
    begin
      ShowMessage('Не найден файл с отчетом: '+sRepFileETO);
      Exit;
    end;

// begin электротехническое оборудование
    if dmReports.adsrAOEO.State in [dsEdit, dsInsert] then
       dmReports.adsrAOEO.Cancel;
    if dmReports.adsrAOEO.Active then
      dmReports.adsrAOEO.Close;
    dmReports.adsrAOEO.CommandType := cmdText;
    if vODU=0 then
     sODU := ''
    else if vODU=1 then
     sODU := ' and ODU=1'
    else
     sODU := ' and ODU=0';
    dmReports.adsrAOEO.CommandText:=' SELECT  * FROM aoElOb '
      +' WHERE [date]>='+DateToAccssSQLStr(date1)+' and [date]<='+DateToAccssSQLStr(date2)
      + sODU
      +' order by [date] ASC , [time] ASC';
    dmReports.adsrAOEO.Prepared := true;
    dmReports.adsrAOEO.Open;

    if dmReports.adsrAOEOOborud.State in [dsEdit, dsInsert] then
       dmReports.adsrAOEOOborud.Cancel;
    if dmReports.adsrAOEOOborud.Active then
      dmReports.adsrAOEOOborud.Close;
    dmReports.adsrAOEOOborud.CommandType := cmdText;
    dmReports.adsrAOEOOborud.CommandText:=' SELECT  aoeoLinkOborud.ID,aoeoLinkOborud.aoeoID,aoeoType.name+'' : ''+aoeoType2.name+'' : ''+ aoeoOborud.name AS [fullname]'
      +' FROM aoeoLinkOborud, aoeoOborud,  aoeoType2, aoeoType'
      +' WHERE  aoeoLinkOborud.typeid = aoeoType.ID and aoeoLinkOborud.type2id=aoeoType2.ID and aoeoLinkOborud.oborudid=aoeoOborud.ID';
    dmReports.adsrAOEOOborud.DataSource:=dmReports.dsrAOEO;
    dmReports.adsrAOEOOborud.MasterFields:='ID';
    dmReports.adsrAOEOOborud.IndexFieldNames:='aoeoID';
    dmReports.adsrAOEOOborud.Prepared := true;
    dmReports.adsrAOEOOborud.Open;

    if dmReports.adsrAOEOZash.State in [dsEdit, dsInsert] then
       dmReports.adsrAOEOZash.Cancel;
    if dmReports.adsrAOEOZash.Active then
      dmReports.adsrAOEOZash.Close;
    dmReports.adsrAOEOZash.CommandType := cmdText;
    dmReports.adsrAOEOZash.CommandText:=' select aoeoLinkZash.ID, aoeoLinkZash.aoeolinkid, aoeoZash.name '
      +' from aoeoLinkZash,   aoeoZash'
      +' where   aoeoLinkZash.zashid = aoeoZash.ID';
    dmReports.adsrAOEOZash.DataSource:=dmReports.dsrAOEOOborud;
    dmReports.adsrAOEOZash.MasterFields:='ID';
    dmReports.adsrAOEOZash.IndexFieldNames:='aoeolinkid';
    dmReports.adsrAOEOZash.Prepared := true;
    dmReports.adsrAOEOZash.Open;

    dmReports.adsrAOEO.First;
    while not dmReports.cdsAOEO.IsEmpty do
      dmReports.cdsAOEO.Delete;
    while not dmReports.adsrAOEO.Eof do
    begin
      ob:='';
      zs:='';
      dmReports.adsrAOEOOborud.First;      
      while not dmReports.adsrAOEOOborud.Eof do
      begin
        ob:=ob+dmReports.adsrAOEOOborudfullname.AsString+#13;
      //  zs:=zs+#13;
        while not dmReports.adsrAOEOZash.Eof do
        begin
            zs:=zs+dmReports.adsrAOEOZashname.AsString+#13;
            ob:=ob+#13;
            dmReports.adsrAoeoZash.Next;
        end;
        zs:=zs+#13;
        ob:=ob+#13;
        dmReports.adsrAoeoOborud.Next;
      end;
      if not dmReports.cdsAOEO.Active then
        dmReports.cdsAOEO.Open;
      dmReports.cdsAoeo.Insert;
      dmReports.cdsAoeo.FieldByName('ID').AsInteger:=dmReports.adsrAOEOID.AsInteger;
      dmReports.cdsAoeo.FieldByName('oborud').AsString:=ob;
      dmReports.cdsAoeo.FieldByName('zash').AsString:=zs;
      dmReports.cdsAoeo.Post;
      dmReports.adsrAOEO.Next; 
    end;
// end электротехническое оборудовандие

// begin теплотехническое оборудование
    if dmReports.adsrAOTO.State in [dsEdit, dsInsert] then
       dmReports.adsrAOTO.Cancel;
    if dmReports.adsrAOTO.Active then
      dmReports.adsrAOTO.Close;
    dmReports.adsrAOTO.CommandType := cmdText;
    dmReports.adsrAOTO.CommandText:=' SELECT  * FROM aoTeplOb '
      +' WHERE [date]>='+DateToAccssSQLStr(date1)+' and [date]<='+DateToAccssSQLStr(date2)
      +' order by [date] ASC, [time] ASC ';
    dmReports.adsrAOTO.Prepared := true;
    dmReports.adsrAOTO.Open;

    if dmReports.adsrAotoObor.State in [dsEdit, dsInsert] then
       dmReports.adsrAotoObor.Cancel;
    if dmReports.adsrAotoObor.Active then
      dmReports.adsrAotoObor.Close;
    dmReports.adsrAotoObor.CommandType := cmdText;
    dmReports.adsrAotoObor.CommandText:=' SELECT aotoLinkOborud.ID, aotoLinkOborud.aoTeplObID, aotoOborud.name, aotoCompany.name, '
      +' aotoCompany.name+'' : ''+aotoOborud.name AS [fullname] FROM aotoLinkOborud, aotoCompany,  aotoOborud '
      +' WHERE aotoCompany.ID=aotoOborud.companyid and  aotoOborud.ID=aotoLinkOborud.oborudid ';
    dmReports.adsrAotoObor.DataSource:=dmReports.dsrAOTO;
    dmReports.adsrAotoObor.MasterFields:='ID';
    dmReports.adsrAotoObor.IndexFieldNames:='aoTeplObID';
    dmReports.adsrAotoObor.Prepared := true;
    dmReports.adsrAotoObor.FieldDefs.Add('lstoborud',ftString,1000);
    dmReports.adsrAotoObor.Open;

    dmReports.adsrAoto.First;
    while not dmReports.cdsAOTO.IsEmpty do
      dmReports.cdsAOTO.Delete;
    while not dmReports.adsrAOTO.Eof do
    begin
      dmReports.adsrAotoObor.First;
      s:='';
      while not dmReports.adsrAotoObor.Eof do
      begin
        s:=s+dmReports.adsrAotoOborfullname.AsString+#13;
        dmReports.adsrAotoObor.Next;
      end;
      if not dmReports.cdsAOTO.Active then
        dmReports.cdsAOTO.Open;
      dmReports.cdsAoto.Insert;
      dmReports.cdsAoto.FieldByName('ID').AsInteger:=dmReports.adsrAOTOID.AsInteger;
      dmReports.cdsAoto.FieldByName('name').AsString:=s;
      dmReports.cdsAoto.Post;
      dmReports.adsrAOTO.Next;
    end;
// end теплотехническое оборудование

// begin отключения в сети 6-10 кВ
    if dmReports.adsrAO6_10.State in [dsEdit, dsInsert] then
       dmReports.adsrAO6_10.Cancel;
    if dmReports.adsrAO6_10.Active then
      dmReports.adsrAO6_10.Close;
    dmReports.adsrAO6_10.CommandType := cmdText;
    dmReports.adsrAO6_10.CommandText:=' SELECT *, b.name as name FROM ao6_10 a, ao6_10TypePES b '
      +' WHERE a.pes_id = b.id and [data]>='+DateToAccssSQLStr(date1)+' and [data]<='+DateToAccssSQLStr(date2)
      +' order by [data] ASC ';
    dmReports.adsrAO6_10.Prepared := true;
    dmReports.adsrAO6_10.Open;
// end отключения в сети 6-10 кВ

    begin
      frVariables['adsrAOEOIsEmpty']:='';
      if dmReports.adsrAOEO.IsEmpty then
        if date1 = date2 then
          frVariables['adsrAOEOIsEmpty']:='Аварийных отключений за '+FormatDateTime('dd.mm.yyyy',date1)+' не было.'
        else
          frVariables['adsrAOEOIsEmpty']:='Аварийных отключений за '+FormatDateTime('dd.mm.yyyy',date1)+' - '+FormatDateTime('dd.mm.yyyy',date2)+' не было.';

      frVariables['adsrAO6_10IsEmpty']:='';
      if dmReports.adsrAO6_10.IsEmpty then
        if date1 = date2 then
          frVariables['adsrAO6_10IsEmpty']:='Аварийных отключений за '+FormatDateTime('dd.mm.yyyy',date1)+' не было.'
        else
          frVariables['adsrAO6_10IsEmpty']:='Аварийных отключений за '+FormatDateTime('dd.mm.yyyy',date1)+' - '+FormatDateTime('dd.mm.yyyy',date2)+' не было.';

      frVariables['adsrAOTOIsEmpty']:='';
      if dmReports.adsrAOTO.IsEmpty then
        if date1 = date2 then
          frVariables['adsrAOTOIsEmpty']:='Аварийных отключений за '+FormatDateTime('dd.mm.yyyy',date1)+' не было.'
        else
          frVariables['adsrAOTOIsEmpty']:='Аварийных отключений за '+FormatDateTime('dd.mm.yyyy',date1)+' - '+FormatDateTime('dd.mm.yyyy',date2)+' не было.';

      frVariables['frdate']:=FormatDateTime('dd.mm.yyyy',date);
// begin вставка подписи
     if not dmReports.adsrPodpis.Active then
       dmReports.adsrPodpis.Open
     else
       AdoReopen(dmReports.adsrPodpis);
     if ispodpis then
     begin
       if dmReports.adsrPodpis.Locate('ID',podpisid,[]) then
       begin
         frVariables['frispodpis']:=dmReports.adsrPodpisname.AsString;
       end
       else
       begin
         frVariables['frispodpis']:='';
       end;
     end
     else
       frVariables['frispodpis']:='';
// end вставка подписи

      dmReports.frReport.Clear;
      dmReports.frReport.ShowProgress := false;
      dmReports.frReport.ModalPreview := false;
      dmReports.frReport.MDIPreview := true;
      dmReports.frReport.LoadFromFile(sRepFileETO);
      dmReports.frReport.Title := 'Аварийные отключения оборудования с '+DateToStr(date1)+' по '+DateToStr(date2);
      case inputprint of
      0: begin //email monitor
           dmReports.frReport.ShowReport;
           SendMail_loc_aoeo();
         end;
      1: begin //email
           SendMail_loc_aoeo();
         end;
      2: begin //monitor
           dmReports.frReport.ShowReport
         end;
      3: begin //print
           if dmReports.frReport.PrepareReport then
             dmReports.frReport.PrintPreparedReport('',1,true,frAll);
         end;
      end;
    end;
  finally
    HideProcessCancel;
   if dmReports.cdsAOEO.Active then
     dmReports.cdsAOEO.Close;
    if dmReports.adsrAOEO.Active then
      dmReports.adsrAOEO.Close;;
    if dmReports.adsrAOEOOborud.Active then
      dmReports.adsrAOEOOborud.Close;
    if dmReports.adsrAOEOZash.Active then
      dmReports.adsrAOEOZash.Close;
   if dmReports.adsrPodpis.Active then
     dmReports.adsrPodpis.Close;
    if dmReports.adsrAO6_10.Active then
      dmReports.adsrAO6_10.Close;
   if dmReports.cdsAOTO.Active then
     dmReports.cdsAOTO.Close;
    if dmReports.adsrAOTO.Active then
      dmReports.adsrAOTO.Close;;
  end;
end;

procedure TfrmMain.RepForm;
var
  date1, date2: TDateTime;
  typeform,inputprint: Integer;
begin
  {TODO: сделать отчет по формам}
  if DoRepForm(Application.MainForm,date1,date2,typeform,inputprint) then
  try
    ShowProcessCancel(Application.MainForm,'Построение отчета....');
    if not FileExists(sRepFileForm) then
    begin
      ShowMessage('Не найден файл с отчетом: '+sRepFileForm);
      Exit;
    end;

      dmReports.frReport.Clear;
      dmReports.frReport.ShowProgress := false;
      dmReports.frReport.ModalPreview := false;
      dmReports.frReport.MDIPreview   := true;
      dmReports.frReport.LoadFromFile(sRepFileForm);

      frVariables['frtypeform'] := typeform;
      frVariables['frdate1']    := date1;
      frVariables['frdate2']    := date2;

      case typeform of
      0: begin
           dmReports.frReport.Title := 'Электроэнергия с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='Электроэнергия с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      1: begin
           dmReports.frReport.Title := 'Рабочая мощность с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:= 'Рабочая мощность с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      2: begin
           dmReports.frReport.Title := 'Тепло с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:=  'Тепло с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      3: begin
           dmReports.frReport.Title := 'Газ с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:= 'Газ с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      4: begin
           dmReports.frReport.Title := 'Мазут с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:= 'Мазут с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      5: begin
           dmReports.frReport.Title := 'ТЭЦ-2 на 6.00 с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='ТЭЦ-2 на 6.00 с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      6: begin
           dmReports.frReport.Title := 'Напряжение 110 кВ с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='Напряжение 110 кВ с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      7: begin
           dmReports.frReport.Title := 'Аварийные отключения теплотехнического оборудования с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='Аварийные отключения теплотехнического оборудования с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      8: begin
           dmReports.frReport.Title := 'Отключения в сети 6 - 10 кВ с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='Отключения в сети 6 - 10 кВ с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      9: begin
           dmReports.frReport.Title := 'Сбои в работе оборудования ТМиС и СЭПАК с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='Сбои в работе оборудования ТМиС и СЭПАК с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
     10: begin
           dmReports.frReport.Title := 'Изменение состояния теплотехнического оборудования ТЭЦ-2 с '+DateToStr(date1)+' по '+DateToStr(date2);
           frVariables['frtitle']:='Изменение состояния теплотехнического оборудования ТЭЦ-2 с '+DateToStr(date1)+' по '+DateToStr(date2);
         end;
      end;

      case inputprint of
      0: begin //email monitor
         end;
      1: begin //email
         end;
      2: begin //monitor
           dmReports.frReport.ShowReport
         end;
      3: begin //print
           if dmReports.frReport.PrepareReport then
             dmReports.frReport.PrintPreparedReport('',1,true,frAll);
         end;
      end;     
  finally
    HideProcessCancel;
  end;
end;

procedure TfrmMain.UpdateStatusBar;
var
  dt: TDateTime;
  aq: TADOQuery;

  procedure SetFnt(p1: TTBXStatusPanel; dt1: TDateTime; tp1: Integer; aq1: TADOQuery);
  begin
    p1.Caption := FormatDateTime('dd',dt1);
    if aq1.Locate('date;type',VarArrayOf([dt1,tp1]),[]) then
    begin
      p1.FontSettings.Bold := tsFalse;
      p1.FontSettings.Color := clGreen;
      p1.Hint:=aq1.FieldByName('comment').AsString;
    end
    else
    begin
      p1.FontSettings.Bold := tsTrue;
      p1.FontSettings.Color := clRed;
      p1.Hint:='неотослано';
    end;  
  end;
begin
  sbStatus.Panels[1].Caption:=dmData.ParseStr('comp:user = <%computer%>:<%user%>');
  dt:=StrToDate(DateToStr(Date()));
  aq := SelectQuerySimple(dmData.adcData,'select * from tblSendMail where date>='
        +DateToAccssSQLStr(dt-4)+' and date<='+DateToAccssSQLStr(dt)+' and type in (1,2)');
  try
// sd
    SetFnt(sbStatus.Panels[4],dt-4,1,aq);
    SetFnt(sbStatus.Panels[5],dt-3,1,aq);
    SetFnt(sbStatus.Panels[6],dt-2,1,aq);
    SetFnt(sbStatus.Panels[7],dt-1,1,aq);
    SetFnt(sbStatus.Panels[8],dt,1,aq);
// aoeo
    SetFnt(sbStatus.Panels[11],dt-4,2,aq);
    SetFnt(sbStatus.Panels[12],dt-3,2,aq);
    SetFnt(sbStatus.Panels[13],dt-2,2,aq);
    SetFnt(sbStatus.Panels[14],dt-1,2,aq);
    SetFnt(sbStatus.Panels[15],dt,2,aq);
  finally
    aq.Free;
  end;  
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  UpdateStatusBar();
end;

end.
