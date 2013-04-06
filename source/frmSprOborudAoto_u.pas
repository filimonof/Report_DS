unit frmSprOborudAoto_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  TB2Toolbar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxSplitter, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, ExtCtrls, cxContainer, cxLabel;

type
  TfrmSprOborudAoto = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxSplitter1: TcxSplitter;
    dsAotoCompany: TDataSource;
    dsAotoOborud: TDataSource;
    adsAotoCompany: TADODataSet;
    adsAotoOborud: TADODataSet;
    adsAotoCompanyname: TWideStringField;
    adsAotoOborudcompanyid: TIntegerField;
    adsAotoOborudname: TWideStringField;
    adsAotoCompanyID: TAutoIncField;
    adsAotoOborudID: TAutoIncField;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1name: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    procedure TBXItem2Click(Sender: TObject);
    procedure adsAotoOborudAfterScroll(DataSet: TDataSet);
    procedure adsAotoCompanyFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure FormCreate(Sender: TObject);
    procedure adsAotoOborudFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsAotoCompanyBeforeDelete(DataSet: TDataSet);
    procedure adsAotoOborudBeforeDelete(DataSet: TDataSet);
    procedure adsAotoCompanyAfterInsert(DataSet: TDataSet);
    procedure adsAotoOborudAfterInsert(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    { Public declarations }
  end;

var
  frmSprOborudAoto: TfrmSprOborudAoto;

implementation

uses dmData_u, uVar;

{$R *.dfm}

procedure TfrmSprOborudAoto.FormCreate(Sender: TObject);
begin
  inherited;
  bLocalLoged := true;
  if not adsAotoCompany.Active then
    adsAotoCompany.Open;
  if not adsAotoOborud.Active then
    adsAotoOborud.Open;
end;

procedure TfrmSprOborudAoto.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSprOborudAoto.adsAotoOborudAfterScroll(DataSet: TDataSet);
begin
  if adsAotoCompany.Active and adsAotoOborud.Active then
      cxLabel1.Caption := adsAotoCompanyname.AsString+' : '+ adsAotoOborudname.AsString
end;

procedure TfrmSprOborudAoto.adsAotoCompanyFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoCompany',Date(),adsAotoCompanyID.AsInteger,Fields[0]);
end;

procedure TfrmSprOborudAoto.adsAotoOborudFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoOborud',Date(),adsAotoOborudID.AsInteger,Fields[0]);
end;

procedure TfrmSprOborudAoto.adsAotoCompanyBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoCompany',Date(),adsAotoCompanyID.AsInteger,'delete');
end;

procedure TfrmSprOborudAoto.adsAotoOborudBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoOborud',Date(),adsAotoOborudID.AsInteger,'delete');
end;

procedure TfrmSprOborudAoto.adsAotoCompanyAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoCompany',Date(),adsAotoCompanyID.AsInteger,'insert');
end;

procedure TfrmSprOborudAoto.adsAotoOborudAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aotoOborud',Date(),adsAotoOborudID.AsInteger,'insert');
end;

initialization
  RegisterClass(TfrmSprOborudAoto);
end.
