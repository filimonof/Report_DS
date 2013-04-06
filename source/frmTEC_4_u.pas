unit frmTEC_4_u;

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
  TfrmTEC_4 = class(TfrmSimple)
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
    adsTec4: TADODataSet;
    dsTec4: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    adsTec4ID: TAutoIncField;
    adsTec4date: TDateTimeField;
    adsTec4gen: TWideStringField;
    adsTec4gaz_g: TWideStringField;
    adsTec4gaz_p: TWideStringField;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gaz_g: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gaz_p: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    adsTec4g1: TWideStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure adsTec4FieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadTEC_4(m,y: Integer);
  end;

var
  frmTEC_4: TfrmTEC_4;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmTEC_4.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsTec4.State in [dsEdit, dsInsert] then
    adsTec4.Post;
end;

procedure TfrmTEC_4.FormCreate(Sender: TObject);
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

procedure TfrmTEC_4.ReloadTEC_4(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsTec4.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsTec4.State in [dsEdit, dsInsert] then
    adsTec4.Cancel;
  if adsTec4.Active then
    adsTec4.Close;
  adsTec4.CommandType := cmdText;
  adsTec4.CommandText:='select * from tec_4 where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTec4.Open;
  d:=day1;
  repeat
    if not adsTec4.Locate('date',d,[]) then
    begin
      adsTec4.Insert;
      adsTec4date.AsDateTime:=d;
      adsTec4.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsTec4.State in [dsEdit, dsInsert] then
    adsTec4.Cancel;
  if adsTec4.Active then
    adsTec4.Close;
  adsTec4.CommandType := cmdText;
  adsTec4.CommandText:='select * from tec_4 where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTec4.Open;
  adsTec4.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsTec4.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmTEC_4.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmTEC_4.TBXItem1Click(Sender: TObject);
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
    ReloadTEC_4(m,y);
  end;
end;

procedure TfrmTEC_4.cxCheckBox1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:=cxCheckBox1.Checked;
end;

procedure TfrmTEC_4.adsTec4FieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tec_4',adsTec4date.AsDateTime,adsTec4ID.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmTEC_4);
end.
