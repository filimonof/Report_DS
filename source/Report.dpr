program Report;

{%ToDo 'Report.todo'}

uses
  Forms,
  TBXOffice11AdaptiveTheme in 'TBXOffice11AdaptiveTheme.pas',
  frmMain_u in 'frmMain_u.pas' {frmMain},
  uVar in 'uVar.pas',
  frmSimple_u in 'frmSimple_u.pas' {frmSimple},
  frmEnergo_u in 'frmEnergo_u.pas' {frmEnergo},
  dmData_u in 'dmData_u.pas' {dmData: TDataModule},
  uAdoUtils in 'uAdoUtils.pas',
  frmJobPower_u in 'frmJobPower_u.pas' {frmJobPower},
  frmTeplo_u in 'frmTeplo_u.pas' {frmTeplo},
  frmGaz_u in 'frmGaz_u.pas' {frmGaz},
  frmMazut_u in 'frmMazut_u.pas' {frmMazut},
  frmAOTO_u in 'frmAOTO_u.pas' {frmAOTO},
  frmAOEO_u in 'frmAOEO_u.pas' {frmAOEO},
  frmTEC_u in 'frmTEC_u.pas' {frmTEC},
  dmReports_u in 'dmReports_u.pas' {dmReports: TDataModule},
  dlgRep_u in 'dlgRep_u.pas' {dlgRep},
  dlgOptions_u in 'dlgOptions_u.pas' {dlgOptions},
  dlgProgress_u in 'dlgProgress_u.pas' {dlgProgress},
  dlgProcess_u in 'dlgProcess_u.pas' {dlgProcess},
  dlgAbout_u in 'dlgAbout_u.pas' {dlgAbout},
  frmCtrlU_u in 'frmCtrlU_u.pas' {frmCtrlU},
  frmSprZach_u in 'frmSprZach_u.pas' {frmSprZach},
  frmSprOborudAoto_u in 'frmSprOborudAoto_u.pas' {frmSprOborudAoto},
  frmSprOborudAoeo_u in 'frmSprOborudAoeo_u.pas' {frmSprOborudAoeo},
  dlgAotoOb_u in 'dlgAotoOb_u.pas' {dlgAotoOb},
  dlgAddAotoOb_u in 'dlgAddAotoOb_u.pas' {dlgAddAotoOb},
  dlgAoeoOb_u in 'dlgAoeoOb_u.pas' {dlgAoeoOb},
  frmSprPodpis_u in 'frmSprPodpis_u.pas' {frmSprPodpis},
  dlgRepETO_u in 'dlgRepETO_u.pas' {dlgRepETO},
  dlgInputSQLPas_u in 'dlgInputSQLPas_u.pas' {dlgInputSQLPas},
  dlgRepForm_u in 'dlgRepForm_u.pas' {dlgRepForm},
  frmLog_u in 'frmLog_u.pas' {frmLog},
  frmAO_610_u in 'frmAO_610_u.pas' {frmAO_610},
  frmTEC2izm_u in 'frmTEC2izm_u.pas' {frmTEC2izm},
  frmPakOborud_u in 'frmPakOborud_u.pas' {frmPakOborud},
  frmOtkl110_u in 'frmOtkl110_u.pas' {frmOtkl110},
  frmTEC_GT_u in 'frmTEC_GT_u.pas' {frmTEC_GT},
  frmNarushPoryd_u in 'frmNarushPoryd_u.pas' {frmNarushPoryd},
  ck7GetData in 'ck7GetData\ck7GetData.pas',
  frmTEC_MC_u in 'frmTEC_MC_u.pas' {frmTEC_MC},
  frmTEC_4_u in 'frmTEC_4_u.pas' {frmTEC_4},
  frmTEC_YA_u in 'frmTEC_YA_u.pas' {frmTEC_YA};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TdmReports, dmReports);
  Application.Run;
end.
