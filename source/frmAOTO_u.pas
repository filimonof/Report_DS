unit frmAOTO_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TBXExtItems, TB2Toolbar, cxSpinEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, cxDBLookupComboBox, cxCalendar,
  cxTimeEdit, cxGridCustomPopupMenu, cxGridPopupMenu, cxDBExtLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMemo,
  cxDBEditRepository, DateUtils, cxButtonEdit, cxBlobEdit;

type
  TfrmAOTO = class(TfrmSimple)
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
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsAOTO: TDataSource;
    adsAOTO: TADODataSet;
    adsAOTOID: TAutoIncField;
    adsAOTOdate: TDateTimeField;
    adsAOTOtime: TDateTimeField;
    adsAOTOprotect: TMemoField;
    adsAOTOabout: TMemoField;
    adsAOTOtimeon: TDateTimeField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGrid1DBTableView2: TcxGridDBTableView;
    adsLinkOborud: TADODataSet;
    dsLinkOborud: TDataSource;
    cxGrid1DBTableView2DBColumn2: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn;
    cxGrid1DBTableView2DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView2DBColumn4: TcxGridDBColumn;
    cxGrid1DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn;
    adsAOTOoborudstr: TWideStringField;
    adsLinkOborudID: TAutoIncField;
    adsLinkOborudaoTeplObID: TIntegerField;
    adsLinkOborudfullname: TWideStringField;
    cxGrid1DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn;
    adsCompany: TADODataSet;
    adsCompanyID: TAutoIncField;
    adsCompanyname: TWideStringField;
    adsOborud: TADODataSet;
    adsOborudID: TAutoIncField;
    adsOborudcompanyid: TIntegerField;
    adsOborudname: TWideStringField;
    dsOborud: TDataSource;
    dsCompany: TDataSource;
    adsLinkOborudoborudid: TIntegerField;
    TBXToolbar2: TTBXToolbar;
    TBXItem3: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem6: TTBXItem;
    adsAOTOdateon: TDateTimeField;
    cxGrid1DBBandedTableView1dateon: TcxGridDBBandedColumn;
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TBXItem1Click(Sender: TObject);
    procedure adsAOTOBeforePost(DataSet: TDataSet);
    procedure adsLinkOborudBeforePost(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1DBBandedColumn6PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure TBXItem6Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsAOTOAfterEdit2(DataSet: TDataSet);
    procedure adsAOTOFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsAOTOBeforeDelete(DataSet: TDataSet);
    procedure adsAOTOAfterInsert(DataSet: TDataSet);
    procedure adsOborudAfterInsert(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadAOTO(m,y: Integer);
  end;

var
  frmAOTO: TfrmAOTO;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u, dlgAotoOb_u;

{$R *.dfm}

procedure TfrmAOTO.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAOTO.FormCreate(Sender: TObject);
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
  ReloadAOTO(MonthOf(Now),YearOf(Now));
}
{
  TcxGridTableView(cxGrid1.FocusedView).DataController.Groups.FullExpand;
  cxGrid1DBBandedTableView1.DataController.Groups.FullExpand;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGrid1DBTableView2.DataController.Groups.FullExpand;
}
end;

procedure TfrmAOTO.ReloadAOTO(m,y: Integer);
var
  day1, day2: TDateTime;
  s: string;
begin
//  cxGrid1.BeginUpdate;
  adsLinkOborud.DisableControls;
  adsOborud.DisableControls;
  adsCompany.DisableControls;
  adsAOTO.DisableControls;

  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    if adsCompany.State in [dsEdit, dsInsert] then
       adsCompany.Cancel;
    if adsCompany.Active then
      adsCompany.Close;
    adsCompany.Open;
    
    if adsOborud.State in [dsEdit, dsInsert] then
       adsOborud.Cancel;
    if adsOborud.Active then
      adsOborud.Close;
    adsOborud.DataSource:=dsCompany;
    adsOborud.MasterFields:='ID';
    adsOborud.IndexFieldNames:='companyid';

    if adsLinkOborud.State in [dsEdit, dsInsert] then
       adsLinkOborud.Cancel;
    if adsLinkOborud.Active then
      adsLinkOborud.Close;
    adsLinkOborud.CommandType := cmdText;
    adsLinkOborud.CommandText:=' SELECT aotoLinkOborud.ID, aotoLinkOborud.aoTeplObID, aotoOborud.name, aotoCompany.name, '
      +' aotoCompany.name+'' : ''+aotoOborud.name AS [fullname], aotoLinkOborud.oborudid  FROM aotoLinkOborud, aotoCompany,  aotoOborud '
      +' WHERE aotoCompany.ID=aotoOborud.companyid and  aotoOborud.ID=aotoLinkOborud.oborudid ';
    adsLinkOborud.DataSource:=dsAOTO;
    adsLinkOborud.MasterFields:='ID';
    adsLinkOborud.IndexFieldNames:='aoTeplObID';

    if adsAOTO.State in [dsEdit, dsInsert] then
       adsAOTO.Cancel;
    if adsAOTO.Active then
      adsAOTO.Close;
    adsAOTO.CommandType := cmdText;
    adsAOTO.CommandText:='select *, '''' as oborudstr from aoTeplOb where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';

    adsOborud.Open;
    adsCompany.Open;
    adsLinkOborud.Open;
    adsAOTO.Open;

    adsOborud.EnableControls;
    adsCompany.EnableControls;
    adsLinkOborud.EnableControls;
    adsAOTO.EnableControls;

    adsAOTO.First;
    while not adsAOTO.Eof do
    begin
      adsLinkOborud.First;
      s:='';
      while not adsLinkOborud.Eof do
      begin
        s:=s+adsLinkOborudfullname.AsString+#13;
        adsLinkOborud.Next;
      end;
      adsAOTO.Edit;
      adsAOTO.FieldByName('oborudstr').AsString:=s;
      adsAOTO.Post;
      adsAOTO.Next;
    end;
    adsAOTO.Locate('date',date(),[]);

  finally
//    cxGrid1.EndUpdate;

{    adsCompany.EnableControls;
    adsOborud.EnableControls;
    adsLinkOborud.EnableControls;
    adsAOTO.EnableControls;
}
    HideProcessCancel;
  end;

end;

procedure TfrmAOTO.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if adsLinkOborud.State in [dsEdit, dsInsert] then
    adsLinkOborud.Post;
  if adsAOTO.State in [dsEdit, dsInsert] then
    adsAOTO.Post;
  if adsOborud.State in [dsEdit, dsInsert] then
    adsOborud.Post;
  if adsCompany.State in [dsEdit, dsInsert] then
    adsCompany.Post;
end;

procedure TfrmAOTO.TBXItem1Click(Sender: TObject);
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
    ReloadAOTO(m,y);
    bLocalLoged:=true;
  end;
end;

procedure TfrmAOTO.adsAOTOBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmAOTO.adsLinkOborudBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmAOTO.cxGrid1DBBandedTableView1DBBandedColumn6PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id: Integer;  
begin
  inherited;
  try
    if adsAOTO.State in [dsEdit, dsInsert] then
      adsAOTO.Post;
    try
      DoAotoOb(Application.MainForm,adsCompany,adsOborud,adsLinkOborud,adsAOTO);
    finally
      id := adsAOTO.FieldByName('ID').AsInteger;
      TBXItem1Click(Sender);
      adsAOTO.Locate('ID',id,[]);
    end;
  except
    MessageDlg('Ошибка при сохранении записи.'#13#10'Возможно вы не ввели дату.',mtError,[mbOk],0);
  end;
end;

procedure TfrmAOTO.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsAOTO.Insert;
end;

procedure TfrmAOTO.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Желаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsAOTO.Delete;
end;

procedure TfrmAOTO.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsAOTO.State in [dsEdit, dsInsert] then
    adsAOTO.Post;
end;

procedure TfrmAOTO.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsAOTO.State in [dsEdit, dsInsert] then
    adsAOTO.Cancel;
end;

procedure TfrmAOTO.adsAOTOAfterEdit2(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsAOTO.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsAOTO.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsAOTO.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsAOTO.State in [dsEdit, dsInsert]);
end;

procedure TfrmAOTO.adsAOTOFieldChangeComplete(DataSet: TCustomADODataSet;
  const FieldCount: Integer; const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoTeplOb',adsAOTOdate.AsDateTime,adsAOTOID.AsInteger,Fields[0]);
end;

procedure TfrmAOTO.adsAOTOBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoTeplOb',adsAOTOdate.AsDateTime,adsAOTOID.AsInteger,'delete');
end;

procedure TfrmAOTO.adsAOTOAfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsAOTOAfterEdit2(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('aoTeplOb',adsAOTOdate.AsDateTime,adsAOTOID.AsInteger,'insert');
end;

procedure TfrmAOTO.adsOborudAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoOborud',Date(),adsOborudID.AsInteger,'insert');
end;

initialization
  RegisterClass(TfrmAOTO);
end.
