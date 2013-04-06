inherited frmAO_610: TfrmAO_610
  Left = 285
  Top = 229
  Width = 869
  Height = 408
  Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1103' '#1074' '#1089#1077#1090#1080' 6 - 10 '#1082#1042
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Top = 352
    Width = 861
  end
  inherited TBXDock1: TTBXDock
    Width = 861
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
    Top = 324
    Width = 861
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
    Height = 296
  end
  inherited TBXDock4: TTBXDock
    Left = 852
    Top = 28
    Height = 296
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 28
    Width = 843
    Height = 296
    Align = alClient
    TabOrder = 5
    TabStop = False
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
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
      DataController.DetailKeyFieldNames = 'aoTeplObID'
      DataController.KeyFieldNames = 'ID'
      DataController.MasterKeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Navigator = True
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.NewItemRowSeparatorWidth = 2
      object cxGrid1DBTableView2DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'nameoborud'
        PropertiesClassName = 'TcxPopupEditProperties'
      end
      object cxGrid1DBTableView2DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'aoTeplObID'
        Visible = False
      end
      object cxGrid1DBTableView2DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object cxGrid1DBTableView2DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
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
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsAO6_10
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'fiderov_na_6'
          Column = cxGrid1DBBandedTableView1fiderov_na_6
        end
        item
          Kind = skSum
          FieldName = 'fiderov_sum'
          Column = cxGrid1DBBandedTableView1fiderov_sum
        end
        item
          Kind = skSum
          FieldName = 'hoz_na_6'
          Column = cxGrid1DBBandedTableView1hoz_na_6
        end
        item
          Kind = skSum
          FieldName = 'hoz_sum'
          Column = cxGrid1DBBandedTableView1hoz_sum
        end
        item
          Kind = skSum
          FieldName = 'NP_na_6'
          Column = cxGrid1DBBandedTableView1NP_na_6
        end
        item
          Kind = skSum
          FieldName = 'NP_sum'
          Column = cxGrid1DBBandedTableView1NP_sum
        end
        item
          Kind = skSum
          FieldName = 'TP_na_6'
          Column = cxGrid1DBBandedTableView1TP_na_6
        end
        item
          Kind = skSum
          FieldName = 'TP_sum'
          Column = cxGrid1DBBandedTableView1TP_sum
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableView1Column4
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableView1Column5
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableView1Column6
        end
        item
          Kind = skSum
          Column = cxGrid1DBBandedTableView1Column7
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.NewItemRowInfoText = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102
      Bands = <
        item
          Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1077
          Options.Moving = False
          Options.Sizing = False
          Width = 130
        end
        item
          Options.Moving = False
          Options.Sizing = False
          Width = 65
        end
        item
          Caption = #1060#1080#1076#1077#1088#1086#1074
          Options.Moving = False
          Options.Sizing = False
          Width = 97
        end
        item
          Caption = #1058#1055
          Options.Moving = False
          Options.Sizing = False
          Width = 92
        end
        item
          Caption = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074
          Options.Moving = False
          Options.Sizing = False
          Width = 123
        end
        item
          Caption = #1061#1086#1079#1103#1081#1089#1090#1074
          Options.Moving = False
          Options.Sizing = False
          Width = 90
        end
        item
          Caption = #1053#1072#1089#1077#1083#1077#1085#1080#1077
          Options.Moving = False
          Options.Sizing = False
          Width = 90
        end
        item
          Caption = #1052#1086#1097#1085#1086#1089#1090#1100
          Options.Moving = False
          Options.Sizing = False
          Width = 130
        end
        item
          Caption = #1042#1082#1083#1102#1095#1077#1085#1080#1077
          Options.Moving = False
          Options.Sizing = False
          Width = 130
        end
        item
          Options.Moving = False
          Width = 80
        end>
      object cxGrid1DBBandedTableView1data: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'data'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        Caption = #1042#1088#1077#1084#1103
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1pes_id: TcxGridDBBandedColumn
        Caption = #1055#1054
        DataBinding.FieldName = 'pes_id'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTypePES
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fiderov_sum: TcxGridDBBandedColumn
        Caption = #1042#1089#1077#1075#1086
        DataBinding.FieldName = 'fiderov_sum'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1fiderov_na_6: TcxGridDBBandedColumn
        Caption = #1053#1072' 6:00'
        DataBinding.FieldName = 'fiderov_na_6'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1TP_sum: TcxGridDBBandedColumn
        Caption = #1042#1089#1077#1075#1086
        DataBinding.FieldName = 'TP_sum'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1TP_na_6: TcxGridDBBandedColumn
        Caption = #1053#1072' 6:00'
        DataBinding.FieldName = 'TP_na_6'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1NP_sum: TcxGridDBBandedColumn
        Caption = #1042#1089#1077#1075#1086
        DataBinding.FieldName = 'NP_sum'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1NP_na_6: TcxGridDBBandedColumn
        Caption = #1053#1072' 6:00'
        DataBinding.FieldName = 'NP_na_6'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1hoz_sum: TcxGridDBBandedColumn
        Caption = #1042#1089#1077#1075#1086
        DataBinding.FieldName = 'hoz_sum'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1hoz_na_6: TcxGridDBBandedColumn
        Caption = #1053#1072' 6:00'
        DataBinding.FieldName = 'hoz_na_6'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1comment: TcxGridDBBandedColumn
        DataBinding.FieldName = 'comment'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        MinWidth = 80
        Position.BandIndex = 9
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'data_v'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 8
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column3: TcxGridDBBandedColumn
        Caption = #1042#1088#1077#1084#1103
        DataBinding.FieldName = 'time_v'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 8
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column4: TcxGridDBBandedColumn
        Caption = #1042#1089#1077#1075#1086
        DataBinding.FieldName = 'ludi_sum'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column5: TcxGridDBBandedColumn
        Caption = #1053#1072' 6.00'
        DataBinding.FieldName = 'ludi_na_6'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'power_sum'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'power_na_6'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Position.BandIndex = 7
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
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
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataModeController.GridMode = True
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'companyid'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Visible = False
        GroupIndex = 0
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        SortIndex = 1
        SortOrder = soAscending
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
      Options.DetailFrameColor = clInactiveBorder
      Options.DetailFrameWidth = 2
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 48
  end
  object adsAO6_10: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsAO6_10AfterInsert
    AfterEdit = adsAO6_10AfterEdit
    BeforePost = adsAO6_10BeforePost
    AfterPost = adsAO6_10AfterEdit
    AfterCancel = adsAO6_10AfterEdit
    BeforeDelete = adsAO6_10BeforeDelete
    OnFieldChangeComplete = adsAO6_10FieldChangeComplete
    CommandText = 'ao6_10'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 80
    Top = 64
    object adsAO6_10id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsAO6_10data: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'data'
    end
    object adsAO6_10pes_id: TIntegerField
      DisplayLabel = #1055#1069#1057
      FieldName = 'pes_id'
    end
    object adsAO6_10fiderov_sum: TFloatField
      DisplayLabel = #1060#1080#1076#1077#1088#1086#1074' '#1042#1089#1077#1075#1086
      FieldName = 'fiderov_sum'
    end
    object adsAO6_10fiderov_na_6: TFloatField
      DisplayLabel = #1060#1080#1076#1077#1088#1086#1074' '#1085#1072' 6:00'
      FieldName = 'fiderov_na_6'
    end
    object adsAO6_10TP_sum: TFloatField
      DisplayLabel = #1058#1055' '#1074#1089#1077#1075#1086
      FieldName = 'TP_sum'
    end
    object adsAO6_10TP_na_6: TFloatField
      DisplayLabel = #1058#1055' '#1085#1072' 6:00'
      FieldName = 'TP_na_6'
    end
    object adsAO6_10NP_sum: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074' '#1074#1089#1077#1075#1086
      FieldName = 'NP_sum'
    end
    object adsAO6_10NP_na_6: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1085#1099#1093' '#1087#1091#1085#1082#1090#1086#1074' '#1085#1072' 6:00'
      FieldName = 'NP_na_6'
    end
    object adsAO6_10hoz_sum: TFloatField
      DisplayLabel = #1061#1086#1079#1103#1081#1089#1090#1074' '#1074#1089#1077#1075#1086
      FieldName = 'hoz_sum'
    end
    object adsAO6_10hoz_na_6: TFloatField
      DisplayLabel = #1061#1086#1079#1103#1081#1089#1090#1074' '#1085#1072' 6:00'
      FieldName = 'hoz_na_6'
    end
    object adsAO6_10comment: TMemoField
      DisplayLabel = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      FieldName = 'comment'
      BlobType = ftMemo
    end
    object adsAO6_10time: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'time'
    end
    object adsAO6_10data_v: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'data_v'
    end
    object adsAO6_10time_v: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'time_v'
    end
    object adsAO6_10ludi_sum: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1080#1077' '#1074#1089#1077#1075#1086
      FieldName = 'ludi_sum'
    end
    object adsAO6_10ludi_na_6: TFloatField
      DisplayLabel = #1053#1072#1089#1077#1083#1077#1085#1080#1077' '#1085#1072' 6.00'
      FieldName = 'ludi_na_6'
    end
    object adsAO6_10power_sum: TFloatField
      DisplayLabel = #1042#1089#1077#1075#1086
      FieldName = 'power_sum'
    end
    object adsAO6_10power_na_6: TFloatField
      DisplayLabel = #1053#1072' 6.00'
      FieldName = 'power_na_6'
    end
  end
  object dsAO6_10: TDataSource
    DataSet = adsAO6_10
    Left = 80
    Top = 96
  end
  object dsTypePES: TDataSource
    DataSet = adsTypePES
    Left = 128
    Top = 96
  end
  object adsTypePES: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'ao6_10TypePES'
    CommandType = cmdTable
    Parameters = <>
    Left = 128
    Top = 64
    object adsTypePESid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsTypePESname: TWideStringField
      DisplayLabel = #1055#1069#1057
      FieldName = 'name'
      Size = 2
    end
  end
end
