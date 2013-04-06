inherited frmAOEO: TfrmAOEO
  Left = 336
  Top = 202
  ActiveControl = cxGrid1
  Caption = #1040#1074#1072#1088#1080#1081#1085#1099#1077' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103' '#1101#1083#1077#1082#1090#1088#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited TBXDock1: TTBXDock
    Height = 53
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
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
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
    object TBXToolWindow1: TTBXToolWindow
      Left = 0
      Top = 28
      Caption = #1052#1077#1085#1102
      CloseButton = False
      ClientAreaHeight = 21
      ClientAreaWidth = 544
      DockableTo = [dpTop]
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DockRow = 1
      FullSize = True
      TabOrder = 1
      object cxCheckBox1: TcxCheckBox
        Left = 0
        Top = 0
        Caption = #1040#1074#1090#1086#1088#1072#1079#1084#1077#1088' '#1090#1072#1073#1083#1080#1094#1099
        ParentColor = False
        Properties.OnChange = cxCheckBox1PropertiesChange
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 153
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
    Top = 53
    Height = 210
  end
  inherited TBXDock4: TTBXDock
    Top = 53
    Height = 210
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 53
    Width = 536
    Height = 210
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
      DataController.DataSource = dsAOEO
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'ODU'
        Width = 58
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'date'
        Width = 54
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'time'
        Width = 64
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'APV'
        Width = 59
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'RPV'
        Width = 67
      end
      object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'AboutOtkl'
        Width = 118
      end
      object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'Nedo'
        Width = 114
      end
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsAOEO
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.BandHeaders = False
      Bands = <
        item
          Width = 45
        end>
      object cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ODU: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ODU'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = '1'
        Properties.DisplayUnchecked = '0'
        Properties.DisplayGrayed = '0'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        MinWidth = 39
        Options.HorzSizing = False
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn
        DataBinding.FieldName = 'date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 76
        Options.HorzSizing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 76
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1time: TcxGridDBBandedColumn
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        MinWidth = 52
        Options.HorzSizing = False
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1APV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'APV'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DefaultImageIndex = 0
        Properties.DropDownRows = 2
        Properties.Images = TBImageList1
        Properties.Items = <
          item
            Description = #1059#1089#1087#1077#1096#1085#1086#1077
            ImageIndex = 0
            Value = 1
          end
          item
            Description = #1053#1077#1091#1089#1087#1077#1096#1085#1086#1077
            ImageIndex = 1
            Value = 0
          end>
        Properties.LargeImages = TBImageList1
        Properties.ShowDescriptions = False
        MinWidth = 39
        Options.HorzSizing = False
        Width = 39
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1RPV: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RPV'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        MinWidth = 54
        Options.HorzSizing = False
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn
        Caption = #1047#1072#1097#1080#1090#1072
        Width = 51
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1AboutOtkl: TcxGridDBBandedColumn
        DataBinding.FieldName = 'AboutOtkl'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Nedo: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Nedo'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBCardView1: TcxGridDBCardView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Edit.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsLinkOborud
      DataController.DetailKeyFieldNames = 'aoeoID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.RowCaptionAutoHeight = True
      object cxGrid1DBCardView1DBCardViewRow4: TcxGridDBCardViewRow
        DataBinding.FieldName = 'typeid'
      end
      object cxGrid1DBCardView1DBCardViewRow3: TcxGridDBCardViewRow
        DataBinding.FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      object cxGrid1DBCardView1DBCardViewRow2: TcxGridDBCardViewRow
        DataBinding.FieldName = 'oborudid'
      end
      object cxGrid1DBCardView1DBCardViewRow1: TcxGridDBCardViewRow
        DataBinding.FieldName = 'aoeoID'
        Visible = False
      end
    end
    object cxGrid1DBBandedTableView2: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Bands = <
        item
        end>
    end
    object cxGrid1DBTableView3: TcxGridDBTableView
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
      DataController.DataSource = dsLinkOborud
      DataController.DetailKeyFieldNames = 'aoeoID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView3DBColumn1: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
        DataBinding.FieldName = 'names'
        PropertiesClassName = 'TcxPopupEditProperties'
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
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
      DataController.DataSource = dsLinkZash
      DataController.DetailKeyFieldNames = 'aoeolinkid'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView2DBColumn1: TcxGridDBColumn
        Caption = #1047#1072#1097#1080#1090#1099
        DataBinding.FieldName = 'zashid'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsZash
      end
    end
    object cxGrid1DBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsAOEO
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView4ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 58
      end
      object cxGrid1DBTableView4ODU: TcxGridDBColumn
        DataBinding.FieldName = 'ODU'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        MinWidth = 43
        Options.HorzSizing = False
        Width = 43
      end
      object cxGrid1DBTableView4date: TcxGridDBColumn
        DataBinding.FieldName = 'date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 81
        Options.HorzSizing = False
        Width = 81
      end
      object cxGrid1DBTableView4time: TcxGridDBColumn
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        MinWidth = 53
        Options.HorzSizing = False
        Width = 53
      end
      object cxGrid1DBTableView4APV: TcxGridDBColumn
        DataBinding.FieldName = 'APV'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DefaultImageIndex = 0
        Properties.Images = TBImageList1
        Properties.Items = <
          item
            Description = #1059#1089#1087#1077#1096#1085#1086#1077
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = #1053#1077#1091#1089#1087#1077#1096#1085#1086#1077
            ImageIndex = 1
            Value = '0'
          end
          item
            Description = #1085#1077#1073#1099#1083#1086
            Value = '2'
          end>
        Properties.ShowDescriptions = False
        MinWidth = 38
        Options.HorzSizing = False
        Width = 38
      end
      object cxGrid1DBTableView4RPV: TcxGridDBColumn
        DataBinding.FieldName = 'RPV'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        MinWidth = 55
        Options.HorzSizing = False
        Width = 55
      end
      object cxGrid1DBTableView4Column2: TcxGridDBColumn
        DataBinding.FieldName = 'RPV2'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.DefaultImageIndex = 0
        Properties.Images = TBImageList1
        Properties.Items = <
          item
            Description = #1059#1089#1087#1077#1096#1085#1086#1077
            ImageIndex = 0
            Value = '1'
          end
          item
            Description = #1053#1077#1091#1089#1087#1077#1096#1085#1086#1077
            ImageIndex = 1
            Value = '0'
          end
          item
            ImageIndex = 2
            Value = '2'
          end>
        Properties.ShowDescriptions = False
        Width = 38
      end
      object cxGrid1DBTableView4Oborud: TcxGridDBColumn
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'strOborud'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = False
        Options.Editing = False
        Width = 131
      end
      object cxGrid1DBTableView4DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'strOborud'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = False
        Properties.OnButtonClick = cxGrid1DBTableView4DBColumn1PropertiesButtonClick
        Options.ShowEditButtons = isebAlways
        Options.HorzSizing = False
        Width = 20
        IsCaptionAssigned = True
      end
      object cxGrid1DBTableView4Zash: TcxGridDBColumn
        Caption = #1047#1072#1097#1080#1090#1099
        DataBinding.FieldName = 'strZash'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = False
        Options.Editing = False
        Width = 133
      end
      object cxGrid1DBTableView4AboutOtkl: TcxGridDBColumn
        DataBinding.FieldName = 'AboutOtkl'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 132
      end
      object cxGrid1DBTableView4Column1: TcxGridDBColumn
        DataBinding.FieldName = 'lkz'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
      end
      object cxGrid1DBTableView4Nedo: TcxGridDBColumn
        Caption = #1054#1090#1082#1083'. '#1084#1086#1097#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'Nedo'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 90
      end
      object cxGrid1DBTableView4Column4: TcxGridDBColumn
        DataBinding.FieldName = 'ludi'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
      end
      object cxGrid1DBTableView4Column3: TcxGridDBColumn
        DataBinding.FieldName = 'comment'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Width = 103
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView4
      Options.DetailFrameColor = clInactiveBorder
      Options.DetailFrameWidth = 2
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 48
    Top = 104
  end
  object adsAOEO: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsAOEOAfterInsert
    AfterEdit = adsAOEOAfterEdit2
    BeforePost = adsAOEOBeforePost
    AfterPost = adsAOEOAfterEdit2
    AfterCancel = adsAOEOAfterEdit2
    BeforeDelete = adsAOEOBeforeDelete
    OnFieldChangeComplete = adsAOEOFieldChangeComplete
    CommandText = 'aoElOb'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 152
    Top = 112
    object adsAOEOID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsAOEOdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsAOEOtime: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'time'
    end
    object adsAOEOAPV: TIntegerField
      DisplayLabel = #1040#1055#1042
      FieldName = 'APV'
    end
    object adsAOEORPV: TDateTimeField
      DisplayLabel = #1056#1055#1042' '#1074#1088#1077#1084#1103
      FieldName = 'RPV'
    end
    object adsAOEOAboutOtkl: TMemoField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'AboutOtkl'
      BlobType = ftMemo
    end
    object adsAOEONedo: TMemoField
      DisplayLabel = #1053#1077#1076#1086#1086#1090#1087#1091#1089#1082' '#1077'/'#1077
      FieldName = 'Nedo'
      BlobType = ftMemo
    end
    object adsAOEOODU: TIntegerField
      DisplayLabel = #1074' '#1054#1044#1059
      FieldName = 'ODU'
      MaxValue = 1
    end
    object adsAOEOOborud: TStringField
      FieldName = 'strOborud'
      Size = 1000
    end
    object adsAOEOZash: TStringField
      FieldName = 'strZash'
      Size = 1000
    end
    object adsAOEOlkz: TMemoField
      DisplayLabel = 'L'#1082#1079
      FieldName = 'lkz'
      BlobType = ftMemo
    end
    object adsAOEORPV2: TIntegerField
      DisplayLabel = #1056#1055#1042
      FieldName = 'RPV2'
    end
    object adsAOEOcomment: TMemoField
      DisplayLabel = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      FieldName = 'comment'
      BlobType = ftMemo
    end
    object adsAOEOludi: TMemoField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1080#1077
      FieldName = 'ludi'
      BlobType = ftMemo
    end
  end
  object dsAOEO: TDataSource
    DataSet = adsAOEO
    Left = 152
    Top = 144
  end
  object TBImageList1: TTBImageList
    Height = 18
    Width = 18
    Left = 112
    Top = 104
    Bitmap = {
      494C010102000400040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000001200000001002000000000004014
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000080800000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000007E000000000080808000000000000000
      0000000000000000000000007E00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000008080000000000000808000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007E0000000000808080000000
      00000000000000007E0000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000808000000000000000000000000000008080000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007E00000000000000
      000000007E000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000000000000000000000000000000000000000000080800000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007E000000
      7E00000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808000000000
      0000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000007E000000
      7E00000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000007E00000000000000
      000000007E000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808000000000000080808000000000000000000000000000000000000000
      00000000000000000000000000000000000000007E0000000000808080000000
      00000000000000007E0000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080000000000000000000000000000000000000000000000000
      000000000000000000000000000000007E000000000080808000000000000000
      0000000000000000000000007E00000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000120000000100010000000000D80000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFF000000000000000FFFFFFFF
      F000000000000000FFFFFFFFF000000000000000FDFFFFFFF000000000000000
      F8FFFC7C7000000000000000F07FFC387000000000000000E03FFE10F0000000
      00000000C21FFF01F000000000000000C70FFF83F000000000000000CF87FF83
      F000000000000000FFC3FF01F000000000000000FFE1FE10F000000000000000
      FFF1FC387000000000000000FFF9FC7C7000000000000000FFFFFFFFF0000000
      00000000FFFFFFFFF000000000000000FFFFFFFFF000000000000000FFFFFFFF
      F00000000000000000000000000000000000000000000000000000000000}
  end
  object dsType: TDataSource
    DataSet = adsType
    Left = 216
    Top = 144
  end
  object adsType: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'aoeoType'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 216
    Top = 112
    object adsTypeID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsTypename: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
  object dsType2: TDataSource
    DataSet = adsType2
    Left = 256
    Top = 144
  end
  object dsOborud: TDataSource
    DataSet = adsOborud
    Left = 296
    Top = 144
  end
  object dsLinkOborud: TDataSource
    DataSet = adsLinkOborud
    Left = 336
    Top = 144
  end
  object adsType2: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'aoeoType2'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 256
    Top = 112
    object adsType2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsType2typeid: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'typeid'
    end
    object adsType2name: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
  object adsOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'aoeoOborud'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 296
    Top = 112
    object adsOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsOborudname: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object adsOborudtype2id: TIntegerField
      FieldName = 'type2id'
    end
  end
  object adsLinkOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsLinkOborudAfterInsert
    BeforePost = adsLinkOborudBeforePost
    BeforeDelete = adsLinkOborudBeforeDelete
    OnCalcFields = adsLinkOborudCalcFields
    OnFieldChangeComplete = adsLinkOborudFieldChangeComplete
    CommandText = 'aoeoLinkOborud'
    CommandType = cmdTableDirect
    DataSource = dsAOEO
    IndexFieldNames = 'aoeoID'
    MasterFields = 'ID'
    Parameters = <>
    Left = 336
    Top = 112
    object adsLinkOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsLinkOborudaoeoID: TIntegerField
      DisplayLabel = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077
      FieldName = 'aoeoID'
    end
    object adsLinkOborudtypeid: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'typeid'
    end
    object adsLinkOborudtype2id: TIntegerField
      DisplayLabel = #1058#1080#1087' 2'
      FieldName = 'type2id'
    end
    object adsLinkOborudoborudid: TIntegerField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'oborudid'
    end
    object adsLinkOborudtypename: TStringField
      FieldKind = fkLookup
      FieldName = 'typename'
      LookupDataSet = adsType
      LookupKeyFields = 'ID'
      LookupResultField = 'name'
      KeyFields = 'typeid'
      Size = 50
      Lookup = True
    end
    object adsLinkOborudtype2name: TStringField
      FieldKind = fkLookup
      FieldName = 'type2name'
      LookupDataSet = adsType2
      LookupKeyFields = 'ID'
      LookupResultField = 'name'
      KeyFields = 'type2id'
      Size = 50
      Lookup = True
    end
    object adsLinkOborudoborudname: TStringField
      FieldKind = fkLookup
      FieldName = 'oborudname'
      LookupDataSet = adsOborud
      LookupKeyFields = 'ID'
      LookupResultField = 'name'
      KeyFields = 'oborudid'
      Size = 50
      Lookup = True
    end
    object adsLinkOborudnames: TStringField
      FieldKind = fkCalculated
      FieldName = 'names'
      Size = 200
      Calculated = True
    end
  end
  object adsZash: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'aoeoZash'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 456
    Top = 112
    object adsZashID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsZashname: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object adsZashshortname: TWideStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1088#1072#1090#1082#1086#1077
      FieldName = 'shortname'
      Size = 200
    end
  end
  object dsLinkZash: TDataSource
    Left = 416
    Top = 144
  end
  object dsZash: TDataSource
    DataSet = adsZash
    Left = 456
    Top = 144
  end
  object adsLinkZash: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsLinkZashAfterInsert
    BeforePost = adsLinkZashBeforePost
    BeforeDelete = adsLinkZashBeforeDelete
    OnFieldChangeComplete = adsLinkZashFieldChangeComplete
    CommandText = 'aoeoLinkZash'
    CommandType = cmdTableDirect
    DataSource = dsLinkOborud
    IndexFieldNames = 'aoeolinkid'
    MasterFields = 'ID'
    Parameters = <>
    Left = 416
    Top = 112
    object adsLinkZashID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsLinkZashaoeolinkid: TIntegerField
      FieldName = 'aoeolinkid'
    end
    object adsLinkZashzashid: TIntegerField
      FieldName = 'zashid'
    end
    object adsLinkZashnamezash: TStringField
      DisplayLabel = #1047#1072#1097#1080#1090#1099
      FieldKind = fkLookup
      FieldName = 'namezash'
      LookupDataSet = adsZash
      LookupKeyFields = 'ID'
      LookupResultField = 'name'
      KeyFields = 'zashid'
      Size = 1000
      Lookup = True
    end
  end
end
