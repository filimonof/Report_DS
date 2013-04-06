unit frmTeplo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, cxPC, cxControls, TBXExtItems, cxSpinEdit, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, DateUtils, DB, ADODB,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, TB2Item, TBX, TB2Dock,
  TB2Toolbar, TBXStatusBars;

type
  TfrmTeplo = class(TfrmSimple)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    TBXLabelItem3: TTBXLabelItem;
    TBXItem1: TTBXItem;
    cbiMonth: TcxComboBox;
    TBControlItem1: TTBControlItem;
    seiYear: TcxSpinEdit;
    TBControlItem2: TTBControlItem;
    adsTeploFact: TADODataSet;
    adsTeploPlan: TADODataSet;
    adsPlanParam: TADODataSet;
    dsTeploFact: TDataSource;
    saTeploPlan: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    adsTeploFactid: TAutoIncField;
    adsTeploFactdate: TDateTimeField;
    adsTeploFacttec2_par: TFloatField;
    adsTeploFacttec2_voda: TFloatField;
    adsTeploFacttec3_par: TFloatField;
    adsTeploFacttec3_voda: TFloatField;
    adsTeploFactCK_par: TFloatField;
    adsTeploFactCK_voda: TFloatField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn9: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn10: TcxGridDBBandedColumn;
    adsTeploFactitPar: TFloatField;
    adsTeploFactitVoda: TFloatField;
    adsTeploFactitItogo: TFloatField;
    adsTeploPlanid: TAutoIncField;
    adsTeploPlandate: TDateTimeField;
    adsTeploPlankoef: TFloatField;
    adsTeploPlanvalue: TFloatField;
    adsPlanParamid: TAutoIncField;
    adsPlanParammonth: TIntegerField;
    adsPlanParamyear: TIntegerField;
    adsPlanParamparam: TFloatField;
    TBXDock5: TTBXDock;
    TBXDock6: TTBXDock;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    TBXToolbar2: TTBXToolbar;
    TBXLabelItem4: TTBXLabelItem;
    sePlan: TcxSpinEdit;
    TBControlItem3: TTBControlItem;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    tbOK: TTBXToolbar;
    TBXLabelItem5: TTBXLabelItem;
    TBControlItem4: TTBControlItem;
    TBXLabelItem6: TTBXLabelItem;
    TBControlItem9: TTBControlItem;
    TBXLabelItem11: TTBXLabelItem;
    TBXLabelItem12: TTBXLabelItem;
    TBControlItem11: TTBControlItem;
    TBXLabelItem13: TTBXLabelItem;
    TBXItem3: TTBXItem;
    cbDay1: TcxComboBox;
    cbDay2: TcxComboBox;
    teValue: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure adsTeploFactCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure adsTeploPlankoefChange(Sender: TField);
    procedure TBXItem1Click(Sender: TObject);
    procedure sePlanPropertiesChange(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsTeploFactFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsTeploPlanFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsPlanParamFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    rPlan: Real;
    bLocalLoged: Boolean;
  public
    procedure ReloadTeploPlan(m,y: Integer);
    procedure ReloadTeploFact(m,y: Integer);
    procedure GetTeploPlan(m,y: Integer);
  end;

var
  frmTeplo: TfrmTeplo;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmTeplo.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  bLocalLoged:=true;  
  Application.ProcessMessages;
  seiYear.Value := YearOf(Now());
  cbiMonth.Properties.Items.Clear;
    for i:=1 to 12 do
      cbiMonth.Properties.Items.Add(mMonthDay[i]);
  cbiMonth.ItemIndex := MonthOf(Now())-1;

  cbDay1.Properties.Items.Clear;
  cbDay2.Properties.Items.Clear;
  for i:=1 to DaysInAMonth(YearOf(Now()),MonthOf(Now())) do
  begin
    cbDay1.Properties.Items.Add(IntToStr(i));
    cbDay2.Properties.Items.Add(IntToStr(i));
  end;
  cbDay1.ItemIndex := 0;
  cbDay2.ItemIndex := DaysInAMonth(YearOf(Now()),MonthOf(Now()))-1;
  teValue.Value:=0;
{  все равно сработает при изменении   cbiMonth.ItemIndex := MonthOf(Now())-1;
  ReloadTeploPlan(MonthOf(Now),YearOf(Now));
  ReloadTeploFact(MonthOf(Now),YearOf(Now));
  GetTeploPlan(MonthOf(Now),YearOf(Now));
}
end;

procedure TfrmTeplo.adsTeploFactCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['itPar']:=DataSet['tec2_par']+DataSet['tec3_par']+DataSet['CK_par'];
  DataSet['itVoda']:=DataSet['tec2_voda']+DataSet['tec3_voda']+DataSet['CK_voda'];
  DataSet['itItogo']:=DataSet['itPar']+DataSet['itVoda'];
end;

procedure TfrmTeplo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if adsTeploFact.State in [dsEdit, dsInsert] then
    adsTeploFact.Post;
  if adsTeploPlan.State in [dsEdit, dsInsert] then
    adsTeploPlan.Post;
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Post;
end;

procedure TfrmTeplo.ReloadTeploPlan(m,y: Integer);
var
  d, day1, day2: TDateTime; 
begin
//  cxGrid2.BeginUpdate;
  adsTeploPlan.DisableControls;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');  
  try
    if adsTeploPlan.State in [dsEdit, dsInsert] then
       adsTeploPlan.Cancel;
    if adsTeploPlan.Active then
      adsTeploPlan.Close;
    adsTeploPlan.CommandType := cmdText;
    adsTeploPlan.CommandText:='select * from tPlanValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsTeploPlan.Open;
    d:=day1;
    repeat
      if not adsTeploPlan.Locate('date',d,[]) then
      begin
        adsTeploPlan.Insert;
        adsTeploPlandate.AsDateTime:=d;
        adsTeploPlan.Post;
        Application.ProcessMessages;
      end;
      d:=d+1;
    until d>=(day2+1);
    if adsTeploPlan.State in [dsEdit, dsInsert] then
      adsTeploPlan.Cancel;
    if adsTeploPlan.Active then
      adsTeploPlan.Close;
    adsTeploPlan.CommandType := cmdText;
    adsTeploPlan.CommandText:='select * from tPlanValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsTeploPlan.Open;
    adsTeploPlan.Locate('date',Date(),[]);
  finally
//    cxGrid2.EndUpdate;
    adsTeploPlan.EnableControls;
    HideProcessCancel;
  end;       
end;

procedure TfrmTeplo.ReloadTeploFact(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
//  cxGrid1.BeginUpdate;
//  adsTeploFact.DisableControls;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    if adsTeploFact.State in [dsEdit, dsInsert] then
      adsTeploFact.Cancel;
    if adsTeploFact.Active then
      adsTeploFact.Close;
    adsTeploFact.CommandType := cmdText;
    adsTeploFact.CommandText:='select * from tFactValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsTeploFact.Open;
    d:=day1;
    repeat
      if not adsTeploFact.Locate('date',d,[]) then
      begin
        adsTeploFact.Insert;
        adsTeploFactdate.AsDateTime:=d;
        adsTeploFact.Post;
        Application.ProcessMessages;
      end;
      d:=d+1;
    until d>=(day2+1);
    if adsTeploFact.State in [dsEdit, dsInsert] then
      adsTeploFact.Cancel;
    if adsTeploFact.Active then
      adsTeploFact.Close;
    adsTeploFact.CommandType := cmdText;
    adsTeploFact.CommandText:='select * from tFactValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsTeploFact.Open;
    adsTeploFact.Locate('date',Date(),[]);
  finally
//    adsTeploFact.EnableControls;
  //    cxGrid1.EndUpdate;
    HideProcessCancel;
  end;
end;

procedure TfrmTeplo.GetTeploPlan(m,y: Integer);
begin  
  adsPlanParam.DisableControls;
  ShowProcessCancel(Application.MainForm,'Чтение данных...');  
  try
    if adsPlanParam.State in [dsEdit, dsInsert] then
      adsPlanParam.Cancel;
    if adsPlanParam.Active then
      adsPlanParam.Close;
    adsPlanParam.CommandType := cmdText;
    adsPlanParam.CommandText := 'select top 1 * from tPlanParam where [month]='+IntToStr(m)+' and [year]='+IntToStr(y);
    adsPlanParam.Open;
    if not adsPlanParam.Locate('month;year',VarArrayOf([m,y]),[]) then
    begin
      adsPlanParam.Insert;
      adsPlanParammonth.AsInteger:=m;
      adsPlanParamyear.AsInteger:=y;
      adsPlanParam.Post;
      Application.ProcessMessages;
      if adsPlanParam.State in [dsEdit, dsInsert] then
        adsPlanParam.Cancel;
      if adsPlanParam.Active then
        adsPlanParam.Close;
      adsPlanParam.CommandType := cmdText;
      adsPlanParam.CommandText := 'select top 1 * from tPlanParam where [month]='+IntToStr(m)+' and [year]='+IntToStr(y);
      adsPlanParam.Open;
      rPlan:=0;
    end
    else
    begin
      rPlan := adsPlanParamparam.AsFloat;
    end;
    bLocalLoged := false;
    sePlan.Value := rPlan;
    bLocalLoged := true;    
  finally
    adsPlanParam.EnableControls;
    HideProcessCancel;
  end;             
end;

procedure TfrmTeplo.adsTeploPlankoefChange(Sender: TField);
begin
  inherited;
  adsTeploPlanvalue.AsFloat := Round (adsTeploPlankoef.AsFloat * rPlan / 100);
end;

procedure TfrmTeplo.TBXItem1Click(Sender: TObject);
var
  m,y,i : Integer;
begin
  inherited;
  m:=cbiMonth.ItemIndex+1;
  y:=Round(StrToInt(seiYear.Text));
  cbiMonth.DroppedDown:=False;
  Application.ProcessMessages;
  if (m in [1..12]) and (y>1) then
  begin
    cbDay1.Properties.Items.Clear;
    cbDay2.Properties.Items.Clear;
    for i:=1 to DaysInAMonth(y,m) do
    begin
      cbDay1.Properties.Items.Add(IntToStr(i));
      cbDay2.Properties.Items.Add(IntToStr(i));
    end;
    cbDay1.ItemIndex := 0;
    cbDay2.ItemIndex := DaysInAMonth(y,m)-1;
    teValue.Value:=0;
  
    ReloadTeploPlan(m,y);
    ReloadTeploFact(m,y);    
    GetTeploPlan(m,y);
  end;
end;

procedure TfrmTeplo.sePlanPropertiesChange(Sender: TObject);
var
  b: TBookmark;
  bPreLog: Boolean;
begin
  inherited;
  rPlan:=VarAsType(sePlan.Value,varDouble);
  adsPlanParam.Edit;
  adsPlanParamparam.AsFloat:=rPlan;
  adsPlanParam.Post;
  Application.ProcessMessages;
  adsTeploPlan.DisableControls;
//  cxGrid2.BeginUpdate;
  b:=adsTeploPlan.GetBookmark;
  bPreLog:=bLocalLoged;
  bLocalLoged := false;
  try
    adsTeploPlan.First;
    while not adsTeploPlan.Eof do
    begin
      adsTeploPlan.Edit;
      adsTeploPlanvalue.AsFloat := Round( adsTeploPlankoef.AsFloat * rPlan / 100);
      adsTeploPlan.Post;
      adsTeploPlan.Next;
    end;
    adsTeploPlan.GotoBookmark(b);
  finally
    bLocalLoged := bPreLog;  
    adsTeploPlan.FreeBookmark(b);
//    cxGrid2.EndUpdate;
    adsTeploPlan.EnableControls;
  end;
end;

procedure TfrmTeplo.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTeplo.TBXItem3Click(Sender: TObject);
var d,day1,day2 : TDateTime;
begin
  inherited;
 if MessageDlg('Вы уверены?', mtConfirmation,[mbOk,mbCancel],0) = mrOk then  
  if teValue.Value>=0 then
  begin
    if adsTeploPlan.State in [dsEdit, dsInsert] then
      adsTeploPlan.Cancel;
    day1:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay1.ItemIndex+1,0,0,0,0);
    day2:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay2.ItemIndex+1,0,0,0,0);
    d:=day1;
    repeat
      if  adsTeploPlan.Locate('date',d,[]) then
      begin
        adsTeploPlan.Edit;
        adsTeploPlankoef.AsFloat := teValue.Value;
        adsTeploPlan.Post;
      end;  
      Application.ProcessMessages;
      d:=d+1;
    until d>(day2);
  end;
end;

procedure TfrmTeplo.adsTeploFactFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tFactValue',adsTeploFactdate.AsDateTime,adsTeploFactid.AsInteger,Fields[0]);
end;

procedure TfrmTeplo.adsTeploPlanFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tPlanValue',adsTeploPlandate.AsDateTime,adsTeploPlanid.AsInteger,Fields[0]);
end;

procedure TfrmTeplo.adsPlanParamFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tPlanParam',EncodeDate(adsPlanParamyear.AsInteger,adsPlanParammonth.AsInteger,1),adsPlanParamid.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmTeplo);
end.
