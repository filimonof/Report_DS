inherited frmCtrlU: TfrmCtrlU
  Left = 259
  Top = 245
  Height = 378
  ActiveControl = cxGrid1
  Caption = #1055#1083#1072#1085' '#1085#1072#1087#1088#1103#1078#1077#1085#1080#1103' '#1074' '#1082#1086#1085#1090#1088#1086#1083#1100#1085#1099#1093' '#1090#1086#1095#1082#1072#1093' (110'#1082#1042')'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Top = 322
  end
  inherited TBXDock1: TTBXDock
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1056#1072#1073#1086#1095#1072#1103' '#1084#1086#1097#1085#1086#1089#1090#1100
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      FullSize = True
      Images = ilSmallIcons
      TabOrder = 0
      object TBXLabelItem1: TTBXLabelItem
        Caption = '   '#1052#1077#1089#1103#1094
      end
      object TBControlItem1: TTBControlItem
        Control = cbiMonth
      end
      object TBXLabelItem2: TTBXLabelItem
        Caption = '   '#1043#1086#1076
      end
      object TBControlItem2: TTBControlItem
        Control = seiYear
      end
      object TBXLabelItem3: TTBXLabelItem
        Caption = '   '
      end
      object TBXItem1: TTBXItem
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        DisplayMode = nbdmImageAndText
        ImageIndex = 11
        OnClick = TBXItem1Click
      end
      object TBXSeparatorItem1: TTBXSeparatorItem
      end
      object TBXItem2: TTBXItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        DisplayMode = nbdmImageAndText
        ImageIndex = 0
        OnClick = TBXItem2Click
      end
      object cbiMonth: TcxComboBox
        Left = 41
        Top = 1
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 12
        Properties.OnChange = TBXItem1Click
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Width = 98
      end
      object seiYear: TcxSpinEdit
        Left = 168
        Top = 1
        Properties.OnChange = TBXItem1Click
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Width = 57
      end
    end
  end
  inherited TBXDock2: TTBXDock
    Top = 294
    Height = 28
    object tbOK: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1087#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpBottom]
      DockMode = dmCannotFloat
      DockPos = 8
      FullSize = True
      TabOrder = 0
      object TBXLabelItem9: TTBXLabelItem
        Caption = ' '#1089' '
      end
      object TBControlItem7: TTBControlItem
        Control = cbDay1
      end
      object TBXLabelItem10: TTBXLabelItem
        Caption = ' '#1087#1086
      end
      object TBControlItem8: TTBControlItem
        Control = cbDay2
      end
      object TBXLabelItem4: TTBXLabelItem
        Caption = ' '#1085#1072' '
      end
      object TBControlItem5: TTBControlItem
        Control = cbTypeData
      end
      object TBXLabelItem5: TTBXLabelItem
        Caption = ' '#1074#1074#1077#1089#1090#1080' '
      end
      object TBControlItem6: TTBControlItem
        Control = teValue
      end
      object TBXLabelItem6: TTBXLabelItem
        Caption = '  '
      end
      object TBXItem3: TTBXItem
        Caption = #1054#1050
        DisplayMode = nbdmImageAndText
        ImageIndex = 9
        Images = ilSmallIcons
        OnClick = TBXItem3Click
      end
      object cbTypeData: TcxComboBox
        Left = 172
        Top = 1
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 5
        Properties.Items.Strings = (
          #1055#1057' '#1057#1072#1088#1072#1085#1089#1082#1072#1103
          #1055#1057' '#1056#1091#1079#1072#1077#1074#1082#1072
          #1055#1057' '#1052#1086#1082#1096#1072
          #1055#1057' '#1050#1086#1084#1089#1086#1084#1086#1083#1100#1089#1082#1072#1103
          #1058#1069#1062'-2')
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Width = 92
      end
      object teValue: TcxTextEdit
        Left = 306
        Top = 1
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Width = 87
      end
      object cbDay1: TcxComboBox
        Left = 12
        Top = 1
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Width = 62
      end
      object cbDay2: TcxComboBox
        Left = 90
        Top = 1
        Properties.DropDownListStyle = lsFixedList
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Width = 63
      end
    end
  end
  inherited TBXDock3: TTBXDock
    Top = 28
    Height = 266
  end
  inherited TBXDock4: TTBXDock
    Top = 28
    Height = 266
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 28
    Width = 536
    Height = 266
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsCtrlU
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1date: TcxGridDBColumn
        DataBinding.FieldName = 'date'
        Options.Editing = False
        Width = 80
      end
      object cxGrid1DBTableView1PSSaransk: TcxGridDBColumn
        DataBinding.FieldName = 'PSSaransk'
        Width = 75
      end
      object cxGrid1DBTableView1PSRuzaevka: TcxGridDBColumn
        DataBinding.FieldName = 'PSRuzaevka'
        Width = 75
      end
      object cxGrid1DBTableView1PSMoksha: TcxGridDBColumn
        DataBinding.FieldName = 'PSMoksha'
        Width = 91
      end
      object cxGrid1DBTableView1PSKomsomolsk: TcxGridDBColumn
        DataBinding.FieldName = 'PSKomsomolsk'
        Width = 98
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'PStec2'
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 80
    Top = 128
  end
  object adsCtrlU: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnFieldChangeComplete = adsCtrlUFieldChangeComplete
    CommandText = 'uCtrlU'
    CommandType = cmdTableDirect
    Parameters = <>
    Prepared = True
    Left = 112
    Top = 128
    object adsCtrlUid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object adsCtrlUdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsCtrlUPSSaransk: TWideStringField
      DisplayLabel = #1055#1057' '#1057#1072#1088#1072#1085#1089#1082#1072#1103
      FieldName = 'PSSaransk'
      Size = 50
    end
    object adsCtrlUPSRuzaevka: TWideStringField
      DisplayLabel = #1055#1057' '#1056#1091#1079#1072#1077#1074#1082#1072
      FieldName = 'PSRuzaevka'
      Size = 50
    end
    object adsCtrlUPSMoksha: TWideStringField
      DisplayLabel = #1055#1057' '#1052#1086#1082#1096#1072
      FieldName = 'PSMoksha'
      Size = 50
    end
    object adsCtrlUPSKomsomolsk: TWideStringField
      DisplayLabel = #1055#1057' '#1050#1086#1084#1089#1086#1084#1086#1083#1100#1089#1082#1072#1103
      FieldName = 'PSKomsomolsk'
      Size = 50
    end
    object adsCtrlUPStec2: TWideStringField
      DisplayLabel = #1058#1069#1062'-2'
      FieldName = 'PStec2'
      Size = 50
    end
  end
  object dsCtrlU: TDataSource
    DataSet = adsCtrlU
    Left = 144
    Top = 128
  end
end
