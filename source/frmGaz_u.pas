unit frmGaz_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TB2Toolbar, TBXExtItems, cxSpinEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxPC, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxHeader, cxHint, cxSplitter,
  cxInplaceContainer, cxVGrid, cxDBVGrid, cxCalendar, ADODB, cxCalc,
  cxDBLookupComboBox, DateUtils;

type
  TfrmGaz = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    TBXLabelItem3: TTBXLabelItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    cbiMonth: TcxComboBox;
    TBControlItem1: TTBControlItem;
    seiYear: TcxSpinEdit;
    TBControlItem2: TTBControlItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TBXDock5: TTBXDock;
    TBXDock6: TTBXDock;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    adsObject: TADODataSet;
    adsPlanValue: TADODataSet;
    adsType: TADODataSet;
    dsObject: TDataSource;
    dsPlanValue: TDataSource;
    dsType: TDataSource;
    adsObjectID: TAutoIncField;
    adsObjectname: TWideStringField;
    adsTypeID: TAutoIncField;
    adsTypename: TWideStringField;
    adsPlanValueID: TAutoIncField;
    adsPlanValueobjectid: TIntegerField;
    adsPlanValuetypeid: TIntegerField;
    adsPlanValuedate1: TDateTimeField;
    adsPlanValuedate2: TDateTimeField;
    adsPlanValuevalue: TFloatField;
    adsPlanValuevalue_one: TFloatField;
    cxGrid3DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn3: TcxGridDBColumn;
    adsPlanValuename: TWideStringField;
    cxGrid3DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid3DBTableView1DBColumn6: TcxGridDBColumn;
    dsPlanValueToDay: TDataSource;
    adsPlanValueToDay: TADODataSet;
    adsPlanValueToDayID: TAutoIncField;
    adsPlanValueToDayplanvalueid: TIntegerField;
    adsPlanValueToDayobjectid: TIntegerField;
    adsPlanValueToDaytypeid: TIntegerField;
    adsPlanValueToDaydate: TDateTimeField;
    adsPlanValueToDayvalue: TFloatField;
    cxGrid2DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid2DBTableView1DBColumn6: TcxGridDBColumn;
    adsFactValue: TADODataSet;
    dsFactValue: TDataSource;
    adsFactValueID: TAutoIncField;
    adsFactValuedate: TDateTimeField;
    adsFactValuetec2: TFloatField;
    adsFactValuetec3: TFloatField;
    adsFactValuekc: TFloatField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    adsFactValueitItog: TFloatField;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    TBXToolbar2: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    adsFactValuekc_p: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure adsPlanValueAfterPost(DataSet: TDataSet);
    procedure adsPlanValueBeforeDelete(DataSet: TDataSet);
    procedure adsPlanValueBeforePost(DataSet: TDataSet);
    procedure adsFactValueCalcFields(DataSet: TDataSet);
    procedure adsPlanValueAfterInsert2(DataSet: TDataSet);
    procedure TBXItem3Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem6Click(Sender: TObject);
    procedure adsFactValueFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsPlanValueFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsPlanValueAfterInsert(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadGazFact(m,y: Integer);
    procedure ReloadGazPlan(m,y: Integer);
    procedure ChangeDate();
    procedure DeleteDate();
  end;

var
  frmGaz: TfrmGaz;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmGaz.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  bLocalLoged := true;
  Application.ProcessMessages;
  seiYear.Value := YearOf(Now());
  cbiMonth.Properties.Items.Clear;
    for i:=1 to 12 do
      cbiMonth.Properties.Items.Add(mMonthDay[i]);
  cbiMonth.ItemIndex := MonthOf(Now())-1;
  TcxGridTableView(cxGrid3.FocusedView).DataController.Groups.FullExpand;
{  все равно сработает при изменении   cbiMonth.ItemIndex := MonthOf(Now())-1;
  ReloadGazPlan(MonthOf(Now),YearOf(Now));
  ReloadGazFact(MonthOf(Now),YearOf(Now));
}
end;

procedure TfrmGaz.TBXItem1Click(Sender: TObject);
var
  m,y: Integer;
begin
  inherited;
  m:=cbiMonth.ItemIndex+1;
  y:=Round(StrToInt(seiYear.Text));
  cbiMonth.DroppedDown:=False;
  Application.ProcessMessages;
  if (m in [1..12]) and (y>1) then
  begin
    ReloadGazPlan(m,y);
    ReloadGazFact(m,y);
  end;
end;

procedure TfrmGaz.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmGaz.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if adsFactValue.State in [dsEdit, dsInsert] then
    adsFactValue.Post;
  if adsPlanValue.State in [dsEdit, dsInsert] then
    adsPlanValue.Post;
  if adsPlanValueToDay.State in [dsEdit, dsInsert] then
    adsPlanValueToDay.Post;
end;

procedure TfrmGaz.ReloadGazPlan(m,y: Integer);
var
  day1,day2: TDateTime;
begin
  if not adsObject.Active then
    adsObject.Open;
  if not adsType.Active then
    adsType.Open;   

  adsPlanValue.DisableControls;
  adsPlanValueToDay.DisableControls;
  cxGrid2.BeginUpdate;
  cxGrid3.BeginUpdate;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    if adsPlanValue.State in [dsEdit, dsInsert] then
       adsPlanValue.Cancel;
    if adsPlanValueToDay.State in [dsEdit, dsInsert] then
       adsPlanValueToDay.Cancel;
    if adsPlanValue.Active then
      adsPlanValue.Close;
    if adsPlanValueToDay.Active then
      adsPlanValueToDay.Close;

    adsPlanValue.CommandType := cmdText;
    adsPlanValue.CommandText :='select * from gPlanValue where ID in (select planvalueid from gPlanValueToDay where [date]='+DateToAccssSQLStr(day1)+')';
    adsPlanValue.Open;

    adsObject.First;
    while not adsObject.EOF do
    begin
      adsType.First;
      while not adsType.Eof do
      begin
        if not adsPlanValue.Locate('objectid;typeid',VarArrayOf([adsObjectID.AsInteger,adsTypeID.AsInteger]),[]) then
        begin
          adsPlanValue.Insert;
          adsPlanValueobjectid.AsInteger := adsObjectID.AsInteger;
          adsPlanValuetypeid.AsInteger := adsTypeID.AsInteger;
          adsPlanValuedate1.AsDateTime := day1;
          adsPlanValuedate2.AsDateTime := day2;
          adsPlanValuevalue.AsFloat:= 0;
          adsPlanValuename.AsString:='основное';
          adsPlanValue.Post;
        end;
        adsType.Next; 
      end;
      adsObject.Next;
    end;

    if adsPlanValue.State in [dsEdit, dsInsert] then
       adsPlanValue.Cancel;
    if adsPlanValue.Active then
      adsPlanValue.Close;
    adsPlanValue.CommandType := cmdText;
    adsPlanValue.CommandText :='select * from gPlanValue where ID in (select planvalueid from gPlanValueToDay where [date]='+DateToAccssSQLStr(day1)+')';
    adsPlanValue.Open;

    adsPlanValueToDay.CommandType := cmdText;
    adsPlanValueToDay.CommandText :='select * from gPlanValueToDay where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsPlanValueToDay.Open;

  finally
    cxGrid2.EndUpdate;
    cxGrid3.EndUpdate;              
    adsPlanValue.EnableControls ;
    adsPlanValueToDay.EnableControls;
    HideProcessCancel;
  end;
end;

procedure TfrmGaz.ReloadGazFact(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin       
  adsFactValue.DisableControls;
  cxGrid1.BeginUpdate;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');  
  try
    if adsFactValue.State in [dsEdit, dsInsert] then
       adsFactValue.Cancel;
    if adsFactValue.Active then
      adsFactValue.Close;
    adsFactValue.CommandType := cmdText;
    adsFactValue.CommandText:='select * from gFactValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsFactValue.Open;
    d:=day1;
    repeat
      if not adsFactValue.Locate('date',d,[]) then
      begin
        adsFactValue.Insert;
        adsFactValuedate.AsDateTime:=d;
        adsFactValue.Post;
        Application.ProcessMessages;
      end;
      d:=d+1;
    until d>=(day2+1);
    if adsFactValue.State in [dsEdit, dsInsert] then
      adsFactValue.Cancel;
    if adsFactValue.Active then
      adsFactValue.Close;
    adsFactValue.CommandType := cmdText;
    adsFactValue.CommandText:='select * from gFactValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsFactValue.Open;
    adsFactValue.Locate('date',Date(),[]);
  finally
    cxGrid1.EndUpdate;
    adsFactValue.EnableControls;
    HideProcessCancel;    
  end;
end;

procedure TfrmGaz.ChangeDate;
var
  d, day1, day2, day1first, day2end: TDateTime;
  k: Real;
  procedure vins(d: TDateTime; v: Real);
  begin
    if not adsPlanValueToDay.Locate('planvalueid;date',VarArrayOf([adsPlanValueID.AsInteger,d]),[]) then
    begin
      adsPlanValueToDay.Insert;
      adsPlanValueToDaydate.AsDateTime:=d;
      adsPlanValueToDayplanvalueid.AsInteger:=adsPlanValueID.AsInteger;
      adsPlanValueToDayobjectid.AsInteger:=adsPlanValueobjectid.AsInteger;
      adsPlanValueToDaytypeid.AsInteger:=adsPlanValuetypeid.AsInteger;
      adsPlanValueToDayvalue.AsFloat:=v;
      adsPlanValueToDay.Post;
    end
    else
    begin
      adsPlanValueToDay.Edit;
      adsPlanValueToDaydate.AsDateTime:=d;
      adsPlanValueToDayplanvalueid.AsInteger:=adsPlanValueID.AsInteger;
      adsPlanValueToDayobjectid.AsInteger:=adsPlanValueobjectid.AsInteger;
      adsPlanValueToDaytypeid.AsInteger:=adsPlanValuetypeid.AsInteger;
      adsPlanValueToDayvalue.AsFloat:=v;
      adsPlanValueToDay.Post;
    end;
  end;
begin
  inherited;

  day1:=adsPlanValuedate1.AsDateTime;
  day2:=adsPlanValuedate2.AsDateTime;
  day1first:=EncodeDateTime(YearOf(day1),MonthOf(day1),1,0,0,0,0);
  day2end:=EncodeDateTime(YearOf(day2),MonthOf(day2),DaysInAMonth(YearOf(day2),MonthOf(day2)),0,0,0,0);

  if day2<day1 then
  begin
    ShowMessage('Неверно указаны даты.');
    Exit;
  end;

  try
    cxGrid2.BeginUpdate;
    adsPlanValueToDay.DisableControls;       

  ExecQuerySimple(dmData.adcData,'delete from gPlanValueToDay where planvalueid='+adsPlanValueID.AsString);
  if adsPlanValueToDay.State in [dsEdit, dsInsert] then
     adsPlanValueToDay.Cancel;
  if adsPlanValueToDay.Active then
    adsPlanValueToDay.Close;
  adsPlanValueToDay.CommandType := cmdText;
  adsPlanValueToDay.CommandText:='select * from gPlanValueToDay where [date]>='+DateToAccssSQLStr(day1first)+' and [date]<='+DateToAccssSQLStr(day2end)+' order by [date] ASC';
  adsPlanValueToDay.Open;

  if day1>day1first then
  begin
    d:=day1first;
    repeat
      vins(d,0);
      d:=d+1;
    until d>=day1;
  end;

  d:=day1;
  k:=adsPlanValuevalue.AsFloat/((day2-day1)+1);
  repeat
    vins(d,k);
    d:=d+1;
  until d>=(day2+1);

  if day2end>(day2+1) then
  begin
    d:=day2+1;
    repeat
      vins(d,0);
      d:=d+1;
    until d>=day2end;
  end;

  if adsPlanValueToDay.State in [dsEdit, dsInsert] then
     adsPlanValueToDay.Cancel;
  if adsPlanValueToDay.Active then
    adsPlanValueToDay.Close;
  adsPlanValueToDay.CommandType := cmdText;
  adsPlanValueToDay.CommandText:='select * from gPlanValueToDay where [date]>='+DateToAccssSQLStr(EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,1,0,0,0,0))+' and [date]<='+DateToAccssSQLStr(EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,DaysInAMonth(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1),0,0,0,0))+' order by [date] ASC';
  adsPlanValueToDay.Open;

  finally
    cxGrid2.EndUpdate;
    adsPlanValueToDay.EnableControls;
  end;  
end;

procedure TfrmGaz.DeleteDate;
var
  day1, day2, day1first, day2end: TDateTime;
begin
  inherited;
  ExecQuerySimple(dmData.adcData,'delete from gPlanValueToDay where planvalueid='+adsPlanValueID.AsString);
  day1:=adsPlanValuedate1.AsDateTime;
  day2:=adsPlanValuedate2.AsDateTime;
  day1first:=EncodeDateTime(YearOf(day1),MonthOf(day1),1,0,0,0,0);
  day2end:=EncodeDateTime(YearOf(day2),MonthOf(day2),DaysInAMonth(YearOf(day2),MonthOf(day2)),0,0,0,0);
  if adsPlanValueToDay.State in [dsEdit, dsInsert] then
     adsPlanValueToDay.Cancel;
  if adsPlanValueToDay.Active then
    adsPlanValueToDay.Close;
  adsPlanValueToDay.CommandType := cmdText;
  adsPlanValueToDay.CommandText:='select * from gPlanValueToDay where [date]>='+DateToAccssSQLStr(day1first)+' and [date]<='+DateToAccssSQLStr(day2end)+' order by [date] ASC';
  adsPlanValueToDay.Open;
end;

procedure TfrmGaz.adsPlanValueAfterPost(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsPlanValue.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsPlanValue.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsPlanValue.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsPlanValue.State in [dsEdit, dsInsert]);
  ChangeDate;
end;

procedure TfrmGaz.adsPlanValueAfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsPlanValueAfterInsert2(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('gPlanValue',adsPlanValuedate1.AsDateTime,adsPlanValueID.AsInteger,'insert');
end;

procedure TfrmGaz.adsPlanValueBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('gPlanValue',adsPlanValuedate1.AsDateTime,adsPlanValueID.AsInteger,'delete');
  DeleteDate;
end;

procedure TfrmGaz.adsPlanValueBeforePost(DataSet: TDataSet);
begin
  inherited;
  if adsPlanValuedate1.AsDateTime > adsPlanValuedate2.AsDateTime then
  begin
    DataSet.Cancel;
    raise Exception.Create('Неверно указана дата.');
  end;
end;

procedure TfrmGaz.adsFactValueCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet['itItog']:=DataSet['tec2']+DataSet['tec3']+DataSet['kc'];
end;

procedure TfrmGaz.adsPlanValueAfterInsert2(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsPlanValue.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsPlanValue.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsPlanValue.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsPlanValue.State in [dsEdit, dsInsert]);
end;

procedure TfrmGaz.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsPlanValue.State in [dsEdit, dsInsert] then
    adsPlanValue.Cancel;
end;

procedure TfrmGaz.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsPlanValue.State in [dsEdit, dsInsert] then
    adsPlanValue.Post;
end;

procedure TfrmGaz.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Желаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsPlanValue.Delete;
end;

procedure TfrmGaz.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsPlanValue.Insert;
//  adsPlanValueobjectid.AsInteger :=  adsObjectID.AsInteger;
//  adsPlanValuetypeid.AsInteger := adsTypeID.AsInteger;
end;

procedure TfrmGaz.adsFactValueFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('gFactValue',adsFactValuedate.AsDateTime,adsFactValueID.AsInteger,Fields[0]);
end;

procedure TfrmGaz.adsPlanValueFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('gPlanValue',adsPlanValuedate1.AsDateTime,adsPlanValueID.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmGaz);
end.
