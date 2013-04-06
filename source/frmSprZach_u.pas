unit frmSprZach_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, TB2Toolbar, ADODB;

type
  TfrmSprZach = class(TfrmSimple)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsZach: TDataSource;
    adsZach: TADODataSet;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    cxGrid1DBTableView1DBColumn: TcxGridDBColumn;
    cxGrid1DBTableView1DBColumn1: TcxGridDBColumn;
    adsZachname: TWideStringField;
    adsZachshortname: TWideStringField;
    adsZachID: TAutoIncField;
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure adsZachFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsZachBeforeDelete(DataSet: TDataSet);
    procedure adsZachAfterInsert(DataSet: TDataSet);
  private
    bLocalLoged: Boolean;
  public
    { Public declarations }
  end;

var
  frmSprZach: TfrmSprZach;

implementation

{$R *.dfm}

uses dmData_u, uVar;

procedure TfrmSprZach.FormCreate(Sender: TObject);
begin
  inherited;
  bLocalLoged := true;
  if not adsZach.Active then
    adsZach.Open;
end;

procedure TfrmSprZach.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSprZach.adsZachFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoZash',Date(),adsZachID.AsInteger,Fields[0]);
end;

procedure TfrmSprZach.adsZachBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoZash',Date(),adsZachID.AsInteger,'delete');
end;

procedure TfrmSprZach.adsZachAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoZash',Date(),adsZachID.AsInteger,'insert');
end;

initialization
  RegisterClass(TfrmSprZach);
end.
