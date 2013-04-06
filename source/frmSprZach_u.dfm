inherited frmSprZach: TfrmSprZach
  Left = 282
  Top = 250
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1079#1072#1097#1080#1090
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
    Top = 28
    Height = 254
  end
  inherited TBXDock4: TTBXDock
    Top = 28
    Height = 254
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 28
    Width = 536
    Height = 254
    Align = alClient
    TabOrder = 5
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = dsZach
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1DBColumn: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 359
      end
      object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'shortname'
        Width = 146
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsZach: TDataSource
    DataSet = adsZach
    Left = 80
    Top = 64
  end
  object adsZach: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsZachAfterInsert
    BeforeDelete = adsZachBeforeDelete
    OnFieldChangeComplete = adsZachFieldChangeComplete
    CommandText = 'aoeoZash'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 120
    Top = 64
    object adsZachname: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1079#1072#1097#1080#1090#1099
      FieldName = 'name'
      Size = 200
    end
    object adsZachshortname: TWideStringField
      DisplayLabel = #1050#1086#1088#1086#1090#1082#1086#1077' '#1080#1084#1103
      FieldName = 'shortname'
      Size = 200
    end
    object adsZachID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
end
