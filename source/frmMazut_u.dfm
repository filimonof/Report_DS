inherited frmMazut: TfrmMazut
  Left = 255
  Top = 334
  Width = 654
  Height = 384
  ActiveControl = cxGrid1
  Caption = #1052#1072#1079#1091#1090
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Top = 328
    Width = 646
  end
  inherited TBXDock1: TTBXDock
    Width = 646
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1052#1072#1079#1091#1090
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      FullSize = True
      Images = ilSmallIcons
      TabOrder = 0
      object TBXLabelItem2: TTBXLabelItem
        Caption = '   '#1052#1077#1089#1103#1094
      end
      object TBControlItem1: TTBControlItem
        Control = cbiMonth
      end
      object TBXLabelItem1: TTBXLabelItem
        Caption = '   '#1043#1086#1076
      end
      object TBControlItem2: TTBControlItem
        Control = seiYear
      end
      object TBXLabelItem3: TTBXLabelItem
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
  end
  inherited TBXDock2: TTBXDock
    Top = 278
    Width = 646
    Height = 50
    object TBXToolbar2: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1052#1072#1079#1091#1090
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpBottom]
      DockMode = dmCannotFloat
      DockPos = 0
      FullSize = True
      TabOrder = 0
      object TBXLabelItem10: TTBXLabelItem
        Caption = ' '#1047#1072#1076#1072#1085#1080#1077'       : '
      end
      object TBXLabelItem8: TTBXLabelItem
        Caption = #1052#1043#1050
      end
      object TBControlItem7: TTBControlItem
        Control = seMGK
      end
      object TBSeparatorItem2: TTBSeparatorItem
      end
      object TBXLabelItem4: TTBXLabelItem
        Caption = #1058#1069#1062'-3 '
      end
      object TBControlItem3: TTBControlItem
        Control = seTEC3
      end
      object TBXSeparatorItem2: TTBXSeparatorItem
      end
      object TBXLabelItem5: TTBXLabelItem
        Caption = #1058#1069#1062'-2'
      end
      object TBControlItem4: TTBControlItem
        Control = seTEC2
      end
      object TBSeparatorItem1: TTBSeparatorItem
      end
      object TBXLabelItem9: TTBXLabelItem
        Caption = #1052#1058#1057#1050
      end
      object TBControlItem8: TTBControlItem
        Control = seMTSK
      end
      object TBXSeparatorItem4: TTBXSeparatorItem
      end
      object TBXLabelItem6: TTBXLabelItem
        Caption = #1057#1047#1050
      end
      object TBControlItem5: TTBControlItem
        Control = seSZK
      end
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXLabelItem7: TTBXLabelItem
        Caption = #1050#1062
      end
      object TBControlItem6: TTBControlItem
        Control = seKC
      end
      object seTEC3: TcxSpinEdit
        Left = 193
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seTEC3PropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Width = 55
      end
      object seTEC2: TcxSpinEdit
        Left = 286
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seTEC2PropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Width = 55
      end
      object seSZK: TcxSpinEdit
        Left = 458
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seSZKPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Width = 55
      end
      object seKC: TcxSpinEdit
        Left = 535
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seKCPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Width = 55
      end
      object seMGK: TcxSpinEdit
        Left = 97
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seMGKPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 4
        Width = 55
      end
      object seMTSK: TcxSpinEdit
        Left = 376
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seMTSKPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 5
        Width = 55
      end
    end
    object TBXToolbar3: TTBXToolbar
      Left = 0
      Top = 25
      Caption = #1052#1072#1079#1091#1090
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpBottom]
      DockMode = dmCannotFloat
      DockPos = 0
      DockRow = 2
      FullSize = True
      TabOrder = 1
      object TBXLabelItem11: TTBXLabelItem
        Caption = ' '#1057#1083#1077#1076'. '#1084#1077#1089#1103#1094' : '
      end
      object TBXLabelItem12: TTBXLabelItem
        Caption = #1052#1043#1050
      end
      object TBControlItem9: TTBControlItem
        Control = seMGKnext
      end
      object TBSeparatorItem3: TTBSeparatorItem
      end
      object TBXLabelItem13: TTBXLabelItem
        Caption = #1058#1069#1062'-3 '
      end
      object TBControlItem10: TTBControlItem
        Control = seTEC3next
      end
      object TBXSeparatorItem5: TTBXSeparatorItem
      end
      object TBXLabelItem14: TTBXLabelItem
        Caption = #1058#1069#1062'-2'
      end
      object TBControlItem11: TTBControlItem
        Control = seTEC2next
      end
      object TBSeparatorItem4: TTBSeparatorItem
      end
      object TBXLabelItem15: TTBXLabelItem
        Caption = #1052#1058#1057#1050
      end
      object TBControlItem12: TTBControlItem
        Control = seMTSKnext
      end
      object TBXSeparatorItem6: TTBXSeparatorItem
      end
      object TBXLabelItem16: TTBXLabelItem
        Caption = #1057#1047#1050
      end
      object TBControlItem13: TTBControlItem
        Control = seSZKnext
      end
      object TBXSeparatorItem7: TTBXSeparatorItem
      end
      object TBXLabelItem17: TTBXLabelItem
        Caption = #1050#1062
      end
      object TBControlItem14: TTBControlItem
        Control = seKCnext
      end
      object seTEC3next: TcxSpinEdit
        Left = 194
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seTEC3nextPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Width = 55
      end
      object seTEC2next: TcxSpinEdit
        Left = 287
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seTEC2nextPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Width = 55
      end
      object seSZKnext: TcxSpinEdit
        Left = 459
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seSZKnextPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Width = 55
      end
      object seKCnext: TcxSpinEdit
        Left = 536
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seKCnextPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Width = 55
      end
      object seMGKnext: TcxSpinEdit
        Left = 98
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seMGKnextPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 4
        Width = 55
      end
      object seMTSKnext: TcxSpinEdit
        Left = 377
        Top = 0
        Properties.ValueType = vtFloat
        Properties.OnChange = seMTSKnextPropertiesChange
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 5
        Width = 55
      end
    end
  end
  inherited TBXDock3: TTBXDock
    Top = 28
    Height = 250
  end
  inherited TBXDock4: TTBXDock
    Left = 637
    Top = 28
    Height = 250
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 28
    Width = 628
    Height = 250
    Align = alClient
    TabOrder = 5
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
      DataController.DataSource = dsValueMazut
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = ' '#1055#1088#1080#1093#1086#1076' = 0.000'
          Kind = skSum
          FieldName = 'prihod'
          Column = cxGrid1DBTableView1DBColumn3
        end
        item
          Format = '   '#1056#1072#1089#1093#1086#1076' = 0.000 '
          Kind = skSum
          FieldName = 'rashod'
          Column = cxGrid1DBTableView1DBColumn4
        end
        item
          Format = '  '#1054#1089#1090#1072#1090#1086#1082' = 0.000'
          Kind = skMax
          FieldName = 'ost'
          Column = cxGrid1DBTableView1DBColumn7
        end>
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
        DataBinding.FieldName = 'date'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        SortIndex = 0
        SortOrder = soAscending
      end
      object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'objectid'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListSource = dsObject
        Options.Editing = False
        SortIndex = 1
        SortOrder = soDescending
        Width = 71
      end
      object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'prihod'
        Width = 74
      end
      object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'rashod'
        Width = 76
      end
      object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'estub'
        Width = 87
      end
      object cxGrid1DBTableView1DBColumn6: TcxGridDBColumn
        DataBinding.FieldName = 'korr'
        Width = 85
      end
      object cxGrid1DBTableView1DBColumn7: TcxGridDBColumn
        DataBinding.FieldName = 'ost'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object adsValueMazut: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    AfterPost = adsValueMazutAfterPost
    OnCalcFields = adsValueMazutCalcFields
    OnFieldChangeComplete = adsValueMazutFieldChangeComplete
    CommandText = 'mValue'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 152
    Top = 128
    object adsValueMazutID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsValueMazutdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsValueMazutobjectid: TIntegerField
      DisplayLabel = #1057#1090#1072#1085#1094#1080#1103
      FieldName = 'objectid'
    end
    object adsValueMazutprihod: TFloatField
      DisplayLabel = #1055#1088#1080#1093#1086#1076
      FieldName = 'prihod'
    end
    object adsValueMazutrashod: TFloatField
      DisplayLabel = #1056#1072#1089#1093#1086#1076
      FieldName = 'rashod'
    end
    object adsValueMazutestub: TFloatField
      DisplayLabel = #1045#1089#1090'.'#1091#1073#1099#1090#1082#1080
      FieldName = 'estub'
    end
    object adsValueMazutkorr: TFloatField
      DisplayLabel = #1050#1086#1088#1088#1077#1082#1094#1080#1103
      FieldName = 'korr'
    end
    object adsValueMazutost: TFloatField
      DisplayLabel = #1054#1089#1090#1072#1090#1086#1082
      FieldKind = fkCalculated
      FieldName = 'ost'
      Calculated = True
    end
  end
  object dsValueMazut: TDataSource
    DataSet = adsValueMazut
    Left = 152
    Top = 160
  end
  object adsObject: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'mObject'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 112
    Top = 128
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
  object dsObject: TDataSource
    DataSet = adsObject
    Left = 112
    Top = 160
  end
  object adsPlanParam: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnFieldChangeComplete = adsPlanParamFieldChangeComplete
    CommandText = 'mPlanParam'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 192
    Top = 128
    object adsPlanParamid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsPlanParammonth: TIntegerField
      FieldName = 'month'
    end
    object adsPlanParamyear: TIntegerField
      FieldName = 'year'
    end
    object adsPlanParamtec3: TFloatField
      FieldName = 'tec3'
    end
    object adsPlanParamtec2: TFloatField
      FieldName = 'tec2'
    end
    object adsPlanParamSZC: TFloatField
      FieldName = 'SZC'
    end
    object adsPlanParamKC: TFloatField
      FieldName = 'KC'
    end
    object adsPlanParamMGK: TFloatField
      DisplayLabel = #1052#1043#1050
      FieldName = 'MGK'
    end
    object adsPlanParamMTSK: TFloatField
      DisplayLabel = #1052#1058#1057#1050
      FieldName = 'MTSK'
    end
    object adsPlanParamtec3next: TFloatField
      FieldName = 'tec3next'
    end
    object adsPlanParamtec2next: TFloatField
      FieldName = 'tec2next'
    end
    object adsPlanParamSZCnext: TFloatField
      FieldName = 'SZCnext'
    end
    object adsPlanParamKCnext: TFloatField
      FieldName = 'KCnext'
    end
    object adsPlanParamMGKnext: TFloatField
      FieldName = 'MGKnext'
    end
    object adsPlanParamMTSKnext: TFloatField
      FieldName = 'MTSKnext'
    end
  end
end
