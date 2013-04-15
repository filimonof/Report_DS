unit frmTEC_YA_u;

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
  TfrmTEC_YA = class(TfrmSimple)
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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    adsTecYA: TADODataSet;
    adsTecYAID: TAutoIncField;
    adsTecYAdate: TDateTimeField;
    adsTecYAgen: TWideStringField;
    adsTecYAg1: TWideStringField;
    adsTecYAg2: TWideStringField;
    dsTecYA: TDataSource;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure cbiMonthPropertiesChange(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure adsTecYAFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadTEC_YA(m,y: Integer);

  end;

var
  frmTEC_YA: TfrmTEC_YA;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmTEC_YA.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsTecYA.State in [dsEdit, dsInsert] then
    adsTecYA.Post;
end;

procedure TfrmTEC_YA.FormCreate(Sender: TObject);
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

procedure TfrmTEC_YA.ReloadTEC_YA(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsTecYA.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsTecYA.State in [dsEdit, dsInsert] then
    adsTecYA.Cancel;
  if adsTecYA.Active then
    adsTecYA.Close;
  adsTecYA.CommandType := cmdText;
  adsTecYA.CommandText:='select * from tec_YA where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTecYA.Open;
  d:=day1;
  repeat
    if not adsTecYA.Locate('date',d,[]) then
    begin
      adsTecYA.Insert;
      adsTecYAdate.AsDateTime:=d;
      adsTecYA.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsTecYA.State in [dsEdit, dsInsert] then
    adsTecYA.Cancel;
  if adsTecYA.Active then
    adsTecYA.Close;
  adsTecYA.CommandType := cmdText;
  adsTecYA.CommandText:='select * from tec_YA where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTecYA.Open;
  adsTecYA.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsTecYA.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmTEC_YA.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmTEC_YA.cbiMonthPropertiesChange(Sender: TObject);
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
    ReloadTEC_YA(m,y);
  end;
end;

procedure TfrmTEC_YA.cxCheckBox1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:=cxCheckBox1.Checked;
end;


procedure TfrmTEC_YA.adsTecYAFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tec_YA',adsTecYAdate.AsDateTime,adsTecYAID.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmTEC_YA);
end.
