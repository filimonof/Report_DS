inherited frmTeplo: TfrmTeplo
  Left = 313
  Top = 185
  Caption = #1058#1077#1087#1083#1086
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited TBXDock1: TTBXDock
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1058#1077#1087#1083#1086
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
      object TBXLabelItem3: TTBXLabelItem
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
        Properties.OnChange = TBXItem1Click
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Width = 57
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
  object cxPageControl1: TcxPageControl [5]
    Left = 9
    Top = 28
    Width = 536
    Height = 254
    ActivePage = cxTabSheet1
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    TabOrder = 5
    ClientRectBottom = 254
    ClientRectRight = 536
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = ' '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 536
        Height = 230
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTeploFact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTeploFact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Bands = <
            item
              Caption = #1044#1072#1090#1072
              Width = 70
            end
            item
              Caption = #1058#1069#1062'-2'
              Width = 102
            end
            item
              Caption = #1058#1069#1062'-3'
              Width = 110
            end
            item
              Caption = #1062#1050
              Width = 98
            end
            item
              Caption = #1048#1090#1086#1075#1086
              Width = 148
            end>
          object cxGrid1DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'date'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn
            Caption = #1089' '#1087#1072#1088#1086#1084
            DataBinding.FieldName = 'tec2_par'
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn
            Caption = #1089' '#1074#1086#1076#1086#1081
            DataBinding.FieldName = 'tec2_voda'
            Width = 53
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn
            Caption = #1089' '#1087#1072#1088#1086#1084
            DataBinding.FieldName = 'tec3_par'
            Width = 58
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn
            Caption = #1089' '#1074#1086#1076#1086#1081
            DataBinding.FieldName = 'tec3_voda'
            Width = 56
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn
            Caption = #1089' '#1087#1072#1088#1086#1084
            DataBinding.FieldName = 'CK_par'
            Width = 52
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn
            Caption = #1089' '#1074#1086#1076#1086#1081
            DataBinding.FieldName = 'CK_voda'
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn
            DataBinding.FieldName = 'itPar'
            Options.Editing = False
            Width = 44
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn9: TcxGridDBBandedColumn
            DataBinding.FieldName = 'itVoda'
            Options.Editing = False
            Width = 49
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1DBBandedColumn10: TcxGridDBBandedColumn
            DataBinding.FieldName = 'itItogo'
            Options.Editing = False
            Width = 60
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' '#1055#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      ImageIndex = 1
      object TBXDock5: TTBXDock
        Left = 0
        Top = 0
        Width = 536
        Height = 28
        object tbOK: TTBXToolbar
          Left = 0
          Top = 0
          Caption = #1087#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
          ChevronMoveItems = False
          CloseButton = False
          DockableTo = [dpBottom]
          DockMode = dmCannotFloat
          DockPos = 8
          FullSize = True
          TabOrder = 0
          object TBXLabelItem5: TTBXLabelItem
            Caption = ' '#1089' '
          end
          object TBControlItem4: TTBControlItem
            Control = cbDay1
          end
          object TBXLabelItem6: TTBXLabelItem
            Caption = ' '#1087#1086
          end
          object TBControlItem9: TTBControlItem
            Control = cbDay2
          end
          object TBXLabelItem11: TTBXLabelItem
            Caption = ' '#1082#1086#1101#1092#1092#1080#1094#1077#1085#1090
          end
          object TBXLabelItem12: TTBXLabelItem
            Caption = ' '#1074#1074#1077#1089#1090#1080' '
          end
          object TBControlItem11: TTBControlItem
            Control = teValue
          end
          object TBXLabelItem13: TTBXLabelItem
            Caption = '  '
          end
          object TBXItem3: TTBXItem
            Caption = #1054#1050
            DisplayMode = nbdmImageAndText
            ImageIndex = 9
            Images = ilSmallIcons
            OnClick = TBXItem3Click
          end
          object cbDay1: TcxComboBox
            Left = 12
            Top = 1
            Properties.DropDownListStyle = lsFixedList
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 62
          end
          object cbDay2: TcxComboBox
            Left = 90
            Top = 1
            Properties.DropDownListStyle = lsFixedList
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 63
          end
          object teValue: TcxSpinEdit
            Left = 262
            Top = 1
            Properties.ValueType = vtFloat
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 70
          end
        end
      end
      object TBXDock6: TTBXDock
        Left = 0
        Top = 205
        Width = 536
        Height = 25
        Position = dpBottom
        object TBXToolbar2: TTBXToolbar
          Left = 0
          Top = 0
          Caption = #1055#1083#1072#1085' '#1090#1077#1087#1083#1072
          ChevronMoveItems = False
          CloseButton = False
          DockableTo = [dpTop, dpBottom]
          DockMode = dmCannotFloat
          FullSize = True
          TabOrder = 0
          object TBXLabelItem4: TTBXLabelItem
            Caption = '  '#1055#1083#1072#1085'  '
          end
          object TBControlItem3: TTBControlItem
            Control = sePlan
          end
          object sePlan: TcxSpinEdit
            Left = 38
            Top = 0
            Properties.ValueType = vtFloat
            Properties.OnChange = sePlanPropertiesChange
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 83
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 28
        Width = 536
        Height = 177
        Align = alClient
        TabOrder = 2
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
          DataController.DataSource = saTeploPlan
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
          object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'date'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 122
          end
          object cxGrid2DBTableView1DBColumn2: TcxGridDBColumn
            Caption = #1050#1086#1101#1092#1092#1080#1094#1077#1085#1090
            DataBinding.FieldName = 'koef'
            HeaderAlignmentHorz = taCenter
            Width = 199
          end
          object cxGrid2DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'value'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 207
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 72
    Top = 120
  end
  object adsTeploFact: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnCalcFields = adsTeploFactCalcFields
    OnFieldChangeComplete = adsTeploFactFieldChangeComplete
    CommandText = 'tFactValue'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 104
    Top = 152
    object adsTeploFactid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object adsTeploFactdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsTeploFacttec2_par: TFloatField
      DisplayLabel = #1058#1069#1062'-2 '#1089' '#1087#1072#1088#1086#1084
      FieldName = 'tec2_par'
    end
    object adsTeploFacttec2_voda: TFloatField
      DisplayLabel = #1058#1069#1062'-2 '#1089' '#1074#1086#1076#1086#1081
      FieldName = 'tec2_voda'
    end
    object adsTeploFacttec3_par: TFloatField
      DisplayLabel = #1058#1069#1062'-3 '#1089' '#1087#1072#1088#1086#1084
      FieldName = 'tec3_par'
    end
    object adsTeploFacttec3_voda: TFloatField
      DisplayLabel = #1058#1069#1062'-3 '#1089' '#1074#1086#1076#1086#1081
      FieldName = 'tec3_voda'
    end
    object adsTeploFactCK_par: TFloatField
      DisplayLabel = #1062#1050' '#1089' '#1087#1072#1088#1086#1084
      FieldName = 'CK_par'
    end
    object adsTeploFactCK_voda: TFloatField
      DisplayLabel = #1062#1050' '#1089' '#1074#1086#1076#1086#1081
      FieldName = 'CK_voda'
    end
    object adsTeploFactitPar: TFloatField
      DisplayLabel = #1089' '#1087#1072#1088#1086#1084
      FieldKind = fkCalculated
      FieldName = 'itPar'
      Calculated = True
    end
    object adsTeploFactitVoda: TFloatField
      DisplayLabel = #1089' '#1074#1086#1076#1086#1081
      FieldKind = fkCalculated
      FieldName = 'itVoda'
      Calculated = True
    end
    object adsTeploFactitItogo: TFloatField
      DisplayLabel = #1080#1090#1086#1075#1086
      FieldKind = fkCalculated
      FieldName = 'itItogo'
      Calculated = True
    end
  end
  object adsTeploPlan: TADODataSet
    Connection = dmData.adcData
    OnFieldChangeComplete = adsTeploPlanFieldChangeComplete
    CommandText = 'tPlanValue'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 136
    Top = 152
    object adsTeploPlanid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object adsTeploPlandate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsTeploPlankoef: TFloatField
      DisplayLabel = #1050
      FieldName = 'koef'
      OnChange = adsTeploPlankoefChange
    end
    object adsTeploPlanvalue: TFloatField
      DisplayLabel = #1047#1085#1072#1095#1077#1085#1080#1077
      FieldName = 'value'
    end
  end
  object adsPlanParam: TADODataSet
    Connection = dmData.adcData
    OnFieldChangeComplete = adsPlanParamFieldChangeComplete
    CommandText = 'tPlanParam'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 168
    Top = 152
    object adsPlanParamid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object adsPlanParammonth: TIntegerField
      DisplayLabel = #1084#1077#1089#1103#1094
      FieldName = 'month'
    end
    object adsPlanParamyear: TIntegerField
      DisplayLabel = #1075#1086#1076
      FieldName = 'year'
    end
    object adsPlanParamparam: TFloatField
      DisplayLabel = #1087#1072#1088#1072#1084#1077#1090#1088
      FieldName = 'param'
    end
  end
  object dsTeploFact: TDataSource
    DataSet = adsTeploFact
    Left = 104
    Top = 120
  end
  object saTeploPlan: TDataSource
    DataSet = adsTeploPlan
    Left = 136
    Top = 120
  end
end
