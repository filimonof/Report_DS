inherited frmTEC_4: TfrmTEC_4
  Left = 393
  Top = 383
  Width = 651
  Height = 378
  Caption = #1058#1069#1062' 4  ('#1056#1086#1084#1086#1076#1072#1085#1086#1074#1089#1072#1093#1072#1088')  '#1085#1072' 6:00'
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbarSimple: TTBXStatusBar
    Top = 318
    Width = 635
  end
  inherited TBXDock1: TTBXDock
    Width = 635
    Height = 53
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
        Left = 46
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
        Left = 173
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
    object TBXToolWindow1: TTBXToolWindow
      Left = 0
      Top = 28
      Caption = #1052#1077#1085#1102' '#1058#1069#1062'-2'
      CloseButton = False
      ClientAreaHeight = 21
      ClientAreaWidth = 625
      DockableTo = [dpTop]
      DockMode = dmCannotFloat
      DockPos = 0
      DockRow = 1
      FullSize = True
      TabOrder = 1
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
  inherited TBXDock2: TTBXDock
    Top = 309
    Width = 635
  end
  inherited TBXDock3: TTBXDock
    Top = 53
    Height = 256
  end
  inherited TBXDock4: TTBXDock
    Left = 626
    Top = 53
    Height = 256
  end
  object cxGrid1: TcxGrid [5]
    Left = 9
    Top = 53
    Width = 617
    Height = 256
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
      DataController.DataSource = dsTec4
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
          Width = 95
        end
        item
          Caption = #1058#1091#1088#1073#1080#1085#1099
        end
        item
          Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103
        end
        item
          Caption = #1043#1040#1047
        end>
      object cxGrid1DBBandedTableView1date: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'date'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        Caption = #1043' 1'
        DataBinding.FieldName = 'g1'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column2: TcxGridDBBandedColumn
        Caption = #1043' 2'
        DataBinding.FieldName = 'g2'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1gen: TcxGridDBBandedColumn
        Caption = #1052#1042#1090
        DataBinding.FieldName = 'gen'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1gaz_g: TcxGridDBBandedColumn
        Caption = 'G'
        DataBinding.FieldName = 'gaz_g'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1gaz_p: TcxGridDBBandedColumn
        Caption = 'P'
        DataBinding.FieldName = 'gaz_p'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  inherited ilSmallIcons: TTBImageList
    Left = 120
    Top = 128
  end
  object adsTec4: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    OnFieldChangeComplete = adsTec4FieldChangeComplete
    CommandText = 'tec_4'
    CommandType = cmdTableDirect
    Parameters = <>
    Left = 152
    Top = 128
    object adsTec4ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsTec4date: TDateTimeField
      FieldName = 'date'
    end
    object adsTec4gen: TWideStringField
      FieldName = 'gen'
      Size = 50
    end
    object adsTec4gaz_g: TWideStringField
      FieldName = 'gaz_g'
      Size = 50
    end
    object adsTec4gaz_p: TWideStringField
      FieldName = 'gaz_p'
      Size = 50
    end
    object adsTec4g1: TWideStringField
      FieldName = 'g1'
      Size = 50
    end
    object adsTec4g2: TWideStringField
      FieldName = 'g2'
      Size = 50
    end
  end
  object dsTec4: TDataSource
    DataSet = adsTec4
    Left = 152
    Top = 160
  end
end
