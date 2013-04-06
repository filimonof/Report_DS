unit frmCtrlU_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, TBXExtItems, TB2Toolbar, DB, ADODB, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar;

type
  TfrmCtrlU = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBControlItem1: TTBControlItem;
    TBXLabelItem2: TTBXLabelItem;
    TBControlItem2: TTBControlItem;
    TBXLabelItem3: TTBXLabelItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    cbiMonth: TcxComboBox;
    seiYear: TcxSpinEdit;
    adsCtrlU: TADODataSet;
    dsCtrlU: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    adsCtrlUid: TAutoIncField;
    adsCtrlUdate: TDateTimeField;
    adsCtrlUPSSaransk: TWideStringField;
    adsCtrlUPSRuzaevka: TWideStringField;
    adsCtrlUPSMoksha: TWideStringField;
    adsCtrlUPSKomsomolsk: TWideStringField;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1PSSaransk: TcxGridDBColumn;
    cxGrid1DBTableView1PSRuzaevka: TcxGridDBColumn;
    cxGrid1DBTableView1PSMoksha: TcxGridDBColumn;
    cxGrid1DBTableView1PSKomsomolsk: TcxGridDBColumn;
    tbOK: TTBXToolbar;
    TBXLabelItem9: TTBXLabelItem;
    TBXLabelItem10: TTBXLabelItem;
    TBXLabelItem4: TTBXLabelItem;
    cbTypeData: TcxComboBox;
    TBControlItem5: TTBControlItem;
    TBXLabelItem5: TTBXLabelItem;
    teValue: TcxTextEdit;
    TBControlItem6: TTBControlItem;
    TBXItem3: TTBXItem;
    TBXLabelItem6: TTBXLabelItem;
    cbDay1: TcxComboBox;
    TBControlItem7: TTBControlItem;
    cbDay2: TcxComboBox;
    TBControlItem8: TTBControlItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    adsCtrlUPStec2: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure TBXItem1Click(Sender: TObject);
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem3Click(Sender: TObject);
    procedure adsCtrlUFieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadCtrlU(m,y: Integer);
  end;

var
  frmCtrlU: TfrmCtrlU;

implementation

uses dmData_u, DateUtils, uVar, uAdoUtils, dlgProcess_u;

{$R *.dfm}

procedure TfrmCtrlU.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  Application.ProcessMessages;
  bLocalLoged:=true;
  seiYear.Value := YearOf(Now());
  cbiMonth.Properties.Items.Clear;
  for i:=1 to 12 do
    cbiMonth.Properties.Items.Add(mMonthDay[i]);
  cbiMonth.ItemIndex := MonthOf(Now())-1;

  cbDay1.Properties.Items.Clear;
  cbDay2.Properties.Items.Clear;
  for i:=1 to DaysInAMonth(YearOf(Now()),MonthOf(Now())) do
  begin
    cbDay1.Properties.Items.Add(IntToStr(i));
    cbDay2.Properties.Items.Add(IntToStr(i));
  end;
  cbDay1.ItemIndex := 0;
  cbDay2.ItemIndex := DaysInAMonth(YearOf(Now()),MonthOf(Now()))-1;
  cbTypeData.ItemIndex:=0;
  teValue.Text:='';

//  ReloadCtrlU(MonthOf(Now()),YearOf(Now()));
end;

procedure TfrmCtrlU.ReloadCtrlU(m,y: Integer);
var
  d, day1, day2: TDateTime;
begin
 Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsCtrlU.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...'); 
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  if adsCtrlU.State in [dsEdit, dsInsert] then
    adsCtrlU.Cancel;
  if adsCtrlU.Active then
    adsCtrlU.Close;
  adsCtrlU.CommandType := cmdText;
  adsCtrlU.CommandText:='select * from uCtrlU where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsCtrlU.Open;
  d:=day1;
  repeat
    if not adsCtrlU.Locate('date',d,[]) then
    begin
      adsCtrlU.Insert;
      adsCtrlUdate.AsDateTime:=d;
      adsCtrlUPSSaransk.AsFloat:=0;
      adsCtrlUPSRuzaevka.AsFloat:=0;
      adsCtrlUPSMoksha.AsFloat:=0;
      adsCtrlUPSKomsomolsk.AsFloat:=0;
      adsCtrlUPStec2.AsFloat:=0;      
      adsCtrlU.Post;
      Application.ProcessMessages;
    end;
    d:=d+1;
  until d>=(day2+1);
  if adsCtrlU.State in [dsEdit, dsInsert] then
    adsCtrlU.Cancel;
  if adsCtrlU.Active then
    adsCtrlU.Close;
  adsCtrlU.CommandType := cmdText;
  adsCtrlU.CommandText:='select * from uCtrlU where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by [date] ASC';
  adsCtrlU.Open;
  adsCtrlU.Locate('date',Date(),[]);
 finally
  cxGrid1.EndUpdate;
  adsCtrlU.EnableControls;
  HideProcessCancel;
 end; 
end;

procedure TfrmCtrlU.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if adsCtrlU.State in [dsEdit, dsInsert] then
    adsCtrlU.Post;
end;

procedure TfrmCtrlU.TBXItem1Click(Sender: TObject);
var
  m,y,i: Integer;
begin
  inherited;
  m:=cbiMonth.ItemIndex+1;
  y:=Round(StrToInt(seiYear.Text));
  cbiMonth.DroppedDown:=False;
  Application.ProcessMessages;
  if (m in [1..12]) and (y>1) then
  begin
    cbDay1.Properties.Items.Clear;
    cbDay2.Properties.Items.Clear;
    for i:=1 to DaysInAMonth(YearOf(Now()),MonthOf(Now())) do
    begin
      cbDay1.Properties.Items.Add(IntToStr(i));
      cbDay2.Properties.Items.Add(IntToStr(i));
    end;
    cbDay1.ItemIndex := 0;
    cbDay2.ItemIndex := DaysInAMonth(YearOf(Now()),MonthOf(Now()))-1;
    teValue.Text:='';

    ReloadCtrlU(m,y);
  end;  
end;

procedure TfrmCtrlU.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCtrlU.TBXItem3Click(Sender: TObject);
var d,day1,day2 : TDateTime;
begin
  inherited;
 if MessageDlg('Вы уверены?', mtConfirmation,[mbOk,mbCancel],0) = mrOk then  
  if teValue.Text<>'' then
  begin
    if adsCtrlU.State in [dsEdit, dsInsert] then
      adsCtrlU.Cancel;
    day1:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay1.ItemIndex+1,0,0,0,0);
    day2:=EncodeDateTime(Round(StrToInt(seiYear.Text)),cbiMonth.ItemIndex+1,cbDay2.ItemIndex+1,0,0,0,0);
    d:=day1;
    repeat
      if adsCtrlU.Locate('date',d,[]) then
      begin
        adsCtrlU.Edit;
        case cbTypeData.ItemIndex of
        0: adsCtrlUPSSaransk.AsString:=teValue.Text;
        1: adsCtrlUPSRuzaevka.AsString:=teValue.Text;
        2: adsCtrlUPSMoksha.AsString:=teValue.Text;
        3: adsCtrlUPSKomsomolsk.AsString:=teValue.Text;
        4: adsCtrlUPStec2.AsString:=teValue.Text;        
        end;
        adsCtrlU.Post;
      end;  
      Application.ProcessMessages;
      d:=d+1;
    until d>(day2);
  end;
end;

procedure TfrmCtrlU.adsCtrlUFieldChangeComplete(DataSet: TCustomADODataSet;
  const FieldCount: Integer; const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged and bLocalLoged  then
    dmData.PutLog('uCtrlU',adsCtrlUdate.AsDateTime,adsCtrlUid.AsInteger,Fields[0]);
end;

initialization
  RegisterClass(TfrmCtrlU);
end.
