unit dmReports_u;

interface

uses
  Forms, SysUtils, Classes, FR_Class, FR_ADODB, FR_DCtrl, FR_PTabl,
  FR_Cross, FR_RRect, FR_Chart, FR_BarC, FR_Shape, FR_ChBox, FR_Rich,
  FR_OLE, FR_DSet, FR_DBSet, FR_E_HTM, FR_E_CSV, FR_E_RTF, FR_E_TXT,
  frRtfExp, frexpimg, frOLEExl, FR_E_HTML2, DB, ADODB, FR_Desgn,
  dmData_u, DBClient;

type
  TdmReports = class(TDataModule)
    frReport: TfrReport;
    frOLEObject1: TfrOLEObject;
    frRichObject1: TfrRichObject;
    frCheckBoxObject1: TfrCheckBoxObject;
    frShapeObject1: TfrShapeObject;
    frBarCodeObject1: TfrBarCodeObject;
    frChartObject1: TfrChartObject;
    frRoundRectObject1: TfrRoundRectObject;
    frCrossObject1: TfrCrossObject;
    frDialogControls1: TfrDialogControls;
    frADOComponents1: TfrADOComponents;
    frHTML2Export1: TfrHTML2Export;
    frOLEExcelExport1: TfrOLEExcelExport;
    frBMPExport1: TfrBMPExport;
    frJPEGExport1: TfrJPEGExport;
    frTIFFExport1: TfrTIFFExport;
    frRtfAdvExport1: TfrRtfAdvExport;
    frTextExport1: TfrTextExport;
    frRTFExport1: TfrRTFExport;
    frCSVExport1: TfrCSVExport;
    frHTMExport1: TfrHTMExport;
    frDesigner: TfrDesigner;
    frAOTO: TfrDBDataSet;
    adsrAOTO: TADODataSet;
    adsrAOTOID: TAutoIncField;
    adsrAOTOdate: TDateTimeField;
    adsrAOTOtime: TDateTimeField;
    adsrAOTOprotect: TMemoField;
    adsrAOTOabout: TMemoField;
    adsrAOTOtimeon: TDateTimeField;
    adsrAotoObor: TADODataSet;
    adsrAotoOborID: TAutoIncField;
    adsrAotoOboraoTeplObID: TIntegerField;
    adsrAotoOborfullname: TWideStringField;
    dsrAOTO: TDataSource;
    cdsAOTO: TClientDataSet;
    adsrAOTOlstoborud: TStringField;
    cdsAOTOID: TIntegerField;
    cdsAOTOname: TStringField;
    frAOEO: TfrDBDataSet;
    adsrAOEO: TADODataSet;
    adsrAOEOID: TAutoIncField;
    adsrAOEOODU: TIntegerField;
    adsrAOEOdate: TDateTimeField;
    adsrAOEOtime: TDateTimeField;
    adsrAOEOAPV: TIntegerField;
    adsrAOEORPV: TDateTimeField;
    adsrAOEOAboutOtkl: TMemoField;
    adsrAOEONedo: TMemoField;
    dsrAOEO: TDataSource;
    dsrAOEOOborud: TDataSource;
    adsrAOEOOborud: TADODataSet;
    adsrAOEOZash: TADODataSet;
    adsrAOEOOborudID: TAutoIncField;
    adsrAOEOOborudaoeoID: TIntegerField;
    adsrAOEOOborudfullname: TWideStringField;
    adsrAOEOZashID: TAutoIncField;
    adsrAOEOZashaoeolinkid: TIntegerField;
    adsrAOEOZashname: TWideStringField;
    frAOEOOborud: TfrDBDataSet;
    frAOEOZash: TfrDBDataSet;
    cdsAOEO: TClientDataSet;
    cdsAOEOID: TIntegerField;
    cdsAOEOoborud: TMemoField;
    cdsAOEOzash: TMemoField;
    adsrAOEOlstoborud: TStringField;
    adsrAOEOlstzash: TStringField;
    adsrPodpis: TADODataSet;
    adsrPodpisname: TWideStringField;
    adsrPodpisid: TAutoIncField;
    adsfPodpis: TfrDBDataSet;
    adsrPodpispodpis: TBlobField;
    adsrAOEOlkz: TMemoField;
    adsrAOEORPV2: TIntegerField;
    adsrAOEOcomment: TMemoField;
    adsrAO6_10: TADODataSet;
    adsrAO6_10id: TAutoIncField;
    adsrAO6_10data: TDateTimeField;
    adsrAO6_10pes_id: TIntegerField;
    adsrAO6_10fiderov_sum: TFloatField;
    adsrAO6_10fiderov_na_6: TFloatField;
    adsrAO6_10TP_sum: TFloatField;
    adsrAO6_10TP_na_6: TFloatField;
    adsrAO6_10NP_sum: TFloatField;
    adsrAO6_10NP_na_6: TFloatField;
    adsrAO6_10hoz_sum: TFloatField;
    adsrAO6_10hoz_na_6: TFloatField;
    adsrAO6_10comment: TMemoField;
    frAO6_10: TfrDBDataSet;
    adsrAO6_10name: TStringField;
    adsfTEC2izm: TfrDBDataSet;
    adsrTEC2izm: TADODataSet;
    adsPakOborud: TADODataSet;
    dsPakOborud: TfrDBDataSet;
    adsrAO6_10time: TDateTimeField;
    adsrAO6_10data_v: TDateTimeField;
    adsrAO6_10time_v: TDateTimeField;
    adsrAO6_10ludi_sum: TFloatField;
    adsrAO6_10ludi_na_6: TFloatField;
    adsrAOEOludi: TMemoField;
    adsrAOTOdateon: TDateTimeField;
    frNarushPoryd: TfrDBDataSet;
    adsNarushPoryd: TADODataSet;
    adsrAO6_10power_sum: TFloatField;
    adsrAO6_10power_na_6: TFloatField;
    procedure adsrAOTOCalcFields(DataSet: TDataSet);
    procedure adsrAOEOCalcFields(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmReports: TdmReports;

implementation

uses Windows;


{$R *.dfm}

procedure TdmReports.adsrAOTOCalcFields(DataSet: TDataSet);
begin
  if cdsAOTO.Active then
    if cdsAOTO.Locate('ID',DataSet['ID'],[]) then
      DataSet['lstoborud']:=cdsAOTOname.AsString
    else
      DataSet['lstoborud']:='';
end;

procedure TdmReports.adsrAOEOCalcFields(DataSet: TDataSet);
begin
  if cdsAOEO.Active then
    if cdsAOEO.Locate('ID',DataSet['ID'],[]) then
      DataSet['lstoborud']:=cdsAOEOoborud.AsString
    else
      DataSet['lstoborud']:='';
  if cdsAOEO.Active then
    if cdsAOEO.Locate('ID',DataSet['ID'],[]) then
      DataSet['lstzash']:=cdsAOEOzash.AsString
    else
      DataSet['lstzash']:='';
end;

procedure TdmReports.DataModuleCreate(Sender: TObject);
  procedure OpenT(ds: TADODataSet);
  begin
    if not ds.Active then
      ds.Open;
  end;
begin
{  OpenT(adsrAOTO);
  OpenT(adsrAotoObor);
  OpenT(adsrAOEO);
  OpenT(adsrAOEOOborud);
  OpenT(adsrAOEOZash);
  OpenT(adsrPodpis);
  if dmData.adcComandARM.Connected then
    OpenT(adsKomandARM);
}      
end;

end.
