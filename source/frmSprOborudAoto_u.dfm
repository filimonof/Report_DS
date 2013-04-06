inherited frmSprOborudAoto: TfrmSprOborudAoto
  Left = 265
  Top = 212
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1101#1085#1077#1088#1075#1077#1090#1080#1095#1077#1089#1082#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '
  OldCreateOrder = True
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
      object TBXItem2: TTBXItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        DisplayMode = nbdmImageAndText
        ImageIndex = 0
        OnClick = TBXItem2Click
      end
    end
  end
  inherited TBXDock3: TTBXDock
    Top = 53
    Height = 229
  end
  inherited TBXDock4: TTBXDock
    Top = 53
    Height = 229
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 53
    Width = 264
    Height = 229
    Align = alLeft
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
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsAotoCompany
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        SortIndex = 0
        SortOrder = soAscending
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxSplitter1: TcxSplitter [6]
    Left = 273
    Top = 53
    Width = 8
    Height = 229
    HotZoneClassName = 'TcxXPTaskBarStyle'
    MinSize = 100
    Control = cxGrid1
  end
  object cxGrid2: TcxGrid [7]
    Left = 281
    Top = 53
    Width = 264
    Height = 229
    Align = alClient
    TabOrder = 7
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsAotoOborud
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGridDBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel1: TPanel [8]
    Left = 0
    Top = 28
    Width = 554
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 8
    object cxLabel1: TcxLabel
      Left = 8
      Top = 3
      Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
    end
  end
  object dsAotoCompany: TDataSource
    DataSet = adsAotoCompany
    Left = 144
    Top = 88
  end
  object dsAotoOborud: TDataSource
    DataSet = adsAotoOborud
    Left = 344
    Top = 88
  end
  object adsAotoCompany: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsAotoCompanyAfterInsert
    BeforeDelete = adsAotoCompanyBeforeDelete
    AfterScroll = adsAotoOborudAfterScroll
    OnFieldChangeComplete = adsAotoCompanyFieldChangeComplete
    CommandText = 'aotoCompany'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 144
    Top = 120
    object adsAotoCompanyID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsAotoCompanyname: TWideStringField
      DisplayLabel = #1050#1086#1084#1087#1072#1085#1080#1103
      FieldName = 'name'
      Size = 50
    end
  end
  object adsAotoOborud: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsAotoOborudAfterInsert
    BeforeDelete = adsAotoOborudBeforeDelete
    AfterScroll = adsAotoOborudAfterScroll
    OnFieldChangeComplete = adsAotoOborudFieldChangeComplete
    CommandText = 'aotoOborud'
    CommandType = cmdTableDirect
    DataSource = dsAotoCompany
    IndexFieldNames = 'companyid'
    MasterFields = 'ID'
    Parameters = <>
    Left = 344
    Top = 120
    object adsAotoOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsAotoOborudcompanyid: TIntegerField
      FieldName = 'companyid'
    end
    object adsAotoOborudname: TWideStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
end
