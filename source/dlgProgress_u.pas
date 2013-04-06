unit dlgProgress_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,   
  StdCtrls, XPMan, cxControls, cxContainer, cxEdit, cxProgressBar,
  cxTextEdit, cxMemo, cxLookAndFeelPainters, cxButtons, Menus;

type
  TdlgProgress = class(TForm)
    AdvPanel1: TPanel;
    Bevel1: TBevel;
    XPManifest1: TXPManifest;
    pbResult: TcxProgressBar;
    amInfo: TcxMemo;
    btnCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    CurrentCount, MaxCount: Integer;
    Cancelled : Boolean;
    Error: string;
  end;

procedure BeginProgress(AOwner: TComponent; aCaption: string);
procedure EndProgress();
function StepProgress(): Boolean;
procedure AddInfo(s: string);
procedure ExitToForm();
procedure ResetProgres(i: Integer);
function IsCancelProgress: Boolean;
procedure ChangeCaption(caption: string);

var
  dlgProgress: TdlgProgress;

implementation


procedure BeginProgress(AOwner: TComponent; aCaption: string);
begin
  if dlgProgress <> nil then
    Exit;
  dlgProgress := TdlgProgress.Create(AOwner);
  dlgProgress.pbResult.Position := 0;
  dlgProgress.Caption := aCaption;
  dlgProgress.Show;
end;

procedure EndProgress();
begin
  if dlgProgress = nil then
    Exit;
  dlgProgress.Cancelled:=true;
  dlgProgress.btnCancel.Caption:='Закрыть';
end;

procedure ExitToForm();
begin
  if dlgProgress = nil then
    Exit;
  dlgProgress.Close;
  dlgProgress:=nil;
end;   

function StepProgress(): Boolean;
begin
  Result:=true;
  if dlgProgress = nil then
    Exit;
  if not dlgProgress.Cancelled then
  begin
    Application.ProcessMessages;
    Inc(dlgProgress.CurrentCount);
    with dlgProgress do
      pbResult.Position:=Round(CurrentCount * 100 / MaxCount);
    Result:=true;
  end
  else
  begin
    ExitToForm;
    Result:=false;
  end;
end;

function IsCancelProgress: Boolean;
begin
  Result:=false;
  if dlgProgress = nil then
    Exit;
  if not dlgProgress.Cancelled then
  begin
    Result:=true;
  end
  else
  begin
    ExitToForm;
    Result:=false;
  end;
end;

procedure ResetProgres(i: Integer);
begin
  if dlgProgress = nil then
    Exit;
  dlgProgress.pbResult.Position := 0;
  dlgProgress.CurrentCount := 0;
  if i=0 then
    i:=1;
  dlgProgress.MaxCount:=i;
end;

procedure AddInfo(s: string);
begin
  if dlgProgress = nil then
    Exit;
  dlgProgress.amInfo.Lines.Add(s);
  dlgProgress.amInfo.Lines.Add('');

//  dlgProgress.amInfo.CurY := dlgProgress.amInfo.Lines.Count;
end;

procedure ChangeCaption(caption: string);
begin
  if dlgProgress = nil then
    Exit;
  dlgProgress.Caption := caption;
end;

{$R *.dfm}

procedure TdlgProgress.FormCreate(Sender: TObject);
begin
  Cancelled := False;
  Error := '';
  amInfo.Lines.Clear;
  btnCancel.Caption := 'Отмена';
end;

procedure TdlgProgress.FormDeactivate(Sender: TObject);
begin
  if dlgProgress = nil then
    Exit;
  dlgProgress.Show;
  dlgProgress.Activate;
end;

procedure TdlgProgress.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TdlgProgress.btnCancelClick(Sender: TObject);
begin
  if Cancelled then
    ExitToForm
  else
    Cancelled:=true;
end;

end.
