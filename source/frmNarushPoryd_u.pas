{narushPoryd
информаци€ о нарушении ѕор€дка в ежесуточной рапортичке должна содержать:
- дату, врем€  технологического нарушени€;
- величину времени задержки передачи;
- должность, фамилию и инициалы допустившего нарушение ѕор€дка;
- первичные сведени€ о причинах нарушени€ ѕор€дка.
}
unit frmNarushPoryd_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, cxGraphics, cxSpinEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, TB2Item, TBX,
  TBXExtItems, TB2Dock, TB2Toolbar, ImgList, TBXStatusBars, DB, ADODB,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DateUtils, cxCalendar,
  cxTimeEdit, cxMemo;

type
  TfrmNarushPoryd = class(TfrmSimple)
    TBXToolbar2: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
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
    adsNarushPoryd: TADODataSet;
    dsNarushPoryd: TDataSource;
    adsNarushPorydID: TAutoIncField;
    adsNarushPoryddate: TDateTimeField;
    adsNarushPorydtime: TDateTimeField;
    adsNarushPorydtimeout: TMemoField;
    adsNarushPorydoper: TMemoField;
    adsNarushPorydcomment: TMemoField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView2date: TcxGridDBColumn;
    cxGrid1DBTableView2time: TcxGridDBColumn;
    cxGrid1DBTableView2timeout: TcxGridDBColumn;
    cxGrid1DBTableView2oper: TcxGridDBColumn;
    cxGrid1DBTableView2comment: TcxGridDBColumn;
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem6Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsNarushPorydBeforePost(DataSet: TDataSet);
    procedure adsNarushPorydAfterEdit(DataSet: TDataSet);
    procedure adsNarushPorydAfterInsert(DataSet: TDataSet);
    procedure adsNarushPorydBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
     bLocalLoged: Boolean;
  public
    { Public declarations }
    procedure ReloadNarush(m,y: Integer);
  end;

var
  frmNarushPoryd: TfrmNarushPoryd;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u;

{$R *.dfm}

procedure TfrmNarushPoryd.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmNarushPoryd.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsNarushPoryd.State in [dsEdit, dsInsert] then
    adsNarushPoryd.Post;
end;

procedure TfrmNarushPoryd.FormCreate(Sender: TObject);
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

procedure TfrmNarushPoryd.TBXItem1Click(Sender: TObject);
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
    ReloadNarush(m,y);
    bLocalLoged:=true;
  end;
end;

procedure TfrmNarushPoryd.ReloadNarush(m,y: Integer);
var
  day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsNarushPoryd.DisableControls;
 ShowProcessCancel(Application.MainForm,'„тение данных...');
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsNarushPoryd.State in [dsEdit, dsInsert] then
    adsNarushPoryd.Cancel;
  if adsNarushPoryd.Active then
    adsNarushPoryd.Close;
  adsNarushPoryd.CommandType := cmdText;
  adsNarushPoryd.CommandText:='select * from narushPoryd where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsNarushPoryd.Open;
  adsNarushPoryd.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsNarushPoryd.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmNarushPoryd.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsNarushPoryd.Insert;
end;

procedure TfrmNarushPoryd.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('∆елаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsNarushPoryd.Delete;
end;

procedure TfrmNarushPoryd.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsNarushPoryd.State in [dsEdit, dsInsert] then
    adsNarushPoryd.Post;
end;

procedure TfrmNarushPoryd.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsNarushPoryd.State in [dsEdit, dsInsert] then
    adsNarushPoryd.Cancel;
end;

procedure TfrmNarushPoryd.adsNarushPorydBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmNarushPoryd.adsNarushPorydAfterEdit(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsNarushPoryd.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsNarushPoryd.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsNarushPoryd.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsNarushPoryd.State in [dsEdit, dsInsert]);
end;

procedure TfrmNarushPoryd.adsNarushPorydAfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsNarushPorydAfterEdit(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('narushPoryd',adsNarushPoryddate.AsDateTime,adsNarushPorydID.AsInteger,'insert');
end;

procedure TfrmNarushPoryd.adsNarushPorydBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('narushPoryd',adsNarushPoryddate.AsDateTime,adsNarushPorydID.AsInteger,'delete');
end;

initialization
  RegisterClass(TfrmNarushPoryd);
end.
