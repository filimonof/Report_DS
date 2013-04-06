unit frmLog_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frmSimple_u, cxGraphics, cxSpinEdit, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, TB2Item, TBX,
  TBXExtItems, TB2Dock, TB2Toolbar, ImgList, TBXStatusBars, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, cxCalendar, cxTimeEdit;

type
  TfrmLog = class(TfrmSimple)
    TBXToolbar1: TTBXToolbar;
    TBXLabelItem1: TTBXLabelItem;
    TBXLabelItem2: TTBXLabelItem;
    TBXLabelItem3: TTBXLabelItem;
    TBXItem1: TTBXItem;
    TBXSeparatorItem1: TTBXSeparatorItem;
    TBXItem2: TTBXItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsLog: TDataSource;
    adsLog: TADODataSet;
    adsLogid: TAutoIncField;
    adsLogtablo: TWideStringField;
    adsLogdate: TDateTimeField;
    adsLogtime: TDateTimeField;
    adsLogcomp: TWideStringField;
    adsLoguser: TWideStringField;
    adsLogdatefield: TDateTimeField;
    adsLogidfield: TIntegerField;
    adsLogcomment: TMemoField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1tablo: TcxGridDBColumn;
    cxGrid1DBTableView1date: TcxGridDBColumn;
    cxGrid1DBTableView1time: TcxGridDBColumn;
    cxGrid1DBTableView1comp: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGrid1DBTableView1datefield: TcxGridDBColumn;
    cxGrid1DBTableView1idfield: TcxGridDBColumn;
    cxGrid1DBTableView1comment: TcxGridDBColumn;
    cxDateEdit1: TcxDateEdit;
    TBControlItem3: TTBControlItem;
    cxDateEdit2: TcxDateEdit;
    TBControlItem1: TTBControlItem;
    cxComboBox1: TcxComboBox;
    TBControlItem2: TTBControlItem;
    procedure TBXItem2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure TBXItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ReloadLog(day1,day2: TDateTime; grup: Integer);
  end;

var
  frmLog: TfrmLog;

implementation

uses dmData_u, uAdoUtils, dlgProcess_u;

{$R *.dfm}


procedure TfrmLog.FormCreate(Sender: TObject);
begin
  inherited;
  Application.ProcessMessages;  
  cxDateEdit1.Date := Date();
  cxDateEdit2.Date := Date();
  cxComboBox1.ItemIndex := 0;
  ReloadLog(Date(),Date(),0);
end;

procedure TfrmLog.ReloadLog(day1,day2: TDateTime; grup: Integer);
begin
 cxGrid1.BeginUpdate;
 adsLog.DisableControls;
 ShowProcessCancel(Application.MainForm,'Чтение данных...');
 try
  if adsLog.State in [dsEdit, dsInsert] then
    adsLog.Cancel;
  if adsLog.Active then
    adsLog.Close;
  adsLog.CommandType := cmdText;
  adsLog.CommandText:='select * from eObject where [date]>='+DateToAccssSQLStr(day1)+' and [date]<='+DateToAccssSQLStr(day2)+' order by tablo, [date], time';
  adsLog.Open;

  cxGrid1DBTableView1ID.GroupIndex := -1;
  cxGrid1DBTableView1ID.Visible := true;
  cxGrid1DBTableView1tablo.Visible := true;
  cxGrid1DBTableView1tablo.GroupIndex := -1;
  cxGrid1DBTableView1date.Visible := true;
  cxGrid1DBTableView1date.GroupIndex := -1;
  cxGrid1DBTableView1time.Visible := true;
  cxGrid1DBTableView1time.GroupIndex := -1;
  cxGrid1DBTableView1comp.Visible := true;
  cxGrid1DBTableView1comp.GroupIndex := -1;
  cxGrid1DBTableView1user.Visible := true;
  cxGrid1DBTableView1user.GroupIndex := -1;
  cxGrid1DBTableView1datefield.Visible := true;
  cxGrid1DBTableView1datefield.GroupIndex := -1;
  cxGrid1DBTableView1idfield.Visible := true;
  cxGrid1DBTableView1idfield.GroupIndex := -1;
  cxGrid1DBTableView1comment.Visible := true;
  cxGrid1DBTableView1comment.GroupIndex := -1;
  case grup of
  0: begin
       cxGrid1DBTableView1tablo.Visible := false;
       cxGrid1DBTableView1tablo.GroupIndex := 0;
     end;
  1: begin
       cxGrid1DBTableView1date.Visible := false;
       cxGrid1DBTableView1date.GroupIndex := 0;
     end;
  2: begin
       cxGrid1DBTableView1comp.Visible := false;
       cxGrid1DBTableView1comp.GroupIndex := 0;
     end;
  3: begin
       cxGrid1DBTableView1user.Visible := false;
       cxGrid1DBTableView1user.GroupIndex := 0;
     end;
  4: begin
       cxGrid1DBTableView1datefield.Visible := false;
       cxGrid1DBTableView1datefield.GroupIndex := 0;
     end;
  5: begin
       cxGrid1DBTableView1idfield.Visible := false;
       cxGrid1DBTableView1idfield.GroupIndex := 0;
     end;
  end;

 finally
  cxGrid1.EndUpdate;
  adsLog.EnableControls;
  HideProcessCancel;
 end;

  if not adsLog.Active then
    adsLog.Open;
{}
end;

procedure TfrmLog.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if adsLog.State in [dsEdit, dsInsert] then
    adsLog.Cancel;
end;

procedure TfrmLog.TBXItem2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLog.TBXItem1Click(Sender: TObject);
begin
  inherited;
  ReloadLog(cxDateEdit1.Date,cxDateEdit2.Date,cxComboBox1.ItemIndex);
end;

initialization
  RegisterClass(TfrmLog);
end.
