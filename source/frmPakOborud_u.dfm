inherited frmPakOborud: TfrmPakOborud
  Left = 361
  Top = 306
  Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1074' '#1088#1072#1073#1086#1090#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1058#1052#1080#1057' '#1080' '#1057#1069#1055#1040#1050
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
      DataController.DataSource = dsPakOtkl
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
        DataBinding.FieldName = 'date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Properties.SaveTime = False
        Properties.ShowTime = False
        Width = 69
      end
      object cxGrid1DBTableView2time: TcxGridDBColumn
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Width = 61
      end
      object cxGrid1DBTableView2bag: TcxGridDBColumn
        DataBinding.FieldName = 'bag'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 131
      end
      object cxGrid1DBTableView2comment: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' / '#1089#1086#1086#1073#1097#1077#1085#1086
        DataBinding.FieldName = 'comment'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 154
      end
      object cxGrid1DBTableView2time_ustr: TcxGridDBColumn
        DataBinding.FieldName = 'time_ustr'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 107
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView2
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 88
    Top = 88
  end
  object adsPakOtkl: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsPakOtklAfterInsert
    AfterEdit = adsPakOtklAfterEdit
    BeforePost = adsPakOtklBeforePost
    AfterPost = adsPakOtklAfterEdit
    AfterCancel = adsPakOtklAfterEdit
    BeforeDelete = adsPakOtklBeforeDelete
    CommandText = 'pakOtklOborud'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 120
    Top = 88
    object adsPakOtklID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsPakOtkldate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsPakOtkltime: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'time'
    end
    object adsPakOtklbag: TMemoField
      DisplayLabel = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      FieldName = 'bag'
      BlobType = ftMemo
    end
    object adsPakOtklcomment: TMemoField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'comment'
      BlobType = ftMemo
    end
    object adsPakOtkltime_ustr: TMemoField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1091#1089#1090#1088#1072#1085#1077#1085#1080#1103
      FieldName = 'time_ustr'
      BlobType = ftMemo
    end
  end
  object dsPakOtkl: TDataSource
    DataSet = adsPakOtkl
    Left = 120
    Top = 120
  end
end
