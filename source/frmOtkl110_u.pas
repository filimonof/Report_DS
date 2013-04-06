unit frmOtkl110_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, ImgList, TB2Item, TB2Dock, TBX, TBXStatusBars,
  cxGraphics, cxSpinEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, TBXExtItems, TB2Toolbar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCalendar,
  cxTimeEdit, cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, DateUtils, ADODB,
  StdCtrls;

type
  TfrmOtkl110 = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem3: TTBXLabelItem;
    TBControlItem1: TTBControlItem;
    TBXLabelItem2: TTBXLabelItem;
    TBControlItem2: TTBControlItem;
    TBXLabelItem1: TTBXLabelItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    cbiMonth: TcxComboBox;
    seiYear: TcxSpinEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    adsOtkl110: TADODataSet;
    dsOtkl110: TDataSource;
    adsOtkl110id: TAutoIncField;
    adsOtkl110week: TIntegerField;
    adsOtkl110year: TIntegerField;
    adsOtkl110apv_ok: TFloatField;
    adsOtkl110apv_no: TFloatField;
    cxGrid1DBTableView2week: TcxGridDBColumn;
    cxGrid1DBTableView2year: TcxGridDBColumn;
    cxGrid1DBTableView2apv_ok: TcxGridDBColumn;
    cxGrid1DBTableView2apv_no: TcxGridDBColumn;
    cxGrid1DBTableView2day_in_week: TcxGridDBColumn;
    adsOtkl110day_in_week: TStringField;
    adsOtkl110apv220_ok: TFloatField;
    adsOtkl110apv220_no: TFloatField;
    cxGrid1DBTableView2apv220_ok: TcxGridDBColumn;
    cxGrid1DBTableView2apv220_no: TcxGridDBColumn;
    procedure TBXItem2Click(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure adsOtkl110CalcFields(DataSet: TDataSet);
    procedure adsOtkl110FieldChangeComplete(DataSet: TCustomADODataSet;
      const FieldCount: Integer; const Fields: OleVariant;
      const Error: Error; var EventStatus: TEventStatus);
  private
    bLocalLoged: Boolean;
  public
    procedure ReloadOtkl110(m,y: Integer);
  end;

var
  frmOtkl110: TfrmOtkl110;

implementation

uses dmData_u, uAdoUtils, uVar, Math, dlgProcess_u;

{$R *.dfm}

procedure TfrmOtkl110.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close();
end;

procedure TfrmOtkl110.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  bLocalLoged:=true;
  Application.ProcessMessages;
  seiYear.Value := YearOf(Now());
  cbiMonth.Properties.Items.Clear;
    for i:=1 to 12 do
      cbiMonth.Properties.Items.Add(mMonthDay[i]);
  cbiMonth.ItemIndex := MonthOf(Now())-1;
end;

procedure TfrmOtkl110.TBXItem1Click(Sender: TObject);
var
  m,y: Integer;
begin
  inherited;
  m:=cbiMonth.ItemIndex+1;
  y:=Round(StrToInt(seiYear.Text));
  cbiMonth.DroppedDown:=False;
  Application.ProcessMessages;
  if (m in [1..12]) and (y>1) then
  begin
    bLocalLoged:=false;
    ReloadOtkl110(m,y);
    bLocalLoged:=true;
  end;
end;

procedure TfrmOtkl110.ReloadOtkl110(m,y: Integer);
var
  d, day1, day2: TDateTime;
  w, week1, week2, yer, year1, year2: Word;
  query: string;
begin
 Application.ProcessMessages;
 cxGrid1.BeginUpdate;
 adsOtkl110.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...');
 try
  day1:=EncodeDateTime(y,m,1,0,0,0,0);
  day2:=EncodeDateTime(y,m,DaysInAMonth(y,m),0,0,0,0);
  DateToWeek(day1, week1, year1);
  DateToWeek(day2, week2, year2);
   
  if year1 = year2 then  //если год один и тот же
  begin
    query := 'select * from otkl110 where [year]='+IntToStr(y)+' and [week]>='+IntToStr(week1)+' and [week]<='+IntToStr(week2)+' order by [year] ASC, [week] ASC';
  end
  else
  begin
    query := 'select * from otkl110 where  ';
    d:=day1;
    repeat
      DateToWeek(d, w, yer);
      if d <> day1 then  query := query + ' or ';
      query := query + ' ([year]='+IntToStr(yer)+' and [week]='+IntToStr(w)+') ';
      d:=d+7;
    until w=(week2);
  end;

  if adsOtkl110.State in [dsEdit, dsInsert] then
    adsOtkl110.Cancel;
  if adsOtkl110.Active then
    adsOtkl110.Close;
  adsOtkl110.CommandType := cmdText;
  adsOtkl110.CommandText:= query;
  adsOtkl110.Open;

  //если данных нету, то добавляем
  d:=day1;
  repeat
    DateToWeek(d, w, yer);
    if not adsOtkl110.Locate('week',w,[]) then
    try
      adsOtkl110.Insert;
      adsOtkl110week.AsInteger:=w;
      adsOtkl110year.AsInteger:=yer;
      adsOtkl110.Post;
      Application.ProcessMessages;
    except
    end;
    d:=d+7;
  until w=(week2);

  if adsOtkl110.State in [dsEdit, dsInsert] then
    adsOtkl110.Cancel;
  if adsOtkl110.Active then
    adsOtkl110.Close;
  adsOtkl110.CommandType := cmdText;
  adsOtkl110.CommandText:=query;
  adsOtkl110.Open;
 finally
  cxGrid1.EndUpdate;
  adsOtkl110.EnableControls;
  Application.ProcessMessages;
  HideProcessCancel;
 end;
end;

procedure TfrmOtkl110.adsOtkl110CalcFields(DataSet: TDataSet);
var
  dt1, dt2: TDateTime;
begin
  inherited;
  try
    dt1 := WeekToDate(DataSet['week'], DataSet['year']);
    dt2 := IncDay(dt1, 7);
    DataSet['day_in_week'] := DateToStr(dt1) + ' - ' + DateToStr(dt2);
  except
  end;
end;

procedure TfrmOtkl110.adsOtkl110FieldChangeComplete(
  DataSet: TCustomADODataSet; const FieldCount: Integer;
  const Fields: OleVariant; const Error: Error;
  var EventStatus: TEventStatus);
begin
  inherited;
  if bLoged  then
  try
    dmData.PutLog('otkl110',WeekToDate(adsOtkl110week.AsInteger, adsOtkl110year.AsInteger),adsOtkl110id.AsInteger,Fields[0]);
  except  
  end;
end;

initialization
  RegisterClass(TfrmOtkl110);
end.
