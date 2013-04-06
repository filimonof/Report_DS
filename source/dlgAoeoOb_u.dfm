object dlgAoeoOb: TdlgAoeoOb
  Left = 177
  Top = 147
  Width = 748
  Height = 465
  BorderIcons = []
  Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '#1080' '#1079#1072#1097#1080#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 740
    Height = 390
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      740
      390)
    object Bevel1: TBevel
      Left = 8
      Top = 348
      Width = 723
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
    end
    object cxButton1: TcxButton
      Left = 650
      Top = 356
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    object PanelNiz: TPanel
      Left = 0
      Top = 0
      Width = 740
      Height = 343
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      TabOrder = 1
      object PanelLeft: TPanel
        Left = 0
        Top = 0
        Width = 217
        Height = 343
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          217
          343)
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 3
          Width = 217
          Height = 340
          ActivePage = cxTabSheet1
          Anchors = [akLeft, akTop, akRight, akBottom]
          HotTrack = True
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          Style = 9
          TabOrder = 0
          TabSlants.Positions = [spLeft, spRight]
          ClientRectBottom = 340
          ClientRectRight = 217
          ClientRectTop = 20
          object cxTabSheet1: TcxTabSheet
            Caption = '   '#1042#1051'   '
            ImageIndex = 0
            object cxTreeList1: TcxTreeList
              Left = 0
              Top = 0
              Width = 217
              Height = 320
              Align = alClient
              Bands = <
                item
                end>
              BufferedPaint = False
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              OptionsData.Editing = False
              OptionsData.Deleting = False
              OptionsData.Inserting = True
              OptionsView.CellAutoHeight = True
              OptionsView.CategorizedColumn = cxTreeList1cxTreeListColumn1
              OptionsView.ColumnAutoWidth = True
              OptionsView.Indicator = True
              TabOrder = 0
              object cxTreeList1cxTreeListColumn1: TcxTreeListColumn
                Caption.Text = #1042#1051':'#1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                DataBinding.ValueType = 'String'
                Width = 183
                Position.ColIndex = 0
                Position.RowIndex = 0
                Position.BandIndex = 0
              end
              object cxTreeList1cxTreeListColumn2: TcxTreeListColumn
                Visible = False
                DataBinding.ValueType = 'String'
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
              end
              object cxTreeList1cxTreeListColumn3: TcxTreeListColumn
                Visible = False
                DataBinding.ValueType = 'String'
                Position.ColIndex = 1
                Position.RowIndex = 0
                Position.BandIndex = 0
              end
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = '    '#1055#1057'    '
            ImageIndex = 1
            object cxGrid2: TcxGrid
              Left = 0
              Top = 0
              Width = 121
              Height = 320
              Align = alLeft
              Anchors = [akLeft, akTop, akRight, akBottom]
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              object cxGrid2DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsType2PS
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnFiltering = False
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGrid2DBTableView1name: TcxGridDBColumn
                  Caption = #1055#1086#1076#1089#1090#1072#1085#1094#1080#1103
                  DataBinding.FieldName = 'name'
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
            object cxGrid3: TcxGrid
              Left = 121
              Top = 0
              Width = 96
              Height = 320
              Align = alClient
              TabOrder = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              object cxGrid3DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsOborudPS
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnFiltering = False
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsView.CellAutoHeight = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                OptionsView.Indicator = True
                object cxGrid3DBTableView1name: TcxGridDBColumn
                  Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                  DataBinding.FieldName = 'name'
                end
              end
              object cxGrid3Level1: TcxGridLevel
                GridView = cxGrid3DBTableView1
              end
            end
          end
        end
      end
      object PanelRigth: TPanel
        Left = 534
        Top = 0
        Width = 206
        Height = 343
        Align = alRight
        BevelWidth = 2
        TabOrder = 1
        object cxGrid1: TcxGrid
          Left = 2
          Top = 2
          Width = 202
          Height = 339
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsZash
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
            object cxGrid1DBTableView1name: TcxGridDBColumn
              Caption = #1047#1072#1097#1080#1090#1099
              DataBinding.FieldName = 'name'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object PanelCenter: TPanel
        Left = 225
        Top = 0
        Width = 301
        Height = 343
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          301
          343)
        object Panel2: TPanel
          Left = 35
          Top = 0
          Width = 233
          Height = 344
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelWidth = 2
          TabOrder = 0
          object cxGrid4: TcxGrid
            Left = 2
            Top = 179
            Width = 229
            Height = 163
            Align = alClient
            BevelKind = bkSoft
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
            object cxGrid4DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsLinkOborud
              DataController.DetailKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid4DBTableView1names: TcxGridDBColumn
                Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'names'
              end
            end
            object cxGrid4DBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsLinkZash
              DataController.DetailKeyFieldNames = 'zashid'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              object cxGrid4DBTableView2ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
              end
              object cxGrid4DBTableView2aoeolinkid: TcxGridDBColumn
                DataBinding.FieldName = 'aoeolinkid'
              end
              object cxGrid4DBTableView2zashid: TcxGridDBColumn
                DataBinding.FieldName = 'zashid'
              end
            end
            object cxGrid4DBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsLinkZash
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGrid4DBTableView3namezash: TcxGridDBColumn
                Caption = #1047#1072#1097#1080#1090#1099' '#1085#1072' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1080
                DataBinding.FieldName = 'namezash'
              end
            end
            object cxGrid4Level1: TcxGridLevel
              GridView = cxGrid4DBTableView3
              Options.DetailFrameColor = clGrayText
            end
          end
          object cxGrid5: TcxGrid
            Left = 2
            Top = 2
            Width = 229
            Height = 177
            Align = alTop
            BevelKind = bkSoft
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsLinkOborud
              DataController.DetailKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'names'
              end
            end
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsLinkZash
              DataController.DetailKeyFieldNames = 'zashid'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'aoeolinkid'
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'zashid'
              end
            end
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsLinkZash
              DataController.DetailKeyFieldNames = 'aoeolinkid'
              DataController.KeyFieldNames = 'ID'
              DataController.MasterKeyFieldNames = 'ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              OptionsView.Indicator = True
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'namezash'
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
              Options.DetailFrameColor = clGrayText
            end
          end
        end
        object cxButton3: TcxButton
          Left = 272
          Top = 200
          Width = 25
          Height = 25
          Anchors = [akTop, akRight]
          TabOrder = 1
          OnClick = cxButton3Click
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C30E0000C30E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000808080C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000808000000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000080
            8000808000000000808080808080808080808080808080808080C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000808000000000
            000000000000000000000000000000808080C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C00000008080008080008080008080008080008080008080008080
            00808000000000808080C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000008080
            0080800080800080800080800080800080800080800080800080800000000080
            8080C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C000000080800080800080
            8000808000808000808000808000808000808000000000808080C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000808000000000
            000000000000000000000000000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000000000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
        end
        object cxButton4: TcxButton
          Left = 272
          Top = 231
          Width = 25
          Height = 25
          Anchors = [akTop, akRight]
          TabOrder = 2
          OnClick = cxButton4Click
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C30E0000C30E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000808080C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000808000000000808080C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C080808080808080808080
            8080000000808000808000000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000808000
            808000808000000000808080C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C00000008080008080008080008080008080008080008080008080008080
            00000000808080C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000008080
            00808000808000808000808000808000808000808000808000808000000000C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000000080800080800080800080
            8000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000808000
            808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
        end
        object cxButton5: TcxButton
          Left = 5
          Top = 127
          Width = 25
          Height = 25
          TabOrder = 3
          OnClick = cxButton5Click
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C30E0000C30E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000808080C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000808000000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000080
            8000808000000000808080808080808080808080808080808080C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000808000000000
            000000000000000000000000000000808080C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C00000008080008080008080008080008080008080008080008080
            00808000000000808080C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000008080
            0080800080800080800080800080800080800080800080800080800000000080
            8080C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C000000080800080800080
            8000808000808000808000808000808000808000000000808080C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000808000000000
            000000000000000000000000000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000000000C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0000000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
        end
        object cxButton6: TcxButton
          Left = 5
          Top = 96
          Width = 25
          Height = 25
          TabOrder = 4
          OnClick = cxButton6Click
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000C30E0000C30E00000000000000000000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808080
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000000000808080C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000808000000000808080C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C080808080808080808080
            8080000000808000808000000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000808000
            808000808000000000808080C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C00000008080008080008080008080008080008080008080008080008080
            00000000808080C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C00000008080
            00808000808000808000808000808000808000808000808000808000000000C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000000080800080800080800080
            8000808000808000808000808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0000000000000000000000000000000000000808000
            808000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000808000808000000000C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0000000808000000000C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C00000}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 217
        Top = 0
        Width = 8
        Height = 343
        HotZoneClassName = 'TcxXPTaskBarStyle'
        Control = PanelLeft
      end
      object cxSplitter2: TcxSplitter
        Left = 526
        Top = 0
        Width = 8
        Height = 343
        HotZoneClassName = 'TcxXPTaskBarStyle'
        AlignSplitter = salRight
        Control = PanelRigth
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object cxLabel2: TcxLabel
      Left = 41
      Top = 18
      Caption = #1057#1087#1080#1089#1086#1082' '#1079#1072#1097#1080#1090' '#1080' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1081' '#1088#1077#1076#1072#1082#1090#1080#1088#1091#1077#1090#1089#1103' '#1074'  '#1084#1077#1085#1102' - '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'.'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 44
      Top = 6
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103' '#1080' '#1079#1072#1097#1080#1090#1099'. '
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
  end
  object XPManifest1: TXPManifest
    Left = 32
    Top = 56
  end
  object dsLinkOborud: TDataSource
    DataSet = frmAOEO.adsLinkOborud
    Left = 320
    Top = 120
  end
  object dsZash: TDataSource
    DataSet = frmAOEO.adsZash
    Left = 544
    Top = 120
  end
  object dsType2PS: TDataSource
    DataSet = adsType2PS
    Left = 112
    Top = 119
  end
  object dsOborudPS: TDataSource
    DataSet = adsOborudPS
    Left = 144
    Top = 119
  end
  object dsType2VL: TDataSource
    DataSet = adsType2VL
    Left = 24
    Top = 119
  end
  object adsType2VL: TADODataSet
    Connection = dmData.adcData
    CursorType = ctStatic
    CommandText = 'select  * from aoeoType2 where typeid = 1 order by [name] ASC'
    Parameters = <>
    Prepared = True
    Left = 24
    Top = 159
    object adsType2VLID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsType2VLtypeid: TIntegerField
      FieldName = 'typeid'
    end
    object adsType2VLname: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
  object dsLinkZash: TDataSource
    DataSet = frmAOEO.adsLinkZash
    Left = 360
    Top = 120
  end
  object adsType2PS: TADODataSet
    Connection = dmData.adcData
    CommandText = 'select  * from aoeoType2 where typeid = 2 order by [name] ASC'
    Parameters = <>
    Prepared = True
    Left = 112
    Top = 159
    object adsType2PSID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsType2PStypeid: TIntegerField
      FieldName = 'typeid'
    end
    object adsType2PSname: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
  end
  object adsOborudPS: TADODataSet
    Connection = dmData.adcData
    CommandText = 'select * from aoeoOborud  where type2id=0 order by [name] ASC'
    Parameters = <>
    Prepared = True
    Left = 144
    Top = 159
    object adsOborudPSID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsOborudPSname: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object adsOborudPStype2id: TIntegerField
      FieldName = 'type2id'
    end
  end
  object adsOborudVL: TADODataSet
    Connection = dmData.adcData
    CommandText = 'aoeoOborud'
    CommandType = cmdTableDirect
    DataSource = dsType2VL
    IndexFieldNames = 'type2id'
    MasterFields = 'ID'
    Parameters = <>
    Prepared = True
    Left = 56
    Top = 159
    object adsOborudVLID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adsOborudVLname: TWideStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FieldName = 'name'
      Size = 50
    end
    object adsOborudVLtype2id: TIntegerField
      FieldName = 'type2id'
    end
  end
  object dsOborudVL: TDataSource
    DataSet = adsOborudVL
    Left = 56
    Top = 119
  end
end
