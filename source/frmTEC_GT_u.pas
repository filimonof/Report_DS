unit frmTEC_GT_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  cxGraphics, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, TBXExtItems, TB2Toolbar, DB, ADODB,
  cxCheckBox, TB2ToolWindow, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, DateUtils;

type
  TfrmTEC_GT = class(TfrmSimple)
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
    TBXToolWindow1: TTBXToolWindow;
    cxCheckBox1: TcxCheckBox;
    adsTecGT: TADODataSet;
    dsTecGT: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    adsTecGTID: TAutoIncField;
    adsTecGTdate: TDateTimeField;
    adsTecGTtg1: TWideStringField;
    adsTecGTtg2: TWideStringField;
    adsTecGTgen: TWideStringField;
    adsTecGTgaz_g: TWideStringField;
    adsTecGTgaz_p: TWideStringField;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tg1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tg2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gaz_g: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gaz_p: TcxGridDBBandedColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure adsTecGTFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadTEC_GT(m,y: Integer);
  end;

var
  frmTEC_GT: TfrmTEC_GT;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmTEC_GT.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsTecGT.State in [dsEdit, dsInsert] then
    adsTecGT.Post;
end;

procedure TfrmTEC_GT.FormCreate(Sender: TObject);
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

procedure TfrmTEC_GT.ReloadTEC_GT(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsTECGT.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsTECGT.State in [dsEdit, dsInsert] then
    adsTECGT.Cancel;
  if adsTECGT.Active then
    adsTECGT.Close;
  adsTECGT.CommandType := cmdText;
  adsTECGT.CommandText:='select * from tec_gt where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTECGT.Open;
  d:=day1;
  repeat
    if not adsTECGT.Locate('date',d,[]) then
    begin
      adsTECGT.Insert;
      adsTecGTdate.AsDateTime:=d;
      adsTECGT.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsTECGT.State in [dsEdit, dsInsert] then
    adsTECGT.Cancel;
  if adsTECGT.Active then
    adsTECGT.Close;
  adsTECGT.CommandType := cmdText;
  adsTECGT.CommandText:='select * from tec_gt where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTECGT.Open;
  adsTECGT.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsTECGT.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmTEC_GT.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmTEC_GT.TBXItem1Click(Sender: TObject);
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
    ReloadTEC_GT(m,y);
  end;
end;

procedure TfrmTEC_GT.cxCheckBox1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:=cxCheckBox1.Checked;
end;

procedure TfrmTEC_GT.adsTecGTFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tec_gt',adsTecGTdate.AsDateTime,adsTecGTID.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmTEC_GT);
end.
