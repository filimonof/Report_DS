unit dlgAddAotoOb_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons, XPMan,
  cxDBEdit, cxLabel, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, ADODB, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, Menus, cxGraphics;

type
  TdlgAddAotoOb = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    XPManifest1: TXPManifest;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dsOb: TDataSource;
    dsComp: TDataSource;
    adsComp: TADODataSet;
    adsCompID: TAutoIncField;
    adsCompname: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  function DoAddAotoOb(AOwner: TComponent; dsC,dsO: TAdoDataSet): Boolean;


var
  dlgAddAotoOb: TdlgAddAotoOb;

implementation

uses dmData_u;

{$R *.dfm}

function DoAddAotoOb(AOwner: TComponent; dsC,dsO: TAdoDataSet): Boolean;
begin
  with TdlgAddAotoOb.Create(AOwner) do
  try
    adsComp.Open;
    dsOb.DataSet:=dsO;
    dsO.Insert;
    cxDBLookupComboBox1.DataBinding.DataSource:=dsOb;
    cxDBLookupComboBox1.DataBinding.DataField:='companyid';
    cxDBLookupComboBox1.Properties.ListSource:=dsComp;
    cxDBLookupComboBox1.Properties.KeyFieldNames:='ID';
    cxDBLookupComboBox1.Properties.ListFieldNames:='Name';
    cxDBTextEdit1.DataBinding.DataSource:=dsOb;
    cxDBTextEdit1.DataBinding.DataField:='name';
    Result := ShowModal=mrOk;
    if Result then
      dsO.Post
    else
      dsO.Cancel;
  finally
    Free;
  end;
end;  


end.
