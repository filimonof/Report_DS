inherited frmTEC: TfrmTEC
  Left = 296
  Top = 269
  ActiveControl = cxGrid1
  Caption = #1058#1069#1062'-2 '#1085#1072' 6:00'
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
    Width = 536
    Height = 229
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
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
    end
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsTec2
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.FixedBandSeparatorWidth = 1
      Bands = <
        item
          FixedKind = fkLeft
        end
        item
          Caption = #1050#1086#1090#1083#1099
        end
        item
          Caption = #1058#1091#1088#1073#1080#1085#1099'/'#1042#1072#1082#1091#1091#1084
        end
        item
          Caption = #1043#1072#1079
        end
        item
          Caption = #1052#1072#1079#1091#1090
        end
        item
          Caption = #1055#1072#1088
        end
        item
          Caption = #1058#1077#1087#1083#1086#1089#1077#1090#1100
        end
        item
          Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103
        end>
      object cxGrid1DBBandedTableView1ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn
        DataBinding.FieldName = 'date'
        Options.Editing = False
        Width = 60
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k1'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k2: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k2'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k3: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k3'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k4: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k4'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k5: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k5'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k6'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k7'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1k8: TcxGridDBBandedColumn
        DataBinding.FieldName = 'k8'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1bk1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'bk1'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1t2: TcxGridDBBandedColumn
        DataBinding.FieldName = 't2'
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1t3: TcxGridDBBandedColumn
        DataBinding.FieldName = 't3'
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1t4: TcxGridDBBandedColumn
        DataBinding.FieldName = 't4'
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1t5: TcxGridDBBandedColumn
        DataBinding.FieldName = 't5'
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1glimit: TcxGridDBBandedColumn
        DataBinding.FieldName = 'glimit'
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1gg: TcxGridDBBandedColumn
        DataBinding.FieldName = 'gg'
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1gp: TcxGridDBBandedColumn
        DataBinding.FieldName = 'gp'
        Width = 50
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1mg: TcxGridDBBandedColumn
        DataBinding.FieldName = 'mg'
        Width = 50
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1pg: TcxGridDBBandedColumn
        DataBinding.FieldName = 'pg'
        Width = 50
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1tsnv: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tsnv'
        Width = 50
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1tsgr: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tsgr'
        Width = 50
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1tsf: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tsf'
        Width = 50
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1tsg: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tsg'
        Width = 50
        Position.BandIndex = 6
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn
        DataBinding.FieldName = 'gen'
        Width = 70
        Position.BandIndex = 7
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object TBXDock5: TTBXDock [6]
    Left = 0
    Top = 28
    Width = 554
    Height = 25
    object TBXToolWindow1: TTBXToolWindow
      Left = 0
      Top = 0
      Caption = #1052#1077#1085#1102' '#1058#1069#1062'-2'
      CloseButton = False
      ClientAreaHeight = 21
      ClientAreaWidth = 544
      DockableTo = [dpTop]
      DockMode = dmCannotFloat
      FullSize = True
      TabOrder = 0
      object cxCheckBox1: TcxCheckBox
        Left = 0
        Top = 0
        Caption = #1040#1074#1090#1086#1088#1072#1079#1084#1077#1088' '#1090#1072#1073#1083#1080#1094#1099
        ParentColor = False
        Style.LookAndFeel.NativeStyle = True
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        OnClick = cxCheckBox1Click
        Width = 153
      end
    end
  end
  inherited ilSmallIcons: TTBImageList
    Top = 112
  end
  object adsTec2: TADODataSet
    Connection = dmData.adcData
    OnFieldChangeComplete = adsTec2FieldChangeComplete
    CommandText = 'tec2'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 152
    Top = 88
    object adsTec2ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsTec2date: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072
      FieldName = 'date'
    end
    object adsTec2k1: TWideStringField
      DisplayLabel = '1'
      FieldName = 'k1'
      Size = 50
    end
    object adsTec2k2: TWideStringField
      DisplayLabel = '2'
      FieldName = 'k2'
      Size = 50
    end
    object adsTec2k3: TWideStringField
      DisplayLabel = '3'
      FieldName = 'k3'
      Size = 50
    end
    object adsTec2k4: TWideStringField
      DisplayLabel = '4'
      FieldName = 'k4'
      Size = 50
    end
    object adsTec2k5: TWideStringField
      DisplayLabel = '5'
      FieldName = 'k5'
      Size = 50
    end
    object adsTec2k6: TWideStringField
      DisplayLabel = '6'
      FieldName = 'k6'
      Size = 50
    end
    object adsTec2k7: TWideStringField
      DisplayLabel = '7'
      FieldName = 'k7'
      Size = 50
    end
    object adsTec2k8: TWideStringField
      DisplayLabel = '8'
      FieldName = 'k8'
      Size = 50
    end
    object adsTec2bk1: TWideStringField
      DisplayLabel = #1042#1050'1'
      FieldName = 'bk1'
      Size = 50
    end
    object adsTec2bk2: TWideStringField
      DisplayLabel = #1042#1050'2'
      FieldName = 'bk2'
      Size = 50
    end
    object adsTec2bk3: TWideStringField
      DisplayLabel = #1042#1050'3'
      FieldName = 'bk3'
      Size = 50
    end
    object adsTec2t2: TWideStringField
      DisplayLabel = '2'
      FieldName = 't2'
      Size = 50
    end
    object adsTec2t3: TWideStringField
      DisplayLabel = '3'
      FieldName = 't3'
      Size = 50
    end
    object adsTec2t4: TWideStringField
      DisplayLabel = '4'
      FieldName = 't4'
      Size = 50
    end
    object adsTec2t5: TWideStringField
      DisplayLabel = '5'
      FieldName = 't5'
      Size = 50
    end
    object adsTec2gg: TWideStringField
      DisplayLabel = 'G'
      FieldName = 'gg'
      Size = 50
    end
    object adsTec2gp: TWideStringField
      DisplayLabel = 'P'
      FieldName = 'gp'
      Size = 50
    end
    object adsTec2mg: TWideStringField
      DisplayLabel = 'G'
      FieldName = 'mg'
      Size = 50
    end
    object adsTec2pg: TWideStringField
      DisplayLabel = 'G'
      FieldName = 'pg'
      Size = 50
    end
    object adsTec2vbl1: TWideStringField
      DisplayLabel = #1041#1083' 1'
      FieldName = 'vbl1'
      Size = 50
    end
    object adsTec2vbl2: TWideStringField
      DisplayLabel = #1041#1083' 2'
      FieldName = 'vbl2'
      Size = 50
    end
    object adsTec2tsnv: TWideStringField
      DisplayLabel = 't '#1085'.'#1074'.'
      FieldName = 'tsnv'
      Size = 50
    end
    object adsTec2tsgr: TWideStringField
      DisplayLabel = 't '#1075#1088#1072#1092
      FieldName = 'tsgr'
      Size = 50
    end
    object adsTec2tsf: TWideStringField
      DisplayLabel = 't '#1092#1072#1082#1090
      FieldName = 'tsf'
      Size = 50
    end
    object adsTec2tsg: TWideStringField
      DisplayLabel = 'G'
      FieldName = 'tsg'
      Size = 50
    end
    object adsTec2gen: TWideStringField
      DisplayLabel = #1052#1042#1090
      FieldName = 'gen'
      Size = 50
    end
    object adsTec2glimit: TWideStringField
      DisplayLabel = #1051#1080#1084#1080#1090
      FieldName = 'glimit'
      Size = 50
    end
  end
  object dsTec2: TDataSource
    DataSet = adsTec2
    Left = 152
    Top = 120
  end
end
