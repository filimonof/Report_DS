object dlgAddAotoOb: TdlgAddAotoOb
  Left = 370
  Top = 291
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 114
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 114
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      310
      114)
    object Bevel1: TBevel
      Left = 7
      Top = 75
      Width = 297
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
    end
    object cxButton1: TcxButton
      Left = 222
      Top = 83
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 3
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    object cxButton2: TcxButton
      Left = 142
      Top = 83
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1050
      Default = True
      ModalResult = 1
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    object cxLabel1: TcxLabel
      Left = 65
      Top = 21
      Caption = #1050#1086#1084#1087#1072#1085#1080#1103
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 43
      Top = 43
      Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      Transparent = True
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 136
      Top = 40
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
      TabOrder = 0
      Width = 161
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 136
      Top = 16
      DataBinding.DataField = 'companyid'
      DataBinding.DataSource = dsOb
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsComp
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 161
    end
  end
  object XPManifest1: TXPManifest
    Left = 24
    Top = 80
  end
  object dsOb: TDataSource
    DataSet = frmAOTO.adsOborud
    Left = 8
    Top = 48
  end
  object dsComp: TDataSource
    DataSet = adsComp
    Left = 40
    Top = 48
  end
  object adsComp: TADODataSet
    Connection = dmData.adcData
    CommandText = 'aotoCompany'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 8
    Top = 16
    object adsCompID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsCompname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
end
