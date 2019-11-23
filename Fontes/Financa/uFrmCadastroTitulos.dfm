inherited FrmCadastroTitulos: TFrmCadastroTitulos
  Caption = 'Cadastro de T'#237'tulos'
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
      object lblDOCUMENTO: TLabel
        Left = 31
        Top = 6
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Documento'
        FocusControl = dbedtDOCUMENTO
      end
      object lbl4: TLabel
        Left = 489
        Top = 6
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Parcela'
        FocusControl = dbedtPARCELA
      end
      object lbl5: TLabel
        Left = 47
        Top = 34
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Emiss'#227'o'
        FocusControl = clkID_CONTATO
      end
      object lbl7: TLabel
        Left = 47
        Top = 62
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Contato'
      end
      object lbl8: TLabel
        Left = 465
        Top = 34
        Width = 80
        Height = 16
        Alignment = taRightJustify
        Caption = 'Vencimento'
      end
      object lbl15: TLabel
        Left = 63
        Top = 118
        Width = 40
        Height = 16
        Alignment = taRightJustify
        Caption = 'Conta'
        FocusControl = clkID_CONTACORRENTE
      end
      object lbl10: TLabel
        Left = 15
        Top = 146
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = 'Observa'#231#245'es'
      end
      object Label1: TLabel
        Left = 63
        Top = 90
        Width = 40
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor'
      end
      object Label2: TLabel
        Left = 481
        Top = 63
        Width = 64
        Height = 16
        Alignment = taRightJustify
        Caption = 'Natureza'
      end
      object lbl3: TLabel
        Left = 465
        Top = 91
        Width = 80
        Height = 16
        Alignment = taRightJustify
        Caption = 'Tipo Pagto'
      end
      object dbedtDOCUMENTO: TDBEdit
        Left = 111
        Top = 3
        Width = 145
        Height = 24
        DataField = 'DOCUMENTO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object dbedtPARCELA: TDBEdit
        Left = 553
        Top = 3
        Width = 73
        Height = 24
        DataField = 'PARCELA'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object chkparcelado: TCheckBox
        Left = 632
        Top = 6
        Width = 106
        Height = 17
        TabStop = False
        Caption = 'Parcelado'
        TabOrder = 10
        Visible = False
      end
      object edtEMISSAO: TJvDBDateEdit
        Left = 111
        Top = 31
        Width = 120
        Height = 24
        DataField = 'EMISSAO'
        DataSource = dsCadastro
        CheckOnExit = True
        DefaultToday = True
        ShowNullDate = False
        TabOrder = 2
      end
      object clkID_CONTATO: TJvDBLookupCombo
        Left = 111
        Top = 59
        Width = 273
        Height = 24
        DisplayAllFields = True
        TabSelects = True
        DataField = 'ID_CONTATO'
        DataSource = dsCadastro
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsLkpContatos
        RightTrimmedLookup = True
        TabOrder = 4
        UseRecordCount = True
      end
      object edtVENCIMENTO: TJvDBDateEdit
        Left = 553
        Top = 31
        Width = 119
        Height = 24
        DataField = 'VENCIMENTO'
        DataSource = dsCadastro
        DefaultToday = True
        ShowNullDate = False
        TabOrder = 3
      end
      object clkID_NATUREZA: TJvDBLookupCombo
        Left = 553
        Top = 59
        Width = 177
        Height = 24
        DataField = 'ID_NATUREZA'
        DataSource = dsCadastro
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsLkpNatureza
        TabOrder = 5
      end
      object edtVALOR: TJvDBCalcEdit
        Left = 111
        Top = 87
        Width = 121
        Height = 24
        DisplayFormat = '#,##0.00'
        TabOrder = 6
        DecimalPlacesAlwaysShown = False
        DataField = 'VALOR'
        DataSource = dsCadastro
      end
      object clkID_CONTACORRENTE: TJvDBLookupCombo
        Left = 111
        Top = 115
        Width = 273
        Height = 24
        DataField = 'ID_CONTACORRENTE'
        DataSource = dsCadastro
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsLkpContas
        TabOrder = 8
      end
      object dbmmoDESCRICAO: TDBMemo
        Left = 109
        Top = 146
        Width = 654
        Height = 344
        DataField = 'DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object cbbTIPO_PAGAMENTO: TJvDBComboBox
        Left = 553
        Top = 87
        Width = 205
        Height = 22
        Style = csOwnerDrawFixed
        DataField = 'TIPO_PAGTO'
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
        TabOrder = 7
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
    end
  end
  inherited dsCadastro: TDataSource
    Left = 184
    Top = 256
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 544
    Top = 336
  end
  object dsLkpContas: TDataSource
    DataSet = dmAcesso.QyLkpContaCorrente
    Left = 216
    Top = 352
  end
  object dsLkpNatureza: TDataSource
    Left = 376
    Top = 320
  end
  object dsLkpCondPagtos: TDataSource
    DataSet = dmAcesso.QyLKPCondicaoPagto
    Left = 480
    Top = 336
  end
  object dsLkpContatos: TDataSource
    DataSet = dmAcesso.QyLKPClientes
    Left = 320
    Top = 232
  end
end
