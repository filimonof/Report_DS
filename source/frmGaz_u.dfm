inherited frmGaz: TfrmGaz
  Left = 176
  Top = 237
  Width = 572
  Caption = #1043#1072#1079
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Width = 556
  end
  inherited TBXDock1: TTBXDock
    Width = 556
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1043#1072#1079
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      FullSize = True
      Images = ilSmallIcons
      ParentShowHint = False
      ShowHint = False
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
        Left = 46
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
        Left = 173
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
    Width = 556
  end
  inherited TBXDock3: TTBXDock
    Top = 28
    Height = 250
  end
  inherited TBXDock4: TTBXDock
    Left = 547
    Top = 28
    Height = 250
  end
  object cxPageControl1: TcxPageControl [5]
    Left = 9
    Top = 28
    Width = 538
    Height = 250
    ActivePage = cxTabSheet1
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    TabOrder = 5
    ClientRectBottom = 250
    ClientRectRight = 538
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = ' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 538
        Height = 226
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          DataController.DataSource = dsFactValue
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'date'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 85
          end
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'tec2'
            Width = 113
          end
          object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'tec3'
            Width = 114
          end
          object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
            Caption = #1062#1050' G'
            DataBinding.FieldName = 'kc'
            Width = 112
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = #1062#1050' '#1051#1080#1084#1080#1090
            DataBinding.FieldName = 'kc_p'
            Width = 112
          end
          object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'itItog'
            Options.Editing = False
            Width = 114
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' '#1055#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      ImageIndex = 1
      object TBXDock5: TTBXDock
        Left = 0
        Top = 0
        Width = 538
        Height = 9
      end
      object TBXDock6: TTBXDock
        Left = 0
        Top = 198
        Width = 538
        Height = 28
        Position = dpBottom
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
          Visible = False
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
      object cxSplitter1: TcxSplitter
        Left = 318
        Top = 9
        Width = 8
        Height = 189
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salRight
        Control = cxGrid2
      end
      object cxGrid2: TcxGrid
        Left = 326
        Top = 9
        Width = 212
        Height = 189
        Align = alRight
        TabOrder = 3
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          DataController.DataSource = dsPlanValueToDay
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #1057#1091#1084#1084#1072'=0.000'
              Kind = skSum
              FieldName = 'value'
              Column = cxGrid2DBTableView1DBColumn3
            end>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'date'
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soAscending
            Width = 50
          end
          object cxGrid2DBTableView1DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'objectid'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.ListSource = dsObject
            Width = 45
          end
          object cxGrid2DBTableView1DBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'typeid'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.ListSource = dsType
            Width = 47
          end
          object cxGrid2DBTableView1DBColumn4: TcxGridDBColumn
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            DataBinding.FieldName = 'value'
            Width = 58
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 9
        Width = 318
        Height = 189
        Align = alClient
        TabOrder = 4
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid3DBTableView1: TcxGridDBTableView
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
          DataController.DataSource = dsPlanValue
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusCellOnTab = True
          OptionsCustomize.ColumnFiltering = False
          OptionsView.Navigator = True
          OptionsView.NavigatorOffset = 10
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          object cxGrid3DBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'objectid'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.ListOptions.GridLines = glNone
            Properties.ListSource = dsObject
            Visible = False
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soDescending
          end
          object cxGrid3DBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'typeid'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.ListSource = dsType
            Visible = False
            GroupIndex = 1
            SortIndex = 1
            SortOrder = soAscending
          end
          object cxGrid3DBTableView1DBColumn3: TcxGridDBColumn
            Caption = #1048#1084#1103
            DataBinding.FieldName = 'name'
            Width = 87
          end
          object cxGrid3DBTableView1DBColumn4: TcxGridDBColumn
            Caption = #1088#1072#1079#1073#1080#1090#1100' '#1089
            DataBinding.FieldName = 'date1'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DateButtons = []
            Width = 66
          end
          object cxGrid3DBTableView1DBColumn5: TcxGridDBColumn
            Caption = #1088#1072#1079#1073#1080#1090#1100' '#1087#1086
            DataBinding.FieldName = 'date2'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DateButtons = []
            Width = 73
          end
          object cxGrid3DBTableView1DBColumn6: TcxGridDBColumn
            DataBinding.FieldName = 'value'
            PropertiesClassName = 'TcxCalcEditProperties'
            Width = 62
          end
        end
        object cxGrid3Level1: TcxGridLevel
          GridView = cxGrid3DBTableView1
          MaxDetailHeight = 200
        end
      end
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 80
    Top = 112
  end
  object adsObject: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'gObject'
    CommandType = cmdTableDirect
    IndexFieldNames = 'ID'
    Parameters = <>
    Left = 208
    Top = 112
    object adsObjectID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsObjectname: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
  object adsPlanValue: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterInsert = adsPlanValueAfterInsert
    AfterEdit = adsPlanValueAfterInsert2
    BeforePost = adsPlanValueBeforePost
    AfterPost = adsPlanValueAfterPost
    AfterCancel = adsPlanValueAfterInsert2
    BeforeDelete = adsPlanValueBeforeDelete
    OnFieldChangeComplete = adsPlanValueFieldChangeComplete
    CommandText = 'gPlanValue'
    CommandType = cmdTableDirect
    IndexFieldNames = 'objectid;typeid'
    Parameters = <>
    Left = 248
    Top = 112
    object adsPlanValueID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsPlanValueobjectid: TIntegerField
      DisplayLabel = #1086#1073#1098#1077#1082#1090
      FieldName = 'objectid'
    end
    object adsPlanValuetypeid: TIntegerField
      DisplayLabel = #1090#1080#1087
      FieldName = 'typeid'
    end
    object adsPlanValuename: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object adsPlanValuedate1: TDateTimeField
      DisplayLabel = #1085#1072#1095#1072#1083#1086
      FieldName = 'date1'
    end
    object adsPlanValuedate2: TDateTimeField
      DisplayLabel = #1082#1086#1085#1077#1094
      FieldName = 'date2'
    end
    object adsPlanValuevalue: TFloatField
      DisplayLabel = #1089#1091#1084#1084#1072
      FieldName = 'value'
    end
    object adsPlanValuevalue_one: TFloatField
      DisplayLabel = #1085#1072' '#1076#1077#1085#1100
      FieldName = 'value_one'
    end
  end
  object adsType: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'gType'
    CommandType = cmdTableDirect
    IndexFieldNames = 'ID'
    Parameters = <>
    Left = 288
    Top = 112
    object adsTypeID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsTypename: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
  object dsObject: TDataSource
    DataSet = adsObject
    Left = 208
    Top = 144
  end
  object dsPlanValue: TDataSource
    DataSet = adsPlanValue
    Left = 248
    Top = 144
  end
  object dsType: TDataSource
    DataSet = adsType
    Left = 288
    Top = 144
  end
  object dsPlanValueToDay: TDataSource
    DataSet = adsPlanValueToDay
    Left = 347
    Top = 146
  end
  object adsPlanValueToDay: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'gPlanValueToDay'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 347
    Top = 114
    object adsPlanValueToDayID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsPlanValueToDayplanvalueid: TIntegerField
      DisplayLabel = #1055#1086#1089#1090#1072#1074#1082#1072
      FieldName = 'planvalueid'
    end
    object adsPlanValueToDayobjectid: TIntegerField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      FieldName = 'objectid'
    end
    object adsPlanValueToDaytypeid: TIntegerField
      DisplayLabel = #1058#1080#1087
      FieldName = 'typeid'
    end
    object adsPlanValueToDaydate: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'date'
    end
    object adsPlanValueToDayvalue: TFloatField
      DisplayLabel = #1079#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'value'
    end
  end
  object adsFactValue: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnCalcFields = adsFactValueCalcFields
    OnFieldChangeComplete = adsFactValueFieldChangeComplete
    CommandText = 'gFactValue'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 144
    Top = 114
    object adsFactValueID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsFactValuedate: TDateTimeField
      DisplayLabel = #1076#1072#1090#1072
      FieldName = 'date'
    end
    object adsFactValuetec2: TFloatField
      DisplayLabel = #1058#1069#1062'-2'
      FieldName = 'tec2'
    end
    object adsFactValuetec3: TFloatField
      DisplayLabel = #1058#1069#1062'-3'
      FieldName = 'tec3'
    end
    object adsFactValuekc: TFloatField
      DisplayLabel = #1050#1062'+'#1057#1047#1050
      FieldName = 'kc'
    end
    object adsFactValueitItog: TFloatField
      DisplayLabel = #1057#1091#1084#1084#1072
      FieldKind = fkCalculated
      FieldName = 'itItog'
      Calculated = True
    end
    object adsFactValuekc_p: TFloatField
      FieldName = 'kc_p'
    end
  end
  object dsFactValue: TDataSource
    DataSet = adsFactValue
    Left = 139
    Top = 146
  end
end
