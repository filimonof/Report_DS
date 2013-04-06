unit frmSprOborudAoeo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  ExtCtrls, cxControls, cxContainer, cxEdit, cxLabel, cxSplitter, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGroupBox, cxRadioGroup, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  TB2Toolbar, cxDBEdit;

type
  TfrmSprOborudAoeo = class(TfrmSimple)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxSplitter1: TcxSplitter;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxRadioGroup1: TcxRadioGroup;
    adsType2: TADODataSet;
    adsOborud: TADODataSet;
    dsType2: TDataSource;
    dsOborud: TDataSource;
    TBXToolbar1: TTBXToolbar;
    TBXItem2: TTBXItem;
    dsType: TDataSource;
    adsType: TADODataSet;
    adsTypeID: TAutoIncField;
    adsTypename: TWideStringField;
    adsType2ID: TAutoIncField;
    adsType2typeid: TIntegerField;
    adsType2name: TWideStringField;
    adsOborudID: TAutoIncField;
    adsOborudname: TWideStringField;
    adsOborudtype2id: TIntegerField;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxGrid2DBTableView1name: TcxGridDBColumn;
    procedure TBXItem2Click(Sender: TObject);
    procedure cxRadioGroup1Click(Sender: TObject);
    procedure adsOborudAfterScroll(DataSet: TDataSet);
    procedure adsType2AfterScroll(DataSet: TDataSet);
    procedure adsType2FieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsType2BeforeDelete(DataSet: TDataSet);
    procedure adsType2AfterInsert(DataSet: TDataSet);
    procedure adsOborudFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
    procedure adsOborudBeforeDelete(DataSet: TDataSet);
    procedure adsOborudAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    bLocalLoged: Boolean;
  public
    pr: Boolean;
  end;

var
  frmSprOborudAoeo: TfrmSprOborudAoeo;

implementation

uses dmData_u, uVar;

{$R *.dfm}


procedure TfrmSprOborudAoeo.FormCreate(Sender: TObject);
begin
  inherited;
  bLocalLoged := true;
  if not adsType.Active then
    adsType.Open;
  if not adsType2.Active then
    adsType2.Open;
  if not adsOborud.Active then
    adsOborud.Open;
end;

procedure TfrmSprOborudAoeo.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSprOborudAoeo.cxRadioGroup1Click(Sender: TObject);
begin
  inherited;
  Application.ProcessMessages;
  if adsType.Active then
    adsType.Locate('ID',cxRadioGroup1.ItemIndex+1,[]);
  adsType2.Refresh;
  if cxRadioGroup1.ItemIndex+1 = 1 then
  begin
    adsOborud.Filtered := false;
    adsOborud.Filter := '';    
    adsOborud.DataSource := dsType2;
    adsOborud.MasterFields := 'ID';
    adsOborud.IndexFieldNames := 'type2id';
  end
  else
  begin
    adsOborud.DataSource := nil;
    adsOborud.MasterFields := '';
    adsOborud.IndexFieldNames := '';
    adsOborud.Filtered := false;
    adsOborud.Filter := 'type2id=0';
    adsOborud.Filtered := true;         
  end;
  adsType2.Refresh;
end;

procedure TfrmSprOborudAoeo.adsOborudAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if adsType.Active and adsType2.Active and adsOborud.Active then
      cxLabel1.Caption := adsTypename.AsString+' : '+ adsType2name.AsString+' : '+ adsOborudname.AsString
end;

procedure TfrmSprOborudAoeo.adsType2AfterScroll(DataSet: TDataSet);
begin
  if  adsType.Active and adsType2.Active and  adsOborud.Active then
    cxLabel1.Caption := adsTypename.AsString+' : '+ adsType2name.AsString +' : ' + adsOborudname.AsString;
{  if  adsType.Active and adsType2.Active and  adsOborud.Active then
    if adsType2typeid.AsInteger <> 1 then
    begin

      with adsOborud do
      begin
        cxGrid1.BeginUpdate;
        DisableControls;
        try
          if adsOborud.Active then adsOborud.Close;
          adsOborud.CommandType := cmdText;
          adsOborud.CommandText:='select * from aoeoOborud where type2id=0 order by [name] ASC';
          adsOborud.Open;
        finally
          EnableControls;
          cxGrid1.EndUpdate;
        end
      end;
    end
    else
    begin
      cxLabel1.Caption := adsTypename.AsString+' : '+ adsType2name.AsString +' : ' + adsOborudname.AsString;
      with adsOborud do
      begin
        cxGrid1.BeginUpdate;
        DisableControls;
        try
          if adsOborud.Active then adsOborud.Close;
          adsOborud.CommandType := cmdText;
          adsOborud.CommandText:='select * from aoeoOborud where type2id='+adsType2ID.AsString+' order by [name] ASC';
          adsOborud.Open;
          adsOborud.DataSource := dsType2;
          adsOborud.MasterFields := 'ID';
          adsOborud.IndexFieldNames := 'type2id';

        finally
          EnableControls;
          cxGrid1.EndUpdate;
        end
      end;
    end;

}    
end;

procedure TfrmSprOborudAoeo.adsType2FieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoType2',Date(),adsType2ID.AsInteger,Fields[0]);
end;

procedure TfrmSprOborudAoeo.adsType2BeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoType2',Date(),adsType2ID.AsInteger,'delete');
end;

procedure TfrmSprOborudAoeo.adsType2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoType2',Date(),adsType2ID.AsInteger,'insert');
end;

procedure TfrmSprOborudAoeo.adsOborudFieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoOborud',Date(),adsOborudID.AsInteger,Fields[0]);
end;

procedure TfrmSprOborudAoeo.adsOborudBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoOborud',Date(),adsOborudID.AsInteger,'delete');
end;

procedure TfrmSprOborudAoeo.adsOborudAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cxRadioGroup1.ItemIndex+1 <> 1 then
    adsOborudtype2id.AsInteger := 0;
  if bLoged and bLocalLoged then
    dmData.PutLog('aoeoOborud',Date(),adsOborudID.AsInteger,'insert');
end;

initialization
  RegisterClass(TfrmSprOborudAoeo);
end.
