unit frmSprPodpis_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TB2Toolbar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ADODB, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxImage, ExtDlgs;

type
  TfrmSprPodpis = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    adsPodpis: TADODataSet;
    dsPodpis: TDataSource;
    adsPodpisid: TAutoIncField;
    adsPodpisname: TWideStringField;
    adsPodpispodpis: TBlobField;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid1DBTableView1podpis: TcxGridDBColumn;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem1: TTBXItem;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure adsPodpisFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsPodpisBeforeDelete(DataSet: TDataSet);
    procedure adsPodpisAfterInsert(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    { Public declarations }
  end;

var
  frmSprPodpis: TfrmSprPodpis;

implementation

uses dmData_u, uVar;

{$R *.dfm}


procedure TfrmSprPodpis.FormCreate(Sender: TObject);
begin
  inherited;
  bLocalLoged := true;
  if not adsPodpis.Active then
    adsPodpis.Open;
end;

procedure TfrmSprPodpis.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSprPodpis.TBXItem1Click(Sender: TObject);
begin
  inherited;
  if adsPodpis.State in [dsEdit, dsInsert] then
    adsPodpis.Post;
  if not adsPodpis.IsEmpty then
    if adsPodpisname.AsString = '' then
      MessageDlg('¬ведите им€.',mtInformation,[mbOk],0)
    else
      if OpenPictureDialog1.Execute then
      begin
        adsPodpis.Edit;
        adsPodpispodpis.LoadFromFile(OpenPictureDialog1.FileName);
        adsPodpis.Post;
      end;
end;

procedure TfrmSprPodpis.adsPodpisFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('tblPodpis',Date(),adsPodpisid.AsInteger,Fields[0]);
end;

procedure TfrmSprPodpis.adsPodpisBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('tblPodpis',Date(),adsPodpisid.AsInteger,'delete');
end;

procedure TfrmSprPodpis.adsPodpisAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('tblPodpis',Date(),adsPodpisid.AsInteger,'insert');
end;

initialization
  RegisterClass(TfrmSprPodpis);
end.
