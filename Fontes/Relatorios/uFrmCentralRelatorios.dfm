object FrmCentralRelatorios: TFrmCentralRelatorios
  Left = 0
  Top = 0
  Caption = 'Central de Relatorios'
  ClientHeight = 402
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object JvOutlookSplitter1: TJvOutlookSplitter
    Left = 290
    Top = 0
    Width = 9
    Height = 365
    Cursor = crSizeWE
    Align = alLeft
    ColorFrom = 7703937
    ColorTo = 3823693
    ParentStyleManager = False
    ExplicitLeft = 273
    ExplicitHeight = 344
  end
  object dbgrd1: TJvDBGrid
    Left = 0
    Top = 0
    Width = 290
    Height = 365
    Align = alLeft
    DataSource = dsListaRelatorios
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 18
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 471
        Visible = True
      end>
  end
  object btn2: TJvXPButton
    Left = 0
    Top = 365
    Width = 814
    Height = 37
    Hint = 'Novo'
    Caption = '           Visualizar impress'#227'o'
    TabOrder = 1
    Glyph.Data = {
      07544269746D6170F6060000424DF60600000000000036000000280000001800
      0000180000000100180000000000C0060000120B0000120B0000000000000000
      0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6AFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF6C6A6AB0ADAD9692938E8A8B6C6A6A6C6A6A817E7F6C6A
      6ADDDCDCD0CFCF6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF6C6A6AD5D4D4C6C4C4A19F9FA19F9FA19F9F
      8381825C5B5BBCBCBCCECECECFCFCFD1D1D1D3D3D3CAC9C96C6A6A6C6A6A6C6A
      6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AD8D7D7E0DEDEC0BFBFA1
      9F9FA19F9FA19F9F6260600000000000001616165D5D5DA9A9A9CACACACACACA
      CACACACACACAC1C0C06C6A6A6C6A6A6C6A6AFF00FFFF00FF6C6A6AD3D3D3D4D3
      D3CFCFCF8C8A8A817F7F817F7F817F7F6C6A6A14141408080800000000000000
      00001616165D5D5DA9A9A9CACACACACACAB7B6B6B7B6B66C6A6AFF00FF6C6A6A
      CACACACACACAC6C6C68E8C8CB8B5B5B6B4B4A19F9FA19F9F9F9D9D9997979390
      918280805250502B2A2A080808000000000000161616646464817E7F6C6A6AFF
      00FFFF00FF6C6A6ACACACAC5C5C58E8C8CD7D4D4F7F6F6F6F4F4F2F0F0E0DEDE
      CAC7C7B6B5B5A5A3A3A19F9FA19F9F9E9A9C9390916865662322230303031919
      199997976C6A6AFF00FFFF00FF6C6A6AC5C5C58E8C8CE7E6E6F7F6F6F7F6F6F6
      F4F4F2F0F0EEEDEDEAEAEAE7E6E6E3E2E2D4D3D3C2C1C1AFADADA19F9FA19F9F
      9997978280806C6A6A9F9D9D6C6A6AFF00FFFF00FF6C6A6A8E8C8CEFEEEEF7F6
      F6F7F6F6F7F6F6F6F4F4D5D3D4867B7E958B8EC1BFBFDDDCDCE0E0E0DCDCDCD8
      D8D8D1D1D1C2C1C1B2B0B0A19F9F9C99996C6A6A6C6A6AFF00FFFF00FF6C6A6A
      CECBCCF7F6F6F7F6F6F7F6F6F7F6F6CFCBCCAFACADADABAB9E989883797B7569
      6B898081ABA5A6C7C6C6D5D5D5D1D1D1CECECEC9C7C7BBBABAA6A4A46C6A6AFF
      00FFFF00FFFF00FF6C6A6A6C6A6ACECBCCEDEBEBAFA4A56B5D5F766A6C83787A
      9C9697ACAAAAB2B0B0ABA7A9989192817778847A7D938C8EBFBFBFCBCBCBCACA
      CAC0C0C06C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6A6C6A6ABD8281AF
      8A737D5E516654566554576D5E626D5E62898081A09A9CAFACADB2B0B0A49FA0
      CAC9CACBCBCBB7B6B66C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFBD8281FFD4ABFFD0A1FFCB98D5A57BA1785C7B665F6050536656596F
      62658E8687CECCCCCFCFCFA5A4A46C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFBD8281FFD9B2FFD4A9FFCFA0FFCA97FFC68EFFC1
      86FFBF81FFC084BD82816C6A6A6C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFDDBAFFD8B1FFD3A7
      FFCE9EFFCA96FFC58CFFC084FFC084BD8281FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE5CBFF
      E1C2FFDCB8FFD7AFFFD3A6FFCE9DFFC995FFC48BBD8281FF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFBD8281FFEAD4FFE5CAFFE0C0FFDAB7FFD7ADFFD1A5FFCC9CFFC792BD8281FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFBD8281FFEEDCFFE9D1FFE3C9FFE0BFFFDAB6FFD5ACFFD0
      A3F7C297BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFBD8281FFF7EEFFF2E3FFEDDAFFE7D0FFE3C7
      FFDEBDFFD9B4FFD4ABBD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFAF3FFFAF3FFF6EDFF
      F0E2FFEBD9FFE7CFFFE2C5FFDDBCF2C7A9BD8281FF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD82
      81BD8281BD8281FFF4EBFFF0E1FFEBD7FFE6CEFBDCC0BD8281FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD8281BD8281BD8281FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF}
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = btn2Click
  end
  object ScrollBox1: TScrollBox
    Left = 336
    Top = -1183
    Width = 384
    Height = 1979
    TabOrder = 2
    object grpDataEmissao: TGroupBox
      Left = 0
      Top = 93
      Width = 380
      Height = 73
      Align = alTop
      Caption = ' Emiss'#227'o'
      TabOrder = 2
      Visible = False
      object chkEmissaoInicial: TCheckBox
        Left = 10
        Top = 19
        Width = 95
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Dt. Inicial'
        TabOrder = 2
      end
      object chkEmissaoFinal: TCheckBox
        Left = 10
        Top = 44
        Width = 95
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Dt. Final'
        TabOrder = 3
      end
      object dtpDataEmissaoInicial: TDateTimePicker
        Left = 110
        Top = 15
        Width = 95
        Height = 22
        Date = 41091.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.498096273149712900
        TabOrder = 0
      end
      object dtpDataEmissaoFinal: TDateTimePicker
        Left = 110
        Top = 40
        Width = 95
        Height = 22
        Date = 41091.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.498096273149712900
        TabOrder = 1
      end
    end
    object grpMarca: TGroupBox
      Left = 0
      Top = 607
      Width = 380
      Height = 71
      Align = alTop
      Caption = ' Marcas'
      TabOrder = 3
      Visible = False
      DesignSize = (
        380
        71)
      object clkMarcas: TJvDBLookupCombo
        Left = 6
        Top = 19
        Width = 365
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsMarcas
        TabOrder = 0
      end
      object chkAllMarca: TCheckBox
        Left = 6
        Top = 45
        Width = 155
        Height = 17
        Caption = 'Todas as marcas'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object pnl2: TPanel
      Left = 0
      Top = 0
      Width = 380
      Height = 23
      Align = alTop
      Caption = 'Parametros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 4
    end
    object rgTipoContato: TRadioGroup
      Left = 0
      Top = 403
      Width = 380
      Height = 137
      Align = alTop
      Caption = ' Tipo Contato'
      ItemIndex = 5
      Items.Strings = (
        'Clientes'
        'Fornecedores'
        'Transportadoras'
        'Indicadores'
        'Revendedores'
        'Todos')
      TabOrder = 5
      Visible = False
    end
    object grpBloqueado: TGroupBox
      Left = 0
      Top = 822
      Width = 380
      Height = 56
      Align = alTop
      Caption = ' Situa'#231#227'o'
      TabOrder = 6
      Visible = False
      object cbbBloqueado: TComboBox
        Left = 20
        Top = 21
        Width = 131
        Height = 22
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 0
        Text = 'Ambas'
        Items.Strings = (
          'Ativos'
          'Bloqueados'
          'Ambas')
      end
    end
    object grpGrupo: TGroupBox
      Left = 0
      Top = 23
      Width = 380
      Height = 70
      Align = alTop
      Caption = ' Grupos'
      TabOrder = 7
      Visible = False
      DesignSize = (
        380
        70)
      object clkGrupo: TJvDBLookupCombo
        Left = 6
        Top = 24
        Width = 367
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsGrupos
        TabOrder = 0
      end
      object chkAllGrupo: TCheckBox
        Left = 6
        Top = 48
        Width = 219
        Height = 17
        Caption = 'Todos os grupos'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpTipoPedido: TGroupBox
      Left = 0
      Top = 762
      Width = 380
      Height = 60
      Align = alTop
      Caption = ' Situa'#231#227'o do Pedido'
      TabOrder = 0
      Visible = False
      object lbl4: TLabel
        Left = 23
        Top = 24
        Width = 77
        Height = 14
        Caption = 'Tipo Pedido'
      end
      object cbbTipoPedido: TJvDBComboBox
        Left = 108
        Top = 21
        Width = 250
        Height = 22
        TabOrder = 0
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object grpVencimento: TGroupBox
      Left = 0
      Top = 166
      Width = 380
      Height = 73
      Align = alTop
      Caption = ' Vencimento'
      TabOrder = 1
      Visible = False
      object chkVencimentoInicial: TCheckBox
        Left = 10
        Top = 20
        Width = 95
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Dt. Inicial'
        TabOrder = 2
      end
      object chkVencimentoFinal: TCheckBox
        Left = 10
        Top = 44
        Width = 95
        Height = 13
        Alignment = taLeftJustify
        Caption = 'Dt. Final'
        TabOrder = 3
      end
      object dtpDataVenctoInicial: TDateTimePicker
        Left = 112
        Top = 15
        Width = 95
        Height = 22
        Date = 41091.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.498096273149712900
        TabOrder = 0
      end
      object dtpDataVenctoFinal: TDateTimePicker
        Left = 112
        Top = 40
        Width = 95
        Height = 22
        Date = 41091.000000000000000000
        Format = 'dd/MM/yyyy'
        Time = 0.498096273149712900
        TabOrder = 1
      end
    end
    object grpDepartamento: TGroupBox
      Left = 0
      Top = 321
      Width = 380
      Height = 82
      Align = alTop
      Caption = ' Departamento'
      TabOrder = 8
      Visible = False
      DesignSize = (
        380
        82)
      object clkDepartamento: TJvDBLookupCombo
        Left = 6
        Top = 24
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
      object chkAllDepartamento: TCheckBox
        Left = 6
        Top = 48
        Width = 203
        Height = 17
        Caption = 'Todos os departamentos'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpMecanico: TGroupBox
      Left = 0
      Top = 540
      Width = 380
      Height = 67
      Align = alTop
      Caption = ' Mec'#226'nico'
      TabOrder = 9
      Visible = False
      DesignSize = (
        380
        67)
      object clkCbbMecanico: TJvDBLookupCombo
        Left = 10
        Top = 18
        Width = 355
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
      object chkAllMecanico: TCheckBox
        Left = 10
        Top = 43
        Width = 155
        Height = 17
        Caption = 'Todos os Mec'#226'nicos'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpCategoria: TGroupBox
      Left = 0
      Top = 239
      Width = 380
      Height = 82
      Align = alTop
      Caption = ' Categoria'
      TabOrder = 10
      Visible = False
      DesignSize = (
        380
        82)
      object clkCategoria: TJvDBLookupCombo
        Left = 6
        Top = 21
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
      object chkAllCategoria: TCheckBox
        Left = 6
        Top = 48
        Width = 197
        Height = 17
        Caption = 'Todas Categoria'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpTipoLancamento: TGroupBox
      Left = 0
      Top = 678
      Width = 380
      Height = 84
      Align = alTop
      Caption = ' Situa'#231#227'o'
      TabOrder = 11
      Visible = False
      object lblTipoVenda: TLabel
        Left = 23
        Top = 24
        Width = 105
        Height = 14
        Caption = 'Tipo Lan'#231'amento'
      end
      object lblTipoVenda2: TLabel
        Left = 72
        Top = 51
        Width = 56
        Height = 14
        Caption = 'Situa'#231#227'o'
      end
      object cbbTipoLancamento: TComboBox
        Left = 135
        Top = 21
        Width = 147
        Height = 22
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'T'#237'tulos a Receber'
        Items.Strings = (
          'T'#237'tulos a Receber'
          'T'#237'tulos a Pagar')
      end
      object cbbSituacao: TComboBox
        Left = 135
        Top = 48
        Width = 147
        Height = 22
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Em aberto'
        OnCloseUp = cbbSituacaoCloseUp
        Items.Strings = (
          'Em aberto'
          'Baixado (por negocia'#231#227'o)'
          'Liquidado'
          'Ambos')
      end
    end
    object grpOrdem: TGroupBox
      Left = 0
      Top = 878
      Width = 380
      Height = 56
      Align = alTop
      Caption = ' Ordem'
      TabOrder = 12
      Visible = False
      object cbbColunaOrdem: TComboBox
        Left = 20
        Top = 21
        Width = 131
        Height = 22
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Vencimento'
        Items.Strings = (
          'Vencimento'
          'Emiss'#227'o'
          'Data Baixa'
          'Valor'
          'Nome do Cliente'
          'Forma Pagto')
      end
      object cbbOrdem: TComboBox
        Left = 172
        Top = 21
        Width = 131
        Height = 22
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Crescente'
        Items.Strings = (
          'Crescente'
          'Decrescente')
      end
    end
    object grpProdutos: TGroupBox
      Left = 0
      Top = 976
      Width = 380
      Height = 64
      Align = alTop
      Caption = ' Produtos'
      TabOrder = 13
      Visible = False
      DesignSize = (
        380
        64)
      object clkProdutos: TJvDBLookupCombo
        Left = 6
        Top = 21
        Width = 345
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'DESCRICAO'
        TabOrder = 0
      end
      object chkAllProdutos: TCheckBox
        Left = 6
        Top = 43
        Width = 203
        Height = 17
        Caption = ' Todos os produtos'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpExibeCampo: TGroupBox
      Left = 0
      Top = 934
      Width = 380
      Height = 42
      Align = alTop
      Caption = ' '
      TabOrder = 14
      Visible = False
      object chkApelido: TCheckBox
        Left = 11
        Top = 16
        Width = 203
        Height = 17
        Caption = ' Exibe Apelido/N. Fantasia do contato?'
        TabOrder = 0
      end
    end
    object grpFornecedor: TGroupBox
      Left = 0
      Top = 1110
      Width = 380
      Height = 70
      Align = alTop
      Caption = ' Fornecedores'
      TabOrder = 15
      Visible = False
      DesignSize = (
        380
        70)
      object clkFornecedor: TJvDBLookupCombo
        Left = 6
        Top = 24
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
      object chkAllFornecedor: TCheckBox
        Left = 3
        Top = 50
        Width = 222
        Height = 17
        Caption = 'Todos os Fornecedores'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpCliente: TGroupBox
      Left = 0
      Top = 1369
      Width = 380
      Height = 68
      Align = alTop
      Caption = ' Clientes'
      TabOrder = 16
      Visible = False
      DesignSize = (
        380
        68)
      object clkCliente: TJvDBLookupCombo
        Left = 10
        Top = 18
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsContatos
        TabOrder = 0
      end
      object chkAllCliente: TCheckBox
        Left = 10
        Top = 44
        Width = 155
        Height = 17
        Caption = 'Todos os Clientes'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpMes: TGroupBox
      Left = 0
      Top = 1243
      Width = 380
      Height = 63
      Align = alTop
      Caption = ' M'#234's'
      TabOrder = 17
      Visible = False
      object cbbMes: TJvComboBox
        Left = 11
        Top = 22
        Width = 214
        Height = 22
        Style = csDropDownList
        DropDownCount = 13
        TabOrder = 0
        Text = 'Todos os Meses'
        Items.Strings = (
          'Todos os Meses'
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
        ItemIndex = 0
      end
    end
    object grpAno: TGroupBox
      Left = 0
      Top = 1180
      Width = 380
      Height = 63
      Align = alTop
      Caption = ' Ano'
      TabOrder = 18
      Visible = False
      object cbbAno: TJvComboBox
        Left = 11
        Top = 22
        Width = 214
        Height = 22
        Style = csDropDownList
        DropDownCount = 10
        TabOrder = 0
        Text = '2015'
        Items.Strings = (
          'Todos os anos'
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030'
          '2031'
          '2032'
          '2033'
          '2034'
          '2035'
          '2036'
          '2037'
          '2038'
          '2039'
          '2040')
        ItemIndex = 6
      end
    end
    object grpSituacaoOS: TGroupBox
      Left = 0
      Top = 1306
      Width = 380
      Height = 63
      Align = alTop
      Caption = ' Situa'#231#227'o da O.S'
      TabOrder = 19
      Visible = False
      object cbbSitOS: TJvComboBox
        Left = 11
        Top = 22
        Width = 214
        Height = 22
        Style = csDropDownList
        DropDownCount = 13
        TabOrder = 0
        Text = 'Aberta'
        Items.Strings = (
          'Aberta'
          'Finalizada'
          'Cancelada'
          'Faturada')
        ItemIndex = 0
      end
    end
    object grpFilialCorrente: TGroupBox
      Left = 0
      Top = 1437
      Width = 380
      Height = 72
      Align = alTop
      Caption = ' Filial'
      TabOrder = 20
      Visible = False
      DesignSize = (
        380
        72)
      object clkFilialCorrente: TJvDBLookupCombo
        Left = 6
        Top = 24
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'FANTASIA'
        TabOrder = 0
      end
    end
    object grpTP: TGroupBox
      Left = 0
      Top = 1509
      Width = 380
      Height = 56
      Align = alTop
      Caption = ' Tabelas de Pre'#231'o'
      TabOrder = 21
      Visible = False
      DesignSize = (
        380
        56)
      object clkTabelaPreco: TJvDBLookupCombo
        Left = 10
        Top = 18
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID_TABELAPRECO'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
    end
    object grpCFOP: TGroupBox
      Left = 0
      Top = 1040
      Width = 380
      Height = 70
      Align = alTop
      Caption = ' CFOP'
      TabOrder = 22
      Visible = False
      object chkCFOP: TCheckBox
        Left = 3
        Top = 50
        Width = 155
        Height = 17
        Caption = 'Filtrar por CFOP'
        TabOrder = 0
      end
      object edtCFOP: TEdit
        Left = 9
        Top = 22
        Width = 88
        Height = 22
        NumbersOnly = True
        TabOrder = 1
        Text = '5102'
      end
    end
    object grpCondicaoPagamento: TGroupBox
      Left = 0
      Top = 1565
      Width = 380
      Height = 70
      Align = alTop
      Caption = ' Condi'#231#227'o de Pagamento'
      TabOrder = 23
      Visible = False
      DesignSize = (
        380
        70)
      object clkCondPagto: TJvDBLookupCombo
        Left = 10
        Top = 18
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
      object chkAllCondPagto: TCheckBox
        Left = 11
        Top = 45
        Width = 270
        Height = 17
        Caption = ' Todas as condi'#231#245'es de pagamentos'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpUsuario: TGroupBox
      Left = 0
      Top = 1722
      Width = 380
      Height = 68
      Align = alTop
      Caption = 'Vendedor'
      TabOrder = 24
      Visible = False
      DesignSize = (
        380
        68)
      object clkVendedor: TJvDBLookupCombo
        Left = 10
        Top = 18
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        TabOrder = 0
      end
      object chkUsuario: TCheckBox
        Left = 10
        Top = 44
        Width = 155
        Height = 17
        Caption = 'Todos os Vendedores'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpCidades: TGroupBox
      Left = 0
      Top = 1635
      Width = 380
      Height = 87
      Align = alTop
      Caption = 'Cidades'
      TabOrder = 25
      Visible = False
      DesignSize = (
        380
        87)
      object clkLkpCidades: TJvDBLookupCombo
        Left = 10
        Top = 19
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsCidades
        TabOrder = 0
      end
      object chkSelectedCidade: TCheckBox
        Left = 10
        Top = 44
        Width = 155
        Height = 17
        Caption = 'Cidade Selecionada'
        TabOrder = 1
      end
    end
    object grpRotas: TGroupBox
      Left = 0
      Top = 1790
      Width = 380
      Height = 71
      Align = alTop
      Caption = 'Rotas'
      TabOrder = 26
      Visible = False
      DesignSize = (
        380
        71)
      object clkLkpRotas: TJvDBLookupCombo
        Left = 9
        Top = 19
        Width = 360
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsRotas
        TabOrder = 0
      end
      object chkRotaSelected: TCheckBox
        Left = 6
        Top = 45
        Width = 155
        Height = 17
        Caption = 'Rota Selecionada'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
    end
    object grpEstoquePositivo: TGroupBox
      Left = 0
      Top = 1861
      Width = 380
      Height = 52
      Align = alTop
      Caption = 'Estoque'
      TabOrder = 27
      Visible = False
      object chkEstoque: TCheckBox
        Left = 9
        Top = 21
        Width = 256
        Height = 17
        Caption = 'Somente estoque positivo?'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object dsListaRelatorios: TDataSource
    DataSet = cdsRelatorio
    Left = 64
    Top = 104
  end
  object dspRelatorios: TDataSetProvider
    DataSet = dmAcesso.QyListaRelatorios
    Left = 176
    Top = 56
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorios'
    AfterScroll = cdsRelatorioAfterScroll
    Left = 104
    Top = 120
  end
  object dsMarcas: TDataSource
    DataSet = dmAcesso.QyLKPMarcas
    Left = 544
    Top = 184
  end
  object dsGrupos: TDataSource
    DataSet = dmAcesso.QyLKPGrupoProduto
    Left = 544
    Top = 134
  end
  object dsRotas: TDataSource
    DataSet = dmAcesso.QyLKPRotas
    Left = 496
    Top = 258
  end
  object dsCidades: TDataSource
    DataSet = dmAcesso.QyLKPCidades
    Left = 544
    Top = 290
  end
  object dsContatos: TDataSource
    DataSet = dmAcesso.QyLKPClientes
    Left = 616
    Top = 65528
  end
end
