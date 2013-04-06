unit frmSimple_u;
{
  BarManager.Style := bmsOffice11;
  dxDockingManager.ViewStyle := vsOffice11;
  dxStatusBar.PaintStyle := stpsOffice11;
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TBXStatusBars, TB2Dock, TBX, TB2Toolbar, ImgList, TB2Item;

type
  TfrmSimple = class(TForm)
    sbarSimple: TTBXStatusBar;
    TBXDock1: TTBXDock;
    TBXDock2: TTBXDock;
    TBXDock3: TTBXDock;
    TBXDock4: TTBXDock;
    ilSmallIcons: TTBImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TfrmSimpleClass = class of TfrmSimple;

var
  frmSimple: TfrmSimple;

implementation

{$R *.dfm}

procedure TfrmSimple.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization
  RegisterClass(TfrmSimple);
end.
