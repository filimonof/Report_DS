inherited frmNarushPoryd: TfrmNarushPoryd
  Left = 428
  Top = 335
  Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1087#1086#1088#1103#1076#1082#1072
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited TBXDock1: TTBXDock
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1052#1077#1085#1102
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      DockPos = 168
      DockRow = 1
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
    Top = 263
    Height = 28
    object TBXToolbar2: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      ChevronMoveItems = False
      CloseButton = False
      DockMode = dmCannotFloatOrChangeDocks
      FullSize = True
      Images = ilSmallIcons
      TabOrder = 0
      object TBXItem6: TTBXItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        DisplayMode = nbdmImageAndText
        ImageIndex = 4
        OnClick = TBXItem6Click
      end
      object TBXItem5: TTBXItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        DisplayMode = nbdmImageAndText
        ImageIndex = 1
        OnClick = TBXItem5Click
      end
      object TBXItem4: TTBXItem
        Caption = #1055#1088#1080#1085#1103#1090#1100
        DisplayMode = nbdmImageAndText
        Enabled = False
        ImageIndex = 9
        OnClick = TBXItem4Click
      end
      object TBXItem3: TTBXItem
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        DisplayMode = nbdmImageAndText
        Enabled = False
        ImageIndex = 0
        OnClick = TBXItem3Click
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
      DataController.DataSource = dsNarushPoryd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      object cxGrid1DBTableView2date: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 82
      end
      object cxGrid1DBTableView2time: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Width = 53
      end
      object cxGrid1DBTableView2timeout: TcxGridDBColumn
        Caption = #1042#1088#1077#1084#1103' '#1079#1072#1076#1077#1088#1078#1082#1080
        DataBinding.FieldName = 'timeout'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 74
      end
      object cxGrid1DBTableView2oper: TcxGridDBColumn
        Caption = #1044#1086#1087#1091#1089#1090#1080#1074#1096#1080#1081' '#1085#1072#1088#1091#1096#1077#1085#1080#1077
        DataBinding.FieldName = 'oper'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 93
      end
      object cxGrid1DBTableView2comment: TcxGridDBColumn
        Caption = #1055#1077#1088#1074#1080#1095#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1086' '#1087#1088#1080#1095#1080#1085#1072#1093
        DataBinding.FieldName = 'comment'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 220
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  object adsNarushPoryd: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsNarushPorydAfterInsert
    AfterEdit = adsNarushPorydAfterEdit
    BeforePost = adsNarushPorydBeforePost
    AfterPost = adsNarushPorydAfterEdit
    AfterCancel = adsNarushPorydAfterEdit
    BeforeDelete = adsNarushPorydBeforeDelete
    CommandText = 'narushPoryd'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 80
    Top = 64
    object adsNarushPorydID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsNarushPoryddate: TDateTimeField
      FieldName = 'date'
    end
    object adsNarushPorydtime: TDateTimeField
      FieldName = 'time'
    end
    object adsNarushPorydtimeout: TMemoField
      FieldName = 'timeout'
      BlobType = ftMemo
    end
    object adsNarushPorydoper: TMemoField
      FieldName = 'oper'
      BlobType = ftMemo
    end
    object adsNarushPorydcomment: TMemoField
      FieldName = 'comment'
      BlobType = ftMemo
    end
  end
  object dsNarushPoryd: TDataSource
    DataSet = adsNarushPoryd
    Left = 80
    Top = 96
  end
end
