object dmReports: TdmReports
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 367
  Top = 209
  Height = 584
  Width = 679
  object frReport: TfrReport
    InitialZoom = pzDefault
    ModifyPrepared = False
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbExit]
    ReportType = rtMultiple
    Title = #1054#1090#1095#1077#1090
    RebuildPrinter = False
    Left = 24
    Top = 24
    ReportForm = {19000000}
  end
  object frOLEObject1: TfrOLEObject
    Left = 24
    Top = 88
  end
  object frRichObject1: TfrRichObject
    Left = 88
    Top = 88
  end
  object frCheckBoxObject1: TfrCheckBoxObject
    Left = 152
    Top = 88
  end
  object frShapeObject1: TfrShapeObject
    Left = 216
    Top = 88
  end
  object frBarCodeObject1: TfrBarCodeObject
    Left = 280
    Top = 88
  end
  object frChartObject1: TfrChartObject
    Left = 24
    Top = 184
  end
  object frRoundRectObject1: TfrRoundRectObject
    Left = 88
    Top = 184
  end
  object frCrossObject1: TfrCrossObject
    Left = 152
    Top = 184
  end
  object frDialogControls1: TfrDialogControls
    Left = 216
    Top = 184
  end
  object frADOComponents1: TfrADOComponents
    Left = 280
    Top = 184
  end
  object frHTML2Export1: TfrHTML2Export
    Scale = 1.000000000000000000
    Navigator.Position = []
    Navigator.Font.Charset = DEFAULT_CHARSET
    Navigator.Font.Color = clWindowText
    Navigator.Font.Height = -11
    Navigator.Font.Name = 'MS Sans Serif'
    Navigator.Font.Style = []
    Navigator.InFrame = False
    Navigator.WideInFrame = False
    Left = 24
    Top = 136
  end
  object frOLEExcelExport1: TfrOLEExcelExport
    CellsAlign = False
    CellsFillColor = False
    CellsFontColor = False
    CellsFontName = False
    CellsFontSize = False
    CellsFontStyle = False
    Left = 88
    Top = 136
  end
  object frBMPExport1: TfrBMPExport
    Left = 152
    Top = 136
  end
  object frJPEGExport1: TfrJPEGExport
    ShowDialog = False
    Quality = 95
    CropImages = False
    Left = 216
    Top = 136
  end
  object frTIFFExport1: TfrTIFFExport
    Left = 280
    Top = 136
  end
  object frRtfAdvExport1: TfrRtfAdvExport
    ShowDialog = False
    Left = 24
    Top = 232
  end
  object frTextExport1: TfrTextExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 88
    Top = 232
  end
  object frRTFExport1: TfrRTFExport
    ShowDialog = False
    ScaleX = 1.300000000000000000
    ScaleY = 1.000000000000000000
    ExportBitmaps = True
    Left = 152
    Top = 232
  end
  object frCSVExport1: TfrCSVExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Delimiter = ';'
    Left = 216
    Top = 232
  end
  object frHTMExport1: TfrHTMExport
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 280
    Top = 232
  end
  object frDesigner: TfrDesigner
    Left = 88
    Top = 24
  end
  object frAOTO: TfrDBDataSet
    DataSet = adsrAOTO
    Left = 400
    Top = 200
  end
  object adsrAOTO: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnCalcFields = adsrAOTOCalcFields
    CommandText = 'aoTeplOb'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 400
    Top = 152
    object adsrAOTOID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsrAOTOdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsrAOTOtime: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'time'
    end
    object adsrAOTOprotect: TMemoField
      DisplayLabel = #1047#1072#1097#1080#1090#1072
      FieldName = 'protect'
      BlobType = ftMemo
    end
    object adsrAOTOabout: TMemoField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'about'
      BlobType = ftMemo
    end
    object adsrAOTOtimeon: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'timeon'
    end
    object adsrAOTOlstoborud: TStringField
      FieldKind = fkCalculated
      FieldName = 'lstoborud'
      Size = 1000
      Calculated = True
    end
    object adsrAOTOdateon: TDateTimeField
      FieldName = 'dateon'
    end
  end
  object adsrAotoObor: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 
      'SELECT aotoLinkOborud.ID, aotoLinkOborud.aoTeplObID, aotoOborud.' +
      'name, aotoCompany.name, aotoCompany.name+'#13#10#39' : '#39'+aotoOborud.name' +
      ' AS [fullname]'#13#10'FROM aotoLinkOborud, aotoCompany,  aotoOborud '#13#10 +
      'WHERE aotoCompany.ID=aotoOborud.companyid and  aotoOborud.ID=aot' +
      'oLinkOborud.oborudid '
    DataSource = dsrAOTO
    IndexFieldNames = 'aoTeplObID'
    MasterFields = 'ID'
    Parameters = <>
    Prepared = True
    Left = 400
    Top = 56
    object adsrAotoOborID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsrAotoOboraoTeplObID: TIntegerField
      DisplayLabel = #1086#1090#1082#1083#1102#1095#1077#1085#1080#1077
      FieldName = 'aoTeplObID'
    end
    object adsrAotoOborfullname: TWideStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'fullname'
      ReadOnly = True
      Size = 255
    end
  end
  object dsrAOTO: TDataSource
    DataSet = adsrAOTO
    Left = 400
    Top = 104
  end
  object cdsAOTO: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 1000
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 400
    Top = 248
    Data = {
      3E0000009619E0BD0100000018000000020000000000030000003E0002494404
      00010000000000046E616D65020049000000010005574944544802000200E803
      0000}
    object cdsAOTOID: TIntegerField
      FieldName = 'ID'
    end
    object cdsAOTOname: TStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 1000
    end
  end
  object frAOEO: TfrDBDataSet
    DataSet = adsrAOEO
    Left = 472
    Top = 280
  end
  object adsrAOEO: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnCalcFields = adsrAOEOCalcFields
    CommandText = 'aoElOb'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 472
    Top = 232
    object adsrAOEOID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsrAOEOODU: TIntegerField
      DisplayLabel = #1074' '#1054#1044#1059
      FieldName = 'ODU'
    end
    object adsrAOEOdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsrAOEOtime: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'time'
    end
    object adsrAOEOAPV: TIntegerField
      DisplayLabel = #1040#1055#1042
      FieldName = 'APV'
    end
    object adsrAOEORPV: TDateTimeField
      DisplayLabel = #1056#1055#1042' '#1074#1088#1077#1084#1103
      FieldName = 'RPV'
    end
    object adsrAOEOAboutOtkl: TMemoField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'AboutOtkl'
      BlobType = ftMemo
    end
    object adsrAOEONedo: TMemoField
      DisplayLabel = #1053#1077#1076#1086#1086#1090#1087#1091#1089#1082' '#1101#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1080
      FieldName = 'Nedo'
      BlobType = ftMemo
    end
    object adsrAOEOlstoborud: TStringField
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'lstoborud'
      Size = 1000
      Calculated = True
    end
    object adsrAOEOlstzash: TStringField
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'lstzash'
      Size = 5000
      Calculated = True
    end
    object adsrAOEOlkz: TMemoField
      DisplayLabel = 'L'#1082#1079
      FieldName = 'lkz'
      BlobType = ftMemo
    end
    object adsrAOEORPV2: TIntegerField
      DisplayLabel = #1056#1055#1042
      FieldName = 'RPV2'
    end
    object adsrAOEOcomment: TMemoField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'comment'
      BlobType = ftMemo
    end
    object adsrAOEOludi: TMemoField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1080#1077
      FieldName = 'ludi'
      BlobType = ftMemo
    end
  end
  object dsrAOEO: TDataSource
    DataSet = adsrAOEO
    Left = 472
    Top = 184
  end
  object dsrAOEOOborud: TDataSource
    DataSet = adsrAOEOOborud
    Left = 472
    Top = 88
  end
  object adsrAOEOOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 
      'SELECT  aoeoLinkOborud.ID,aoeoLinkOborud.aoeoID,aoeoType.name+'#39' ' +
      ': '#39'+aoeoType2.name+'#39' : '#39'+ aoeoOborud.name AS [fullname]'#13#10'FROM ao' +
      'eoLinkOborud, aoeoOborud,  aoeoType2, aoeoType'#13#10'WHERE  aoeoLinkO' +
      'borud.typeid = aoeoType.ID and aoeoLinkOborud.type2id=aoeoType2.' +
      'ID and aoeoLinkOborud.oborudid=aoeoOborud.ID'
    DataSource = dsrAOEO
    IndexFieldNames = 'aoeoID'
    MasterFields = 'ID'
    Parameters = <>
    Left = 472
    Top = 136
    object adsrAOEOOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsrAOEOOborudaoeoID: TIntegerField
      DisplayLabel = #1086#1090#1082#1083#1102#1095#1077#1085#1080#1077
      FieldName = 'aoeoID'
    end
    object adsrAOEOOborudfullname: TWideStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'fullname'
      ReadOnly = True
      Size = 255
    end
  end
  object adsrAOEOZash: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 
      'select aoeoLinkZash.ID, aoeoLinkZash.aoeolinkid, aoeoZash.name'#13#10 +
      'from aoeoLinkZash,   aoeoZash'#13#10'where   aoeoLinkZash.zashid = aoe' +
      'oZash.ID'#13#10' '
    DataSource = dsrAOEOOborud
    IndexFieldNames = 'aoeolinkid'
    MasterFields = 'ID'
    Parameters = <>
    Left = 472
    Top = 40
    object adsrAOEOZashID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsrAOEOZashaoeolinkid: TIntegerField
      DisplayLabel = #1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'aoeolinkid'
    end
    object adsrAOEOZashname: TWideStringField
      DisplayLabel = #1079#1072#1097#1080#1090#1072
      FieldName = 'name'
      Size = 200
    end
  end
  object frAOEOOborud: TfrDBDataSet
    DataSet = adsrAOEOOborud
    Left = 536
    Top = 136
  end
  object frAOEOZash: TfrDBDataSet
    DataSet = adsrAOEOZash
    Left = 536
    Top = 40
  end
  object adsKomandARM: TADODataSet
    Connection = dmData.adcComandARM
    CursorType = ctStatic
    CommandText = 
      'SELECT Records.RecID, Records.Reg_time, Objects.Object_name, Com' +
      'mands.Command, Records.Ext_initiative, Records.From_minute, Reco' +
      'rds.To_minute, Cause.description, Records.Extended_cause, Record' +
      's.Surname, Records.Value'#13#10' FROM Participants INNER JOIN (Objects' +
      ' INNER JOIN (Commands INNER JOIN ((Cause INNER JOIN Extend_cause' +
      ' ON Cause.CauseID = Extend_cause.Cause) INNER JOIN Records ON Ca' +
      'use.CauseID = Records.Cause) ON Commands.CommandID = Records.Com' +
      'mand) ON Objects.CodeID = Records.Object) ON Participants.Partic' +
      'ipantID = Objects.Participant'
    Parameters = <>
    Prepared = True
    Left = 280
    Top = 312
    object adsKomandARMRecID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'RecID'
      ReadOnly = True
    end
    object adsKomandARMReg_time: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1086#1090#1076#1072#1095#1080' '#1082#1086#1084#1072#1085#1076#1099
      FieldName = 'Reg_time'
    end
    object adsKomandARMObject_name: TWideStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
      FieldName = 'Object_name'
      Size = 50
    end
    object adsKomandARMCommand: TWideStringField
      DisplayLabel = #1050#1086#1084#1072#1085#1076#1072
      FieldName = 'Command'
      Size = 255
    end
    object adsKomandARMExt_initiative: TBooleanField
      DisplayLabel = #1048#1085#1080#1094#1080#1072#1090#1080#1074#1072
      FieldName = 'Ext_initiative'
    end
    object adsKomandARMFrom_minute: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
      FieldName = 'From_minute'
    end
    object adsKomandARMTo_minute: TDateTimeField
      DisplayLabel = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1082
      FieldName = 'To_minute'
    end
    object adsKomandARMdescription: TWideStringField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072
      FieldName = 'description'
      Size = 255
    end
    object adsKomandARMExtended_cause: TWideStringField
      DisplayLabel = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072
      FieldName = 'Extended_cause'
      Size = 255
    end
    object adsKomandARMSurname: TWideStringField
      DisplayLabel = #1044#1077#1078#1091#1088#1085#1099#1081' '#1076#1080#1089#1087#1077#1090#1095#1077#1088
      FieldName = 'Surname'
      Size = 50
    end
    object adsKomandARMValue: TIntegerField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'Value'
    end
  end
  object frKomandARM: TfrDBDataSet
    DataSet = adsKomandARM
    Left = 280
    Top = 360
  end
  object cdsAOEO: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'oborud'
        DataType = ftMemo
      end
      item
        Name = 'zash'
        DataType = ftMemo
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 472
    Top = 328
    Data = {
      670000009619E0BD010000001800000003000000000003000000670002494404
      00010000000000066F626F72756404004B000000010007535542545950450200
      490005005465787400047A61736804004B000000010007535542545950450200
      4900050054657874000000}
    object cdsAOEOID: TIntegerField
      FieldName = 'ID'
    end
    object cdsAOEOoborud: TMemoField
      FieldName = 'oborud'
      BlobType = ftMemo
    end
    object cdsAOEOzash: TMemoField
      FieldName = 'zash'
      BlobType = ftMemo
    end
  end
  object adsrPodpis: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'tblPodpis'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 200
    Top = 312
    object adsrPodpisname: TWideStringField
      DisplayLabel = #1048#1084#1103
      FieldName = 'name'
      Size = 100
    end
    object adsrPodpisid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsrPodpispodpis: TBlobField
      FieldName = 'podpis'
      BlobType = ftGraphic
    end
  end
  object adsfPodpis: TfrDBDataSet
    DataSet = adsrPodpis
    Left = 200
    Top = 360
  end
  object adsrAO6_10: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'ao6_10'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 400
    Top = 328
    object adsrAO6_10id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsrAO6_10data: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'data'
    end
    object adsrAO6_10pes_id: TIntegerField
      DisplayLabel = #1055#1069#1057
      FieldName = 'pes_id'
    end
    object adsrAO6_10fiderov_sum: TFloatField
      DisplayLabel = #1060#1080#1076#1077#1088#1086#1074' '#1042#1089#1077#1075#1086
      FieldName = 'fiderov_sum'
    end
    object adsrAO6_10fiderov_na_6: TFloatField
      DisplayLabel = #1060#1080#1076#1077#1088#1086#1074' '#1085#1072' 6:00'
      FieldName = 'fiderov_na_6'
    end
    object adsrAO6_10TP_sum: TFloatField
      DisplayLabel = #1058#1055' '#1074#1089#1077#1075#1086
      FieldName = 'TP_sum'
    end
    object adsrAO6_10TP_na_6: TFloatField
      DisplayLabel = #1058#1055' '#1085#1072' 6:00'
      FieldName = 'TP_na_6'
    end
    object adsrAO6_10NP_sum: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074' '#1074#1089#1077#1075#1086
      FieldName = 'NP_sum'
    end
    object adsrAO6_10NP_na_6: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074' '#1085#1072' 6:00'
      FieldName = 'NP_na_6'
    end
    object adsrAO6_10hoz_sum: TFloatField
      DisplayLabel = #1061#1086#1079#1103#1081#1089#1090#1074' '#1074#1089#1077#1075#1086
      FieldName = 'hoz_sum'
    end
    object adsrAO6_10hoz_na_6: TFloatField
      DisplayLabel = #1061#1086#1079#1103#1081#1089#1090#1074' '#1085#1072' 6:00'
      FieldName = 'hoz_na_6'
    end
    object adsrAO6_10comment: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'comment'
      BlobType = ftMemo
    end
    object adsrAO6_10name: TStringField
      FieldName = 'name'
      Size = 50
    end
    object adsrAO6_10time: TDateTimeField
      FieldName = 'time'
    end
    object adsrAO6_10data_v: TDateTimeField
      FieldName = 'data_v'
    end
    object adsrAO6_10time_v: TDateTimeField
      FieldName = 'time_v'
    end
    object adsrAO6_10ludi_sum: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1080#1077' '#1074#1089#1077#1075#1086
      FieldName = 'ludi_sum'
    end
    object adsrAO6_10ludi_na_6: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1080#1077' '#1085#1072' 6.00'
      FieldName = 'ludi_na_6'
    end
    object adsrAO6_10power_sum: TFloatField
      FieldName = 'power_sum'
    end
    object adsrAO6_10power_na_6: TFloatField
      FieldName = 'power_na_6'
    end
  end
  object frAO6_10: TfrDBDataSet
    DataSet = adsrAO6_10
    Left = 400
    Top = 376
  end
  object adsfTEC2izm: TfrDBDataSet
    DataSet = adsrTEC2izm
    Left = 128
    Top = 360
  end
  object adsrTEC2izm: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'tec2izm'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 128
    Top = 312
  end
  object adsPakOborud: TADODataSet
    Connection = dmData.adcData
    CommandText = 'pakOtklOborud'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 48
    Top = 312
  end
  object dsPakOborud: TfrDBDataSet
    DataSet = adsPakOborud
    Left = 48
    Top = 360
  end
  object frNarushPoryd: TfrDBDataSet
    DataSet = adsNarushPoryd
    Left = 48
    Top = 472
  end
  object adsNarushPoryd: TADODataSet
    Connection = dmData.adcData
    CommandText = 'narushPoryd'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 48
    Top = 424
  end
end
