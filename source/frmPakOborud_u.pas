unit frmPakOborud_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  cxGraphics, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, TBXExtItems, TB2Toolbar, DateUtils, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCalendar,
  cxTimeEdit, cxMemo, ADODB, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmPakOborud = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem3: TTBXLabelItem;
    TBControlItem1: TTBControlItem;
    TBXLabelItem2: TTBXLabelItem;
    TBControlItem2: TTBControlItem;
    TBXLabelItem1: TTBXLabelItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    cbiMonth: TcxComboBox;
    seiYear: TcxSpinEdit;
    TBXToolbar2: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    adsPakOtkl: TADODataSet;
    dsPakOtkl: TDataSource;
    adsPakOtklID: TAutoIncField;
    adsPakOtkldate: TDateTimeField;
    adsPakOtkltime: TDateTimeField;
    adsPakOtklbag: TMemoField;
    adsPakOtklcomment: TMemoField;
    adsPakOtkltime_ustr: TMemoField;
    cxGrid1DBTableView2date: TcxGridDBColumn;
    cxGrid1DBTableView2time: TcxGridDBColumn;
    cxGrid1DBTableView2bag: TcxGridDBColumn;
    cxGrid1DBTableView2comment: TcxGridDBColumn;
    cxGrid1DBTableView2time_ustr: TcxGridDBColumn;
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem6Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsPakOtklBeforePost(DataSet: TDataSet);
    procedure adsPakOtklAfterEdit(DataSet: TDataSet);
    procedure adsPakOtklAfterInsert(DataSet: TDataSet);
    procedure adsPakOtklBeforeDelete(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadPak(m,y: Integer);
  end;

var
  frmPakOborud: TfrmPakOborud;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u;

{$R *.dfm}

procedure TfrmPakOborud.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmPakOborud.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsPakOtkl.State in [dsEdit, dsInsert] then
    adsPakOtkl.Post;
end;

procedure TfrmPakOborud.FormCreate(Sender: TObject);
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
end;

procedure TfrmPakOborud.TBXItem1Click(Sender: TObject);
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
    bLocalLoged:=false;
    ReloadPak(m,y);
    bLocalLoged:=true;
  end;
end;

procedure TfrmPakOborud.ReloadPak(m,y: Integer);
var
  day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsPakOtkl.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...');
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsPakOtkl.State in [dsEdit, dsInsert] then
    adsPakOtkl.Cancel;
  if adsPakOtkl.Active then
    adsPakOtkl.Close;
  adsPakOtkl.CommandType := cmdText;
  adsPakOtkl.CommandText:='select * from pakOtklOborud where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC, [time] ASC';
  adsPakOtkl.Open;
  adsPakOtkl.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsPakOtkl.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmPakOborud.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsPakOtkl.Insert;
end;

procedure TfrmPakOborud.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Желаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsPakOtkl.Delete;
end;

procedure TfrmPakOborud.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsPakOtkl.State in [dsEdit, dsInsert] then
    adsPakOtkl.Post;
end;

procedure TfrmPakOborud.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsPakOtkl.State in [dsEdit, dsInsert] then
    adsPakOtkl.Cancel;
end;

procedure TfrmPakOborud.adsPakOtklBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmPakOborud.adsPakOtklAfterEdit(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsPakOtkl.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsPakOtkl.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsPakOtkl.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsPakOtkl.State in [dsEdit, dsInsert]);
end;

procedure TfrmPakOborud.adsPakOtklAfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsPakOtklAfterEdit(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('PakOtkl',adsPakOtkldate.AsDateTime,adsPakOtklID.AsInteger,'insert');
end;

procedure TfrmPakOborud.adsPakOtklBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('PakOtkl',adsPakOtkldate.AsDateTime,adsPakOtklID.AsInteger,'delete');
end;

initialization
  RegisterClass(TfrmPakOborud);
end.
