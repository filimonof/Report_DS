unit dlgRepForm_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxLabel, cxControls, cxContainer, cxEdit, cxImage, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGroupBox, cxRadioGroup;

type
  TdlgRepForm = class(TForm)
    Bevel1: TBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxImage1: TcxImage;
    cxLabel1: TcxLabel;
    cxImage2: TcxImage;
    deDate1: TcxDateEdit;
    cxLabel4: TcxLabel;
    deDate2: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxLabel7: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton7: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton8: TcxRadioButton;
    cxRadioButton9: TcxRadioButton;
    cxRadioButton10: TcxRadioButton;
    cxRadioButton11: TcxRadioButton;
    cxRadioButton12: TcxRadioButton;
    cxRadioButton13: TcxRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DoRepForm(AOwner: TComponent; var date1,date2: TDateTime; var typeform,inputprint: Integer): Boolean;

var
  dlgRepForm: TdlgRepForm;

implementation

uses DateUtils;

{$R *.dfm}

function DoRepForm(AOwner: TComponent; var date1,date2: TDateTime; var typeform,inputprint: Integer): Boolean;
begin
  with TdlgRepForm.Create(AOwner) do
  try
    deDate1.Date := StartOfAMonth(YearOf(Date()), MonthOf(Date()));
    deDate2.Date := EndOfAMonth(YearOf(Date()), MonthOf(Date()));
    Result := ShowModal = mrOK;
    if Result then
    begin
      date1 := deDate1.Date;
      date2 := deDate2.Date;

      if cxRadioButton3.Checked then
        typeform := 0  // energia
      else if cxRadioButton1.Checked then
        typeform := 1  // job power
      else if cxRadioButton5.Checked then
        typeform := 2  // teplo
      else if cxRadioButton4.Checked then
        typeform := 3  // gaz
      else if cxRadioButton7.Checked then
        typeform := 4  // mazut
      else if cxRadioButton9.Checked then
        typeform := 5  // tec-2
      else if cxRadioButton8.Checked then
        typeform := 6  // napryagenie
      else if cxRadioButton10.Checked then
        typeform := 7  // teplo tehn oborud
      else if cxRadioButton11.Checked then
        typeform := 8  // 6 - 10 kV
      else if cxRadioButton12.Checked then
        typeform := 9  // tmis i sepak
      else if cxRadioButton13.Checked then
        typeform := 10;  // izm sost teplotehn oborud tec2

      if cxRadioButton6.Checked then
        inputprint:=2     // monitor
      else
        inputprint:=3;    // print

    end;
  finally
    Free;
  end;

end;

end.
 