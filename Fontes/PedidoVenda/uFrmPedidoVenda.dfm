object FrmPedidoVenda: TFrmPedidoVenda
  Left = 0
  Top = 0
  Caption = 'Or'#231'amento'
  ClientHeight = 562
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlCabec: TJvCaptionPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 150
    Align = alTop
    Buttons = []
    BorderStyle = bsNone
    Caption = 'Dados do pedido e do Cliente'
    CaptionColor = 10187010
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Courier New'
    CaptionFont.Style = [fsBold]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    OutlookLook = True
    ParentColor = True
    ParentFont = False
    Resizable = False
    TabOrder = 0
    object pnlDadosPedido: TPanel
      Left = 1
      Top = 23
      Width = 209
      Height = 126
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lblNumeroPedido: TLabel
        Left = 53
        Top = 11
        Width = 24
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#186':'
      end
      object lblDataEmissao: TLabel
        Left = 13
        Top = 41
        Width = 64
        Height = 16
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o:'
        FocusControl = edtEMISSAO
      end
      object lblTipo: TLabel
        Left = 5
        Top = 71
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Situa'#231#227'o:'
      end
      object edtEMISSAO: TJvDBDateEdit
        Left = 80
        Top = 37
        Width = 123
        Height = 24
        DataField = 'EMISSAO'
        DataSource = dmAcesso.dsPedido
        ShowNullDate = False
        TabOrder = 0
      end
      object edtID: TDBEdit
        Left = 80
        Top = 7
        Width = 123
        Height = 24
        Color = clScrollBar
        DataField = 'ID'
        DataSource = dmAcesso.dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtTIPO: TDBEdit
        Left = 81
        Top = 67
        Width = 123
        Height = 24
        DataField = 'TIPO'
        DataSource = dmAcesso.dsPedido
        ReadOnly = True
        TabOrder = 2
        OnChange = edtTIPOChange
      end
    end
    object pnlDados: TPanel
      Left = 210
      Top = 23
      Width = 673
      Height = 126
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object pnlDadosCliente: TPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 92
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          673
          92)
        object lblCondicaoPagamento: TLabel
          Left = 8
          Top = 40
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cond. Pagto:'
          FocusControl = clkID_CONDICAOPAGAMENTO
        end
        object lblFormaPagamento: TLabel
          Left = 328
          Top = 40
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Caption = 'Forma Pagto:'
          FocusControl = clkID_FORMAPAGAMENTO
        end
        object lblCliente: TLabel
          Left = 40
          Top = 11
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cliente:'
        end
        object lblVendedor: TLabel
          Left = 32
          Top = 68
          Width = 72
          Height = 16
          Alignment = taRightJustify
          Caption = 'Vendedor:'
          FocusControl = clkID_CONDICAOPAGAMENTO
        end
        object lblCAut: TLabel
          Left = 325
          Top = 67
          Width = 99
          Height = 17
          Hint = 'Codigo de autentica'#231#227'o do Cart'#227'o'
          Alignment = taRightJustify
          Caption = '*Cod. Aut.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Visible = False
        end
        object clkID_CONDICAOPAGAMENTO: TJvDBLookupCombo
          Left = 112
          Top = 36
          Width = 196
          Height = 24
          DeleteKeyClear = False
          TabSelects = True
          DataField = 'ID_CONDICAOPAGAMENTO'
          DataSource = dmAcesso.dsPedido
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsLKPCondicaoPagto
          RightTrimmedLookup = True
          TabOrder = 1
          OnCloseUp = clkID_CONDICAOPAGAMENTOCloseUp
          OnKeyUp = clkID_CONDICAOPAGAMENTOKeyUp
        end
        object clkID_FORMAPAGAMENTO: TJvDBLookupCombo
          Left = 431
          Top = 36
          Width = 235
          Height = 24
          DeleteKeyClear = False
          TabSelects = True
          DataField = 'ID_FORMAPAGAMENTO'
          DataSource = dmAcesso.dsPedido
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsLKPFormaPagto
          RightTrimmedLookup = True
          TabOrder = 2
        end
        object btnBuscaCliente: TBitBtn
          Left = 681
          Top = 7
          Width = 25
          Height = 25
          Hint = 'Pesquisa de Clientes'
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FF00FF314B62
            AC7D7EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FF5084B20F6FE1325F8CB87E7AFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32A0FE37A1FF
            106FE2325F8BB67D79FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF37A4FE379FFF0E6DDE355F89BB7F79FF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            37A4FE359EFF0F6FDE35608BA67B7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF38A5FE329DFF156DCE444F5BFF
            00FF9C6B65AF887BAF887EAA8075FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FF3BABFFA1CAE7AD8679A98373E0CFB1FFFFDAFFFFDDFCF8CFCCB2
            9FA1746BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC0917DFC
            E9ACFFFFCCFFFFCFFFFFD0FFFFDEFFFFFAE3D3D1996965FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFB08978FAD192FEF4C2FFFFD0FFFFDAFFFFF6FFFF
            FCFFFFFCB69384FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB08978FEDA97ED
            B478FBEEBBFFFFD3FFFFDCFFFFF4FFFFF4FFFFE2E9DDBCA67B73FF00FFFF00FF
            FF00FFFF00FFFF00FFB18A78FFDE99E9A167F4D199FEFCCCFFFFD5FFFFDAFFFF
            DCFFFFD7EFE6C5A97E75FF00FFFF00FFFF00FFFF00FFFF00FFAA7F73FAE0A4F0
            B778EEBA7BF6DDA6FEFBCCFFFFD3FFFFD1FFFFD7D9C5A7A3756CFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFCEB293FFFEDDF4D1A5EEBA7BF2C78FF8E1ABFCF0
            BAFCFACAA3776FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA1746BE1
            D4D3FFFEEEF7CC8CF0B473F7C788FCE3A5C2A088A5776CFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF986865BA9587EAD7A4EAD59EE0C097A577
            6CA5776CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFA77E70A98073A4786EFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          TabStop = False
        end
        object clkID_CONTATO: TJvDBLookupCombo
          Left = 112
          Top = 7
          Width = 552
          Height = 25
          DropDownCount = 20
          DeleteKeyClear = False
          DisplayAllFields = True
          TabSelects = True
          DataField = 'ID_CONTATO'
          DataSource = dmAcesso.dsPedido
          FieldsDelimiter = '|'
          Anchors = [akLeft, akTop, akRight]
          ListStyle = lsDelimited
          LookupField = 'ID'
          LookupDisplay = 'NOME;DOCUMENTO'
          LookupSource = dsLKPClientes
          RightTrimmedLookup = True
          TabOrder = 0
        end
        object cblkVendedor: TJvDBLookupCombo
          Left = 112
          Top = 64
          Width = 199
          Height = 24
          DeleteKeyClear = False
          TabSelects = True
          DataField = 'ID_USUARIO'
          DataSource = dmAcesso.dsPedido
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsLKPUsuarios
          RightTrimmedLookup = True
          TabOrder = 4
        end
        object dbedtCAUT: TDBEdit
          Left = 431
          Top = 64
          Width = 235
          Height = 24
          Color = clInfoBk
          DataField = 'CAUT'
          DataSource = dmAcesso.dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Visible = False
        end
      end
      object pnlBotoesConfirmacao: TPanel
        Left = 0
        Top = 92
        Width = 673
        Height = 34
        Align = alBottom
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object pnlOrcamento: TPanel
          Left = 332
          Top = 0
          Width = 129
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object btnGravarOrcamento: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 123
            Height = 28
            Align = alClient
            Caption = '[F6] Or'#231'amento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnGravarOrcamentoClick
          end
        end
        object pnlOpcoes: TPanel
          Left = 567
          Top = 0
          Width = 106
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object btnOpcoes: TJvBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 100
            Height = 28
            Align = alClient
            Caption = '+ Op'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DropDownMenu = PopupMenu1
          end
        end
        object pnlVenda: TPanel
          Left = 461
          Top = 0
          Width = 106
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object btnGravarVenda: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 100
            Height = 28
            Align = alClient
            Caption = '[F7] Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnGravarVendaClick
          end
        end
        object pnlNovo: TPanel
          Left = 226
          Top = 0
          Width = 106
          Height = 34
          Align = alRight
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object btnNovoPedido: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 100
            Height = 28
            Align = alClient
            Caption = '[F1] Novo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnNovoPedidoClick
          end
        end
        object btnNFCe: TJvBitBtn
          AlignWithMargins = True
          Left = 11
          Top = 3
          Width = 95
          Height = 28
          Caption = 'NFC-e'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
          DropDownMenu = pmNFCe
        end
      end
    end
  end
  object pnlRodape: TJvCaptionPanel
    Left = 0
    Top = 441
    Width = 884
    Height = 121
    Align = alBottom
    Buttons = []
    BorderStyle = bsNone
    Caption = 'Totais'
    CaptionColor = 10187010
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Courier New'
    CaptionFont.Style = [fsBold]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    OutlookLook = True
    ParentColor = True
    ParentFont = False
    Resizable = False
    TabOrder = 1
    object pnlDadosEntregaFrete: TPanel
      Left = 1
      Top = 23
      Width = 283
      Height = 97
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        283
        97)
      object lblObservacao: TLabel
        Left = 11
        Top = 2
        Width = 99
        Height = 17
        Alignment = taRightJustify
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbmmoOBSERVACAO: TDBMemo
        Left = 8
        Top = 21
        Width = 313
        Height = 73
        Anchors = [akLeft, akTop, akRight]
        DataField = 'OBSERVACAO'
        DataSource = dmAcesso.dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlTotais: TPanel
      Left = 284
      Top = 23
      Width = 599
      Height = 97
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lblSubTotal: TLabel
        Left = 330
        Top = 8
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'SubTotal:'
      end
      object lblDesconto: TLabel
        Left = 306
        Top = 39
        Width = 96
        Height = 16
        Alignment = taRightJustify
        Caption = 'Desconto R$:'
      end
      object lblTotal: TLabel
        Left = 354
        Top = 67
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total:'
      end
      object lblEntrada: TLabel
        Left = -157
        Top = 8
        Width = 64
        Height = 19
        Alignment = taRightJustify
        Caption = 'Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object lbl19: TLabel
        Left = 14
        Top = 10
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Tp Frete:'
        Visible = False
      end
      object Label1: TLabel
        Left = 38
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Frete:'
        Visible = False
      end
      object Label2: TLabel
        Left = 517
        Top = 38
        Width = 8
        Height = 16
        Alignment = taRightJustify
        Caption = '%'
      end
      object edtSubTotal: TJvDBCalcEdit
        Left = 406
        Top = 5
        Width = 186
        Height = 25
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = False
        DataField = 'SUBTOTAL'
        DataSource = dmAcesso.dsPedido
      end
      object edtPERC_DESCONTO: TJvDBCalcEdit
        Left = 530
        Top = 34
        Width = 62
        Height = 25
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
        OnChange = edtPERC_DESCONTOChange
        OnEnter = edtPERC_DESCONTOEnter
        OnExit = edtPERC_DESCONTOExit
        DataField = 'PERC_DESCONTO'
        DataSource = dmAcesso.dsPedido
      end
      object edtTotal: TJvDBCalcEdit
        Left = 406
        Top = 63
        Width = 186
        Height = 25
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
        DataField = 'TOTAL'
        DataSource = dmAcesso.dsPedido
      end
      object cbbtipofrete: TJvDBComboBox
        Left = 92
        Top = 6
        Width = 231
        Height = 24
        DataField = 'TIPOFRETE'
        DataSource = dmAcesso.dsPedido
        Items.Strings = (
          '0- Por conta do emitente'
          '1- Por conta do destinat'#225'rio/remetente'
          '2- Por conta de terceiros'
          '9- Sem frete')
        TabOrder = 3
        Values.Strings = (
          '0'
          '1'
          '2'
          '9')
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object edtVALORFRETE: TJvDBCalcEdit
        Left = 92
        Top = 34
        Width = 168
        Height = 25
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = False
        TabOrder = 4
        Visible = False
        DecimalPlacesAlwaysShown = False
        DataField = 'VALORFRETE'
        DataSource = dmAcesso.dsPedido
      end
      object edtDESCONTO: TJvDBCalcEdit
        Left = 406
        Top = 34
        Width = 105
        Height = 25
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        FormatOnEditing = True
        ParentFont = False
        ShowButton = False
        TabOrder = 5
        DecimalPlacesAlwaysShown = False
        OnChange = edtDESCONTOChange
        OnEnter = edtDESCONTOEnter
        OnExit = edtDESCONTOExit
        DataField = 'DESCONTO'
        DataSource = dmAcesso.dsPedido
      end
    end
  end
  object pnlItens: TJvCaptionPanel
    Left = 0
    Top = 150
    Width = 884
    Height = 291
    Align = alClient
    Buttons = []
    BorderStyle = bsNone
    Caption = 'Itens'
    CaptionColor = 10187010
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Courier New'
    CaptionFont.Style = [fsBold]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    OutlookLook = True
    ParentColor = True
    ParentFont = False
    Resizable = False
    TabOrder = 2
    object grdItens: TJvDBGrid
      Left = 1
      Top = 23
      Width = 882
      Height = 226
      Align = alClient
      DataSource = dsItemPedido
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Courier New'
      TitleFont.Style = [fsBold]
      PostOnEnterKey = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          ReadOnly = True
          Title.Caption = 'Item'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GTIN_PRODUTO'
          ReadOnly = True
          Title.Caption = 'Codigo'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_UNIDADE'
          ReadOnly = True
          Title.Caption = 'Und'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESC_PRODUTO'
          ReadOnly = True
          Title.Caption = 'Descri'#231#227'o Produto'
          Width = 381
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taRightJustify
          Title.Caption = 'Quant'
          Width = 102
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pre'#231'o'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ALTURA'
          ReadOnly = True
          Title.Caption = 'Altura'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'LARGURA'
          ReadOnly = True
          Title.Caption = 'Largura'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'AREA'
          ReadOnly = True
          Title.Caption = #193'rea'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'SubTotal'
          Width = 109
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Desc.'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          ReadOnly = True
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Width = 112
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ALIQ_ICMS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'VALOR_ICMS'
          ReadOnly = True
          Title.Caption = 'Vlr. ICMS'
          Visible = False
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'BASE_ICMS'
          Title.Caption = 'BC ICMS'
          Visible = False
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'ID_CFOP'
          Title.Caption = 'CFOP'
          Width = 54
          Visible = True
        end>
    end
    object pnlBotoesItem: TPanel
      Left = 1
      Top = 249
      Width = 882
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        882
        41)
      object btnAdicionarItem: TBitBtn
        Left = 614
        Top = 7
        Width = 129
        Height = 26
        Anchors = [akTop, akRight]
        Caption = '[F2] Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnAdicionarItemClick
      end
      object btnRemoverItem: TBitBtn
        Left = 747
        Top = 7
        Width = 129
        Height = 26
        Anchors = [akTop, akRight]
        Caption = '[F3] Remover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnRemoverItemClick
      end
      object edtBuscaCodigoBarra: TLabeledEdit
        Left = 359
        Top = 12
        Width = 158
        Height = 24
        EditLabel.Width = 99
        EditLabel.Height = 17
        EditLabel.Caption = 'Cod. Barras'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -15
        EditLabel.Font.Name = 'Courier New'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        LabelPosition = lpLeft
        MaxLength = 13
        ParentFont = False
        TabOrder = 2
        Visible = False
      end
      object btnEstoqueFiliais: TBitBtn
        Left = 13
        Top = 6
        Width = 236
        Height = 26
        Caption = 'Verificar estoque filiais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnClick = btnEstoqueFiliaisClick
      end
    end
  end
  object dsLKPClientes: TDataSource
    DataSet = dmAcesso.QyLKPClientes
    Left = 392
    Top = 216
  end
  object dsLKPCondicaoPagto: TDataSource
    DataSet = dmAcesso.QyLKPCondicaoPagto
    Left = 520
    Top = 216
  end
  object dsLKPFormaPagto: TDataSource
    DataSet = dmAcesso.QyLKPFormaPagto
    Left = 696
    Top = 224
  end
  object dsLKPUsuarios: TDataSource
    DataSet = dmAcesso.QyLKPUsuario
    Left = 104
    Top = 232
  end
  object dsItemPedido: TDataSource
    DataSet = QyItemPedido
    Left = 240
    Top = 240
  end
  object QyItemPedido: TFDQuery
    AfterOpen = QyItemPedidoAfterOpen
    BeforeInsert = QyItemPedidoBeforeInsert
    AfterPost = QyItemPedidoAfterPost
    AfterDelete = QyItemPedidoAfterDelete
    IndexFieldNames = 'ID_VENDA'
    MasterSource = dmAcesso.dsPedido
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM DETALHE_VENDA')
    Left = 320
    Top = 192
    object QyItemPedidoID_FILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyItemPedidoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyItemPedidoID_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
    end
    object QyItemPedidoITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QyItemPedidoGTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'GTIN'
    end
    object QyItemPedidoID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QyItemPedidoID_DEPARTAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ID_DEPARTAMENTO'
    end
    object QyItemPedidoID_UNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object QyItemPedidoID_CFOP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object QyItemPedidoQUANTIDADE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      OnChange = QyItemPedidoQUANTIDADEChange
      Precision = 21
      Size = 4
    end
    object QyItemPedidoPRECO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      OnChange = QyItemPedidoPRECOChange
      Precision = 22
      Size = 6
    end
    object QyItemPedidoSUBTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnChange = QyItemPedidoDESCONTOChange
      OnValidate = QyItemPedidoDESCONTOValidate
      Precision = 16
      Size = 2
    end
    object QyItemPedidoACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoCRT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object QyItemPedidoCSTICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
    end
    object QyItemPedidoBASE_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoCSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
    end
    object QyItemPedidoALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoVALOR_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoCSTIPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
    end
    object QyItemPedidoALIQ_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoVALOR_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoCSTPIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
    end
    object QyItemPedidoALIQ_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoVALOR_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoCSTCOFINS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
    end
    object QyItemPedidoALIQ_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoVALOR_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoVALOR_OUTROS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_OUTROS'
      Origin = 'VALOR_OUTROS'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoVALOR_SEGURO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoVALOR_FRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoINFOADICIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      Size = 500
    end
    object QyItemPedidoID_GRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_GRADE'
      Origin = 'ID_GRADE'
    end
    object QyItemPedidoID_SUBGRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SUBGRADE'
      Origin = 'ID_SUBGRADE'
    end
    object QyItemPedidoID_COR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_COR'
      Origin = 'ID_COR'
    end
    object QyItemPedidoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QyItemPedidoALIQ_MVAST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_MVAST'
      Origin = 'ALIQ_MVAST'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoALIQ_REDBCST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_REDBCST'
      Origin = 'ALIQ_REDBCST'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoALIQ_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMSST'
      Origin = 'ALIQ_ICMSST'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoVALOR_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMSST'
      Origin = 'VALOR_ICMSST'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoBASE_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMSST'
      Origin = 'BASE_ICMSST'
      Precision = 16
      Size = 2
    end
    object QyItemPedidoALIQ_REDBC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_REDBC'
      Origin = 'ALIQ_REDBC'
      Precision = 5
      Size = 2
    end
    object QyItemPedidoITEM_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO'
      Origin = 'ITEM_SERVICO'
      Size = 1
    end
    object QyItemPedidoVALOR_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object QyItemPedidoALTURA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALTURA'
      Origin = 'ALTURA'
      Precision = 4
      Size = 3
    end
    object QyItemPedidoLARGURA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LARGURA'
      Origin = 'LARGURA'
      Precision = 4
      Size = 3
    end
    object QyItemPedidoAREA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'AREA'
      Origin = 'AREA'
      Precision = 15
      Size = 2
    end
    object QyItemPedidoDESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 60
    end
    object QyItemPedidoNS_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NS_PRODUTO'
      Origin = 'NS_PRODUTO'
    end
    object QyItemPedidoCODIGO_UNIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CODIGO_UNIDADE'
      LookupDataSet = dmAcesso.QyLKPUnidades
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_UNIDADE'
      Size = 3
      Lookup = True
    end
    object QyItemPedidoDESC_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESC_PRODUTO'
      LookupDataSet = dmAcesso.QyLKPProdutos
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 120
      Lookup = True
    end
    object QyItemPedidoGTIN_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'GTIN_PRODUTO'
      LookupDataSet = dmAcesso.QyLKPProdutos
      LookupKeyFields = 'ID'
      LookupResultField = 'GTIN'
      KeyFields = 'ID_PRODUTO'
      Size = 15
      Lookup = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 808
    Top = 248
    object ImprimirPedido1: TMenuItem
      Caption = 'Imprimir Pedido'
      OnClick = ImprimirPedido1Click
    end
    object ExportaPDV1: TMenuItem
      Caption = 'Exportar p/ PDV'
      OnClick = ExportaPDV1Click
    end
  end
  object pmNFCe: TPopupMenu
    Left = 240
    Top = 144
    object EmitirNFCe1: TMenuItem
      Caption = 'Emitir'
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
    object InutilizarNumerao1: TMenuItem
      Caption = 'Inutilizar Numera'#231#227'o'
    end
    object Reimprimir1: TMenuItem
      Caption = 'Re-imprimir'
    end
  end
end
