unit dlgAoeoOb_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons, XPMan,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridCardView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxCalendar, cxTimeEdit,
  cxImageComboBox, cxMemo, cxDropDownEdit, cxDBLookupComboBox, cxButtonEdit,
  cxGridDBCardView, cxGridBandedTableView, cxGridDBBandedTableView, Menus,
  cxSplitter, cxPC, cxTL, cxInplaceContainer, ADODB, cxTextEdit, cxTLData,
  cxDBTL, cxContainer, cxLabel;

type
  TdlgAoeoOb = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    cxButton1: TcxButton;
    XPManifest1: TXPManifest;
    dsLinkOborud: TDataSource;
    PanelNiz: TPanel;
    PanelLeft: TPanel;
    PanelRigth: TPanel;
    PanelCenter: TPanel;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    Panel2: TPanel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsZash: TDataSource;
    cxGrid1DBTableView1name: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTreeList1: TcxTreeList;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    dsType2PS: TDataSource;
    dsOborudPS: TDataSource;
    dsType2VL: TDataSource;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn2: TcxTreeListColumn;
    adsType2VL: TADODataSet;
    dsLinkZash: TDataSource;
    adsType2PS: TADODataSet;
    adsOborudPS: TADODataSet;
    adsType2VLID: TAutoIncField;
    adsType2VLtypeid: TIntegerField;
    adsType2VLname: TWideStringField;
    adsType2PSID: TAutoIncField;
    adsType2PStypeid: TIntegerField;
    adsType2PSname: TWideStringField;
    adsOborudPSID: TAutoIncField;
    adsOborudPSname: TWideStringField;
    adsOborudPStype2id: TIntegerField;
    adsOborudVL: TADODataSet;
    dsOborudVL: TDataSource;
    adsOborudVLID: TAutoIncField;
    adsOborudVLname: TWideStringField;
    adsOborudVLtype2id: TIntegerField;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid2DBTableView1name: TcxGridDBColumn;
    cxGrid3DBTableView1name: TcxGridDBColumn;
    cxGrid4DBTableView2: TcxGridDBTableView;
    cxGrid4DBTableView1names: TcxGridDBColumn;
    cxGrid4DBTableView2ID: TcxGridDBColumn;
    cxGrid4DBTableView2aoeolinkid: TcxGridDBColumn;
    cxGrid4DBTableView2zashid: TcxGridDBColumn;
    cxGrid4DBTableView3: TcxGridDBTableView;
    cxGrid4DBTableView3namezash: TcxGridDBColumn;
    cxTreeList1cxTreeListColumn3: TcxTreeListColumn;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Panel3: TPanel;
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    tmp_adsAOEO,tmp_adsType,tmp_adsType2,tmp_adsOborud,tmp_adsLinkOborud,tmp_adsZash,tmp_adsLinkzash: TAdoDataSet;
    tmp_id: Integer;
    procedure CreateTreeListVL;
  end;
  procedure DoAoeoOb(AOwner: TComponent; id: Integer; ads_AOEO,ads_Type,ads_Type2,ads_Oborud,ads_LinkOborud,ads_Zash,ads_Linkzash: TAdoDataSet);

var
  dlgAoeoOb: TdlgAoeoOb;

implementation

uses dmData_u, frmAOEO_u, uAdoUtils;


procedure DoAoeoOb(AOwner: TComponent; id: Integer; ads_AOEO,ads_Type,ads_Type2,ads_Oborud,ads_LinkOborud,ads_Zash,ads_Linkzash: TAdoDataSet);
begin
  with TdlgAoeoOb.Create(AOwner) do
  try
    tmp_id := id;

    tmp_adsAOEO:=ads_AOEO;
    tmp_adsType:=ads_Type;
    tmp_adsType2:=ads_Type2;
    tmp_adsOborud:=ads_Oborud;
    tmp_adsLinkOborud:=ads_LinkOborud;
    tmp_adsZash:=ads_Zash;
    tmp_adsLinkzash:=ads_Linkzash;

    adsType2VL.Open;
    adsType2PS.Open;
    adsOborudPS.Open;
    adsOborudVL.Open;

    CreateTreeListVL;
    if ShowModal=mrOk then
      ;
  finally
    Free;
  end;
end;


{$R *.dfm}

procedure TdlgAoeoOb.CreateTreeListVL;
var
  trN,tr: TcxTreeListNode;
  node: Integer;
begin
    cxTreeList1.Clear;
    adsType2VL.First;
    while not adsType2VL.Eof do
    begin
      trN:=cxTreeList1.Add;
      trN.Texts[0]:=adsType2VL.FieldByName('name').AsString;
      trN.Values[1]:=adsType2VL.FieldByName('ID').AsInteger;
      trN.Values[2]:='0';
      node:=adsType2VL.FieldByName('ID').AsInteger;
      adsOborudVL.First;
      while not adsOborudVL.Eof do
      begin
        tr:=cxTreeList1.AddChild(trN);
        tr.Texts[0]:=adsOborudVL.FieldByName('name').AsString;
        tr.Values[1]:=adsOborudVL.FieldByName('ID').AsInteger;
        tr.Values[2]:=node;        
        adsOborudVL.Next;
      end;
      adsType2VL.Next;
    end;
    cxTreeList1.FullCollapse;
end;


procedure TdlgAoeoOb.cxButton6Click(Sender: TObject);
var
  tr,tr2 : TcxTreeListNode;
  i: Integer;
begin
  if dsLinkOborud.DataSet.State in [dsEdit,dsInsert] then
    dsLinkOborud.DataSet.Cancel;
  // добавить оборудование
  if cxPageControl1.ActivePage = cxTabSheet1 then
  begin //ВЛ
    if cxTreeList1.SelectionCount = 0 then
      exit;
    tr:=cxTreeList1.Selections[0];
    if tr.Values[2]<>0 then
    begin // один объект
      if not dsLinkOborud.DataSet.Locate('oborudID;aoeoID;typeid;type2id',VarArrayOf([tr.Values[1],tmp_id,1,tr.Values[2]]),[]) then
      begin
        dsLinkOborud.DataSet.Insert;
        dsLinkOborud.DataSet.FieldByName('oborudID').AsInteger := tr.Values[1];
        dsLinkOborud.DataSet.FieldByName('aoeoID').AsInteger := tmp_id;
        dsLinkOborud.DataSet.FieldByName('typeid').AsInteger := 1; //VL
        dsLinkOborud.DataSet.FieldByName('type2id').AsInteger := tr.Values[2];
        dsLinkOborud.DataSet.Post;
      end
    end
    else
    begin // несколько объеков
      for i:=0 to tr.Count-1 do
      begin
        tr2:=tr.Items[i];
        if not dsLinkOborud.DataSet.Locate('oborudID;aoeoID;typeid;type2id',VarArrayOf([tr2.Values[1],tmp_id,1,tr2.Values[2]]),[]) then
        begin
          dsLinkOborud.DataSet.Insert;
          dsLinkOborud.DataSet.FieldByName('oborudID').AsInteger := tr2.Values[1];
          dsLinkOborud.DataSet.FieldByName('aoeoID').AsInteger := tmp_id;
          dsLinkOborud.DataSet.FieldByName('typeid').AsInteger := 1; //VL
          dsLinkOborud.DataSet.FieldByName('type2id').AsInteger := tr2.Values[2];
          dsLinkOborud.DataSet.Post;
        end
      end;  
    end;
  end
  else
  begin //ПС
    if dsType2PS.DataSet.IsEmpty or dsOborudPS.DataSet.IsEmpty then
      Exit;
    if not dsLinkOborud.DataSet.Locate('oborudID;aoeoID;typeid;type2id',VarArrayOf([dsOborudPS.DataSet.FieldByName('ID').AsInteger,tmp_id,2,dsType2PS.DataSet.FieldByName('ID').AsInteger]),[]) then
    begin
      dsLinkOborud.DataSet.Insert;
      dsLinkOborud.DataSet.FieldByName('oborudID').AsInteger := dsOborudPS.DataSet.FieldByName('ID').AsInteger;
      dsLinkOborud.DataSet.FieldByName('aoeoID').AsInteger := tmp_id;
      dsLinkOborud.DataSet.FieldByName('typeid').AsInteger := 2; //PS
      dsLinkOborud.DataSet.FieldByName('type2id').AsInteger := dsType2PS.DataSet.FieldByName('ID').AsInteger;
      dsLinkOborud.DataSet.Post;
    end;  
  end;
end;

procedure TdlgAoeoOb.cxButton5Click(Sender: TObject);
begin
  // удалить оборудование
  if dsLinkOborud.DataSet.State in [dsEdit,dsInsert] then
    dsLinkOborud.DataSet.Cancel;
  if not dsLinkOborud.DataSet.IsEmpty then
  begin
    dsLinkOborud.DataSet.Delete;
  end;
end;

procedure TdlgAoeoOb.cxButton3Click(Sender: TObject);
begin
  //добавление защит на оборудование
  if dsLinkZash.DataSet.State in [dsEdit,dsInsert] then
    dsLinkZash.DataSet.Cancel;
  if not dsLinkOborud.DataSet.IsEmpty and not dsZash.DataSet.IsEmpty then
  begin
    if not dsLinkZash.DataSet.Locate('zashID;aoeoLinkID',VarArrayOf([dsZash.DataSet.FieldByName('ID').AsInteger,dsLinkOborud.DataSet.FieldByName('ID').AsInteger]),[]) then
    begin
      dsLinkZash.DataSet.Insert;
      dsLinkZash.DataSet.FieldByName('zashID').AsInteger := dsZash.DataSet.FieldByName('ID').AsInteger;
      dsLinkZash.DataSet.FieldByName('aoeoLinkID').AsInteger := dsLinkOborud.DataSet.FieldByName('ID').AsInteger;
      dsLinkZash.DataSet.Post;
    end;
  end;
end;

procedure TdlgAoeoOb.cxButton4Click(Sender: TObject);
begin
  // удаление защиты
  if dsLinkZash.DataSet.State in [dsEdit,dsInsert] then
    dsLinkZash.DataSet.Cancel;
  if not dsLinkZash.DataSet.IsEmpty then
  begin
    dsLinkZash.DataSet.Delete;
  end;
end;

end.
