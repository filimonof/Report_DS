unit dlgRep_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons, XPMan,
  cxControls, cxContainer, cxEdit, cxImage, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxRadioGroup, cxGroupBox, Menus,
  cxGraphics, cxCheckBox, DB, ADODB;

type
  TdlgRep = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    XPManifest1: TXPManifest;
    cxImage1: TcxImage;
    cxLabel1: TcxLabel;
    cxImage2: TcxImage;
    cxLabel2: TcxLabel;
    deDate: TcxDateEdit;
    cxLabel3: TcxLabel;
    deAOTO1: TcxDateEdit;
    deAOTO2: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton7: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxCheckBox1: TcxCheckBox;
    cxComboBox1: TcxComboBox;
    adsPodpis: TADODataSet;
    adsPodpisname: TWideStringField;
    adsPodpisid: TAutoIncField;
    cxComboBox2: TcxComboBox;
    procedure cxCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DoRep(AOwner: TComponent; var date1,datet1,datet2: TDateTime; var isPrint: Integer; var vODU: Integer; var ispodpis: Boolean; var podpisid: Integer): Boolean;

var
  dlgRep: TdlgRep;

implementation

uses uAdoUtils;

{$R *.dfm}

function DoRep(AOwner: TComponent; var date1,datet1,datet2: TDateTime; var isPrint: Integer; var vODU: Integer; var ispodpis: Boolean; var podpisid: Integer): Boolean;
begin
  with TdlgRep.Create(AOwner) do
  try
    if not adsPodpis.Active then
      adsPodpis.Open
    else
      AdoReopen(adsPodpis);
  
    deDate.Date := Date();
    deAOTO1.Date := Date();
    deAOTO2.Date := Date();

    cxComboBox1.Properties.Items.Clear;
    cxComboBox2.Properties.Items.Clear;
    adsPodpis.First;
    while not adsPodpis.EOF do
    begin
      cxComboBox1.Properties.Items.Add(adsPodpisname.AsString);
      cxComboBox2.Properties.Items.Add(adsPodpisid.AsString);
      adsPodpis.Next;
    end;
    if not adsPodpis.IsEmpty then
      cxComboBox1.ItemIndex:=0
    else
    begin
      cxCheckBox1.Enabled := false;
      cxComboBox1.Properties.Items.Add('Не ни одной подписи.');
      cxComboBox1.ItemIndex:=0
    end;  

    Result := ShowModal = mrOK;
    if Result then
    begin
      date1 := deDate.Date;
      datet1 := deAOTO1.Date;
      datet2 := deAOTO2.Date;

      ispodpis := cxCheckBox1.Checked;
      if ispodpis then
      begin
        cxComboBox2.ItemIndex := cxComboBox1.ItemIndex;
        podpisid:= StrToInt(cxComboBox2.Properties.Items[cxComboBox2.ItemIndex]);
      end
      else
      begin
        podpisid:=0;
      end;

      if cxRadioButton6.Checked then
        isPrint:=0     // email monitor
      else
      if cxRadioButton7.Checked then
        isPrint:=1     // email
      else
      if cxRadioButton1.Checked then
        isPrint:=2     // monitor
      else
        isPrint:=3;    // print

      if cxRadioButton3.Checked then
        vODU:=0
      else if cxRadioButton4.Checked then
        vODU:=1
      else
        vODU:=2
    end;
  finally
    Free;
  end;
end;


procedure TdlgRep.cxCheckBox1Click(Sender: TObject);
begin
  cxComboBox1.Enabled := cxCheckBox1.Checked;
  cxRadioButton6.Enabled := cxCheckBox1.Checked;
  cxRadioButton7.Enabled := cxCheckBox1.Checked;
  if cxRadioButton6.Checked or cxRadioButton7.Checked then
    cxRadioButton1.Checked:=true;
//  cxRadioButton1.Checked := cxCheckBox1.Checked;
end;

end.
