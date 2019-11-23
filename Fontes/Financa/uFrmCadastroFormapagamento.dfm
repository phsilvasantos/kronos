inherited FrmCadastroFormapagamento: TFrmCadastroFormapagamento
  Caption = 'Cadastro Forma de pagamento'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnl1: TPanel
    inherited btnGravar: TJvBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited pgcPrincipal: TPageControl
    inherited tsPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 776
      ExplicitHeight = 493
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 129
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lbl2: TLabel
          Left = 81
          Top = 14
          Width = 32
          Height = 16
          Caption = 'Nome'
          FocusControl = edtNOME
        end
        object lbl3: TLabel
          Left = 33
          Top = 42
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Tipo Pagto'
        end
        object lbl5: TLabel
          Left = 57
          Top = 70
          Width = 56
          Height = 16
          Caption = 'Cart'#227'o?'
        end
        object lbl7: TLabel
          Left = 9
          Top = 98
          Width = 104
          Height = 16
          Caption = 'Nota Credito?'
        end
        object lblaVISTA: TLabel
          Left = 592
          Top = 70
          Width = 64
          Height = 16
          Caption = #192' vista?'
        end
        object lbl6: TLabel
          Left = 544
          Top = 42
          Width = 112
          Height = 16
          Caption = 'Taxa do Cart'#227'o'
        end
        object lbl4: TLabel
          Left = 576
          Top = 14
          Width = 80
          Height = 16
          Caption = 'N'#186' Parcela'
          FocusControl = dbedtNUMERO_PARCELA
        end
        object edtNOME: TDBEdit
          Left = 123
          Top = 10
          Width = 400
          Height = 24
          DataField = 'NOME'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object cbbTIPO_PAGAMENTO: TJvDBComboBox
          Left = 123
          Top = 38
          Width = 278
          Height = 24
          DataField = 'TIPO_PAGAMENTO'
          DataSource = dsCadastro
          Items.Strings = (
            'ESPECIE'
            'BOLETO'
            'FATURA'
            'CHEQUE'
            'CARTAO CREDITO'
            'CARTAO DEBITO'
            'DEBITO EM CONTA'
            'DOCUMENTO'
            'A PRAZO')
          TabOrder = 1
          Values.Strings = (
            'ESP'
            'BOL'
            'FAT'
            'CHQ'
            'CC'
            'CD'
            'DC'
            'DOC'
            'PZO')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbbCARTAO: TJvDBComboBox
          Left = 123
          Top = 66
          Width = 89
          Height = 24
          DataField = 'CARTAO'
          DataSource = dsCadastro
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 2
          Values.Strings = (
            '0'
            '1')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbbNOTACREDITO: TJvDBComboBox
          Left = 123
          Top = 94
          Width = 89
          Height = 24
          DataField = 'NOTACREDITO'
          DataSource = dsCadastro
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 3
          Values.Strings = (
            '0'
            '1')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbbaVISTA: TJvDBComboBox
          Left = 664
          Top = 66
          Width = 87
          Height = 24
          DataField = 'AVISTA'
          DataSource = dsCadastro
          Items.Strings = (
            'N'#227'o'
            'Sim')
          TabOrder = 4
          Values.Strings = (
            '0'
            '1')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtTAXA_CARTAO: TJvDBCalcEdit
          Left = 664
          Top = 38
          Width = 87
          Height = 24
          DisplayFormat = '#,##0.00'
          ShowButton = False
          TabOrder = 5
          DecimalPlacesAlwaysShown = False
          DataField = 'TAXA_CARTAO'
          DataSource = dsCadastro
        end
        object dbedtNUMERO_PARCELA: TDBEdit
          Left = 664
          Top = 10
          Width = 87
          Height = 24
          DataField = 'NUMERO_PARCELA'
          DataSource = dsCadastro
          TabOrder = 6
        end
      end
      object JvCaptionPanel1: TJvCaptionPanel
        Left = 0
        Top = 129
        Width = 776
        Height = 364
        Align = alClient
        Buttons = []
        Caption = 'Parcelas'
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
        TabOrder = 1
        object pnl3: TPanel
          Left = 1
          Top = 23
          Width = 768
          Height = 36
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object btnAdicionar: TBitBtn
            Left = 10
            Top = 6
            Width = 123
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 0
            OnClick = btnAdicionarClick
          end
          object btnRemover: TBitBtn
            Left = 139
            Top = 7
            Width = 123
            Height = 25
            Caption = 'Remover'
            TabOrder = 1
            OnClick = btnRemoverClick
          end
        end
        object dbgrd1: TJvDBGrid
          Left = 1
          Top = 59
          Width = 768
          Height = 298
          Align = alClient
          Color = clInfoBk
          DataSource = dsParcelas
          DrawingStyle = gdsClassic
          TabOrder = 1
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
              FieldName = 'ORDEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_INTERVALO'
              PickList.Strings = (
                'DIA'
                'QZN'
                'MES'
                'ANO')
              Title.Caption = 'TIPO INTERVALO'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INTERVALO'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAXA_JUROS'
              Title.Caption = 'TAXA JUROS'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TAXA_ADMINISTRATIVA'
              Title.Caption = 'TAXA ADMINISTRATIVA'
              Width = 179
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 552
    Top = 264
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 504
    Top = 152
  end
  object QyParcelas: TFDQuery
    BeforeInsert = QyParcelasBeforeInsert
    AfterInsert = QyParcelasAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'ID_FORMAPAGAMENTO'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    DetailFields = 'ID_FORMAPAGAMENTO'
    Connection = dmAcesso.FDConnection1
    SchemaAdapter = dmAcesso.FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM DETALHE_FORMAPAGAMENTO'
      'WHERE ID_FORMAPAGAMENTO=:ID')
    Left = 204
    Top = 306
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QyParcelasID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
      Required = True
    end
    object QyParcelasID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyParcelasID_FORMAPAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAPAGAMENTO'
      Origin = 'ID_FORMAPAGAMENTO'
      Required = True
    end
    object QyParcelasORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
      Required = True
    end
    object QyParcelasINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = 'INTERVALO'
      Required = True
      MaxValue = 365
    end
    object QyParcelasTIPO_INTERVALO: TStringField
      FieldName = 'TIPO_INTERVALO'
      Origin = 'TIPO_INTERVALO'
      Required = True
      Size = 11
    end
    object QyParcelasTAXA_JUROS: TBCDField
      FieldName = 'TAXA_JUROS'
      Origin = 'TAXA_JUROS'
      Required = True
      DisplayFormat = '#,##0.00'
      MaxValue = 100.000000000000000000
      Precision = 5
      Size = 2
    end
    object QyParcelasTAXA_ADMINISTRATIVA: TBCDField
      FieldName = 'TAXA_ADMINISTRATIVA'
      Origin = 'TAXA_ADMINISTRATIVA'
      Required = True
      DisplayFormat = '#,##0.00'
      MaxValue = 100.000000000000000000
      Precision = 5
      Size = 2
    end
  end
  object dsParcelas: TDataSource
    DataSet = QyParcelas
    Left = 288
    Top = 328
  end
end
