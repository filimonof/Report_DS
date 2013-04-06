inherited frmLog: TfrmLog
  Left = 260
  Top = 232
  Caption = #1051#1086#1075
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
      Caption = #1056#1072#1073#1086#1095#1072#1103' '#1084#1086#1097#1085#1086#1089#1090#1100
      ChevronMoveItems = False
      CloseButton = False
      DockableTo = [dpTop, dpBottom]
      FullSize = True
      Images = ilSmallIcons
      TabOrder = 0
      object TBXLabelItem1: TTBXLabelItem
        Caption = '  '#1089
      end
      object TBControlItem3: TTBControlItem
        Control = cxDateEdit1
      end
      object TBXLabelItem2: TTBXLabelItem
        Caption = '  '#1087#1086
      end
      object TBControlItem1: TTBControlItem
        Control = cxDateEdit2
      end
      object TBXLabelItem3: TTBXLabelItem
        Caption = '  '#1075#1088#1091#1087#1087#1072
      end
      object TBControlItem2: TTBControlItem
        Control = cxComboBox1
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
      object cxDateEdit1: TcxDateEdit
        Left = 12
        Top = 1
        Properties.DateButtons = []
        TabOrder = 0
        Width = 99
      end
      object cxDateEdit2: TcxDateEdit
        Left = 130
        Top = 1
        Properties.DateButtons = []
        TabOrder = 1
        Width = 90
      end
      object cxComboBox1: TcxComboBox
        Left = 262
        Top = 1
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          #1058#1072#1073#1083#1080#1094#1072
          #1044#1072#1090#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
          #1050#1086#1084#1087#1100#1102#1090#1077#1088
          #1070#1079#1077#1088
          #1044#1072#1090#1072' '#1087#1086#1083#1103
          'ID '#1087#1086#1083#1103)
        TabOrder = 2
        Text = #1058#1072#1073#1083#1080#1094#1072
        Width = 83
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
      DataController.DataSource = dsLog
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.MultiSelect = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Width = 50
      end
      object cxGrid1DBTableView1tablo: TcxGridDBColumn
        DataBinding.FieldName = 'tablo'
        Visible = False
        GroupIndex = 0
        Width = 80
      end
      object cxGrid1DBTableView1date: TcxGridDBColumn
        DataBinding.FieldName = 'date'
        Width = 70
      end
      object cxGrid1DBTableView1time: TcxGridDBColumn
        DataBinding.FieldName = 'time'
        PropertiesClassName = 'TcxTimeEditProperties'
        Width = 70
      end
      object cxGrid1DBTableView1comp: TcxGridDBColumn
        DataBinding.FieldName = 'comp'
        Width = 70
      end
      object cxGrid1DBTableView1user: TcxGridDBColumn
        DataBinding.FieldName = 'user'
        Width = 70
      end
      object cxGrid1DBTableView1datefield: TcxGridDBColumn
        DataBinding.FieldName = 'datefield'
        Width = 70
      end
      object cxGrid1DBTableView1idfield: TcxGridDBColumn
        DataBinding.FieldName = 'idfield'
        Width = 50
      end
      object cxGrid1DBTableView1comment: TcxGridDBColumn
        DataBinding.FieldName = 'comment'
        Width = 80
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsLog: TDataSource
    DataSet = adsLog
    Left = 104
    Top = 160
  end
  object adsLog: TADODataSet
    Connection = dmData.adcData
    CommandText = 'eObject'
    CommandType = cmdTable
    Parameters = <>
    Prepared = True
    Left = 64
    Top = 160
    object adsLogid: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsLogtablo: TWideStringField
      DisplayLabel = #1058#1072#1073#1083#1080#1094#1072
      FieldName = 'tablo'
      Size = 150
    end
    object adsLogdate: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
      FieldName = 'date'
    end
    object adsLogtime: TDateTimeField
      DisplayLabel = #1042#1088#1077#1084#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
      FieldName = 'time'
    end
    object adsLogcomp: TWideStringField
      DisplayLabel = #1050#1086#1084#1087#1100#1102#1090#1077#1088
      FieldName = 'comp'
      Size = 50
    end
    object adsLoguser: TWideStringField
      DisplayLabel = #1070#1079#1077#1088
      FieldName = 'user'
      Size = 50
    end
    object adsLogdatefield: TDateTimeField
      DisplayLabel = #1044#1072#1090#1072' '#1087#1086#1083#1103
      FieldName = 'datefield'
    end
    object adsLogidfield: TIntegerField
      DisplayLabel = 'ID '#1087#1086#1083#1103
      FieldName = 'idfield'
    end
    object adsLogcomment: TMemoField
      DisplayLabel = #1054#1087#1080#1089#1072#1085#1080#1077
      FieldName = 'comment'
      BlobType = ftMemo
    end
  end
end
