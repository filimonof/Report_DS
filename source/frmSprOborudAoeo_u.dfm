inherited frmSprOborudAoeo: TfrmSprOborudAoeo
  Left = 284
  Top = 250
  Width = 714
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1101#1083#1077#1082#1090#1088#1086#1090#1077#1093#1085#1080#1095#1077#1089#1082#1086#1075#1086' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Width = 706
  end
  inherited TBXDock1: TTBXDock
    Width = 706
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
  inherited TBXDock2: TTBXDock
    Width = 706
  end
  inherited TBXDock3: TTBXDock
    Top = 50
    Height = 232
  end
  inherited TBXDock4: TTBXDock
    Left = 697
    Top = 50
    Height = 232
  end
  object Panel1: TPanel [5]
    Left = 0
    Top = 28
    Width = 706
    Height = 22
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object cxLabel1: TcxLabel
      Left = 10
      Top = 2
      Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      Style.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel2: TPanel [6]
    Left = 9
    Top = 50
    Width = 320
    Height = 232
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 6
    object cxGrid1: TcxGrid
      Left = 0
      Top = 37
      Width = 320
      Height = 195
      Align = alClient
      TabOrder = 0
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
        DataController.DataSource = dsType2
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
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 0
      Top = 0
      Align = alTop
      Caption = ' '#1058#1080#1087' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '
      ItemIndex = 0
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = #1042#1099#1089#1086#1082#1086#1074#1086#1083#1100#1090#1085#1072#1103' '#1083#1080#1085#1080#1103
        end
        item
          Caption = #1055#1086#1076#1089#1090#1072#1085#1094#1080#1103
        end>
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      OnClick = cxRadioGroup1Click
      Height = 37
      Width = 320
    end
  end
  object cxSplitter1: TcxSplitter [7]
    Left = 329
    Top = 50
    Width = 8
    Height = 232
    HotZoneClassName = 'TcxXPTaskBarStyle'
    Control = Panel2
  end
  object cxGrid2: TcxGrid [8]
    Left = 337
    Top = 50
    Width = 360
    Height = 232
    Align = alClient
    TabOrder = 8
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid2DBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dsOborud
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid2DBTableView1name: TcxGridDBColumn
        DataBinding.FieldName = 'name'
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object adsType2: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsType2AfterInsert
    BeforeDelete = adsType2BeforeDelete
    AfterScroll = adsType2AfterScroll
    OnFieldChangeComplete = adsType2FieldChangeComplete
    CommandText = 'aoeoType2'
    CommandType = cmdTableDirect
    DataSource = dsType
    IndexFieldNames = 'typeid'
    MasterFields = 'ID'
    Parameters = <>
    Left = 241
    Top = 143
    object adsType2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsType2typeid: TIntegerField
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
    AfterInsert = adsOborudAfterInsert
    BeforeDelete = adsOborudBeforeDelete
    AfterScroll = adsOborudAfterScroll
    OnFieldChangeComplete = adsOborudFieldChangeComplete
    CommandText = 'aoeoOborud'
    CommandType = cmdTableDirect
    DataSource = dsType2
    IndexFieldNames = 'type2id'
    MasterFields = 'ID'
    Parameters = <>
    Left = 360
    Top = 144
    object adsOborudID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsOborudname: TWideStringField
      DisplayLabel = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object adsOborudtype2id: TIntegerField
      FieldName = 'type2id'
    end
  end
  object dsType2: TDataSource
    DataSet = adsType2
    Left = 241
    Top = 111
  end
  object dsOborud: TDataSource
    DataSet = adsOborud
    Left = 360
    Top = 112
  end
  object dsType: TDataSource
    DataSet = adsType
    Left = 273
    Top = 50
  end
  object adsType: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'aoeoType'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 305
    Top = 50
    object adsTypeID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsTypename: TWideStringField
      DisplayLabel = #1058#1080#1087
      FieldName = 'name'
      Size = 50
    end
  end
end
