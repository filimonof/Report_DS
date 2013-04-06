unit frmEnergo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, TB2Dock, TB2Toolbar, TBX, TBXStatusBars, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  DBClient, ADODB, DateUtils, ImgList, TB2Item, TBXDkPanels, StdCtrls,
  cxRadioGroup, cxContainer, cxGroupBox, cxLabel, cxTextEdit, cxPC,
  TBXExtItems, TB2ExtItems, cxGridBandedTableView, cxGridDBBandedTableView,
  TB2ToolWindow, cxCheckBox, cxMaskEdit, cxSpinEdit, cxDropDownEdit;

type
  TfrmEnergo = class(TfrmSimple)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsEnergoPlan: TDataSource;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    adsEnergoPlan: TADODataSet;
    adsEnergoPlanid: TAutoIncField;
    adsEnergoPlandate: TDateTimeField;
    adsEnergoPlankoef_p: TFloatField;
    adsEnergoPlanvalue_p: TFloatField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    TBXLabelItem3: TTBXLabelItem;
    TBXItem1: TTBXItem;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    adsEnergoFact: TADODataSet;
    cxGrid2DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn7: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn8: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn9: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn10: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn11: TcxGridDBColumn;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    dsEnergoFact: TDataSource;
    cxGrid2DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn9: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn10: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn11: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn12: TcxGridDBBandedColumn;
    TBXDock5: TTBXDock;
    TBXToolbar2: TTBXToolbar;
    TBXLabelItem4: TTBXLabelItem;
    cxGrid2DBBandedTableView1DBBandedColumn13: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn14: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DBBandedColumn15: TcxGridDBBandedColumn;
    adsEnergoFactid: TAutoIncField;
    adsEnergoFactdate: TDateTimeField;
    adsEnergoFacttec2_v: TFloatField;
    adsEnergoFacttec2_sn: TFloatField;
    adsEnergoFacttec3_v: TFloatField;
    adsEnergoFacttec3_sn: TFloatField;
    adsEnergoFacttec4_v: TFloatField;
    adsEnergoFacttec4_sn: TFloatField;
    adsEnergoFactper_ryazan: TFloatField;
    adsEnergoFactper_penza: TFloatField;
    adsEnergoFactper_ylyan: TFloatField;
    adsEnergoFactper_chuv: TFloatField;
    adsEnergoFactper_nnov: TFloatField;
    adsEnergoFactit_vyr: TFloatField;
    adsEnergoFactit_potr: TFloatField;
    adsEnergoFactit_sal: TFloatField;
    TBXDock6: TTBXDock;
    TBXToolWindow1: TTBXToolWindow;
    cdAuto: TcxCheckBox;
    adsPlanParam: TADODataSet;
    adsPlanParamid: TAutoIncField;
    adsPlanParammonth: TIntegerField;
    adsPlanParamyear: TIntegerField;
    seVyrTEC2: TcxSpinEdit;
    TBControlItem1: TTBControlItem;
    adsPlanParamparam_p: TFloatField;
    cbiMonth: TcxComboBox;
    TBControlItem3: TTBControlItem;
    seiYear: TcxSpinEdit;
    TBControlItem5: TTBControlItem;
    TBXDock7: TTBXDock;
    TBXItem2: TTBXItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    adsEnergoPlankoef_v_tec2: TFloatField;
    adsEnergoPlanvalue_v_tec2: TFloatField;
    adsEnergoPlankoef_v_tec3: TFloatField;
    adsEnergoPlanvalue_v_tec3: TFloatField;
    adsEnergoPlankoef_v_tec4: TFloatField;
    adsEnergoPlanvalue_v_tec4: TFloatField;
    adsPlanParamparam_v_tec2: TFloatField;
    adsPlanParamparam_v_tec3: TFloatField;
    adsPlanParamparam_v_tec4: TFloatField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1koef_p: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1value_p: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1koef_v_tec2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1value_v_tec2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1koef_v_tec3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1value_v_tec3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1koef_v_tec4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1value_v_tec4: TcxGridDBBandedColumn;
    TBXLabelItem7: TTBXLabelItem;
    TBXLabelItem8: TTBXLabelItem;
    TBControlItem6: TTBControlItem;
    seVyrTEC4: TcxSpinEdit;
    TBControlItem7: TTBControlItem;
    seVyrTECGT: TcxSpinEdit;
    TBXToolbar3: TTBXToolbar;
    TBXLabelItem9: TTBXLabelItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXLabelItem10: TTBXLabelItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBControlItem8: TTBControlItem;
    sePotr: TcxSpinEdit;
    TBControlItem2: TTBControlItem;
    teSaldo: TcxTextEdit;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    tbOK: TTBXToolbar;
    TBXLabelItem5: TTBXLabelItem;
    TBControlItem4: TTBControlItem;
    TBXLabelItem6: TTBXLabelItem;
    TBControlItem9: TTBControlItem;
    TBXLabelItem11: TTBXLabelItem;
    TBControlItem10: TTBControlItem;
    TBXLabelItem12: TTBXLabelItem;
    TBXLabelItem13: TTBXLabelItem;
    TBXItem3: TTBXItem;
    cbTypeData: TcxComboBox;
    cbDay1: TcxComboBox;
    cbDay2: TcxComboBox;
    TBControlItem11: TTBControlItem;
    teValue: TcxSpinEdit;
    adsEnergoFacttecGT_v: TFloatField;
    adsEnergoFacttecGT_sn: TFloatField;
    adsEnergoPlankoef_v_tecGT: TFloatField;
    adsEnergoPlanvalue_v_tecGT: TFloatField;
    adsPlanParamparam_v_tecGT: TFloatField;
    TBXLabelItem14: TTBXLabelItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBControlItem12: TTBControlItem;
    seVyrMorcem: TcxSpinEdit;
    adsEnergoPlankoef_v_morcem: TFloatField;
    adsEnergoPlanvalue_v_morcem: TFloatField;
    adsPlanParamparam_v_morcem: TFloatField;
    cxGrid1DBBandedTableView1koef_v_morcem: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1value_v_morcem: TcxGridDBBandedColumn;
    adsEnergoFactmorcem_v: TFloatField;
    adsEnergoFactmorcem_sn: TFloatField;
    cxGrid2DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1Column2: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure adsEnergoFactCalcFields(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TBXItem1Click(Sender: TObject);
    procedure cdAutoClick(Sender: TObject);
    procedure adsEnergoPlankoef_pChange(Sender: TField);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure sePotrPropertiesChange(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure adsEnergoPlankoef_v_tec2Change(Sender: TField);
    procedure adsEnergoPlankoef_v_tec3Change(Sender: TField);
    procedure adsEnergoPlankoef_v_tec4Change(Sender: TField);
    procedure seVyrTECGTPropertiesChange(Sender: TObject);
    procedure seVyrTEC4PropertiesChange(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsEnergoFactFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsEnergoPlanFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsPlanParamFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsEnergoPlankoef_v_tecGTChange(Sender: TField);
    procedure seVyrMorcemPropertiesChange(Sender: TObject);
    procedure adsEnergoPlankoef_v_morcemChange(Sender: TField);
  private
    rVyrTEC2, rVyrTECGT, rVyrTEC4, rPotr, rVyrMorcem: Real;
    bLocalLoged: Boolean;
  public
    procedure ReloadEnergoPlan(m,y: Integer);
    procedure ReloadEnergoFact(m,y: Integer);
    procedure GetEnergoPlan(m,y: Integer);
  end;

var
  frmEnergo: TfrmEnergo;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmEnergo.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  Application.ProcessMessages;
  bLocalLoged := true;  
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
  cbTypeData.ItemIndex:=0;
  teValue.Value:=0;
end;


procedure TfrmEnergo.ReloadEnergoPlan(m,y: Integer);
var
  d, day1, day2: TDateTime; 
begin
//  adsEnergoPlan.DisableControls;
//  cxGrid1.BeginUpdate;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    if adsEnergoPlan.State in [dsEdit, dsInsert] then
       adsEnergoPlan.Cancel;
    if adsEnergoPlan.Active then
      adsEnergoPlan.Close;
    adsEnergoPlan.CommandType := cmdText;
    adsEnergoPlan.CommandText:='select * from ePlanValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsEnergoPlan.Open;
    d:=day1;
    repeat
      if not adsEnergoPlan.Locate('date',d,[]) then
      begin
        adsEnergoPlan.Insert;
        adsEnergoPlandate.AsDateTime:=d;
        adsEnergoPlan.Post;
        Application.ProcessMessages;
      end;
      d:=d+1;
    until d>=(day2+1);
    if adsEnergoPlan.State in [dsEdit, dsInsert] then
      adsEnergoPlan.Cancel;
    if adsEnergoPlan.Active then
      adsEnergoPlan.Close;
    adsEnergoPlan.CommandType := cmdText;
    adsEnergoPlan.CommandText:='select * from ePlanValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsEnergoPlan.Open;
    adsEnergoPlan.Locate('date',Date(),[]);   
  finally
//    cxGrid1.EndUpdate;
//    adsEnergoPlan.EnableControls;
    HideProcessCancel;
  end;       
end;

procedure TfrmEnergo.ReloadEnergoFact(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
  adsEnergoFact.DisableControls;
//  cxGrid2.BeginUpdate;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');  
  try
    if adsEnergoFact.State in [dsEdit, dsInsert] then
      adsEnergoFact.Cancel;
    if adsEnergoFact.Active then
      adsEnergoFact.Close;
    adsEnergoFact.CommandType := cmdText;
    adsEnergoFact.CommandText:='select * from eFactValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsEnergoFact.Open;
    d:=day1;
    repeat
      if not adsEnergoFact.Locate('date',d,[]) then
      begin
        adsEnergoFact.Insert;
        adsEnergoFactdate.AsDateTime:=d;
        adsEnergoFact.Post;
        Application.ProcessMessages;
      end;
      d:=d+1;
    until d>=(day2+1);
    if adsEnergoFact.State in [dsEdit, dsInsert] then
      adsEnergoFact.Cancel;
    if adsEnergoFact.Active then
      adsEnergoFact.Close;
    adsEnergoFact.CommandType := cmdText;
    adsEnergoFact.CommandText:='select * from eFactValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsEnergoFact.Open;
    adsEnergoFact.Locate('date',Date(),[]);
  finally
//    cxGrid2.EndUpdate;
    adsEnergoFact.EnableControls;
    HideProcessCancel;
  end;  
end;


procedure TfrmEnergo.GetEnergoPlan(m,y: Integer);
begin
  adsPlanParam.DisableControls;
  ShowProcessCancel(Application.MainForm,'Чтение данных...');  
  try
    if adsPlanParam.State in [dsEdit, dsInsert] then
      adsPlanParam.Cancel;
    if adsPlanParam.Active then
      adsPlanParam.Close;
    adsPlanParam.CommandType := cmdText;
    adsPlanParam.CommandText := 'select top 1 * from ePlanParam where [month]='+IntToStr(m)+' and [year]='+IntToStr(y);
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
      adsPlanParam.CommandText := 'select top 1 * from ePlanParam where [month]='+IntToStr(m)+' and [year]='+IntToStr(y);
      adsPlanParam.Open;
      rVyrTEC2:=0;
      rVyrTECGT:=0;
      rVyrTEC4:=0;
      rVyrMorcem:=0;
      rPotr:=0;
    end
    else
    begin
      rVyrTEC2 := adsPlanParamparam_v_tec2.AsFloat;
      rVyrTECGT := adsPlanParamparam_v_tecGT.AsFloat;
      rVyrTEC4 := adsPlanParamparam_v_tec4.AsFloat;
      rVyrMorcem := adsPlanParamparam_v_morcem.AsFloat;
      rPotr := adsPlanParamparam_p.AsFloat;
    end;
    bLocalLoged := false;
    seVyrTEC2.Value:=rVyrTEC2;
    seVyrTECGT.Value:=rVyrTECGT;
    seVyrTEC4.Value:=rVyrTEC4;
    seVyrMorcem.Value:=rVyrMorcem;
    sePotr.Value:=rPotr;
    teSaldo.Text := FloatToStr(rPotr-rVyrTEC2-rVyrTECGT-rVyrTEC4-rVyrMorcem);
    bLocalLoged := true;
  finally
    adsPlanParam.EnableControls;
    HideProcessCancel;
  end;
end;

procedure TfrmEnergo.adsEnergoFactCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['it_potr']:=DataSet['tec2_v']+DataSet['tecGT_v']+DataSet['tec4_v']+DataSet['morcem_v']+DataSet['per_ryazan']+DataSet['per_penza']+DataSet['per_ylyan']+DataSet['per_chuv']+DataSet['per_nnov'];
  DataSet['it_vyr']:=DataSet['tec2_v']+DataSet['tecGT_v']+DataSet['tec4_v']+DataSet['morcem_v'];
  DataSet['it_sal']:=DataSet['per_ryazan']+DataSet['per_penza']+DataSet['per_ylyan']+DataSet['per_chuv']+DataSet['per_nnov'];
end;

procedure TfrmEnergo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsEnergoFact.State in [dsEdit, dsInsert] then
    adsEnergoFact.Post;
  if adsEnergoPlan.State in [dsEdit, dsInsert] then
    adsEnergoPlan.Post;
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Post;
end;

procedure TfrmEnergo.TBXItem1Click(Sender: TObject);
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

    ReloadEnergoFact(m,y);
    ReloadEnergoPlan(m,y);
    GetEnergoPlan(m,y);
  end;  
end;

procedure TfrmEnergo.cdAutoClick(Sender: TObject);
begin
  inherited;
  cxGrid2DBBandedTableView1.OptionsView.ColumnAutoWidth:=cdAuto.Checked;
end;

procedure TfrmEnergo.adsEnergoPlankoef_pChange(Sender: TField);
begin
  inherited;
  adsEnergoPlanvalue_p.AsFloat := Round(adsEnergoPlankoef_p.AsFloat * rPotr / 100);
end;

procedure TfrmEnergo.adsEnergoPlankoef_v_tec3Change(Sender: TField);
begin
  inherited;
//  adsEnergoPlanvalue_v_tec3.AsFloat :=  Round(adsEnergoPlankoef_v_tec3.AsFloat * rVyrTEC3 / 100);
end;

procedure TfrmEnergo.adsEnergoPlankoef_v_tecGTChange(Sender: TField);
begin
  inherited;
  adsEnergoPlanvalue_v_tecGT.AsFloat :=  Round(adsEnergoPlankoef_v_tecGT.AsFloat * rVyrTECGT / 100);
end;

procedure TfrmEnergo.adsEnergoPlankoef_v_tec4Change(Sender: TField);
begin
  inherited;
  adsEnergoPlanvalue_v_tec4.AsFloat := Round(adsEnergoPlankoef_v_tec4.AsFloat * rVyrTEC4 / 100);
end;

procedure TfrmEnergo.adsEnergoPlankoef_v_tec2Change(Sender: TField);
begin
  inherited;
  adsEnergoPlanvalue_v_tec2.AsFloat := Round( adsEnergoPlankoef_v_tec2.AsFloat * rVyrTEC2 / 100);
end;

procedure TfrmEnergo.adsEnergoPlankoef_v_morcemChange(Sender: TField);
begin
  inherited;
  adsEnergoPlanvalue_v_morcem.AsFloat := Round(adsEnergoPlankoef_v_morcem.AsFloat * rVyrMorcem / 100);
end;


procedure TfrmEnergo.cxSpinEdit1PropertiesChange(Sender: TObject);
var
  b: TBookmark;
  bPreLog: Boolean;
begin
  rVyrTEC2:=VarAsType(seVyrTEC2.Value,varDouble);
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamparam_v_tec2.AsFloat:=rVyrTEC2;
  adsPlanParam.Post;
  Application.ProcessMessages;
  adsEnergoPlan.DisableControls;
//  cxGrid1.BeginUpdate;
  b:=adsEnergoPlan.GetBookmark;
  try
    bPreLog:=bLocalLoged;
    bLocalLoged := false;
    adsEnergoPlan.First;
    while not adsEnergoPlan.Eof do
    begin
      adsEnergoPlan.Edit;
      adsEnergoPlanvalue_v_tec2.AsFloat := Round(adsEnergoPlankoef_v_tec2.AsFloat * rVyrTEC2 / 100);
      adsEnergoPlan.Post;
      adsEnergoPlan.Next;
    end;
    adsEnergoPlan.GotoBookmark(b);
  finally
    bLocalLoged := bPreLog;
    teSaldo.Text := FloatToStr(rPotr-rVyrTEC2-rVyrTECGT-rVyrTEC4-rVyrMorcem);
    adsEnergoPlan.FreeBookmark(b);
//    cxGrid1.EndUpdate;
    adsEnergoPlan.EnableControls;
  end;
end;

procedure TfrmEnergo.sePotrPropertiesChange(Sender: TObject);
var
  b: TBookmark;
  bPreLog: Boolean;
begin
  inherited;
  rPotr:=VarAsType(sePotr.Value,varDouble);
  adsPlanParam.Edit;
  adsPlanParamparam_p.AsFloat:=rPotr;
  adsPlanParam.Post;
  Application.ProcessMessages;
  adsEnergoPlan.DisableControls;
//  cxGrid1.BeginUpdate;
  b:=adsEnergoPlan.GetBookmark;
  try
    bPreLog:=bLocalLoged;
    bLocalLoged := false;
    adsEnergoPlan.First;
    while not adsEnergoPlan.Eof do
    begin
      adsEnergoPlan.Edit;
      adsEnergoPlanvalue_p.AsFloat := Round( adsEnergoPlankoef_p.AsFloat * rPotr / 100);
      adsEnergoPlan.Post;
      adsEnergoPlan.Next;
    end;
    adsEnergoPlan.GotoBookmark(b);
  finally
    bLocalLoged := bPreLog;
    teSaldo.Text := FloatToStr(rPotr-rVyrTEC2-rVyrTECGT-rVyrTEC4-rVyrMorcem);
    adsEnergoPlan.FreeBookmark(b);
//    cxGrid1.EndUpdate;
    adsEnergoPlan.EnableControls;
  end;
end;

procedure TfrmEnergo.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmEnergo.seVyrTECGTPropertiesChange(Sender: TObject);
var
  b: TBookmark;
  bPreLog: Boolean;
begin
  rVyrTECGT:=VarAsType(seVyrTECGT.Value,varDouble);
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamparam_v_tecGT.AsFloat:=rVyrTECGT;
  adsPlanParam.Post;
  Application.ProcessMessages;
  adsEnergoPlan.DisableControls;
//  cxGrid1.BeginUpdate;
  b:=adsEnergoPlan.GetBookmark;
  try
    bPreLog:=bLocalLoged;
    bLocalLoged := false;
    adsEnergoPlan.First;
    while not adsEnergoPlan.Eof do
    begin
      adsEnergoPlan.Edit;
      adsEnergoPlanvalue_v_tecGT.AsFloat := Round( adsEnergoPlankoef_v_tecGT.AsFloat * rVyrTECGT / 100);
      adsEnergoPlan.Post;
      adsEnergoPlan.Next;
    end;
    adsEnergoPlan.GotoBookmark(b);
  finally
    bLocalLoged := bPreLog;
    teSaldo.Text := FloatToStr(rPotr-rVyrTEC2-rVyrTECGT-rVyrTEC4-rVyrMorcem);
    adsEnergoPlan.FreeBookmark(b);
//    cxGrid1.EndUpdate;
    adsEnergoPlan.EnableControls;
  end;
end;

procedure TfrmEnergo.seVyrTEC4PropertiesChange(Sender: TObject);
var
  b: TBookmark;
  bPreLog: Boolean;
begin
  rVyrTEC4:=VarAsType(seVyrTEC4.Value,varDouble);
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamparam_v_tec4.AsFloat:=rVyrTEC4;
  adsPlanParam.Post;
  Application.ProcessMessages;
  adsEnergoPlan.DisableControls;
  cxGrid1.BeginUpdate;
  b:=adsEnergoPlan.GetBookmark;
  try
    bPreLog:=bLocalLoged;
    bLocalLoged := false;
    adsEnergoPlan.First;
    while not adsEnergoPlan.Eof do
    begin
      adsEnergoPlan.Edit;
      adsEnergoPlanvalue_v_tec4.AsFloat := Round( adsEnergoPlankoef_v_tec4.AsFloat * rVyrTEC4 / 100);
      adsEnergoPlan.Post;
      adsEnergoPlan.Next;
    end;
    adsEnergoPlan.GotoBookmark(b);
  finally
    bLocalLoged := bPreLog;
    teSaldo.Text := FloatToStr(rPotr-rVyrTEC2-rVyrTECGT-rVyrTEC4-rVyrMorcem);
    adsEnergoPlan.FreeBookmark(b);
    cxGrid1.EndUpdate;
    adsEnergoPlan.EnableControls;
  end;
end;

procedure TfrmEnergo.TBXItem3Click(Sender: TObject);
var d,day1,day2 : TDateTime;
begin
  inherited;
 if MessageDlg('Вы уверены?', mtConfirmation,[mbOk,mbCancel],0) = mrOk then
  if teValue.Value>=0 then
  begin
    if adsEnergoPlan.State in [dsEdit, dsInsert] then
      adsEnergoPlan.Cancel;
    day1:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay1.ItemIndex+1,0,0,0,0);
    day2:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay2.ItemIndex+1,0,0,0,0);
    d:=day1;
    repeat
      if adsEnergoPlan.Locate('date',d,[]) then
      begin
        adsEnergoPlan.Edit;
        case cbTypeData.ItemIndex of
        0: adsEnergoPlankoef_v_tec2.AsFloat := teValue.Value;
        1: adsEnergoPlankoef_v_tecGT.AsFloat := teValue.Value;
        2: adsEnergoPlankoef_v_tec4.AsFloat := teValue.Value;
        3: adsEnergoPlankoef_v_morcem.AsFloat := teValue.Value;
        4: adsEnergoPlankoef_p.AsFloat      := teValue.Value;  
        end;
        adsEnergoPlan.Post;
      end;  
      Application.ProcessMessages;
      d:=d+1;
    until d>(day2);
  end;
end;

procedure TfrmEnergo.adsEnergoFactFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('eFactValue',adsEnergoFactdate.AsDateTime,adsEnergoFactid.AsInteger,Fields[0]);
end;

procedure TfrmEnergo.adsEnergoPlanFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('ePlanValue',adsEnergoPlandate.AsDateTime,adsEnergoPlanid.AsInteger,Fields[0]);
end;

procedure TfrmEnergo.adsPlanParamFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('ePlanParam',EncodeDate(adsPlanParamyear.AsInteger,adsPlanParammonth.AsInteger,1),adsPlanParamid.AsInteger,Fields[0]);
end;

procedure TfrmEnergo.seVyrMorcemPropertiesChange(Sender: TObject);
var
  b: TBookmark;
  bPreLog: Boolean;
begin
  rVyrMorcem:=VarAsType(seVyrMorcem.Value,varDouble);
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamparam_v_morcem.AsFloat:=rVyrMorcem;
  adsPlanParam.Post;
  Application.ProcessMessages;
  adsEnergoPlan.DisableControls;
  cxGrid1.BeginUpdate;
  b:=adsEnergoPlan.GetBookmark;
  try
    bPreLog:=bLocalLoged;
    bLocalLoged := false;
    adsEnergoPlan.First;
    while not adsEnergoPlan.Eof do
    begin
      adsEnergoPlan.Edit;
      adsEnergoPlanvalue_v_morcem.AsFloat := Round( adsEnergoPlankoef_v_morcem.AsFloat * rVyrMorcem / 100);
      adsEnergoPlan.Post;
      adsEnergoPlan.Next;
    end;
    adsEnergoPlan.GotoBookmark(b);
  finally
    bLocalLoged := bPreLog;
    teSaldo.Text := FloatToStr(rPotr-rVyrTEC2-rVyrTECGT-rVyrTEC4-rVyrMorcem);
    adsEnergoPlan.FreeBookmark(b);
    cxGrid1.EndUpdate;
    adsEnergoPlan.EnableControls;
  end;
end;                 

initialization
  RegisterClass(TfrmEnergo);
end.
