object FrmCadastroCompra: TFrmCadastroCompra
  Left = 0
  Top = 0
  Caption = 'Recebimento'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 562
    ActivePage = tsPrincipal
    Align = alClient
    OwnerDraw = True
    TabOrder = 0
    object tsPrincipal: TTabSheet
      Caption = 'Principal'
      TabVisible = False
      object pgcTotais: TPageControl
        Left = 0
        Top = 424
        Width = 776
        Height = 128
        ActivePage = tsTotais
        Align = alBottom
        TabOrder = 0
        object tsTotais: TTabSheet
          Caption = 'Totais'
          object lblSubTotal: TLabel
            Left = 34
            Top = 9
            Width = 72
            Height = 16
            Alignment = taRightJustify
            Caption = 'SubTotal:'
          end
          object lblTotal: TLabel
            Left = 58
            Top = 68
            Width = 48
            Height = 16
            Alignment = taRightJustify
            Caption = 'Total:'
          end
          object lblDesconto: TLabel
            Left = 10
            Top = 40
            Width = 96
            Height = 16
            Alignment = taRightJustify
            Caption = 'Desconto R$:'
          end
          object edtSubTotal: TJvDBCalcEdit
            Left = 110
            Top = 6
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
            DataSource = dsCompra
          end
          object edtTotal: TJvDBCalcEdit
            Left = 110
            Top = 64
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
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            DataField = 'TOTAL'
            DataSource = dsCompra
          end
          object edtDESCONTO: TJvDBCalcEdit
            Left = 110
            Top = 35
            Width = 186
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
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
            OnChange = edtDESCONTOChange
            OnExit = edtDESCONTOExit
            DataField = 'DESCONTO'
            DataSource = dsCompra
          end
        end
        object tsParcelas: TTabSheet
          Caption = 'Parcelas'
          ImageIndex = 1
          object jvdbgrd1: TJvDBGrid
            Left = 167
            Top = 0
            Width = 601
            Height = 97
            Align = alClient
            DataSource = dsFatura
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
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
                FieldName = 'PARCELA'
                Title.Caption = 'Parc.'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VENCIMENTO'
                Title.Caption = 'Vencimento'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor'
                Width = 114
                Visible = True
              end>
          end
          object pnl22: TPanel
            Left = 0
            Top = 0
            Width = 167
            Height = 97
            Align = alLeft
            TabOrder = 1
            object btnparcelas: TJvXPButton
              Left = 5
              Top = 6
              Width = 143
              Caption = 'Gerar parcelas'
              TabOrder = 0
              OnClick = btnparcelasClick
            end
            object btnRemoverParcela: TJvXPButton
              Left = 5
              Top = 31
              Width = 143
              Caption = 'Remover parcela'
              TabOrder = 1
              OnClick = btnRemoverParcelaClick
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 124
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          776
          124)
        object lblCliente: TLabel
          Left = 16
          Top = 11
          Width = 88
          Height = 16
          Alignment = taRightJustify
          Caption = 'Fornecedor:'
        end
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
          Left = 405
          Top = 40
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Forma Pagto:'
          FocusControl = clkID_FORMAPAGAMENTO
        end
        object lblDataEmissao: TLabel
          Left = 581
          Top = 11
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Emiss'#227'o:'
          FocusControl = edtEMISSAO
        end
        object lbl16: TLabel
          Left = 16
          Top = 68
          Width = 88
          Height = 16
          Alignment = taRightJustify
          Caption = 'Chave NF-e:'
          FocusControl = edtCHAVENFE
        end
        object lbl25: TLabel
          Left = 40
          Top = 96
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'Tipo NF:'
        end
        object Label1: TLabel
          Left = 544
          Top = 68
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          Caption = 'Dt. Entrada:'
          FocusControl = JvDBDateEdit1
        end
        object clkID_CONTATO: TJvDBLookupCombo
          Left = 108
          Top = 7
          Width = 423
          Height = 25
          DropDownCount = 10
          DisplayAllFields = True
          TabSelects = True
          DataField = 'ID_CONTATO'
          DataSource = dsCompra
          FieldsDelimiter = '|'
          Anchors = [akLeft, akTop, akRight]
          ListStyle = lsDelimited
          LookupField = 'ID'
          LookupDisplay = 'NOME;DOCUMENTO'
          LookupSource = dsFornecedor
          RightTrimmedLookup = True
          TabOrder = 0
        end
        object clkID_CONDICAOPAGAMENTO: TJvDBLookupCombo
          Left = 108
          Top = 36
          Width = 285
          Height = 24
          TabSelects = True
          DataField = 'ID_CONDICAOPAGAMENTO'
          DataSource = dsCompra
          Anchors = [akLeft, akTop, akRight]
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsLKPCondicaoPagto
          RightTrimmedLookup = True
          TabOrder = 1
          OnCloseUp = clkID_CONDICAOPAGAMENTOCloseUp
          OnKeyUp = clkID_CONDICAOPAGAMENTOKeyUp
        end
        object clkID_FORMAPAGAMENTO: TJvDBLookupCombo
          Left = 507
          Top = 36
          Width = 259
          Height = 24
          TabSelects = True
          DataField = 'ID_FORMAPAGAMENTO'
          DataSource = dsCompra
          Anchors = [akTop, akRight]
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsLKPFormaPagto
          RightTrimmedLookup = True
          TabOrder = 2
          OnCloseUp = clkID_FORMAPAGAMENTOCloseUp
          OnKeyUp = clkID_FORMAPAGAMENTOKeyUp
        end
        object edtEMISSAO: TJvDBDateEdit
          Left = 649
          Top = 7
          Width = 117
          Height = 24
          DataField = 'EMISSAO'
          DataSource = dsCompra
          Anchors = [akTop, akRight]
          ShowNullDate = False
          TabOrder = 3
        end
        object edtCHAVENFE: TDBEdit
          Left = 108
          Top = 64
          Width = 381
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          DataField = 'CHAVENFE'
          DataSource = dsCompra
          MaxLength = 44
          TabOrder = 4
        end
        object jvxpbtnCarregaNFE: TJvXPButton
          Left = 493
          Top = 64
          Width = 26
          Height = 24
          Caption = '...'
          TabOrder = 5
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          OnClick = jvxpbtnCarregaNFEClick
        end
        object cbbSITUACAO: TJvDBComboBox
          Left = 108
          Top = 92
          Width = 205
          Height = 24
          DataField = 'SITUACAO'
          DataSource = dsCompra
          Items.Strings = (
            'N'#227'o Emitida'
            'NF-e'
            'Energia Eletrica'
            'Telecomunica'#231#227'o')
          TabOrder = 6
          Values.Strings = (
            'NM'
            'NE'
            'EE'
            'TC')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object JvXPButton1: TJvXPButton
          Left = 535
          Top = 7
          Width = 26
          Height = 24
          Caption = '...'
          TabOrder = 7
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object btnCancelar: TJvBitBtn
          Left = 667
          Top = 92
          Width = 99
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Cancelar'
          TabOrder = 8
          OnClick = btnCancelarClick
        end
        object btnGravar: TJvBitBtn
          Left = 564
          Top = 92
          Width = 99
          Height = 28
          Anchors = [akTop, akRight]
          Caption = 'Gravar'
          TabOrder = 9
          OnClick = btnGravarClick
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 643
          Top = 64
          Width = 123
          Height = 24
          DataField = 'EMISSAO'
          DataSource = dsCompra
          Anchors = [akTop, akRight]
          ShowNullDate = False
          TabOrder = 10
        end
      end
      object pnl2: TPanel
        Left = 0
        Top = 385
        Width = 776
        Height = 39
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          776
          39)
        object btn1: TBitBtn
          Left = 512
          Top = 4
          Width = 127
          Height = 30
          Anchors = [akTop, akRight]
          Caption = '[F2] Adicionar'
          TabOrder = 0
          OnClick = btn1Click
        end
        object btn2: TBitBtn
          Left = 643
          Top = 4
          Width = 127
          Height = 30
          Anchors = [akTop, akRight]
          Caption = '[F3] Remover'
          TabOrder = 1
          OnClick = btn2Click
        end
      end
      object grdItems: TJvDBGrid
        Left = 0
        Top = 124
        Width = 776
        Height = 261
        Align = alClient
        DataSource = dsItems
        DrawingStyle = gdsClassic
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
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
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ITEM'
            ReadOnly = True
            Title.Caption = 'Item'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'GTIN'
            ReadOnly = True
            Title.Caption = 'C'#243'digo'
            Width = 122
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_PRODUTO'
            ReadOnly = True
            Title.Caption = 'Descri'#231#227'o do Produto'
            Width = 373
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_UNIDADE'
            ReadOnly = True
            Title.Caption = 'UND.'
            Width = 43
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtd'
            Width = 81
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'PRECO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Prc. Compra'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUBTOTAL'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Title.Caption = 'SubTotal'
            Width = 113
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'DESCONTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Desc.'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            ReadOnly = True
            Title.Alignment = taRightJustify
            Title.Caption = 'Total'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CFOP'
            ReadOnly = True
            Title.Caption = 'CFOP'
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ALIQ_ICMS'
            Title.Caption = 'Aliq. ICMS'
            Width = 89
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'BASE_ICMS'
            Title.Caption = 'Bc. ICMS'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_ICMS'
            ReadOnly = True
            Title.Caption = 'Vlr. ICMS'
            Width = 85
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ALIQ_IPI'
            Title.Caption = 'Aliq. IPI'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_IPI'
            ReadOnly = True
            Title.Caption = 'Vlr. IPI'
            Width = 78
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ALIQ_PIS'
            Title.Caption = 'Aliq. PIS'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PIS'
            ReadOnly = True
            Title.Caption = 'Vlr. PIS'
            Width = 80
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ALIQ_COFINS'
            Title.Caption = 'Aliq. Cofins'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_COFINS'
            ReadOnly = True
            Title.Caption = 'Vlr Cofins'
            Width = 91
            Visible = True
          end
          item
            Color = clInfoBk
            Expanded = False
            FieldName = 'ALIQ_II'
            Title.Caption = 'Aliq. II'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_II'
            ReadOnly = True
            Title.Caption = 'Vlr. II'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            ReadOnly = True
            Title.Caption = 'Sit. Estoque'
            Width = 108
            Visible = True
          end>
      end
    end
  end
  object dsCompra: TDataSource
    DataSet = QyCompra
    Left = 196
    Top = 246
  end
  object dsItems: TDataSource
    DataSet = QyItems
    Left = 196
    Top = 318
  end
  object QyCompra: TFDQuery
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM COMPRA')
    Left = 276
    Top = 246
  end
  object QyItems: TFDQuery
    AfterOpen = QyItemsAfterOpen
    BeforeInsert = QyItemsBeforeInsert
    AfterPost = QyItemsAfterPost
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = dsCompra
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM DETALHE_COMPRA')
    Left = 276
    Top = 318
    object QyItemsID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyItemsID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyItemsID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
    end
    object QyItemsITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QyItemsID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QyItemsID_DEPARTAMENTO: TIntegerField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ID_DEPARTAMENTO'
    end
    object QyItemsID_UNIDADE: TIntegerField
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object QyItemsID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object QyItemsQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      OnChange = QyItemsQUANTIDADEChange
      Precision = 21
      Size = 4
    end
    object QyItemsPRECO: TFMTBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      OnChange = QyItemsPRECOChange
      Precision = 21
      Size = 4
    end
    object QyItemsSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object QyItemsDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      OnChange = QyItemsDESCONTOChange
      Precision = 15
      Size = 2
    end
    object QyItemsTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object QyItemsCRT: TIntegerField
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object QyItemsCSOSN: TIntegerField
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
    end
    object QyItemsCSTICMS: TStringField
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
      Size = 3
    end
    object QyItemsALIQ_ICMS: TBCDField
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      OnChange = QyItemsALIQ_ICMSChange
      Precision = 5
      Size = 2
    end
    object QyItemsBASE_ICMS: TBCDField
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      OnChange = QyItemsBASE_ICMSChange
      Precision = 15
      Size = 2
    end
    object QyItemsVALOR_ICMS: TBCDField
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 15
      Size = 2
    end
    object QyItemsCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
      Size = 3
    end
    object QyItemsALIQ_IPI: TBCDField
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      OnChange = QyItemsALIQ_IPIChange
      Precision = 5
      Size = 2
    end
    object QyItemsVALOR_IPI: TBCDField
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 15
      Size = 2
    end
    object QyItemsCSTPIS: TStringField
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
      Size = 3
    end
    object QyItemsALIQ_PIS: TBCDField
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      OnChange = QyItemsALIQ_PISChange
      Precision = 5
      Size = 2
    end
    object QyItemsVALOR_PIS: TBCDField
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 15
      Size = 2
    end
    object QyItemsCSTCOFINS: TStringField
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
      Size = 3
    end
    object QyItemsALIQ_COFINS: TBCDField
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      OnChange = QyItemsALIQ_COFINSChange
      Precision = 5
      Size = 2
    end
    object QyItemsVALOR_COFINS: TBCDField
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 15
      Size = 2
    end
    object QyItemsALIQ_II: TBCDField
      FieldName = 'ALIQ_II'
      Origin = 'ALIQ_II'
      OnChange = QyItemsALIQ_IIChange
      Precision = 5
      Size = 2
    end
    object QyItemsVALOR_II: TBCDField
      FieldName = 'VALOR_II'
      Origin = 'VALOR_II'
      Precision = 15
      Size = 2
    end
    object QyItemsVALOR_OUTROS: TBCDField
      FieldName = 'VALOR_OUTROS'
      Origin = 'VALOR_OUTROS'
      Precision = 15
      Size = 2
    end
    object QyItemsVALOR_SEGURO: TBCDField
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 15
      Size = 2
    end
    object QyItemsVALOR_FRETE: TBCDField
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 15
      Size = 2
    end
    object QyItemsINFOADICIONAL: TStringField
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      Size = 500
    end
    object QyItemsSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 1
    end
    object QyItemsGTIN: TStringField
      FieldKind = fkLookup
      FieldName = 'GTIN'
      LookupDataSet = dmAcesso.QyLKPProdutos
      LookupKeyFields = 'ID'
      LookupResultField = 'GTIN'
      KeyFields = 'ID_PRODUTO'
      Size = 14
      Lookup = True
    end
    object QyItemsDESCRICAO_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO_PRODUTO'
      LookupDataSet = dmAcesso.QyLKPProdutos
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 120
      Lookup = True
    end
    object QyItemsCODIGO_UNIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CODIGO_UNIDADE'
      LookupDataSet = dmAcesso.QyLKPUnidades
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_UNIDADE'
      Size = 4
      Lookup = True
    end
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
  object dsFornecedor: TDataSource
    DataSet = dmAcesso.QyLKPFornecedores
    Left = 388
    Top = 286
  end
  object dsLKPProdutos: TDataSource
    DataSet = dmAcesso.QyLKPProdutos
    Left = 92
    Top = 222
  end
  object dsLKPUnidades: TDataSource
    DataSet = dmAcesso.QyLKPUnidades
    Left = 92
    Top = 286
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFE'
    Left = 392
    Top = 208
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 384
    Top = 288
  end
  object ACBrSPEDFiscal1: TACBrSPEDFiscal
    Path = 'C:\Program Files (x86)\Embarcadero\Studio\20.0\bin\'
    Delimitador = '|'
    TrimString = True
    CurMascara = '#0.00'
    Left = 456
    Top = 328
  end
  object dsFatura: TDataSource
    DataSet = QyFatura
    Left = 496
    Top = 336
  end
  object QyFatura: TFDQuery
    AfterOpen = QyFaturaAfterOpen
    BeforeInsert = QyFaturaBeforeInsert
    AfterInsert = QyFaturaAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = dsCompra
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM LANCAMENTO')
    Left = 292
    Top = 190
  end
end
