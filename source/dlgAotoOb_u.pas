unit dlgAotoOb_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons, XPMan,
  cxControls, cxContainer, cxCheckListBox, cxDBCheckListBox, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxTextEdit, cxInplaceContainer, cxCheckBox, ADODB,
  DB, Menus;

type
  TdlgAotoOb = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    Bevel1: TBevel;
    XPManifest1: TXPManifest;
    cxTreeList1: TcxTreeList;
    cxTreeList1cxTreeListColumn1: TcxTreeListColumn;
    cxTreeList1cxTreeListColumn2: TcxTreeListColumn;
    cxButton2: TcxButton;
    cxTreeList1cxTreeListColumn3: TcxTreeListColumn;
    adsLinkOborud: TADODataSet;
    aqDelLO: TADOQuery;
    adsLinkOborudID: TAutoIncField;
    adsLinkOborudaoTeplObID: TIntegerField;
    adsLinkOborudoborudid: TIntegerField;
    procedure cxButton2Click(Sender: TObject);
    procedure adsLinkOborudAfterInsert(DataSet: TDataSet);
  private
    tmp_adsC, tmp_adsO, tmp_adsLO, tmp_adsA: TADODataSet;
  public
    procedure CreateTreeList(dsC,dsO,dsLO,dsA: TAdoDataSet);
    procedure SaveDate(dsC,dsO,dsLO,dsA: TAdoDataSet);
  end;

procedure DoAotoOb(AOwner: TComponent; dsC,dsO,dsLO,dsA:TAdoDataSet);

var
  dlgAotoOb: TdlgAotoOb;

implementation

uses frmAOTO_u, Math, dmData_u, dlgAddAotoOb_u, uVar;

procedure DoAotoOb(AOwner: TComponent; dsC,dsO,dsLO,dsA: TAdoDataSet);
begin
  with TdlgAotoOb.Create(AOwner) do
  try
    tmp_adsO := dsO;
    tmp_adsC := dsC;
    tmp_adsLO := dsLO;
    tmp_adsA := dsA;
    CreateTreeList(dsC,dsO,dsLO,dsA);
    if ShowModal=mrOk then
      SaveDate(dsC,dsO,dsLO,dsA);
  finally
    Free;
  end;
end;


{$R *.dfm}

procedure TdlgAotoOb.CreateTreeList(dsC,dsO,dsLO,dsA:TAdoDataSet);
var
  trN,tr: TcxTreeListNode;
begin
    cxTreeList1.Clear;
    dsC.First;
    while not dsC.Eof do
    begin
      trN:=cxTreeList1.Add;
      trN.Texts[0]:=dsC.FieldByName('name').AsString;
      trN.Values[2]:=0;      
      dsO.First;
      while not dsO.Eof do
      begin
        tr:=cxTreeList1.AddChild(trN);
        tr.Texts[0]:=dsO.FieldByName('name').AsString;
        tr.Values[2]:=dsO.FieldByName('ID').AsInteger;
        if dsLO.Locate('oborudid;aoTeplObID',VarArrayOf([dsO.FieldByName('ID').AsInteger , dsA.FieldByName('ID').AsInteger]),[]) then
          tr.Values[1]:=true
        else
          tr.Values[1]:=false;        
        dsO.Next;
      end;
      dsC.Next;
    end;
    cxTreeList1.FullExpand;                                            
end;

procedure TdlgAotoOb.SaveDate(dsC,dsO,dsLO,dsA: TAdoDataSet);
var
  i: Integer;
  s: string;
begin
  if aqDelLO.Active then
    aqDelLO.Close;
  aqDelLO.SQL.Clear;
  s:= 'Delete from aotoLinkOborud where aoTeplObID='+dsA.FieldByName('ID').AsString;
  aqDelLO.SQL.Add(s);
  aqDelLO.Prepared := true;
  aqDelLO.ExecSQL;

  for i:=0 to cxTreeList1.Nodes.Count-1 do
  begin
    if (cxTreeList1.Nodes.Items[i].Values[2]<>0) and (cxTreeList1.Nodes.Items[i].Values[1]=true) then
    begin
      if adsLinkOborud.State in [dsEdit, dsInsert] then
         adsLinkOborud.Cancel;
      if adsLinkOborud.Active then
        adsLinkOborud.Close;
      adsLinkOborud.CommandType := cmdTableDirect;
      adsLinkOborud.CommandText:='aotoLinkOborud';
      adsLinkOborud.Open;

      adsLinkOborud.Insert;
      adsLinkOborud.FieldByName('aoTeplObID').AsInteger := dsA.FieldByName('ID').AsInteger;
      adsLinkOborud.FieldByName('oborudid').AsInteger := cxTreeList1.Nodes.Items[i].Values[2];
      adsLinkOborud.Post;
    end;
  end;
end;

procedure TdlgAotoOb.cxButton2Click(Sender: TObject);
begin
   if DoAddAotoOb(Application.MainForm,tmp_adsC,tmp_adsO) then
     CreateTreeList(tmp_adsC,tmp_adsO,tmp_adsLO,tmp_adsA);
end;

procedure TdlgAotoOb.adsLinkOborudAfterInsert(DataSet: TDataSet);
begin
  if bLoged then
    dmData.PutLog('aotoLinkOborud',tmp_adsA.FieldByName('date').AsDateTime,tmp_adsA.FieldByName('ID').AsInteger,'insert');
end;

end.
