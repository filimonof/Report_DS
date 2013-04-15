unit dlgOptions_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxLookAndFeelPainters, StdCtrls, cxButtons, XPMan,
  cxControls, cxContainer, cxEdit, cxImage, cxLabel, cxTextEdit,
  cxMaskEdit, cxButtonEdit, dxDockControl, dxDockPanel, cxPC, cxSplitter,
  dxNavBar, dxNavBarCollns, dxNavBarBase, dxNavBarStyles, cxStyles,
  cxGraphics, cxInplaceContainer, cxVGrid, cxCheckBox, Menus, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDropDownEdit, cxDBExtLookupComboBox,
  cxSpinEdit, cxRadioGroup;

type
  TdlgOptions = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    XPManifest1: TXPManifest;
    cxImage1: TcxImage;
    cxImage2: TcxImage;
    cxLabel1: TcxLabel;
    OpenDialog: TOpenDialog;
    Panel2: TPanel;
    dxNavBar1: TdxNavBar;
    cxSplitter1: TcxSplitter;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1StyleItem1: TdxNavBarStyleItem;
    Panel3: TPanel;
    cxLabel7: TcxLabel;
    cxVerticalGrid1: TcxVerticalGrid;
    Panel4: TPanel;
    cxLabel8: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    Panel5: TPanel;
    cxLabel9: TcxLabel;
    cxVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxVerticalGrid1EditorRow1: TcxEditorRow;
    cxVerticalGrid1EditorRow2: TcxEditorRow;
    cxVerticalGrid1EditorRow3: TcxEditorRow;
    cxButton3: TcxButton;
    dxNavBar1Item3: TdxNavBarItem;
    cxTabSheet4: TcxTabSheet;
    Panel6: TPanel;
    cxLabel2: TcxLabel;
    dxNavBar1Item5: TdxNavBarItem;
    cxTabSheet5: TcxTabSheet;
    Panel7: TPanel;
    cxLabel3: TcxLabel;
    cxVerticalGrid2: TcxVerticalGrid;
    cxVerticalGrid2CategoryRow1: TcxCategoryRow;
    cxVerticalGrid2EditorRow1: TcxEditorRow;
    cxVerticalGrid2EditorRow2: TcxEditorRow;
    cxVerticalGrid2EditorRow3: TcxEditorRow;
    cxVerticalGrid2CategoryRow2: TcxCategoryRow;
    cxVerticalGrid2EditorRow4: TcxEditorRow;
    cxVerticalGrid2EditorRow5: TcxEditorRow;
    cxVerticalGrid2EditorRow6: TcxEditorRow;
    cxVerticalGrid2CategoryRow3: TcxCategoryRow;
    cxVerticalGrid2EditorRow7: TcxEditorRow;
    cxVerticalGrid2EditorRow8: TcxEditorRow;
    cxVerticalGrid2EditorRow9: TcxEditorRow;
    cxVerticalGrid3: TcxVerticalGrid;
    cxEditorRow1: TcxEditorRow;
    cxCategoryRow1: TcxCategoryRow;
    cxEditorRow2: TcxEditorRow;
    cxEditorRow3: TcxEditorRow;
    cxEditorRow4: TcxEditorRow;
    cxCategoryRow2: TcxCategoryRow;
    cxEditorRow5: TcxEditorRow;
    cxEditorRow6: TcxEditorRow;
    cxEditorRow7: TcxEditorRow;
    cxCategoryRow3: TcxCategoryRow;
    cxEditorRow8: TcxEditorRow;
    cxEditorRow9: TcxEditorRow;
    Panel8: TPanel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Panel9: TPanel;
    cxLabel6: TcxLabel;
    cxLabel10: TcxLabel;
    cxVerticalGrid4: TcxVerticalGrid;
    cxVerticalGrid4CategoryRow1: TcxCategoryRow;
    cxVerticalGrid4EditorRow1: TcxEditorRow;
    cxVerticalGrid4EditorRow2: TcxEditorRow;
    cxVerticalGrid4CategoryRow2: TcxCategoryRow;
    cxVerticalGrid4EditorRow3: TcxEditorRow;
    cxVerticalGrid4EditorRow4: TcxEditorRow;
    cxVerticalGrid4CategoryRow3: TcxCategoryRow;
    cxVerticalGrid4EditorRow5: TcxEditorRow;
    cxVerticalGrid4EditorRow6: TcxEditorRow;
    cxVerticalGrid4CategoryRow4: TcxCategoryRow;
    cxVerticalGrid4EditorRow7: TcxEditorRow;
    cxVerticalGrid4EditorRow8: TcxEditorRow;
    cxVerticalGrid4CategoryRow5: TcxCategoryRow;
    cxVerticalGrid4EditorRow9: TcxEditorRow;
    cxVerticalGrid4EditorRow10: TcxEditorRow;
    cxVerticalGrid4CategoryRow6: TcxCategoryRow;
    cxVerticalGrid4EditorRow11: TcxEditorRow;
    cxVerticalGrid4EditorRow12: TcxEditorRow;
    cxVerticalGrid4CategoryRow7: TcxCategoryRow;
    cxVerticalGrid4EditorRow13: TcxEditorRow;
    cxVerticalGrid4EditorRow14: TcxEditorRow;
    cxVerticalGrid4CategoryRow8: TcxCategoryRow;
    cxVerticalGrid4EditorRow15: TcxEditorRow;
    cxVerticalGrid4EditorRow16: TcxEditorRow;
    cxVerticalGrid4CategoryRow9: TcxCategoryRow;
    cxVerticalGrid4EditorRow17: TcxEditorRow;
    cxVerticalGrid4EditorRow18: TcxEditorRow;
    cxVerticalGrid4CategoryRow10: TcxCategoryRow;
    cxVerticalGrid4CategoryRow11: TcxCategoryRow;
    cxVerticalGrid4CategoryRow12: TcxCategoryRow;
    cxVerticalGrid4EditorRow19: TcxEditorRow;
    cxVerticalGrid4EditorRow20: TcxEditorRow;
    cxVerticalGrid4CategoryRow13: TcxCategoryRow;
    cxVerticalGrid4EditorRow21: TcxEditorRow;
    cxVerticalGrid4EditorRow22: TcxEditorRow;
    cxVerticalGrid5: TcxVerticalGrid;
    cxEditorRow10: TcxEditorRow;
    cxCategoryRow4: TcxCategoryRow;
    cxEditorRow11: TcxEditorRow;
    cxEditorRow12: TcxEditorRow;
    cxEditorRow13: TcxEditorRow;
    cxCategoryRow5: TcxCategoryRow;
    cxEditorRow14: TcxEditorRow;
    cxEditorRow15: TcxEditorRow;
    cxCategoryRow6: TcxCategoryRow;
    cxEditorRow17: TcxEditorRow;
    cxEditorRow18: TcxEditorRow;
    cxVerticalGrid5EditorRow1: TcxEditorRow;
    cxVerticalGrid1EditorRow4: TcxEditorRow;
    cxVerticalGrid1EditorRow5: TcxEditorRow;
    cxTabSheet6: TcxTabSheet;
    Panel10: TPanel;
    cxLabel11: TcxLabel;
    dxNavBar1Item6: TdxNavBarItem;
    cxVerticalGrid4CategoryRow14: TcxCategoryRow;
    cxVerticalGrid4EditorRow23: TcxEditorRow;
    cxVerticalGrid4EditorRow24: TcxEditorRow;
    cxVerticalGrid4CategoryRow15: TcxCategoryRow;
    cxVerticalGrid4CategoryRow16: TcxCategoryRow;
    cxVerticalGrid4EditorRow25: TcxEditorRow;
    cxVerticalGrid4EditorRow26: TcxEditorRow;
    cxVerticalGrid4CategoryRow17: TcxCategoryRow;
    cxVerticalGrid4EditorRow27: TcxEditorRow;
    cxVerticalGrid4EditorRow28: TcxEditorRow;
    cxVerticalGrid4CategoryRow18: TcxCategoryRow;
    cxVerticalGrid4EditorRow29: TcxEditorRow;
    cxVerticalGrid4EditorRow30: TcxEditorRow;
    cxVerticalGrid4CategoryRow19: TcxCategoryRow;
    cxVerticalGrid4EditorRow31: TcxEditorRow;
    cxVerticalGrid4EditorRow32: TcxEditorRow;
    cxVerticalGrid4CategoryRow20: TcxCategoryRow;
    cxVerticalGrid4EditorRow33: TcxEditorRow;
    cxVerticalGrid4EditorRow34: TcxEditorRow;
    cxVerticalGrid4CategoryRow21: TcxCategoryRow;
    cxVerticalGrid4EditorRow35: TcxEditorRow;
    cxVerticalGrid4EditorRow36: TcxEditorRow;
    cxVerticalGrid6: TcxVerticalGrid;
    cxEditorRow16: TcxEditorRow;
    cxCategoryRow7: TcxCategoryRow;
    cxEditorRow19: TcxEditorRow;
    cxEditorRow21: TcxEditorRow;
    cxEditorRow22: TcxEditorRow;
    cxCategoryRow8: TcxCategoryRow;
    cxEditorRow23: TcxEditorRow;
    cxCategoryRow9: TcxCategoryRow;
    cxEditorRow24: TcxEditorRow;
    cxEditorRow25: TcxEditorRow;
    cxVerticalGrid6EditorRow1: TcxEditorRow;
    cxVerticalGrid6EditorRow2: TcxEditorRow;
    cxVerticalGrid6EditorRow3: TcxEditorRow;
    cxVerticalGrid6EditorRow4: TcxEditorRow;
    cxVerticalGrid6EditorRow5: TcxEditorRow;
    cxVerticalGrid6EditorRow6: TcxEditorRow;
    cxVerticalGrid6EditorRow7: TcxEditorRow;
    cxVerticalGrid4CategoryRow22: TcxCategoryRow;
    cxVerticalGrid4EditorRow37: TcxEditorRow;
    cxVerticalGrid4EditorRow38: TcxEditorRow;
    cxVerticalGrid4CategoryRow23: TcxCategoryRow;
    cxVerticalGrid4CategoryRow24: TcxCategoryRow;
    cxVerticalGrid4EditorRow39: TcxEditorRow;
    cxVerticalGrid4EditorRow40: TcxEditorRow;
    cxVerticalGrid4CategoryRow25: TcxCategoryRow;
    cxVerticalGrid4EditorRow41: TcxEditorRow;
    cxVerticalGrid4EditorRow42: TcxEditorRow;
    cxVerticalGrid4CategoryRow26: TcxCategoryRow;
    cxVerticalGrid4EditorRow43: TcxEditorRow;
    cxVerticalGrid4EditorRow44: TcxEditorRow;
    cxVerticalGrid4CategoryRow27: TcxCategoryRow;
    cxVerticalGrid4EditorRow45: TcxEditorRow;
    cxVerticalGrid4EditorRow46: TcxEditorRow;
    cxVerticalGrid4CategoryRow28: TcxCategoryRow;
    cxVerticalGrid4EditorRow47: TcxEditorRow;
    cxVerticalGrid4EditorRow48: TcxEditorRow;
    cxVerticalGrid4CategoryRow29: TcxCategoryRow;
    cxVerticalGrid4EditorRow49: TcxEditorRow;
    cxVerticalGrid4EditorRow50: TcxEditorRow;
    cxVerticalGrid4CategoryRow30: TcxCategoryRow;
    cxVerticalGrid4EditorRow51: TcxEditorRow;
    cxVerticalGrid4EditorRow52: TcxEditorRow;
    cxVerticalGrid4CategoryRow31: TcxCategoryRow;
    cxVerticalGrid4EditorRow53: TcxEditorRow;
    cxVerticalGrid4EditorRow54: TcxEditorRow;
    cxVerticalGrid4CategoryRow32: TcxCategoryRow;
    cxVerticalGrid4EditorRow55: TcxEditorRow;
    cxVerticalGrid4EditorRow56: TcxEditorRow;
    cxVerticalGrid4CategoryRow33: TcxCategoryRow;
    cxVerticalGrid4EditorRow57: TcxEditorRow;
    cxVerticalGrid4EditorRow58: TcxEditorRow;
    cxVerticalGrid4CategoryRow34: TcxCategoryRow;
    cxVerticalGrid4EditorRow59: TcxEditorRow;
    cxVerticalGrid4EditorRow60: TcxEditorRow;
    cxVerticalGrid4CategoryRow35: TcxCategoryRow;
    cxVerticalGrid4EditorRow61: TcxEditorRow;
    cxVerticalGrid4EditorRow62: TcxEditorRow;
    cxVerticalGrid4CategoryRow36: TcxCategoryRow;
    cxVerticalGrid4EditorRow63: TcxEditorRow;
    cxVerticalGrid4EditorRow64: TcxEditorRow;
    cxVerticalGrid4CategoryRow37: TcxCategoryRow;
    cxVerticalGrid4EditorRow65: TcxEditorRow;
    cxVerticalGrid4EditorRow66: TcxEditorRow;
    cxVerticalGrid4CategoryRow38: TcxCategoryRow;
    cxVerticalGrid4EditorRow67: TcxEditorRow;
    cxVerticalGrid4EditorRow68: TcxEditorRow;
    cxVerticalGrid4CategoryRow39: TcxCategoryRow;
    cxVerticalGrid4EditorRow69: TcxEditorRow;
    cxVerticalGrid4EditorRow70: TcxEditorRow;

    procedure cxButton2Click(Sender: TObject);
    procedure cxVerticalGrid1EditorRow3EditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
//    procedure cxVerticalGrid1EditorRow14EditPropertiesButtonClick(
//      Sender: TObject; AButtonIndex: Integer);
    procedure cxButton3Click(Sender: TObject);
    procedure dxNavBar1Item1Click(Sender: TObject);
    procedure dxNavBar1Item2Click(Sender: TObject);
    procedure dxNavBar1Item4Click(Sender: TObject);
    procedure dxNavBar1Item3Click(Sender: TObject);
    procedure dxNavBar1Item5Click(Sender: TObject);
    procedure dxNavBar1Item6Click(Sender: TObject);
    procedure cxVerticalGrid4EditorRow1EditPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
  private

  public
    procedure SetData;
  end;

procedure DoOptions(AOwner: TComponent);

var
  dlgOptions: TdlgOptions;

implementation

uses dmData_u, uVar, dlgProcess_u, ck7GetData;

{$R *.dfm}

procedure DoOptions(AOwner: TComponent);
begin  
  with TdlgOptions.Create(AOwner) do
  try
    SetData;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TdlgOptions.SetData;
begin
  if bLoged and mServersAccess[1].Active then
    dmData.PutLog('Options',Date(),0,'refresh options');

  cxVerticalGrid1EditorRow1.Properties.Value:=mServersAccess[1].Active;
  cxVerticalGrid1EditorRow2.Properties.Value:=mServersAccess[1].Name;
  cxVerticalGrid1EditorRow3.Properties.Value:=mServersAccess[1].NameDB;
  cxVerticalGrid1EditorRow5.Properties.Value:=mServersAccess[1].User;
  cxVerticalGrid1EditorRow4.Properties.Value:=mServersAccess[1].Password;

  {
  cxVerticalGrid1EditorRow15.Properties.Value:=mServersAccess[2].Active;
  cxVerticalGrid1EditorRow11.Properties.Value:=mServersAccess[2].Name;
  cxVerticalGrid1EditorRow14.Properties.Value:=mServersAccess[2].NameDB;
  cxVerticalGrid1EditorRow13.Properties.Value:=mServersAccess[2].User;
  cxVerticalGrid1EditorRow12.Properties.Value:=mServersAccess[2].Password;
  }

  cxEditorRow16.Properties.Value := mServersCK[1].Active;
  cxVerticalGrid6EditorRow1.Properties.Value := mServersCK[1].Name;
  cxEditorRow19.Properties.Value := mServersCK[1].Server_1;
  cxVerticalGrid6EditorRow5.Properties.Value := mServersCK[1].WinAuth_1;
  cxEditorRow21.Properties.Value := mServersCK[1].Login_1;
  cxEditorRow22.Properties.Value := mServersCK[1].Pas_1;
  cxEditorRow23.Properties.Value := mServersCK[1].Server_2;
  cxVerticalGrid6EditorRow6.Properties.Value := mServersCK[1].WinAuth_2;
  cxVerticalGrid6EditorRow3.Properties.Value := mServersCK[1].Login_2;
  cxVerticalGrid6EditorRow4.Properties.Value := mServersCK[1].Pas_2;
  cxEditorRow24.Properties.Value := mServersCK[1].Server_3;
  cxVerticalGrid6EditorRow7.Properties.Value := mServersCK[1].WinAuth_3;
  cxEditorRow25.Properties.Value := mServersCK[1].Login_3;
  cxVerticalGrid6EditorRow2.Properties.Value := mServersCK[1].Pas_3;

  cxVerticalGrid2EditorRow8.Properties.Value:=mAOEOsendmail.Active;
  cxVerticalGrid2EditorRow3.Properties.Value:=mAOEOsendmail.SMTPserver;
  cxVerticalGrid2EditorRow2.Properties.Value:=mAOEOsendmail.SMTPport;
  cxVerticalGrid2EditorRow1.Properties.Value:=mAOEOsendmail.mailbox;
  cxVerticalGrid2EditorRow4.Properties.Value:=mAOEOsendmail.OtKogo;
  cxVerticalGrid2EditorRow6.Properties.Value:=mAOEOsendmail.Subject;
  cxVerticalGrid2EditorRow5.Properties.Value:=mAOEOsendmail.Komu;
  cxVerticalGrid2EditorRow7.Properties.Value:=mAOEOsendmail.FileFormat;
  cxVerticalGrid2EditorRow9.Properties.Value:=mAOEOsendmail.FileTmpDelete;

  cxEditorRow1.Properties.Value:=mDIRsendmail.Active;
  cxEditorRow2.Properties.Value:=mDIRsendmail.SMTPserver;
  cxEditorRow3.Properties.Value:=mDIRsendmail.SMTPport;
  cxEditorRow4.Properties.Value:=mDIRsendmail.mailbox;
  cxEditorRow5.Properties.Value:=mDIRsendmail.OtKogo;
  cxEditorRow6.Properties.Value:=mDIRsendmail.Subject;
  cxEditorRow7.Properties.Value:=mDIRsendmail.Komu;
  cxEditorRow8.Properties.Value:=mDIRsendmail.FileFormat;
  cxEditorRow9.Properties.Value:=mDIRsendmail.FileTmpDelete;

  cxVerticalGrid4EditorRow2.Properties.Value:=tiOIKTemper.id;
  cxVerticalGrid4EditorRow1.Properties.Value:=CatToNum(tiOIKTemper.cat);
  cxVerticalGrid4EditorRow9.Properties.Value:=tiOIKGenPlan.id;
  cxVerticalGrid4EditorRow10.Properties.Value:=CatToNum(tiOIKGenPlan.cat);
  cxVerticalGrid4EditorRow5.Properties.Value:=tiOIKGenFact.id;
  cxVerticalGrid4EditorRow6.Properties.Value:=CatToNum(tiOIKGenFact.cat);
  cxVerticalGrid4EditorRow3.Properties.Value:=tiOIKPotrPlan.id;
  cxVerticalGrid4EditorRow4.Properties.Value:=CatToNum(tiOIKPotrPlan.cat);
  cxVerticalGrid4EditorRow7.Properties.Value:=tiOIKPotrFact.id;
  cxVerticalGrid4EditorRow8.Properties.Value:=CatToNum(tiOIKPotrFact.cat);
  cxVerticalGrid4EditorRow21.Properties.Value:=tiOIKJobPowerPlan.id;
  cxVerticalGrid4EditorRow22.Properties.Value:=CatToNum(tiOIKJobPowerPlan.cat);
  cxVerticalGrid4EditorRow19.Properties.Value:=tiOIKJobPowerFact.id;
  cxVerticalGrid4EditorRow20.Properties.Value:=CatToNum(tiOIKJobPowerFact.cat);

  cxVerticalGrid4EditorRow12.Properties.Value:=tiOIKPSSaransk.id;
  cxVerticalGrid4EditorRow11.Properties.Value:=CatToNum(tiOIKPSSaransk.cat);
  cxVerticalGrid4EditorRow13.Properties.Value:=tiOIKPSRuzaevka.id;
  cxVerticalGrid4EditorRow14.Properties.Value:=CatToNum(tiOIKPSRuzaevka.cat);
  cxVerticalGrid4EditorRow18.Properties.Value:=tiOIKPSMoksha.id;
  cxVerticalGrid4EditorRow17.Properties.Value:=CatToNum(tiOIKPSMoksha.cat);
  cxVerticalGrid4EditorRow15.Properties.Value:=tiOIKPSKomsomolsk.id;
  cxVerticalGrid4EditorRow16.Properties.Value:=CatToNum(tiOIKPSKomsomolsk.cat);
  cxVerticalGrid4EditorRow23.Properties.Value := tiOIKPSTEC.id;
  cxVerticalGrid4EditorRow24.Properties.Value := CatToNum(tiOIKPSTEC.cat);
  
  cxVerticalGrid4EditorRow25.Properties.Value := tiOIKGenTec2PPBR.id;
  cxVerticalGrid4EditorRow26.Properties.Value := CatToNum(tiOIKGenTec2PPBR.cat);

  cxVerticalGrid4EditorRow27.Properties.Value := tiOIKGenTecGTPPBR.id;
  cxVerticalGrid4EditorRow28.Properties.Value := CatToNum(tiOIKGenTecGTPPBR.cat);
  cxVerticalGrid4EditorRow29.Properties.Value := tiOIKGenTec4PPBR.id;
  cxVerticalGrid4EditorRow30.Properties.Value := CatToNum(tiOIKGenTec4PPBR.cat);
  cxVerticalGrid4EditorRow31.Properties.Value := tiOIKGenTecALLPBR.id;
  cxVerticalGrid4EditorRow32.Properties.Value := CatToNum(tiOIKGenTecALLPBR.cat);
  cxVerticalGrid4EditorRow33.Properties.Value := tiOIKPotrPPBR.id;
  cxVerticalGrid4EditorRow34.Properties.Value := CatToNum(tiOIKPotrPPBR.cat);
  cxVerticalGrid4EditorRow35.Properties.Value := tiOIKSaldoPPBR.id;
  cxVerticalGrid4EditorRow36.Properties.Value := CatToNum(tiOIKSaldoPPBR.cat);
  cxVerticalGrid4EditorRow38.Properties.Value := tiOIKGenTecMCPPBR.id;
  cxVerticalGrid4EditorRow37.Properties.Value := CatToNum(tiOIKGenTecMCPPBR.cat);


  cxVerticalGrid4EditorRow39.Properties.Value := tiOIKPlanMinTec2.id;
  cxVerticalGrid4EditorRow40.Properties.Value := CatToNum(tiOIKPlanMinTec2.cat);
  cxVerticalGrid4EditorRow41.Properties.Value := tiOIKPlanMaxTec2.id;
  cxVerticalGrid4EditorRow42.Properties.Value := CatToNum(tiOIKPlanMaxTec2.cat);
  cxVerticalGrid4EditorRow43.Properties.Value := tiOIKFactTec2.id;
  cxVerticalGrid4EditorRow44.Properties.Value := CatToNum(tiOIKFactTec2.cat);
  cxVerticalGrid4EditorRow45.Properties.Value := tiOIKPlanMinTecGT.id;
  cxVerticalGrid4EditorRow46.Properties.Value := CatToNum(tiOIKPlanMinTecGT.cat);
  cxVerticalGrid4EditorRow47.Properties.Value := tiOIKPlanMaxTecGT.id;
  cxVerticalGrid4EditorRow48.Properties.Value := CatToNum(tiOIKPlanMaxTecGT.cat);
  cxVerticalGrid4EditorRow49.Properties.Value := tiOIKFactTecGT.id;
  cxVerticalGrid4EditorRow50.Properties.Value := CatToNum(tiOIKFactTecGT.cat);
  cxVerticalGrid4EditorRow51.Properties.Value := tiOIKPlanMinTecMC.id;
  cxVerticalGrid4EditorRow52.Properties.Value := CatToNum(tiOIKPlanMinTecMC.cat);
  cxVerticalGrid4EditorRow53.Properties.Value := tiOIKPlanMaxTecMC.id;
  cxVerticalGrid4EditorRow54.Properties.Value := CatToNum(tiOIKPlanMaxTecMC.cat);
  cxVerticalGrid4EditorRow55.Properties.Value := tiOIKFactTecMC.id;
  cxVerticalGrid4EditorRow56.Properties.Value := CatToNum(tiOIKFactTecMC.cat);
  cxVerticalGrid4EditorRow57.Properties.Value := tiOIKPlanMinTec4.id;
  cxVerticalGrid4EditorRow58.Properties.Value := CatToNum(tiOIKPlanMinTec4.cat);
  cxVerticalGrid4EditorRow59.Properties.Value := tiOIKPlanMaxTec4.id;
  cxVerticalGrid4EditorRow60.Properties.Value := CatToNum(tiOIKPlanMaxTec4.cat);
  cxVerticalGrid4EditorRow61.Properties.Value := tiOIKFactTec4.id;
  cxVerticalGrid4EditorRow62.Properties.Value := CatToNum(tiOIKFactTec4.cat);
  cxVerticalGrid4EditorRow63.Properties.Value := tiOIKPlanMinTecYa.id;
  cxVerticalGrid4EditorRow64.Properties.Value := CatToNum(tiOIKPlanMinTecYa.cat);
  cxVerticalGrid4EditorRow65.Properties.Value := tiOIKPlanMaxTecYa.id;
  cxVerticalGrid4EditorRow66.Properties.Value := CatToNum(tiOIKPlanMaxTecYa.cat);
  cxVerticalGrid4EditorRow67.Properties.Value := tiOIKFactTecYa.id;
  cxVerticalGrid4EditorRow68.Properties.Value := CatToNum(tiOIKFactTecYa.cat);
  cxVerticalGrid4EditorRow69.Properties.Value := tiOIKFactSumm.id;
  cxVerticalGrid4EditorRow70.Properties.Value := CatToNum(tiOIKFactSumm.cat);

{
1  Телеизмерения	                      ТИ
2  Телесигналы	                        ТС
3  Интегралы и средние	                ИС
4  СВ-1 (мгновенная,СДВ)	              СВ
5  Планы	                              ПЛ
6  Ежедневная информация	              ЕИ
7  Специальные параметры вещественные	  СП
8  СВ-2 (усредненная)                 	ПВ
9  Фильтрованные телеизмерения	        ФТИ
10 Специальные параметры целочисленные	МСК
11 "Телеизмерения ""сырые"""	          ТИС
12 "Телесигналы ""сырые"""	            ТСС
13 Универсальные хранилища 30 мин     	ПЧАС
14 Универсальные хранилища 1 час 	      ЧАС
15 Универсальные хранилища 1 день	      СУТ
}
{
  cxButton2.Enabled := false;
  cxButton3.Enabled := false;
}
end;

procedure TdlgOptions.cxButton2Click(Sender: TObject);
begin
  ShowProcessCancel(Application.MainForm,'Запись настроек...');
  try
    if bLoged and mServersAccess[1].Active then
      dmData.PutLog('Options',Date(),0,'save options');

    mServersAccess[1].Active := cxVerticalGrid1EditorRow1.Properties.Value;
    mServersAccess[1].Name:=VarToStr(cxVerticalGrid1EditorRow2.Properties.Value);
    mServersAccess[1].NameDB:=VarToStr(cxVerticalGrid1EditorRow3.Properties.Value);
    mServersAccess[1].User:=VarToStr(cxVerticalGrid1EditorRow5.Properties.Value);
    mServersAccess[1].Password:=VarToStr(cxVerticalGrid1EditorRow4.Properties.Value);

    {
    mServersAccess[2].Active:=cxVerticalGrid1EditorRow15.Properties.Value;
    mServersAccess[2].Name:=VarToStr(cxVerticalGrid1EditorRow11.Properties.Value);
    mServersAccess[2].NameDB:=VarToStr(cxVerticalGrid1EditorRow14.Properties.Value);
    mServersAccess[2].User:=VarToStr(cxVerticalGrid1EditorRow13.Properties.Value);
    mServersAccess[2].Password:=VarToStr(cxVerticalGrid1EditorRow12.Properties.Value);
    }
    
    mServersCK[1].Active := cxEditorRow16.Properties.Value;
    mServersCK[1].Name := VarToStr(cxVerticalGrid6EditorRow1.Properties.Value);
    mServersCK[1].Server_1 := VarToStr(cxEditorRow19.Properties.Value);
    mServersCK[1].WinAuth_1 := cxVerticalGrid6EditorRow5.Properties.Value;
    mServersCK[1].Login_1 := VarToStr(cxEditorRow21.Properties.Value);
    mServersCK[1].Pas_1 := VarToStr(cxEditorRow22.Properties.Value);
    mServersCK[1].Server_2 := VarToStr(cxEditorRow23.Properties.Value);
    mServersCK[1].WinAuth_2 := cxVerticalGrid6EditorRow6.Properties.Value;
    mServersCK[1].Login_2 := VarToStr(cxVerticalGrid6EditorRow3.Properties.Value);
    mServersCK[1].Pas_2 := VarToStr(cxVerticalGrid6EditorRow4.Properties.Value);
    mServersCK[1].Server_3 := VarToStr(cxEditorRow24.Properties.Value);
    mServersCK[1].WinAuth_3 := cxVerticalGrid6EditorRow7.Properties.Value;
    mServersCK[1].Login_3 := VarToStr(cxEditorRow25.Properties.Value);
    mServersCK[1].Pas_3 := VarToStr(cxVerticalGrid6EditorRow2.Properties.Value);

    mAOEOsendmail.Active:=cxVerticalGrid2EditorRow8.Properties.Value;
    mAOEOsendmail.SMTPserver:=VarToStr(cxVerticalGrid2EditorRow3.Properties.Value);
    mAOEOsendmail.SMTPport:=VarToStr(cxVerticalGrid2EditorRow2.Properties.Value);
    mAOEOsendmail.mailbox:=VarToStr(cxVerticalGrid2EditorRow1.Properties.Value);
    mAOEOsendmail.OtKogo:=VarToStr(cxVerticalGrid2EditorRow4.Properties.Value);
    mAOEOsendmail.Subject:=VarToStr(cxVerticalGrid2EditorRow6.Properties.Value);
    mAOEOsendmail.Komu:=VarToStr(cxVerticalGrid2EditorRow5.Properties.Value);
    mAOEOsendmail.FileFormat:=VarToStr(cxVerticalGrid2EditorRow7.Properties.Value);
    mAOEOsendmail.FileTmpDelete:=cxVerticalGrid2EditorRow9.Properties.Value;

    mDIRsendmail.Active:=cxEditorRow1.Properties.Value;
    mDIRsendmail.SMTPserver:=VarToStr(cxEditorRow2.Properties.Value);
    mDIRsendmail.SMTPport:=VarToStr(cxEditorRow3.Properties.Value);
    mDIRsendmail.mailbox:=VarToStr(cxEditorRow4.Properties.Value);
    mDIRsendmail.OtKogo:=VarToStr(cxEditorRow5.Properties.Value);
    mDIRsendmail.Subject:=VarToStr(cxEditorRow6.Properties.Value);
    mDIRsendmail.Komu:=VarToStr(cxEditorRow7.Properties.Value);
    mDIRsendmail.FileFormat:=VarToStr(cxEditorRow8.Properties.Value);
    mDIRsendmail.FileTmpDelete:=cxEditorRow9.Properties.Value;

{
 1 Архив ТИ (TI)
 2 Архив ТС (TS)
 3 (TII)
 4 Архив суточной ведомости (DR)
 5 Планы (Plans)
 6 Ежедневная информация (DailyInf)
 7 Архив спецпараметров (Sechen)
 8 Архив получасовой СВ (Dr30)
10 ТИ фильтрованные (TIF)
11 ТИ оцененные (TIO)
12 Целочисленные СП (Masks)
}
    tiOIKTemper.id:=cxVerticalGrid4EditorRow2.Properties.Value;
    tiOIKTemper.cat:=NumToCat(cxVerticalGrid4EditorRow1.Properties.Value);

    tiOIKGenPlan.id:=cxVerticalGrid4EditorRow9.Properties.Value;
    tiOIKGenPlan.cat:=NumToCat(cxVerticalGrid4EditorRow10.Properties.Value);
    tiOIKGenFact.id:=cxVerticalGrid4EditorRow5.Properties.Value;
    tiOIKGenFact.cat:=NumToCat(cxVerticalGrid4EditorRow6.Properties.Value);
    tiOIKPotrPlan.id:=cxVerticalGrid4EditorRow3.Properties.Value;
    tiOIKPotrPlan.cat:=NumToCat(cxVerticalGrid4EditorRow4.Properties.Value);
    tiOIKPotrFact.id:=cxVerticalGrid4EditorRow7.Properties.Value;
    tiOIKPotrFact.cat:=NumToCat(cxVerticalGrid4EditorRow8.Properties.Value);
    tiOIKJobPowerPlan.id:=cxVerticalGrid4EditorRow21.Properties.Value;
    tiOIKJobPowerPlan.cat:=NumToCat(cxVerticalGrid4EditorRow22.Properties.Value);
    tiOIKJobPowerFact.id:=cxVerticalGrid4EditorRow19.Properties.Value;
    tiOIKJobPowerFact.cat:=NumToCat(cxVerticalGrid4EditorRow20.Properties.Value);

    tiOIKPSSaransk.id:=cxVerticalGrid4EditorRow12.Properties.Value;
    tiOIKPSSaransk.cat:=NumToCat(cxVerticalGrid4EditorRow11.Properties.Value);
    tiOIKPSRuzaevka.id:=cxVerticalGrid4EditorRow13.Properties.Value;
    tiOIKPSRuzaevka.cat:=NumToCat(cxVerticalGrid4EditorRow14.Properties.Value);
    tiOIKPSMoksha.id:=cxVerticalGrid4EditorRow18.Properties.Value;
    tiOIKPSMoksha.cat:=NumToCat(cxVerticalGrid4EditorRow17.Properties.Value);
    tiOIKPSKomsomolsk.id:=cxVerticalGrid4EditorRow15.Properties.Value;
    tiOIKPSKomsomolsk.cat:=NumToCat(cxVerticalGrid4EditorRow16.Properties.Value);
    tiOIKPSTEC.id := cxVerticalGrid4EditorRow23.Properties.Value;
    tiOIKPSTEC.cat := NumToCat(cxVerticalGrid4EditorRow24.Properties.Value);

    tiOIKGenTec2PPBR.id := cxVerticalGrid4EditorRow25.Properties.Value;
    tiOIKGenTec2PPBR.cat := NumToCat(cxVerticalGrid4EditorRow26.Properties.Value);
    tiOIKGenTecGTPPBR.id := cxVerticalGrid4EditorRow27.Properties.Value;
    tiOIKGenTecGTPPBR.cat := NumToCat(cxVerticalGrid4EditorRow28.Properties.Value);
    tiOIKGenTec4PPBR.id := cxVerticalGrid4EditorRow29.Properties.Value;
    tiOIKGenTec4PPBR.cat := NumToCat(cxVerticalGrid4EditorRow30.Properties.Value);
    tiOIKGenTecALLPBR.id := cxVerticalGrid4EditorRow31.Properties.Value;
    tiOIKGenTecALLPBR.cat := NumToCat(cxVerticalGrid4EditorRow32.Properties.Value);
    tiOIKPotrPPBR.id := cxVerticalGrid4EditorRow33.Properties.Value;
    tiOIKPotrPPBR.cat := NumToCat(cxVerticalGrid4EditorRow34.Properties.Value);
    tiOIKSaldoPPBR.id := cxVerticalGrid4EditorRow35.Properties.Value;
    tiOIKSaldoPPBR.cat := NumToCat(cxVerticalGrid4EditorRow36.Properties.Value);
    tiOIKGenTecMCPPBR.id := cxVerticalGrid4EditorRow38.Properties.Value;
    tiOIKGenTecMCPPBR.cat := NumToCat(cxVerticalGrid4EditorRow37.Properties.Value);

    tiOIKPlanMinTec2.id := cxVerticalGrid4EditorRow39.Properties.Value;
    tiOIKPlanMinTec2.cat := NumToCat(cxVerticalGrid4EditorRow40.Properties.Value);
    tiOIKPlanMaxTec2.id := cxVerticalGrid4EditorRow41.Properties.Value;
    tiOIKPlanMaxTec2.cat := NumToCat(cxVerticalGrid4EditorRow42.Properties.Value);
    tiOIKFactTec2.id := cxVerticalGrid4EditorRow43.Properties.Value;
    tiOIKFactTec2.cat := NumToCat(cxVerticalGrid4EditorRow44.Properties.Value);
    tiOIKPlanMinTecGT.id := cxVerticalGrid4EditorRow45.Properties.Value;
    tiOIKPlanMinTecGT.cat := NumToCat(cxVerticalGrid4EditorRow46.Properties.Value);
    tiOIKPlanMaxTecGT.id := cxVerticalGrid4EditorRow47.Properties.Value;
    tiOIKPlanMaxTecGT.cat :=  NumToCat(cxVerticalGrid4EditorRow48.Properties.Value);
    tiOIKFactTecGT.id := cxVerticalGrid4EditorRow49.Properties.Value;
    tiOIKFactTecGT.cat := NumToCat(cxVerticalGrid4EditorRow50.Properties.Value);
    tiOIKPlanMinTecMC.id := cxVerticalGrid4EditorRow51.Properties.Value;
    tiOIKPlanMinTecMC.cat := NumToCat(cxVerticalGrid4EditorRow52.Properties.Value);
    tiOIKPlanMaxTecMC.id := cxVerticalGrid4EditorRow53.Properties.Value;
    tiOIKPlanMaxTecMC.cat := NumToCat(cxVerticalGrid4EditorRow54.Properties.Value);
    tiOIKFactTecMC.id := cxVerticalGrid4EditorRow55.Properties.Value;
    tiOIKFactTecMC.cat := NumToCat(cxVerticalGrid4EditorRow56.Properties.Value);
    tiOIKPlanMinTec4.id := cxVerticalGrid4EditorRow57.Properties.Value;
    tiOIKPlanMinTec4.cat := NumToCat(cxVerticalGrid4EditorRow58.Properties.Value);
    tiOIKPlanMaxTec4.id := cxVerticalGrid4EditorRow59.Properties.Value;
    tiOIKPlanMaxTec4.cat := NumToCat(cxVerticalGrid4EditorRow60.Properties.Value);
    tiOIKFactTec4.id := cxVerticalGrid4EditorRow61.Properties.Value;
    tiOIKFactTec4.cat := NumToCat(cxVerticalGrid4EditorRow62.Properties.Value);
    tiOIKPlanMinTecYa.id := cxVerticalGrid4EditorRow63.Properties.Value;
    tiOIKPlanMinTecYa.cat := NumToCat(cxVerticalGrid4EditorRow64.Properties.Value);
    tiOIKPlanMaxTecYa.id := cxVerticalGrid4EditorRow65.Properties.Value;
    tiOIKPlanMaxTecYa.cat := NumToCat(cxVerticalGrid4EditorRow66.Properties.Value);
    tiOIKFactTecYa.id := cxVerticalGrid4EditorRow67.Properties.Value;
    tiOIKFactTecYa.cat := NumToCat(cxVerticalGrid4EditorRow68.Properties.Value);
    tiOIKFactSumm.id := cxVerticalGrid4EditorRow69.Properties.Value;
    tiOIKFactSumm.cat := NumToCat(cxVerticalGrid4EditorRow70.Properties.Value);


{
    cxButton2.Enabled := false;
    cxButton3.Enabled := false;
}
    dmData.PutIni;
    dmData.DisconnectDB;
  finally
    HideProcessCancel;
  end;
  dmData.ConnectDB;
end;



procedure TdlgOptions.cxVerticalGrid1EditorRow3EditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  OpenDialog.InitialDir := cxVerticalGrid1EditorRow3.Properties.Value;
  OpenDialog.FileName := cxVerticalGrid1EditorRow3.Properties.Value;
  if OpenDialog.Execute then
  begin
     cxVerticalGrid1EditorRow3.Properties.Value := OpenDialog.FileName;
     (Sender as TcxButtonEdit).Text := OpenDialog.FileName;     
  end;
end;

{
procedure TdlgOptions.cxVerticalGrid1EditorRow14EditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  OpenDialog.InitialDir := cxVerticalGrid1EditorRow14.Properties.Value;
  OpenDialog.FileName := cxVerticalGrid1EditorRow14.Properties.Value;
  if OpenDialog.Execute then
  begin
     cxVerticalGrid1EditorRow14.Properties.Value := OpenDialog.FileName;
     (Sender as TcxButtonEdit).Text := OpenDialog.FileName;
  end;
end;
}

procedure TdlgOptions.cxButton3Click(Sender: TObject);
begin
  SetData;
end;

procedure TdlgOptions.dxNavBar1Item1Click(Sender: TObject);
begin
  cxTabSheet1.Show;
end;

procedure TdlgOptions.dxNavBar1Item2Click(Sender: TObject);
begin
  cxTabSheet2.Show;
end;

procedure TdlgOptions.dxNavBar1Item4Click(Sender: TObject);
begin
  cxTabSheet3.Show;
end;

procedure TdlgOptions.dxNavBar1Item3Click(Sender: TObject);
begin
  cxTabSheet4.Show;
end;

procedure TdlgOptions.dxNavBar1Item5Click(Sender: TObject);
begin
  cxTabSheet5.Show;
end;

procedure TdlgOptions.dxNavBar1Item6Click(Sender: TObject);
begin
  cxTabSheet6.Show;
end;

procedure TdlgOptions.cxVerticalGrid4EditorRow1EditPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  MessageDlg(
 '1  Телеизмерения ТИ'#13
+'2  Телесигналы ТС'#13
+'3  Интегралы и средние ИС'#13
+'4  СВ-1 (мгновенная,СДВ) СВ'#13
+'5  Планы ПЛ'#13
+'6  Ежедневная информация ЕИ'#13
+'7  Специальные параметры вещественные СП'#13
+'8  СВ-2 (усредненная) ПВ'#13
+'9  Фильтрованные телеизмерения ФТИ'#13
+'10 Специальные параметры целочисленные МСК'#13
+'11 "Телеизмерения "сырые"" ТИС'#13
+'12 "Телесигналы "сырые"" ТСС'#13
+'13 Универсальные хранилища 30 мин ПЧАС'#13
+'14 Универсальные хранилища 1 час ЧАС'#13
+'15 Универсальные хранилища 1 день СУТ'
  ,mtInformation,[mbOK],0);
end;





end.
