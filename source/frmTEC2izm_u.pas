unit frmTEC2izm_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, cxGraphics, cxSpinEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, TB2Item, TBX,
  TBXExtItems, TB2Dock, TB2Toolbar, ImgList, TBXStatusBars, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGridDBTableView,
  cxGrid, ADODB, DateUtils, cxCalendar, cxTimeEdit, cxMemo,
  cxDBLookupComboBox;

type
  TfrmTEC2izm = class(TfrmSimple)
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
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    dsTEC2izm: TDataSource;
    adsTEC2izm: TADODataSet;
    adsTEC2izmID: TAutoIncField;
    adsTEC2izmdate: TDateTimeField;
    adsTEC2izmtime: TDateTimeField;
    adsTEC2izmoper: TMemoField;
    adsTEC2izmprim: TMemoField;
    cxGrid1DBTableView2date: TcxGridDBColumn;
    cxGrid1DBTableView2time: TcxGridDBColumn;
    cxGrid1DBTableView2oper: TcxGridDBColumn;
    cxGrid1DBTableView2prim: TcxGridDBColumn;
    TBXToolbar2: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    adsTEC2izmmessageno: TMemoField;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    adsIzmObject: TADODataSet;
    adsIzmObjectID: TAutoIncField;
    adsIzmObjectname: TWideStringField;
    adsTEC2izmobjectid: TIntegerField;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    dsIzmObject: TDataSource;
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure adsTEC2izmBeforePost(DataSet: TDataSet);
    procedure TBXItem6Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsTEC2izmAfterEdit(DataSet: TDataSet);
    procedure adsTEC2izmAfterInsert(DataSet: TDataSet);
    procedure adsTEC2izmBeforeDelete(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadTEC2(m,y: Integer);
  end;

var
  frmTEC2izm: TfrmTEC2izm;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u;

{$R *.dfm}

procedure TfrmTEC2izm.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmTEC2izm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if adsTEC2izm.State in [dsEdit, dsInsert] then
    adsTEC2izm.Post;
end;

procedure TfrmTEC2izm.FormCreate(Sender: TObject);
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

procedure TfrmTEC2izm.TBXItem1Click(Sender: TObject);
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
    ReloadTEC2(m,y);
    bLocalLoged:=true;
  end;
end;

procedure  TfrmTEC2izm.ReloadTEC2(m,y: Integer);
var
  day1, day2: TDateTime;
begin
// Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsTEC2izm.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  if adsIzmObject.Active then
   adsIzmObject.Close;
  adsIzmObject.Open; 
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsTEC2izm.State in [dsEdit, dsInsert] then
    adsTEC2izm.Cancel;
  if adsTEC2izm.Active then
    adsTEC2izm.Close;
  adsTEC2izm.CommandType := cmdText;
  adsTEC2izm.CommandText:='select * from izmStatus where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsTEC2izm.Open;
  adsTEC2izm.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsTEC2izm.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;                     

procedure TfrmTEC2izm.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsTEC2izm.Insert;
end;

procedure TfrmTEC2izm.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Желаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsTEC2izm.Delete;
end;

procedure TfrmTEC2izm.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsTEC2izm.State in [dsEdit, dsInsert] then
    adsTEC2izm.Post;
end;

procedure TfrmTEC2izm.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsTEC2izm.State in [dsEdit, dsInsert] then
    adsTEC2izm.Cancel;
end;

procedure TfrmTEC2izm.adsTEC2izmBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmTEC2izm.adsTEC2izmAfterEdit(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsTEC2izm.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsTEC2izm.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsTEC2izm.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsTEC2izm.State in [dsEdit, dsInsert]);
end;

procedure TfrmTEC2izm.adsTEC2izmAfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsTEC2izmAfterEdit(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('izmStatus',adsTEC2izmdate.AsDateTime,adsTEC2izmID.AsInteger,'insert');
end;

procedure TfrmTEC2izm.adsTEC2izmBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('izmStatus',adsTEC2izmdate.AsDateTime,adsTEC2izmID.AsInteger,'delete');
end;

initialization
  RegisterClass(TfrmTEC2izm);
end.
