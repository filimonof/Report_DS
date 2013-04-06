unit frmTEC_MC_u;

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
  TfrmTEC_MC = class(TfrmSimple)
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
    adsTecMC: TADODataSet;
    dsTecMC: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    adsTecMCID: TAutoIncField;
    adsTecMCdate: TDateTimeField;
    adsTecMCgen: TWideStringField;
    adsTecMCgaz_g: TWideStringField;
    adsTecMCgaz_p: TWideStringField;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gaz_g: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gaz_p: TcxGridDBBandedColumn;
    adsTecMCgty1: TWideStringField;
    adsTecMCgty2: TWideStringField;
    adsTecMCgty3: TWideStringField;
    cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure adsTecMCFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadTEC_MC(m,y: Integer);
  end;

var
  frmTEC_MC: TfrmTEC_MC;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmTEC_MC.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsTecMC.State in [dsEdit, dsInsert] then
    adsTecMC.Post;
end;

procedure TfrmTEC_MC.FormCreate(Sender: TObject);
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

procedure TfrmTEC_MC.ReloadTEC_MC(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsTecMC.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsTecMC.State in [dsEdit, dsInsert] then
    adsTecMC.Cancel;
  if adsTecMC.Active then
    adsTecMC.Close;
  adsTecMC.CommandType := cmdText;
  adsTecMC.CommandText:='select * from tec_mc where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTecMC.Open;
  d:=day1;
  repeat
    if not adsTecMC.Locate('date',d,[]) then
    begin
      adsTecMC.Insert;
      adsTecMCdate.AsDateTime:=d;
      adsTecMC.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsTecMC.State in [dsEdit, dsInsert] then
    adsTecMC.Cancel;
  if adsTecMC.Active then
    adsTecMC.Close;
  adsTecMC.CommandType := cmdText;
  adsTecMC.CommandText:='select * from tec_mc where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTecMC.Open;
  adsTecMC.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsTecMC.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmTEC_MC.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmTEC_MC.TBXItem1Click(Sender: TObject);
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
    ReloadTEC_MC(m,y);
  end;
end;

procedure TfrmTEC_MC.cxCheckBox1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:=cxCheckBox1.Checked;
end;

procedure TfrmTEC_MC.adsTecMCFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tec_mc',adsTecMCdate.AsDateTime,adsTecMCID.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmTEC_MC);
end.
