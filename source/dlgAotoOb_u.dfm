object dlgAotoOb: TdlgAotoOb
  Left = 357
  Top = 168
  Width = 284
  Height = 422
  BorderIcons = []
  Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
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
    Width = 276
    Height = 388
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 344
      Width = 272
      Height = 42
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        272
        42)
      object Bevel1: TBevel
        Left = 4
        Top = 3
        Width = 263
        Height = 3
        Anchors = [akLeft, akRight, akBottom]
      end
      object cxButton1: TcxButton
        Left = 186
        Top = 11
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = #1054#1050
        ModalResult = 1
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
      end
      object cxButton2: TcxButton
        Left = 8
        Top = 11
        Width = 121
        Height = 25
        Caption = #1053#1086#1074#1086#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        TabOrder = 1
        OnClick = cxButton2Click
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
      end
    end
    object cxTreeList1: TcxTreeList
      Left = 2
      Top = 2
      Width = 272
      Height = 342
      Align = alClient
      Bands = <
        item
          Caption.Text = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
          Width = 270
        end>
      BufferedPaint = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      OptionsView.CellAutoHeight = True
      OptionsView.CategorizedColumn = cxTreeList1cxTreeListColumn1
      OptionsView.ColumnAutoWidth = True
      OptionsView.PaintStyle = tlpsCategorized
      TabOrder = 1
      Data = {
        020004002D0100000F00000044617461436F6E74726F6C6C6572310300000012
        000000546378537472696E6756616C75655479706513000000546378426F6F6C
        65616E56616C75655479706513000000546378496E746567657256616C756554
        7970650600000000000800000032333435343233350101000006000000343335
        3334350101000001000000310101000001000000320101000001000000330101
        0000010000003101010200000000000000040000000300000000000000000000
        00FFFFFFFF02000000100000000000000000000000FFFFFFFF03000000100000
        000000000000000000FFFFFFFF04000000100000000000000000000000FFFFFF
        FF0100000004000000010000000000000000000000FFFFFFFF05000000100000
        000000000000000000FFFFFFFF}
      object cxTreeList1cxTreeListColumn1: TcxTreeListColumn
        Caption.Text = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        DataBinding.ValueType = 'String'
        Options.Editing = False
        Width = 222
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object cxTreeList1cxTreeListColumn2: TcxTreeListColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        DataBinding.ValueType = 'Boolean'
        Width = 48
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
      object cxTreeList1cxTreeListColumn3: TcxTreeListColumn
        Visible = False
        DataBinding.ValueType = 'Integer'
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
      end
    end
  end
  object XPManifest1: TXPManifest
    Left = 106
    Top = 288
  end
  object adsLinkOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsLinkOborudAfterInsert
    CommandText = 'aotoLinkOborud'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 88
    Top = 184
    object adsLinkOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsLinkOborudaoTeplObID: TIntegerField
      FieldName = 'aoTeplObID'
    end
    object adsLinkOborudoborudid: TIntegerField
      FieldName = 'oborudid'
    end
  end
  object aqDelLO: TADOQuery
    Connection = dmData.adcData
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'Delete from aotoLinkOborud where aoTeplObID=42')
    Left = 144
    Top = 184
  end
end
