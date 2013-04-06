inherited frmEnergo: TfrmEnergo
  Left = 259
  Top = 165
  Width = 765
  Height = 467
  Caption = #1069#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1103
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Top = 411
    Width = 757
  end
  inherited TBXDock1: TTBXDock
    Width = 757
    Height = 28
    object TBXToolbar1: TTBXToolbar
      Left = 0
      Top = 0
      Caption = #1069#1083#1077#1082#1090#1088#1086#1101#1085#1077#1088#1075#1080#1103
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      DockPos = 168
      DockRow = 1
      FullSize = True
      Images = ilSmallIcons
      TabOrder = 0
      object TBXLabelItem2: TTBXLabelItem
        Caption = '   '#1052#1077#1089#1103#1094
      end
      object TBControlItem3: TTBControlItem
        Control = cbiMonth
      end
      object TBXLabelItem1: TTBXLabelItem
        Caption = '   '#1043#1086#1076
      end
      object TBControlItem5: TTBControlItem
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
      object TBXSeparatorItem3: TTBXSeparatorItem
      end
      object TBXItem2: TTBXItem
        Caption = #1047#1072#1082#1088#1099#1090#1100
        DisplayMode = nbdmImageAndText
        GroupIndex = 1
        ImageIndex = 0
        Stretch = True
        OnClick = TBXItem2Click
      end
      object cbiMonth: TcxComboBox
        Left = 41
        Top = 1
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 12
        Properties.OnChange = TBXItem1Click
        Style.BorderStyle = ebsOffice11
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
  inherited TBXDock2: TTBXDock
    Top = 402
    Width = 757
  end
  inherited TBXDock3: TTBXDock
    Top = 28
    Height = 374
  end
  inherited TBXDock4: TTBXDock
    Left = 748
    Top = 28
    Height = 374
  end
  object cxPageControl1: TcxPageControl [5]
    Left = 9
    Top = 28
    Width = 739
    Height = 374
    ActivePage = cxTabSheet1
    Align = alClient
    HotTrack = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    MultiLine = True
    TabOrder = 5
    ClientRectBottom = 374
    ClientRectRight = 739
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = '   '#1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1077' '#1079#1085#1072#1095#1077#1085#1080#1103'  '
      ImageIndex = 0
      object cxGrid2: TcxGrid
        Left = 0
        Top = 25
        Width = 739
        Height = 325
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Appending = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1DBColumn1: TcxGridDBColumn
            SortIndex = 0
            SortOrder = soAscending
          end
          object cxGrid2DBTableView1DBColumn2: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn3: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn4: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn5: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn6: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn7: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn8: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn9: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn10: TcxGridDBColumn
          end
          object cxGrid2DBTableView1DBColumn11: TcxGridDBColumn
          end
        end
        object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsEnergoFact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.FixedBandSeparatorWidth = 1
          Bands = <
            item
              Caption = #1044#1072#1090#1072
              FixedKind = fkLeft
              Options.Moving = False
              Options.Sizing = False
              Width = 61
            end
            item
              Caption = #1058#1069#1062'-2'
              Width = 136
            end
            item
              Caption = #1043#1058' '#1058#1069#1062
              Width = 131
            end
            item
              Caption = #1058#1069#1062'-4'
              Width = 140
            end
            item
              Caption = #1052#1086#1088#1076#1086#1074#1094#1077#1084#1077#1085#1090
              Width = 140
            end
            item
              Caption = #1055#1077#1088#1077#1090#1086#1082#1080
              Width = 357
            end
            item
              Caption = #1048#1090#1086#1075#1080
              FixedKind = fkRight
              Options.Moving = False
              Options.Sizing = False
              Width = 155
            end>
          object cxGrid2DBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'date'
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn2: TcxGridDBBandedColumn
            Caption = #1042#1099#1088#1072#1073#1086#1090#1082#1072
            DataBinding.FieldName = 'tec2_v'
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn3: TcxGridDBBandedColumn
            Caption = #1057#1086#1073'. '#1085#1091#1078#1076#1099
            DataBinding.FieldName = 'tec2_sn'
            Width = 39
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn4: TcxGridDBBandedColumn
            Caption = #1042#1099#1088#1072#1073#1086#1090#1082#1072
            DataBinding.FieldName = 'tecGT_v'
            Width = 31
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn5: TcxGridDBBandedColumn
            Caption = #1057#1086#1073'.'#1085#1091#1078#1076#1099
            DataBinding.FieldName = 'tecGT_sn'
            Width = 27
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn6: TcxGridDBBandedColumn
            Caption = #1042#1099#1088#1072#1073#1086#1090#1082#1072
            DataBinding.FieldName = 'tec4_v'
            Width = 28
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn7: TcxGridDBBandedColumn
            Caption = #1057#1086#1073'. '#1085#1091#1078#1076#1099
            DataBinding.FieldName = 'tec4_sn'
            Width = 26
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Column1: TcxGridDBBandedColumn
            Caption = #1042#1099#1088#1072#1073#1086#1090#1082#1072
            DataBinding.FieldName = 'morcem_v'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1Column2: TcxGridDBBandedColumn
            Caption = #1057#1086#1073'. '#1085#1091#1078#1076#1099
            DataBinding.FieldName = 'morcem_sn'
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn8: TcxGridDBBandedColumn
            Caption = #1056#1103#1079#1072#1085#1100
            DataBinding.FieldName = 'per_ryazan'
            Width = 27
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn9: TcxGridDBBandedColumn
            Caption = #1055#1077#1085#1079#1072
            DataBinding.FieldName = 'per_penza'
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn10: TcxGridDBBandedColumn
            Caption = #1059#1083#1100#1103#1085#1086#1074#1089#1082
            DataBinding.FieldName = 'per_ylyan'
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn11: TcxGridDBBandedColumn
            Caption = #1063#1091#1074#1072#1096#1080
            DataBinding.FieldName = 'per_chuv'
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn12: TcxGridDBBandedColumn
            Caption = #1053#1080#1078#1085#1086#1074#1075#1086#1088#1086#1076
            DataBinding.FieldName = 'per_nnov'
            Width = 20
            Position.BandIndex = 5
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn13: TcxGridDBBandedColumn
            Caption = #1042#1099#1088#1072#1073'.'
            DataBinding.FieldName = 'it_vyr'
            Options.Editing = False
            Width = 46
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn14: TcxGridDBBandedColumn
            Caption = #1055#1086#1090#1088#1077#1073'.'
            DataBinding.FieldName = 'it_potr'
            Options.Editing = False
            Width = 53
            Position.BandIndex = 6
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid2DBBandedTableView1DBBandedColumn15: TcxGridDBBandedColumn
            Caption = #1057#1072#1083#1100#1076#1086
            DataBinding.FieldName = 'it_sal'
            Options.Editing = False
            Width = 47
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBBandedTableView1
        end
      end
      object TBXDock6: TTBXDock
        Left = 0
        Top = 0
        Width = 739
        Height = 25
        object TBXToolWindow1: TTBXToolWindow
          Left = 0
          Top = 0
          Caption = 'TBXToolWindow1'
          CloseButton = False
          ClientAreaHeight = 21
          ClientAreaWidth = 729
          DockableTo = [dpTop]
          DockMode = dmCannotFloat
          FullSize = True
          TabOrder = 0
          object cdAuto: TcxCheckBox
            Left = 8
            Top = 1
            Caption = #1040#1074#1090#1086#1088#1072#1079#1084#1077#1088' '#1090#1072#1073#1083#1080#1094#1099
            ParentColor = False
            Style.HotTrack = True
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = True
            Style.TransparentBorder = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnClick = cdAutoClick
            Width = 209
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '  '#1055#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1077'  '
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 28
        Width = 739
        Height = 272
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsEnergoPlan
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1DBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'date'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            SortIndex = 0
            SortOrder = soAscending
            Width = 78
          end
          object cxGrid1DBTableView1DBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'koef_v'
            HeaderAlignmentHorz = taCenter
            Width = 73
          end
          object cxGrid1DBTableView1DBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'value_v'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 115
          end
          object cxGrid1DBTableView1DBColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'koef_p'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object cxGrid1DBTableView1DBColumn5: TcxGridDBColumn
            DataBinding.FieldName = 'value_p'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 147
          end
        end
        object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsEnergoPlan
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
              Width = 75
            end
            item
              Caption = #1058#1069#1062'-2'
              Width = 111
            end
            item
              Caption = #1043#1058' '#1058#1069#1062
              Width = 112
            end
            item
              Caption = #1058#1069#1062'-4'
              Width = 111
            end
            item
              Caption = #1052#1086#1088#1076#1086#1074#1094#1077#1084#1077#1085#1090
              Width = 111
            end
            item
              Caption = #1054#1073#1097#1077#1077
              Width = 110
            end>
          object cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn
            DataBinding.FieldName = 'date'
            Options.Editing = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1koef_v_tec2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'koef_v_tec2'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1value_v_tec2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'value_v_tec2'
            Options.Editing = False
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1koef_v_tec3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'koef_v_tecGT'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1value_v_tec3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'value_v_tecGT'
            Options.Editing = False
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1koef_v_tec4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'koef_v_tec4'
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1value_v_tec4: TcxGridDBBandedColumn
            DataBinding.FieldName = 'value_v_tec4'
            Options.Editing = False
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1koef_v_morcem: TcxGridDBBandedColumn
            DataBinding.FieldName = 'koef_v_morcem'
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1value_v_morcem: TcxGridDBBandedColumn
            DataBinding.FieldName = 'value_v_morcem'
            Options.Editing = False
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1koef_p: TcxGridDBBandedColumn
            DataBinding.FieldName = 'koef_p'
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object cxGrid1DBBandedTableView1value_p: TcxGridDBBandedColumn
            DataBinding.FieldName = 'value_p'
            Options.Editing = False
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBBandedTableView1
        end
      end
      object TBXDock5: TTBXDock
        Left = 0
        Top = 300
        Width = 739
        Height = 50
        Position = dpBottom
        object TBXToolbar2: TTBXToolbar
          Left = 0
          Top = 0
          Caption = #1087#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
          ChevronMoveItems = False
          CloseButton = False
          DockableTo = [dpBottom]
          DockMode = dmCannotFloat
          DockPos = 1
          FullSize = True
          TabOrder = 0
          object TBXLabelItem4: TTBXLabelItem
            Caption = '  '#1042#1099#1088#1072#1073#1086#1090#1082#1072' '#1058#1069#1062'-2 '
          end
          object TBControlItem1: TTBControlItem
            Control = seVyrTEC2
          end
          object TBXSeparatorItem1: TTBXSeparatorItem
          end
          object TBXLabelItem8: TTBXLabelItem
            Caption = '  '#1043#1058' '#1058#1069#1062' '
          end
          object TBControlItem7: TTBControlItem
            Control = seVyrTECGT
          end
          object TBXSeparatorItem2: TTBXSeparatorItem
          end
          object TBXLabelItem7: TTBXLabelItem
            Caption = '  '#1058#1069#1062'-4 '
          end
          object TBControlItem6: TTBControlItem
            Control = seVyrTEC4
          end
          object TBXSeparatorItem6: TTBXSeparatorItem
          end
          object TBXLabelItem14: TTBXLabelItem
            Caption = ' '#1052#1086#1088#1076#1086#1074#1094#1077#1084#1077#1085#1090
          end
          object TBControlItem12: TTBControlItem
            Control = seVyrMorcem
          end
          object seVyrTEC2: TcxSpinEdit
            Left = 100
            Top = 0
            Properties.ValueType = vtFloat
            Properties.OnChange = cxSpinEdit1PropertiesChange
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 80
          end
          object seVyrTEC4: TcxSpinEdit
            Left = 359
            Top = 0
            Properties.ValueType = vtFloat
            Properties.OnChange = seVyrTEC4PropertiesChange
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 80
          end
          object seVyrTECGT: TcxSpinEdit
            Left = 232
            Top = 0
            Properties.ValueType = vtFloat
            Properties.OnChange = seVyrTECGTPropertiesChange
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 80
          end
          object seVyrMorcem: TcxSpinEdit
            Left = 524
            Top = 0
            Properties.ValueType = vtFloat
            Properties.OnChange = seVyrMorcemPropertiesChange
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 80
          end
        end
        object TBXToolbar3: TTBXToolbar
          Left = 0
          Top = 25
          Caption = #1087#1083#1072#1085#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
          ChevronMoveItems = False
          CloseButton = False
          DockableTo = [dpBottom]
          DockMode = dmCannotFloat
          DockPos = 0
          DockRow = 1
          FullSize = True
          TabOrder = 1
          object TBXLabelItem9: TTBXLabelItem
            Caption = '         '#1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077'  '
          end
          object TBControlItem8: TTBControlItem
            Control = sePotr
          end
          object TBXSeparatorItem4: TTBXSeparatorItem
          end
          object TBXLabelItem10: TTBXLabelItem
            Caption = '  '#1057#1072#1083#1100#1076#1086' '#1087#1077#1088#1077#1090#1086#1082'  '
          end
          object TBControlItem2: TTBControlItem
            Control = teSaldo
          end
          object TBXSeparatorItem5: TTBXSeparatorItem
          end
          object sePotr: TcxSpinEdit
            Left = 101
            Top = 0
            Properties.ValueType = vtFloat
            Properties.OnChange = sePotrPropertiesChange
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 80
          end
          object teSaldo: TcxTextEdit
            Left = 283
            Top = 0
            Properties.ReadOnly = True
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Width = 84
          end
        end
      end
      object TBXDock7: TTBXDock
        Left = 0
        Top = 0
        Width = 739
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
            Caption = ' '#1085#1072' '
          end
          object TBControlItem10: TTBControlItem
            Control = cbTypeData
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
          object cbTypeData: TcxComboBox
            Left = 172
            Top = 1
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 5
            Properties.Items.Strings = (
              #1050#1074' '#1058#1069#1062'-2'
              #1050#1074' '#1043#1058' '#1058#1069#1062
              #1050#1074' '#1058#1069#1062'-4'
              #1050#1074' '#1052#1086#1088#1076#1086#1074#1094#1077#1084#1077#1085#1090
              #1050#1087' '#1054#1073#1097#1077#1077)
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Width = 92
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
            Left = 306
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
            TabOrder = 3
            Width = 80
          end
        end
      end
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 56
    Top = 104
  end
  object dsEnergoPlan: TDataSource
    DataSet = adsEnergoPlan
    Left = 136
    Top = 104
  end
  object adsEnergoPlan: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnFieldChangeComplete = adsEnergoPlanFieldChangeComplete
    CommandText = 'ePlanValue'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 136
    Top = 136
    object adsEnergoPlanid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsEnergoPlandate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsEnergoPlankoef_p: TFloatField
      DisplayLabel = #1050#1087
      FieldName = 'koef_p'
      OnChange = adsEnergoPlankoef_pChange
    end
    object adsEnergoPlanvalue_p: TFloatField
      DisplayLabel = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077
      FieldName = 'value_p'
    end
    object adsEnergoPlankoef_v_tec2: TFloatField
      DisplayLabel = #1050#1074
      FieldName = 'koef_v_tec2'
      OnChange = adsEnergoPlankoef_v_tec2Change
    end
    object adsEnergoPlanvalue_v_tec2: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072
      FieldName = 'value_v_tec2'
    end
    object adsEnergoPlankoef_v_tec3: TFloatField
      DisplayLabel = #1050#1074
      FieldName = 'koef_v_tec3'
      OnChange = adsEnergoPlankoef_v_tec3Change
    end
    object adsEnergoPlanvalue_v_tec3: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072
      FieldName = 'value_v_tec3'
    end
    object adsEnergoPlankoef_v_tec4: TFloatField
      DisplayLabel = #1050#1074
      FieldName = 'koef_v_tec4'
      OnChange = adsEnergoPlankoef_v_tec4Change
    end
    object adsEnergoPlanvalue_v_tec4: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072
      FieldName = 'value_v_tec4'
    end
    object adsEnergoPlankoef_v_tecGT: TFloatField
      DisplayLabel = #1050#1074
      FieldName = 'koef_v_tecGT'
      OnChange = adsEnergoPlankoef_v_tecGTChange
    end
    object adsEnergoPlanvalue_v_tecGT: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072
      FieldName = 'value_v_tecGT'
    end
    object adsEnergoPlankoef_v_morcem: TFloatField
      DisplayLabel = #1050#1074
      FieldName = 'koef_v_morcem'
      OnChange = adsEnergoPlankoef_v_morcemChange
    end
    object adsEnergoPlanvalue_v_morcem: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072
      FieldName = 'value_v_morcem'
    end
  end
  object adsEnergoFact: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnCalcFields = adsEnergoFactCalcFields
    OnFieldChangeComplete = adsEnergoFactFieldChangeComplete
    CommandText = 'eFactValue'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 96
    Top = 136
    object adsEnergoFactid: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'id'
      ReadOnly = True
    end
    object adsEnergoFactdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsEnergoFacttec2_v: TFloatField
      FieldName = 'tec2_v'
    end
    object adsEnergoFacttec2_sn: TFloatField
      FieldName = 'tec2_sn'
    end
    object adsEnergoFacttec3_v: TFloatField
      FieldName = 'tec3_v'
    end
    object adsEnergoFacttec3_sn: TFloatField
      FieldName = 'tec3_sn'
    end
    object adsEnergoFacttec4_v: TFloatField
      FieldName = 'tec4_v'
    end
    object adsEnergoFacttec4_sn: TFloatField
      FieldName = 'tec4_sn'
    end
    object adsEnergoFactper_ryazan: TFloatField
      FieldName = 'per_ryazan'
    end
    object adsEnergoFactper_penza: TFloatField
      FieldName = 'per_penza'
    end
    object adsEnergoFactper_ylyan: TFloatField
      FieldName = 'per_ylyan'
    end
    object adsEnergoFactper_chuv: TFloatField
      FieldName = 'per_chuv'
    end
    object adsEnergoFactper_nnov: TFloatField
      FieldName = 'per_nnov'
    end
    object adsEnergoFactit_vyr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'it_vyr'
      Calculated = True
    end
    object adsEnergoFactit_potr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'it_potr'
      Calculated = True
    end
    object adsEnergoFactit_sal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'it_sal'
      Calculated = True
    end
    object adsEnergoFacttecGT_v: TFloatField
      FieldName = 'tecGT_v'
    end
    object adsEnergoFacttecGT_sn: TFloatField
      FieldName = 'tecGT_sn'
    end
    object adsEnergoFactmorcem_v: TFloatField
      FieldName = 'morcem_v'
    end
    object adsEnergoFactmorcem_sn: TFloatField
      FieldName = 'morcem_sn'
    end
  end
  object dsEnergoFact: TDataSource
    DataSet = adsEnergoFact
    Left = 96
    Top = 104
  end
  object adsPlanParam: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnFieldChangeComplete = adsPlanParamFieldChangeComplete
    CommandText = 'ePlanParam'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 176
    Top = 136
    object adsPlanParamid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adsPlanParammonth: TIntegerField
      DisplayLabel = #1052#1077#1089#1103#1094
      FieldName = 'month'
    end
    object adsPlanParamyear: TIntegerField
      DisplayLabel = #1043#1086#1076
      FieldName = 'year'
    end
    object adsPlanParamparam_p: TFloatField
      DisplayLabel = #1055#1086#1090#1088#1077#1073#1083#1077#1085#1080#1077
      FieldName = 'param_p'
    end
    object adsPlanParamparam_v_tec2: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072' '#1058#1069#1062'-2'
      FieldName = 'param_v_tec2'
    end
    object adsPlanParamparam_v_tec3: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072' '#1058#1069#1062'-3'
      FieldName = 'param_v_tec3'
    end
    object adsPlanParamparam_v_tec4: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072' '#1058#1069#1062'-4'
      FieldName = 'param_v_tec4'
    end
    object adsPlanParamparam_v_tecGT: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072' '#1043#1058' '#1058#1069#1062
      FieldName = 'param_v_tecGT'
    end
    object adsPlanParamparam_v_morcem: TFloatField
      DisplayLabel = #1042#1099#1088#1072#1073#1086#1090#1082#1072' '#1052#1086#1088#1076#1086#1074#1094#1077#1084#1077#1085#1090
      FieldName = 'param_v_morcem'
    end
  end
end
