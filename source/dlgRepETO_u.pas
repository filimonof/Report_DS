unit dlgRepETO_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, cxLabel, cxControls, cxContainer, cxEdit, cxImage, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics,
  cxCheckBox, cxGroupBox, DB, ADODB;

type
  TdlgRepETO = class(TForm)
    cxImage1: TcxImage;
    cxLabel1: TcxLabel;
    cxImage2: TcxImage;
    XPManifest1: TXPManifest;
    Bevel1: TBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    deAOEO1: TcxDateEdit;
    cxLabel4: TcxLabel;
    deAOEO2: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    cxComboBox1: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxRadioButton7: TcxRadioButton;
    cxComboBox2: TcxComboBox;
    adsPodpis: TADODataSet;
    adsPodpisname: TWideStringField;
    adsPodpisid: TAutoIncField;
    procedure cxCheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgRepETO: TdlgRepETO;

function DoRepETO(AOwner: TComponent; var date1,date2: TDateTime; var ispodpis: Boolean; var podpisid: Integer; var inputprint: Integer; var vODU: Integer): Boolean;

implementation

uses dmData_u, uAdoUtils;

{$R *.dfm}

function DoRepETO(AOwner: TComponent; var date1,date2: TDateTime; var ispodpis: Boolean; var podpisid: Integer; var inputprint: Integer; var vODU: Integer): Boolean;
begin
  with TdlgRepETO.Create(AOwner) do
  try
    if not adsPodpis.Active then
      adsPodpis.Open
    else
      AdoReopen(adsPodpis);
      
    deAOEO1.Date := Date();
    deAOEO2.Date := Date();

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
      date1 := deAOEO1.Date;
      date2 := deAOEO2.Date;
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

      if cxRadioButton1.Checked then
        inputprint:=0     // email monitor
      else
      if cxRadioButton7.Checked then
        inputprint:=1     // email
      else
      if cxRadioButton6.Checked then
        inputprint:=2     // monitor
      else
        inputprint:=3;    // print

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


procedure TdlgRepETO.cxCheckBox1Click(Sender: TObject);
begin
  cxComboBox1.Enabled := cxCheckBox1.Checked;
  cxRadioButton1.Enabled := cxCheckBox1.Checked;
  cxRadioButton7.Enabled := cxCheckBox1.Checked;
  if cxRadioButton1.Checked or cxRadioButton7.Checked then
    cxRadioButton6.Checked:=true;
//  cxRadioButton1.Checked := cxCheckBox1.Checked;
end;

end.
