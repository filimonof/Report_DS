unit frmMazut_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TB2Toolbar, TBXExtItems, cxSpinEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, cxDBLookupComboBox, DateUtils;

type
  TfrmMazut = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    cbiMonth: TcxComboBox;
    TBControlItem1: TTBControlItem;
    seiYear: TcxSpinEdit;
    TBControlItem2: TTBControlItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    TBXLabelItem3: TTBXLabelItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    adsValueMazut: TADODataSet;
    dsValueMazut: TDataSource;
    adsObject: TADODataSet;
    adsObjectID: TAutoIncField;
    adsObjectname: TWideStringField;
    adsValueMazutID: TAutoIncField;
    adsValueMazutdate: TDateTimeField;
    adsValueMazutobjectid: TIntegerField;
    adsValueMazutprihod: TFloatField;
    adsValueMazutrashod: TFloatField;
    adsValueMazutestub: TFloatField;
    adsValueMazutkorr: TFloatField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    dsObject: TDataSource;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    adsValueMazutost: TFloatField;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    TBXToolbar2: TTBXToolbar;
    TBXLabelItem4: TTBXLabelItem;
    seTEC3: TcxSpinEdit;
    TBControlItem3: TTBControlItem;
    TBXLabelItem5: TTBXLabelItem;
    TBXSeparatorItem2: TTBXSeparatorItem;
    TBXLabelItem6: TTBXLabelItem;
    TBXSeparatorItem3: TTBXSeparatorItem;
    TBXSeparatorItem4: TTBXSeparatorItem;
    TBXLabelItem7: TTBXLabelItem;
    TBControlItem4: TTBControlItem;
    seTEC2: TcxSpinEdit;
    TBControlItem5: TTBControlItem;
    seSZK: TcxSpinEdit;
    TBControlItem6: TTBControlItem;
    seKC: TcxSpinEdit;
    adsPlanParam: TADODataSet;
    adsPlanParamid: TAutoIncField;
    adsPlanParammonth: TIntegerField;
    adsPlanParamyear: TIntegerField;
    adsPlanParamtec3: TFloatField;
    adsPlanParamtec2: TFloatField;
    adsPlanParamSZC: TFloatField;
    adsPlanParamKC: TFloatField;
    TBSeparatorItem1: TTBSeparatorItem;
    TBXLabelItem8: TTBXLabelItem;
    TBSeparatorItem2: TTBSeparatorItem;
    TBXLabelItem9: TTBXLabelItem;
    TBControlItem7: TTBControlItem;
    seMGK: TcxSpinEdit;
    TBControlItem8: TTBControlItem;
    seMTSK: TcxSpinEdit;
    adsPlanParamMGK: TFloatField;
    adsPlanParamMTSK: TFloatField;
    TBXLabelItem10: TTBXLabelItem;
    TBXToolbar3: TTBXToolbar;
    TBXLabelItem11: TTBXLabelItem;
    TBXLabelItem12: TTBXLabelItem;
    TBControlItem9: TTBControlItem;
    TBSeparatorItem3: TTBSeparatorItem;
    TBXLabelItem13: TTBXLabelItem;
    TBControlItem10: TTBControlItem;
    TBXSeparatorItem5: TTBXSeparatorItem;
    TBXLabelItem14: TTBXLabelItem;
    TBControlItem11: TTBControlItem;
    TBSeparatorItem4: TTBSeparatorItem;
    TBXLabelItem15: TTBXLabelItem;
    TBControlItem12: TTBControlItem;
    TBXSeparatorItem6: TTBXSeparatorItem;
    TBXLabelItem16: TTBXLabelItem;
    TBControlItem13: TTBControlItem;
    TBXSeparatorItem7: TTBXSeparatorItem;
    TBXLabelItem17: TTBXLabelItem;
    TBControlItem14: TTBControlItem;
    seTEC3next: TcxSpinEdit;
    seTEC2next: TcxSpinEdit;
    seSZKnext: TcxSpinEdit;
    seKCnext: TcxSpinEdit;
    seMGKnext: TcxSpinEdit;
    seMTSKnext: TcxSpinEdit;
    adsPlanParamtec3next: TFloatField;
    adsPlanParamtec2next: TFloatField;
    adsPlanParamSZCnext: TFloatField;
    adsPlanParamKCnext: TFloatField;
    adsPlanParamMGKnext: TFloatField;
    adsPlanParamMTSKnext: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure adsValueMazutCalcFields(DataSet: TDataSet);
    procedure adsValueMazutAfterPost(DataSet: TDataSet);
    procedure seTEC3PropertiesChange(Sender: TObject);
    procedure seTEC2PropertiesChange(Sender: TObject);
    procedure seSZKPropertiesChange(Sender: TObject);
    procedure seKCPropertiesChange(Sender: TObject);
    procedure seMGKPropertiesChange(Sender: TObject);
    procedure seMTSKPropertiesChange(Sender: TObject);
    procedure adsValueMazutFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsPlanParamFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure seMGKnextPropertiesChange(Sender: TObject);
    procedure seTEC3nextPropertiesChange(Sender: TObject);
    procedure seTEC2nextPropertiesChange(Sender: TObject);
    procedure seMTSKnextPropertiesChange(Sender: TObject);
    procedure seSZKnextPropertiesChange(Sender: TObject);
    procedure seKCnextPropertiesChange(Sender: TObject);
  private
    SumPredMonth: Real;
    DayPot: array[1..31] of Real;
    bLocalLoged: Boolean;
  public
    procedure ReloadMazut(m,y: Integer);
    procedure GetMazutPlan(m,y: Integer);    
    procedure PutDayPot(per: Integer);    
  end;

var
  frmMazut: TfrmMazut;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u;

{$R *.dfm}

procedure TfrmMazut.FormCreate(Sender: TObject);
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
{  все равно сработает при изменении   cbiMonth.ItemIndex := MonthOf(Now())-1;
  ReloadMazut(MonthOf(Now),YearOf(Now));
}

end;

procedure TfrmMazut.TBXItem1Click(Sender: TObject);
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
    ReloadMazut(m,y);
    GetMazutPlan(m,y);
  end;
end;

procedure TfrmMazut.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMazut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if adsValueMazut.State in [dsEdit, dsInsert] then
    adsValueMazut.Post;
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Post;
end;

procedure TfrmMazut.ReloadMazut(m,y: Integer);
var
  d,day1,day2: TDateTime;
  aq: TAdoQuery;
begin
  if not adsObject.Active then
    adsObject.Open;

  adsValueMazut.DisableControls;
  cxGrid1.BeginUpdate;
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    if adsValueMazut.State in [dsEdit, dsInsert] then
       adsValueMazut.Cancel;
    if adsValueMazut.Active then
      adsValueMazut.Close;

    adsValueMazut.CommandType := cmdText;
    adsValueMazut.CommandText :='select * from mValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsValueMazut.Open;

    d:=day1;
    repeat
      adsObject.First;
      while not adsObject.EOF do
      begin
        if not adsValueMazut.Locate('date;objectid',VarArrayOf([d,adsObjectID.AsInteger]),[]) then
        begin
          adsValueMazut.Insert;
          adsValueMazutobjectid.AsInteger := adsObjectID.AsInteger;
          adsValueMazutdate.AsDateTime := d;
          adsValueMazut.Post;
        end;
        adsObject.Next;
      end;
      d:=d+1;
    until d>=(day2+1);

    if adsValueMazut.State in [dsEdit, dsInsert] then
       adsValueMazut.Cancel;
    if adsValueMazut.Active then
      adsValueMazut.Close;
    adsValueMazut.CommandType := cmdText;
    adsValueMazut.CommandText :='select * from mValue where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
    adsValueMazut.Open;
    adsValueMazut.Locate('date',Date(),[]);

    SumPredMonth:=0;
    aq := SelectQuerySimple(dmData.adcData,'select sum(prihod-rashod-estub+korr) as ostat from mValue where [date]<'+DateToAccssSQLStr(day1));
    try
      SumPredMonth:=aq.fieldByName('ostat').AsFloat;
    finally
      aq.Free;
    end;

    PutDayPot(1);

    adsValueMazut.Locate('date',Date(),[]);
  finally
    cxGrid1.EndUpdate;
    adsValueMazut.EnableControls ;
    HideProcessCancel;
  end;
end;

procedure TfrmMazut.GetMazutPlan(m,y: Integer);
begin
  adsPlanParam.DisableControls;
  ShowProcessCancel(Application.MainForm,'Чтение данных...');  
  try
    if adsPlanParam.State in [dsEdit, dsInsert] then
      adsPlanParam.Cancel;
    if adsPlanParam.Active then
      adsPlanParam.Close;
    adsPlanParam.CommandType := cmdText;
    adsPlanParam.CommandText := 'select top 1 * from mPlanParam where [month]='+IntToStr(m)+' and [year]='+IntToStr(y);
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
      adsPlanParam.CommandText := 'select top 1 * from mPlanParam where [month]='+IntToStr(m)+' and [year]='+IntToStr(y);
      adsPlanParam.Open;
    end;
    bLocalLoged:=false;
    seTEC3.Value := adsPlanParamtec3.AsFloat;
    seTEC2.Value := adsPlanParamtec2.AsFloat;
    seSZK.Value  := adsPlanParamSZC.AsFloat;
    seKC.Value   := adsPlanParamKC.AsFloat;
    seMGK.Value  := adsPlanParamMGK.AsFloat;
    seMTSK.Value   := adsPlanParamMTSK.AsFloat;
    seTEC3next.Value := adsPlanParamtec3next.AsFloat;
    seTEC2next.Value := adsPlanParamtec2next.AsFloat;
    seSZKnext.Value  := adsPlanParamSZCnext.AsFloat;
    seKCnext.Value   := adsPlanParamKCnext.AsFloat;
    seMGKnext.Value  := adsPlanParamMGKnext.AsFloat;
    seMTSKnext.Value   := adsPlanParamMTSKnext.AsFloat;
    bLocalLoged:=true;    
  finally
    adsPlanParam.EnableControls;
    HideProcessCancel; 
  end;
end;

procedure TfrmMazut.PutDayPot(per: Integer);
var
  i: Integer;
  b: TBookmark;

begin
  for i:=per to 31 do
    DayPot[i]:=0;
  adsValueMazut.DisableControls;
  b:=adsValueMazut.GetBookmark;
  try
    adsValueMazut.First;
    adsValueMazut.Locate('date',EncodeDateTime(seiYear.Value,cbiMonth.ItemIndex+1,per,0,0,0,0),[]);
    while not adsValueMazut.Eof do
    begin
      DayPot[DayOf(adsValueMazut.FieldByName('date').AsDateTime)] :=
        DayPot[DayOf(adsValueMazut.FieldByName('date').AsDateTime)]
        +adsValueMazut.FieldByName('prihod').AsFloat
        -adsValueMazut.FieldByName('rashod').AsFloat
        -adsValueMazut.FieldByName('estub').AsFloat
        +adsValueMazut.FieldByName('korr').AsFloat;
      adsValueMazut.Next;
    end;
    for i:=per to 31 do
      if i=1 then
        DayPot[1]:=DayPot[1]+SumPredMonth
      else
        DayPot[i]:=DayPot[i]+DayPot[i-1];
    adsValueMazut.GotoBookmark(b);
  finally
    adsValueMazut.FreeBookmark(b);
    adsValueMazut.EnableControls;
  end;
end;

procedure TfrmMazut.adsValueMazutCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet['date']<> null then
    DataSet['ost']:=DayPot[DayOf(DataSet['date'])];
end;

procedure TfrmMazut.adsValueMazutAfterPost(DataSet: TDataSet);
begin
  inherited;
  PutDayPot(DayOf(adsValueMazutdate.AsDateTime));
end;

procedure TfrmMazut.seTEC3PropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamtec3.AsFloat := VarAsType(seTEC3.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seTEC2PropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamtec2.AsFloat := VarAsType(seTEC2.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seSZKPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamSZC.AsFloat := VarAsType(seSZK.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seKCPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamKC.AsFloat := VarAsType(seKC.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seMGKPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamMGK.AsFloat := VarAsType(seMGK.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seMTSKPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamMTSK.AsFloat := VarAsType(seMTSK.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.adsValueMazutFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('mValue',adsValueMazutdate.AsDateTime,adsValueMazutID.AsInteger,Fields[0]);
end;

procedure TfrmMazut.adsPlanParamFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('mPlanParam',EncodeDate(adsPlanParamyear.AsInteger,adsPlanParammonth.AsInteger,1),adsPlanParamid.AsInteger,Fields[0]);
end;

procedure TfrmMazut.seMGKnextPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamMGKnext.AsFloat := VarAsType(seMGKnext.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seTEC3nextPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamtec3next.AsFloat := VarAsType(seTEC3next.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seTEC2nextPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamtec2next.AsFloat := VarAsType(seTEC2next.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seMTSKnextPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamMTSKnext.AsFloat := VarAsType(seMTSKnext.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seSZKnextPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamSZCnext.AsFloat := VarAsType(seSZKnext.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

procedure TfrmMazut.seKCnextPropertiesChange(Sender: TObject);
begin
  if adsPlanParam.State in [dsEdit, dsInsert] then
    adsPlanParam.Cancel;
  if not adsPlanParam.Active then
    adsPlanParam.Open;
  adsPlanParam.Edit;
  adsPlanParamKCnext.AsFloat := VarAsType(seKCnext.Value,varDouble);
  adsPlanParam.Post;
  Application.ProcessMessages;
end;

initialization
  RegisterClass(TfrmMazut);
end.
