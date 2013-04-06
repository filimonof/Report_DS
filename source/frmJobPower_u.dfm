inherited frmJobPower: TfrmJobPower
  Left = 275
  Top = 238
  ActiveControl = cxGrid1
  Caption = #1056#1072#1073#1086#1095#1072#1103' '#1084#1086#1097#1085#1086#1089#1090#1100
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
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
    Top = 263
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
      object TBXLabelItem5: TTBXLabelItem
        Caption = ' '#1089' '
      end
      object TBControlItem4: TTBControlItem
        Control = cbDay1
      end
      object TBXLabelItem6: TTBXLabelItem
        Caption = ' '#1087#1086
      end
      object TBControlItem9: TTBControlItem
        Control = cbDay2
      end
      object TBXLabelItem11: TTBXLabelItem
        Caption = ' '#1074' '#1087#1083#1072#1085#1099
      end
      object TBXLabelItem12: TTBXLabelItem
        Caption = ' '#1074#1074#1077#1089#1090#1080' '
      end
      object TBControlItem11: TTBControlItem
        Control = teValue
      end
      object TBXLabelItem13: TTBXLabelItem
        Caption = '  '
      end
      object TBXItem3: TTBXItem
        Caption = #1054#1050
        DisplayMode = nbdmImageAndText
        ImageIndex = 9
        Images = ilSmallIcons
        OnClick = TBXItem3Click
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
      object teValue: TcxSpinEdit
        Left = 240
        Top = 1
        Properties.ValueType = vtFloat
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Width = 70
      end
    end
  end
  inherited TBXDock3: TTBXDock
    Top = 28
    Height = 235
  end
  inherited TBXDock4: TTBXDock
    Top = 28
    Height = 235
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 28
    Width = 536
    Height = 235
    Align = alClient
    TabOrder = 5
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsJobPower
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'date'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 184
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'plan'
        HeaderAlignmentHorz = taCenter
        Width = 176
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'fact'
        HeaderAlignmentHorz = taCenter
        Width = 174
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object adsJobPower: TADODataSet [6]
    Connection = dmData.adcData
    OnFieldChangeComplete = adsJobPowerFieldChangeComplete
    CommandText = 'jJobPower'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 56
    Top = 176
    object adsJobPowerid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object adsJobPowerdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsJobPowerplan: TFloatField
      DisplayLabel = #1055#1083#1072#1085#1086#1074#1072#1103
      FieldName = 'plan'
    end
    object adsJobPowerfact: TFloatField
      DisplayLabel = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1072#1103
      FieldName = 'fact'
    end
  end
  object dsJobPower: TDataSource [7]
    DataSet = adsJobPower
    Left = 96
    Top = 176
  end
  inherited ilSmallIcons: TTBImageList
    Left = 136
    Top = 176
  end
end
