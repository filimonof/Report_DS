inherited frmAOTO: TfrmAOTO
  Left = 260
  Top = 209
  ActiveControl = cxGrid1
  Caption = #1040#1074#1072#1088#1080#1081#1085#1099#1077' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103' '#1101#1085#1077#1088#1075#1077#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
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
      DataController.DataSource = dsLinkOborud
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
      DataController.DataSource = dsAOTO
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.NewItemRowInfoText = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1091#1102
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'date'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 77
        Options.Filtering = False
        Options.HorzSizing = False
        SortIndex = 0
        SortOrder = soDescending
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        MinWidth = 60
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'protect'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Options.Filtering = False
        Width = 111
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'about'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ScrollBars = ssVertical
        Options.Filtering = False
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'timeon'
        PropertiesClassName = 'TcxTimeEditProperties'
        Properties.TimeFormat = tfHourMin
        Options.Filtering = False
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn
        Caption = #8470
        DataBinding.FieldName = 'ID'
        Visible = False
        Options.Filtering = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'oborudstr'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Properties.WordWrap = False
        Options.Editing = False
        Options.Filtering = False
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1dateon: TcxGridDBBandedColumn
        DataBinding.FieldName = 'dateon'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = []
        Properties.SaveTime = False
        Properties.ShowTime = False
        MinWidth = 80
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn
        DataBinding.FieldName = 'oborudstr'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBBandedTableView1DBBandedColumn6PropertiesButtonClick
        Options.Filtering = False
        Options.ShowEditButtons = isebAlways
        Options.HorzSizing = False
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
        IsCaptionAssigned = True
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
    Top = 96
  end
  object dsAOTO: TDataSource
    DataSet = adsAOTO
    Left = 216
    Top = 144
  end
  object adsAOTO: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsAOTOAfterInsert
    AfterEdit = adsAOTOAfterEdit2
    BeforePost = adsAOTOBeforePost
    AfterPost = adsAOTOAfterEdit2
    AfterCancel = adsAOTOAfterEdit2
    BeforeDelete = adsAOTOBeforeDelete
    OnFieldChangeComplete = adsAOTOFieldChangeComplete
    CommandText = 'aoTeplOb'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 216
    Top = 112
    object adsAOTOID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsAOTOdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsAOTOtime: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103
      FieldName = 'time'
    end
    object adsAOTOprotect: TMemoField
      DisplayLabel = #1047#1072#1097#1080#1090#1072
      FieldName = 'protect'
      BlobType = ftMemo
    end
    object adsAOTOabout: TMemoField
      DisplayLabel = #1055#1088#1080#1095#1080#1085#1072' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'about'
      BlobType = ftMemo
    end
    object adsAOTOtimeon: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'timeon'
    end
    object adsAOTOoborudstr: TWideStringField
      FieldName = 'oborudstr'
      Size = 1000
    end
    object adsAOTOdateon: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1074#1082#1083#1102#1095#1077#1085#1080#1103
      FieldName = 'dateon'
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    Left = 312
    Top = 112
  end
  object adsLinkOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    BeforePost = adsLinkOborudBeforePost
    CommandText = 
      'SELECT '#13#10'aotoLinkOborud.ID, aotoLinkOborud.aoTeplObID, '#13#10'aotoObo' +
      'rud.name,  aotoCompany.name,  '#13#10'aotoCompany.name+'#39'  : '#39'+aotoObor' +
      'ud.name AS [fullname] , aotoLinkOborud.oborudid '#13#10'FROM aotoLinkO' +
      'borud, aotoCompany,  aotoOborud '#13#10' WHERE aotoCompany.ID=aotoObor' +
      'ud.companyid and '#13#10' aotoOborud.ID=aotoLinkOborud.oborudid '
    DataSource = dsAOTO
    IndexFieldNames = 'aoTeplObID'
    MasterFields = 'ID'
    Parameters = <>
    Left = 184
    Top = 112
    object adsLinkOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsLinkOborudaoTeplObID: TIntegerField
      FieldName = 'aoTeplObID'
    end
    object adsLinkOborudfullname: TWideStringField
      FieldName = 'fullname'
      ReadOnly = True
      Size = 255
    end
    object adsLinkOborudoborudid: TIntegerField
      FieldName = 'oborudid'
    end
  end
  object dsLinkOborud: TDataSource
    DataSet = adsLinkOborud
    Left = 184
    Top = 144
  end
  object adsCompany: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'aotoCompany'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 112
    Top = 112
    object adsCompanyID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsCompanyname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object adsOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsOborudAfterInsert
    CommandText = 'aotoOborud'
    CommandType = cmdTableDirect
    DataSource = dsCompany
    IndexFieldNames = 'companyid'
    MasterFields = 'ID'
    Parameters = <>
    Left = 144
    Top = 112
    object adsOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsOborudcompanyid: TIntegerField
      FieldName = 'companyid'
    end
    object adsOborudname: TWideStringField
      FieldName = 'name'
      Size = 50
    end
  end
  object dsOborud: TDataSource
    DataSet = adsOborud
    Left = 144
    Top = 144
  end
  object dsCompany: TDataSource
    DataSet = adsCompany
    Left = 112
    Top = 144
  end
end
