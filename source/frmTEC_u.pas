unit frmTEC_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TB2Toolbar, TBXExtItems, cxSpinEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, DateUtils, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxCheckBox, TB2ToolWindow;

type
  TfrmTEC = class(TfrmSimple)
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
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    adsTec2: TADODataSet;
    dsTec2: TDataSource;
    adsTec2ID: TAutoIncField;
    adsTec2date: TDateTimeField;
    adsTec2k1: TWideStringField;
    adsTec2k2: TWideStringField;
    adsTec2k3: TWideStringField;
    adsTec2k4: TWideStringField;
    adsTec2k5: TWideStringField;
    adsTec2k6: TWideStringField;
    adsTec2k7: TWideStringField;
    adsTec2k8: TWideStringField;
    adsTec2bk1: TWideStringField;
    adsTec2bk2: TWideStringField;
    adsTec2bk3: TWideStringField;
    adsTec2t2: TWideStringField;
    adsTec2t3: TWideStringField;
    adsTec2t4: TWideStringField;
    adsTec2t5: TWideStringField;
    adsTec2gg: TWideStringField;
    adsTec2gp: TWideStringField;
    adsTec2mg: TWideStringField;
    adsTec2pg: TWideStringField;
    adsTec2vbl1: TWideStringField;
    adsTec2vbl2: TWideStringField;
    adsTec2tsnv: TWideStringField;
    adsTec2tsgr: TWideStringField;
    adsTec2tsf: TWideStringField;
    adsTec2tsg: TWideStringField;
    adsTec2gen: TWideStringField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k6: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k7: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1k8: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1bk1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1t2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1t3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1t4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1t5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gp: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1mg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1pg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tsnv: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tsgr: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tsf: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1tsg: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn;
    TBXDock5: TTBXDock;
    TBXToolWindow1: TTBXToolWindow;
    cxCheckBox1: TcxCheckBox;
    adsTec2glimit: TWideStringField;
    cxGrid1DBBandedTableView1glimit: TcxGridDBBandedColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure adsTec2FieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadTEC(m,y: Integer);
  end;

var
  frmTEC: TfrmTEC;

implementation

uses dmData_u, uAdoUtils, uVar, dlgProcess_u;

{$R *.dfm}

procedure TfrmTEC.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if adsTec2.State in [dsEdit, dsInsert] then
    adsTec2.Post;
end;

procedure TfrmTEC.FormCreate(Sender: TObject);
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
{  все равно сработает при изменении   cbiMonth.ItemIndex := MonthOf(Now())-1;
  ReloadAOEO(MonthOf(Now),YearOf(Now));
}
{
  TcxGridTableView(cxGrid1.FocusedView).DataController.Groups.FullExpand;
  cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGrid1DBTableView2.DataController.Groups.FullExpand;
}
end;

procedure TfrmTEC.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTEC.TBXItem1Click(Sender: TObject);
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
    ReloadTEC(m,y);
  end;    
end;

procedure  TfrmTEC.ReloadTEC(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsTEC2.DisableControls;
 ShowProcessCancel(Application.MainForm,'„тение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsTEC2.State in [dsEdit, dsInsert] then
    adsTEC2.Cancel;
  if adsTEC2.Active then
    adsTEC2.Close;
  adsTEC2.CommandType := cmdText;
  adsTEC2.CommandText:='select * from tec2 where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTEC2.Open;
  d:=day1;
  repeat
    if not adsTEC2.Locate('date',d,[]) then
    begin
      adsTEC2.Insert;
      adsTec2date.AsDateTime:=d;
      adsTEC2.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsTEC2.State in [dsEdit, dsInsert] then
    adsTEC2.Cancel;
  if adsTEC2.Active then
    adsTEC2.Close;
  adsTEC2.CommandType := cmdText;
  adsTEC2.CommandText:='select * from tec2 where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTEC2.Open;
  adsTEC2.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsTEC2.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmTEC.cxCheckBox1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBBandedTableView1.OptionsView.ColumnAutoWidth:=cxCheckBox1.Checked;
end;

procedure TfrmTEC.adsTec2FieldChangeComplete(DataSet: TCustomADODataSet;
  const FieldCount: Integer; const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('tec2',adsTec2date.AsDateTime,adsTec2ID.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmTEC);
end.
