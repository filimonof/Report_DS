unit frmAO_610_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  cxGraphics, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, TBXExtItems, TB2Toolbar, DateUtils, DB, ADODB,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDBLookupComboBox, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCalendar,
  cxTimeEdit;

type
  TfrmAO_610 = class(TfrmSimple)
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
    adsAO6_10: TADODataSet;
    dsAO6_10: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn4: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dsTypePES: TDataSource;
    adsTypePES: TADODataSet;
    adsAO6_10id: TAutoIncField;
    adsAO6_10data: TDateTimeField;
    adsAO6_10pes_id: TIntegerField;
    adsAO6_10fiderov_sum: TFloatField;
    adsAO6_10fiderov_na_6: TFloatField;
    adsAO6_10TP_sum: TFloatField;
    adsAO6_10TP_na_6: TFloatField;
    adsAO6_10NP_sum: TFloatField;
    adsAO6_10NP_na_6: TFloatField;
    adsAO6_10hoz_sum: TFloatField;
    adsAO6_10hoz_na_6: TFloatField;
    adsAO6_10comment: TMemoField;
    adsTypePESid: TAutoIncField;
    adsTypePESname: TWideStringField;
    cxGrid1DBBandedTableView1data: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pes_id: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fiderov_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1fiderov_na_6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TP_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TP_na_6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NP_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NP_na_6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1hoz_sum: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1hoz_na_6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn;
    adsAO6_10time: TDateTimeField;
    adsAO6_10data_v: TDateTimeField;
    adsAO6_10time_v: TDateTimeField;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    adsAO6_10ludi_sum: TFloatField;
    adsAO6_10ludi_na_6: TFloatField;
    cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn;
    adsAO6_10power_sum: TFloatField;
    adsAO6_10power_na_6: TFloatField;
    cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn;
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem6Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsAO6_10AfterEdit(DataSet: TDataSet);
    procedure adsAO6_10AfterInsert(DataSet: TDataSet);
    procedure adsAO6_10BeforeDelete(DataSet: TDataSet);
    procedure adsAO6_10BeforePost(DataSet: TDataSet);
    procedure adsAO6_10FieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure TBXItem1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadAO6_10(m,y: Integer);
  end;

var
  frmAO_610: TfrmAO_610;

implementation

uses uVar, dmData_u, dlgProcess_u, uAdoUtils;

{$R *.dfm}
procedure TfrmAO_610.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAO_610.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  Application.ProcessMessages;
  seiYear.Value := YearOf(Now());
  cbiMonth.Properties.Items.Clear;
    for i:=1 to 12 do
      cbiMonth.Properties.Items.Add(mMonthDay[i]);
  cbiMonth.ItemIndex := MonthOf(Now())-1;
//  TBXItem1Click(Sender);
end;

procedure TfrmAO_610.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsAO6_10.Insert;
end;

procedure TfrmAO_610.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Желаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsAO6_10.Delete;
end;

procedure TfrmAO_610.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsAO6_10.State in [dsEdit, dsInsert] then
    adsAO6_10.Post;
end;

procedure TfrmAO_610.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsAO6_10.State in [dsEdit, dsInsert] then
    adsAO6_10.Cancel;
end;

procedure TfrmAO_610.adsAO6_10AfterEdit(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsAO6_10.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsAO6_10.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsAO6_10.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsAO6_10.State in [dsEdit, dsInsert]);
end;

procedure TfrmAO_610.adsAO6_10AfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsAO6_10AfterEdit(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('ao6_10',adsAO6_10data.AsDateTime,adsAO6_10id.AsInteger,'insert');
end;

procedure TfrmAO_610.adsAO6_10BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('ao6_10',adsAO6_10data.AsDateTime,adsAO6_10id.AsInteger,'delete');
end;

procedure TfrmAO_610.adsAO6_10BeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmAO_610.adsAO6_10FieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('ao6_10',adsAO6_10data.AsDateTime,adsAO6_10id.AsInteger,Fields[0]);
end;

procedure TfrmAO_610.TBXItem1Click(Sender: TObject);
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
    ReloadAO6_10(m,y);
    bLocalLoged:=true;
  end;
end;

procedure TfrmAO_610.ReloadAO6_10(m,y: Integer);
var
  day1, day2: TDateTime;
begin
//  cxGrid1.BeginUpdate;
  adsTypePES.DisableControls;
  adsAO6_10.DisableControls;

  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    if adsTypePES.State in [dsEdit, dsInsert] then
       adsTypePES.Cancel;
    if adsTypePES.Active then
      adsTypePES.Close;
    adsTypePES.Open;

    if adsAO6_10.State in [dsEdit, dsInsert] then
       adsAO6_10.Cancel;
    if adsAO6_10.Active then
      adsAO6_10.Close;
    adsAO6_10.CommandType := cmdText;
    adsAO6_10.CommandText:='select * from ao6_10 where [data]>='+DateToAccssSQLStr(day1)+' and [data]<='+DateToAccssSQLStr(day2)+' order by [data] ASC';
    adsAO6_10.Open;

    adsTypePES.EnableControls;
    adsAO6_10.EnableControls;

    adsAO6_10.Locate('data',date(),[]);

  finally
    HideProcessCancel;
  end;

end;

procedure TfrmAO_610.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsAO6_10.State in [dsEdit, dsInsert] then
    adsAO6_10.Post;
  if adsTypePES.State in [dsEdit, dsInsert] then
    adsTypePES.Post;
end;

initialization
  RegisterClass(TfrmAO_610);
end.
