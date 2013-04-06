unit frmJobPower_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, TB2Dock, TBX, TBXStatusBars, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  TB2Toolbar, TBXExtItems, TB2ExtItems, TB2Item, ADODB, ImgList,
  cxSpinEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfrmJobPower = class(TfrmSimple)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    adsJobPower: TADODataSet;
    adsJobPowerid: TAutoIncField;
    adsJobPowerdate: TDateTimeField;
    adsJobPowerplan: TFloatField;
    adsJobPowerfact: TFloatField;
    dsJobPower: TDataSource;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    TBXItem1: TTBXItem;
    TBXLabelItem3: TTBXLabelItem;
    cbiMonth: TcxComboBox;
    TBControlItem1: TTBControlItem;
    seiYear: TcxSpinEdit;
    TBControlItem2: TTBControlItem;
    TBXItem2: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
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
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsJobPowerFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    { Private declarations }
  public
    procedure ReloadJobPower(m,y: Integer);
  end;

var
  frmJobPower: TfrmJobPower;

implementation

uses dmData_u, DateUtils, uVar, uAdoUtils, dlgProcess_u;

{$R *.dfm}

procedure TfrmJobPower.FormCreate(Sender: TObject);
var
  i: Integer;
begin
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

//  ReloadJobPower(MonthOf(Now()),YearOf(Now()));
end;

procedure  TfrmJobPower.ReloadJobPower(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
 Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsJobPower.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsJobPower.State in [dsEdit, dsInsert] then
    adsJobPower.Cancel;
  if adsJobPower.Active then
    adsJobPower.Close;
  adsJobPower.CommandType := cmdText;
  adsJobPower.CommandText:='select * from jJobPower where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsJobPower.Open;
  d:=day1;
  repeat
    if not adsJobPower.Locate('date',d,[]) then
    begin
      adsJobPower.Insert;
      adsJobPowerdate.AsDateTime:=d;
      adsJobPowerplan.AsFloat:=0;
      adsJobPowerfact.AsFloat:=0;
      adsJobPower.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsJobPower.State in [dsEdit, dsInsert] then
    adsJobPower.Cancel;
  if adsJobPower.Active then
    adsJobPower.Close;
  adsJobPower.CommandType := cmdText;
  adsJobPower.CommandText:='select * from jJobPower where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsJobPower.Open;
  adsJobPower.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsJobPower.EnableControls;
  HideProcessCancel;
 end;
end;

procedure TfrmJobPower.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsJobPower.State in [dsEdit, dsInsert] then
    adsJobPower.Post;
end;

procedure TfrmJobPower.TBXItem1Click(Sender: TObject);
var
  m,y,i: Integer;
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

    ReloadJobPower(m,y);
  end;    
end;

procedure TfrmJobPower.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmJobPower.TBXItem3Click(Sender: TObject);
var d,day1,day2 : TDateTime;
begin
  inherited;
 if MessageDlg('Вы уверены?', mtConfirmation,[mbOk,mbCancel],0) = mrOk then
  if teValue.Value>=0 then
  begin
    if adsJobPower.State in [dsEdit, dsInsert] then
      adsJobPower.Cancel;
    day1:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay1.ItemIndex+1,0,0,0,0);
    day2:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay2.ItemIndex+1,0,0,0,0);
    d:=day1;
    repeat
      if adsJobPower.Locate('date',d,[]) then
      begin
        adsJobPower.Edit;
        adsJobPowerplan.AsFloat := teValue.Value;
        adsJobPower.Post;
      end;  
      Application.ProcessMessages;
      d:=d+1;
    until d>(day2);
  end;
end;

procedure TfrmJobPower.adsJobPowerFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged  then
    dmData.PutLog('jJobPower',adsJobPowerdate.AsDateTime,adsJobPowerid.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmJobPower);
end.
