inherited frmOtkl110: TfrmOtkl110
  Left = 461
  Top = 155
  Height = 364
  Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1081' '#1042#1051' - 110 '#1082#1042' '#1080' '#1042#1051' - 220 '#1082#1042' '#1087#1086' '#1085#1077#1076#1077#1083#1103#1084
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Top = 308
  end
  inherited TBXDock1: TTBXDock
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1052#1077#1085#1102
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      FullSize = True
      Images = ilSmallIcons
      TabOrder = 0
      object TBXLabelItem3: TTBXLabelItem
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
      object TBXLabelItem1: TTBXLabelItem
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
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 98
      end
      object seiYear: TcxSpinEdit
        Left = 168
        Top = 1
        Properties.MinValue = 1.000000000000000000
        Properties.OnChange = TBXItem1Click
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Value = 1
        Width = 57
      end
    end
  end
  inherited TBXDock2: TTBXDock
    Top = 299
  end
  inherited TBXDock3: TTBXDock
    Top = 28
    Height = 271
  end
  inherited TBXDock4: TTBXDock
    Top = 28
    Height = 271
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 28
    Width = 536
    Height = 271
    Align = alClient
    TabOrder = 5
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsOtkl110
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView2year: TcxGridDBColumn
        Caption = #1043#1086#1076
        DataBinding.FieldName = 'year'
        Options.Editing = False
        Width = 56
      end
      object cxGrid1DBTableView2week: TcxGridDBColumn
        Caption = #1053#1077#1076#1077#1083#1103
        DataBinding.FieldName = 'week'
        Options.Editing = False
        Width = 60
      end
      object cxGrid1DBTableView2day_in_week: TcxGridDBColumn
        Caption = #1053#1077#1076#1077#1083#1103
        DataBinding.FieldName = 'day_in_week'
        Options.Editing = False
        Width = 95
      end
      object cxGrid1DBTableView2apv_ok: TcxGridDBColumn
        Caption = #1059#1089#1087'. '#1040#1055#1042' 110'#1082#1042
        DataBinding.FieldName = 'apv_ok'
        Width = 86
      end
      object cxGrid1DBTableView2apv_no: TcxGridDBColumn
        Caption = #1053#1077#1091#1089#1087'. '#1040#1055#1042' 110'#1082#1042
        DataBinding.FieldName = 'apv_no'
        Width = 84
      end
      object cxGrid1DBTableView2apv220_ok: TcxGridDBColumn
        Caption = #1059#1089#1087'. '#1040#1055#1042' 220'#1082#1042
        DataBinding.FieldName = 'apv220_ok'
        Width = 71
      end
      object cxGrid1DBTableView2apv220_no: TcxGridDBColumn
        Caption = #1053#1077#1091#1089#1087'. '#1040#1055#1042' 220'#1082#1042
        DataBinding.FieldName = 'apv220_no'
        Width = 70
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  object adsOtkl110: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnCalcFields = adsOtkl110CalcFields
    OnFieldChangeComplete = adsOtkl110FieldChangeComplete
    CommandText = 'otkl110'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 80
    Top = 96
    object adsOtkl110id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsOtkl110week: TIntegerField
      FieldName = 'week'
    end
    object adsOtkl110year: TIntegerField
      FieldName = 'year'
    end
    object adsOtkl110apv_ok: TFloatField
      FieldName = 'apv_ok'
    end
    object adsOtkl110apv_no: TFloatField
      FieldName = 'apv_no'
    end
    object adsOtkl110day_in_week: TStringField
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'day_in_week'
      Size = 25
      Calculated = True
    end
    object adsOtkl110apv220_ok: TFloatField
      FieldName = 'apv220_ok'
    end
    object adsOtkl110apv220_no: TFloatField
      FieldName = 'apv220_no'
    end
  end
  object dsOtkl110: TDataSource
    DataSet = adsOtkl110
    Left = 80
    Top = 64
  end
end
