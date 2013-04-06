unit frmAOEO_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TBXExtItems, TB2Toolbar, cxSpinEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, DateUtils, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ADODB, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCheckBox, cxCalendar, cxTimeEdit, cxMemo,
  cxImageComboBox, cxGridCardView, cxGridDBCardView, cxDBLookupComboBox,
  TB2ToolWindow, cxButtonEdit;

type
  TfrmAOEO = class(TfrmSimple)
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
    adsAOEO: TADODataSet;
    dsAOEO: TDataSource;
    adsAOEOID: TAutoIncField;
    adsAOEOdate: TDateTimeField;
    adsAOEOtime: TDateTimeField;
    adsAOEOAPV: TIntegerField;
    adsAOEORPV: TDateTimeField;
    adsAOEOAboutOtkl: TMemoField;
    adsAOEONedo: TMemoField;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn2: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn3: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn4: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn5: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn6: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn7: TcxGridDBColumn;
    adsAOEOODU: TIntegerField;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1time: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1APV: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1RPV: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1AboutOtkl: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1Nedo: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ODU: TcxGridDBBandedColumn;
    TBImageList1: TTBImageList;
    dsType: TDataSource;
    adsType: TADODataSet;
    dsType2: TDataSource;
    dsOborud: TDataSource;
    dsLinkOborud: TDataSource;
    adsType2: TADODataSet;
    adsOborud: TADODataSet;
    adsLinkOborud: TADODataSet;
    adsTypeID: TAutoIncField;
    adsTypename: TWideStringField;
    adsType2ID: TAutoIncField;
    adsType2typeid: TIntegerField;
    adsType2name: TWideStringField;
    adsOborudID: TAutoIncField;
    adsOborudname: TWideStringField;
    adsLinkOborudID: TAutoIncField;
    adsLinkOborudaoeoID: TIntegerField;
    adsLinkOborudtypeid: TIntegerField;
    adsLinkOborudtype2id: TIntegerField;
    adsLinkOborudoborudid: TIntegerField;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBBandedTableView2: TcxGridDBBandedTableView;
    cxGrid1DBCardView1DBCardViewRow1: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DBCardViewRow2: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DBCardViewRow3: TcxGridDBCardViewRow;
    cxGrid1DBCardView1DBCardViewRow4: TcxGridDBCardViewRow;
    adsZash: TADODataSet;
    dsLinkZash: TDataSource;
    dsZash: TDataSource;
    adsZashID: TAutoIncField;
    adsZashname: TWideStringField;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView3DBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2DBColumn1: TcxGridDBColumn;
    adsLinkOborudtypename: TStringField;
    adsLinkOborudtype2name: TStringField;
    adsLinkOborudoborudname: TStringField;
    adsLinkOborudnames: TStringField;
    adsOborudtype2id: TIntegerField;
    cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn;
    TBXToolbar2: TTBXToolbar;
    TBXItem6: TTBXItem;
    TBXItem5: TTBXItem;
    TBXItem4: TTBXItem;
    TBXItem3: TTBXItem;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView4ID: TcxGridDBColumn;
    cxGrid1DBTableView4date: TcxGridDBColumn;
    cxGrid1DBTableView4time: TcxGridDBColumn;
    cxGrid1DBTableView4APV: TcxGridDBColumn;
    cxGrid1DBTableView4RPV: TcxGridDBColumn;
    cxGrid1DBTableView4AboutOtkl: TcxGridDBColumn;
    cxGrid1DBTableView4Nedo: TcxGridDBColumn;
    cxGrid1DBTableView4ODU: TcxGridDBColumn;
    TBXToolWindow1: TTBXToolWindow;
    cxCheckBox1: TcxCheckBox;
    adsAOEOOborud: TStringField;
    adsAOEOZash: TStringField;
    cxGrid1DBTableView4Oborud: TcxGridDBColumn;
    cxGrid1DBTableView4Zash: TcxGridDBColumn;
    cxGrid1DBTableView4DBColumn1: TcxGridDBColumn;
    adsZashshortname: TWideStringField;
    adsLinkZash: TADODataSet;
    adsLinkZashID: TAutoIncField;
    adsLinkZashaoeolinkid: TIntegerField;
    adsLinkZashzashid: TIntegerField;
    adsLinkZashnamezash: TStringField;
    adsAOEOlkz: TMemoField;
    cxGrid1DBTableView4Column1: TcxGridDBColumn;
    adsAOEORPV2: TIntegerField;
    cxGrid1DBTableView4Column2: TcxGridDBColumn;
    adsAOEOcomment: TMemoField;
    cxGrid1DBTableView4Column3: TcxGridDBColumn;
    adsAOEOludi: TMemoField;
    cxGrid1DBTableView4Column4: TcxGridDBColumn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure adsLinkOborudCalcFields(DataSet: TDataSet);
    procedure adsAOEOBeforePost(DataSet: TDataSet);
    procedure adsLinkZashBeforePost(DataSet: TDataSet);
    procedure adsLinkOborudBeforePost(DataSet: TDataSet);
    procedure TBXItem6Click(Sender: TObject);
    procedure TBXItem5Click(Sender: TObject);
    procedure TBXItem4Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsAOEOAfterEdit2(DataSet: TDataSet);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView4DBColumn1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure adsAOEOFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsAOEOBeforeDelete(DataSet: TDataSet);
    procedure adsAOEOAfterInsert(DataSet: TDataSet);
    procedure adsLinkZashFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsLinkZashBeforeDelete(DataSet: TDataSet);
    procedure adsLinkZashAfterInsert(DataSet: TDataSet);
    procedure adsLinkOborudFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsLinkOborudBeforeDelete(DataSet: TDataSet);
    procedure adsLinkOborudAfterInsert(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadAOEO(m,y: Integer);
  end;

var
  frmAOEO: TfrmAOEO;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u, dlgAoeoOb_u;

{$R *.dfm}

procedure TfrmAOEO.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if adsAOEO.State in [dsEdit, dsInsert] then
    adsAOEO.Post;
  if adsType.State in [dsEdit, dsInsert] then
    adsType.Post;
  if adsType2.State in [dsEdit, dsInsert] then
    adsType2.Post;
  if adsOborud.State in [dsEdit, dsInsert] then
    adsOborud.Post;
  if adsLinkOborud.State in [dsEdit, dsInsert] then
    adsLinkOborud.Post;
  if adsZash.State in [dsEdit, dsInsert] then
    adsZash.Post;
  if adsLinkZash.State in [dsEdit, dsInsert] then
    adsLinkZash.Post;
end;

procedure TfrmAOEO.FormCreate(Sender: TObject);
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

procedure TfrmAOEO.TBXItem1Click(Sender: TObject);
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
    ReloadAOEO(m,y);
    bLocalLoged:=true;
  end;
end;

procedure TfrmAOEO.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAOEO.ReloadAOEO(m,y: Integer);
var
  day1, day2: TDateTime;
  s,ss: string;
begin
//  if adsAOEO.Active then  adsAOEO.Next;
//  cxGrid1.BeginUpdate;

  adsLinkZash.DisableControls;
  adsZash.DisableControls;
  adsLinkOborud.DisableControls;
  adsOborud.DisableControls;
  adsType2.DisableControls;
  adsType.DisableControls;
  adsAOEO.DisableControls;

  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  ShowProcessCancel(Application.MainForm,'Чтение данных...');
  try
    AdoReopen(adsType,false);
    AdoReopen(adsType2,false);
    AdoReopen(adsZash,false);
    AdoReopen(adsOborud,false);

    if adsAOEO.State in [dsEdit, dsInsert] then
       adsAOEO.Cancel;
    if adsAOEO.Active then
      adsAOEO.Close;
    adsAOEO.CommandType := cmdText;
    adsAOEO.CommandText:='select *, '''' as strOborud, '''' as strZash from aoElOb where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC, [time] ASC';
    adsAOEO.Open;

    if adsLinkOborud.Active then
      adsLinkOborud.Close();
    adsLinkOborud.Open();
//    AdoReopen(adsLinkOborud,false);
    if adsLinkZash.Active then
      adsLinkZash.Close();
    adsLinkZash.Open();
//    AdoReopen(adsLinkZash,false);
    
    adsType.EnableControls;
    adsType2.EnableControls;
    adsOborud.EnableControls;
    adsZash.EnableControls;
    adsAOEO.EnableControls;
    adsLinkOborud.EnableControls;
    adsLinkZash.EnableControls;

    Application.ProcessMessages;

    adsAOEO.First;
    while not adsAOEO.Eof do
    begin
      s:='';
      ss:='';
      adsLinkOborud.First;
      while not adsLinkOborud.Eof do
      begin
        s:=s+adsLinkOborudnames.AsString+#13;
        adsLinkZash.First;
        while not adsLinkZash.Eof do
        begin
          s:=s+#13;
          ss:=ss+adsLinkZashnamezash.AsString+#13;
          adsLinkZash.Next;
        end;
        ss:=ss+#13;
        s:=s+#13;
        adsLinkOborud.Next;
      end;
      adsAOEO.Edit;
      adsAOEO.FieldByName('strOborud').AsString:=s;
      adsAOEO.FieldByName('strZash').AsString:=ss;
      adsAOEO.Post;
      adsAOEO.Next;
    end;
    adsAOEO.Locate('date',date(),[]);
  finally
 //   cxGrid1.EndUpdate;
    HideProcessCancel;
  end;
end;


procedure TfrmAOEO.adsLinkOborudCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet['oborudname'] = null then
    DataSet['names'] := DataSet['typename'] + ' : ' + DataSet['type2name']
  else
    DataSet['names'] := DataSet['typename'] + ' : ' + DataSet['type2name'] + ' : ' + DataSet['oborudname'];
end;

procedure TfrmAOEO.adsAOEOBeforePost(DataSet: TDataSet);
begin
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmAOEO.adsLinkZashBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmAOEO.adsLinkOborudBeforePost(DataSet: TDataSet);
begin
  inherited;
  TADODataSet(DataSet).Properties['Update Criteria'].Value:= 0 {adCriteriaKey};
end;

procedure TfrmAOEO.TBXItem6Click(Sender: TObject);
begin
  inherited;
  adsAOEO.Insert;
end;

procedure TfrmAOEO.TBXItem5Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Желаете удалить?',mtConfirmation,[mbOk,mbCancel],0) = mrOk then
    adsAOEO.Delete;
end;

procedure TfrmAOEO.TBXItem4Click(Sender: TObject);
begin
  inherited;
  if adsAOEO.State in [dsEdit, dsInsert] then
    adsAOEO.Post;
end;

procedure TfrmAOEO.TBXItem3Click(Sender: TObject);
begin
  inherited;
  if adsAOEO.State in [dsEdit, dsInsert] then
    adsAOEO.Cancel;
end;

procedure TfrmAOEO.adsAOEOAfterEdit2(DataSet: TDataSet);
begin
  inherited;
  TBXItem5.Enabled:= not (adsAOEO.State in [dsEdit, dsInsert]);
  TBXItem6.Enabled:= not (adsAOEO.State in [dsEdit, dsInsert]);
  TBXItem3.Enabled:= (adsAOEO.State in [dsEdit, dsInsert]);
  TBXItem4.Enabled:= (adsAOEO.State in [dsEdit, dsInsert]);
end;

procedure TfrmAOEO.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView4.OptionsView.ColumnAutoWidth:=cxCheckBox1.Checked;
end;

procedure TfrmAOEO.cxGrid1DBTableView4DBColumn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  id: Integer;  
begin
  inherited;
  try
    if adsAOEO.State in [dsEdit, dsInsert] then
      adsAOEO.Post;
    try
      AdoReopen(adsLinkOborud,false);
      AdoReopen(adsLinkOborud,false);      
      DoAoeoOb(Application.MainForm,adsAOEOID.AsInteger,adsAOEO,adsType,adsType2,adsOborud,adsLinkOborud,adsZash,adsLinkzash);
    finally
      id := adsAOEO.FieldByName('ID').AsInteger;
      TBXItem1Click(Sender);
      adsAOEO.Locate('ID',id,[]);
    end;
  except
    MessageDlg('Ошибка при сохранении записи.'#13#10'Возможно вы не ввели дату.',mtError,[mbOk],0);
  end;
end;

procedure TfrmAOEO.adsAOEOFieldChangeComplete(DataSet: TCustomADODataSet;
  const FieldCount: Integer; const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoElOb',adsAOEOdate.AsDateTime,adsAOEOID.AsInteger,Fields[0]);
end;

procedure TfrmAOEO.adsAOEOBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoElOb',adsAOEOdate.AsDateTime,adsAOEOID.AsInteger,'delete');
end;

procedure TfrmAOEO.adsAOEOAfterInsert(DataSet: TDataSet);
begin
  inherited;
  adsAOEOAfterEdit2(DataSet);
  if bLoged and bLocalLoged then
    dmData.PutLog('aoElOb',adsAOEOdate.AsDateTime,adsAOEOID.AsInteger,'insert');
end;

procedure TfrmAOEO.adsLinkZashFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoLinkZash',adsAOEOdate.AsDateTime,adsLinkZashID.AsInteger,Fields[0]);
end;

procedure TfrmAOEO.adsLinkZashBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoLinkZash',adsAOEOdate.AsDateTime,adsLinkZashID.AsInteger,'delete');
end;

procedure TfrmAOEO.adsLinkZashAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoLinkZash',adsAOEOdate.AsDateTime,adsLinkZashID.AsInteger,'insert');
end;

procedure TfrmAOEO.adsLinkOborudFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoLinkOborud',adsAOEOdate.AsDateTime,adsLinkOborudID.AsInteger,Fields[0]);
end;

procedure TfrmAOEO.adsLinkOborudBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoLinkOborud',adsAOEOdate.AsDateTime,adsLinkOborudID.AsInteger,'delete');
end;

procedure TfrmAOEO.adsLinkOborudAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoLinkOborud',adsAOEOdate.AsDateTime,adsLinkOborudID.AsInteger,'insert');
end;

initialization
  RegisterClass(TfrmAOEO);
end.
