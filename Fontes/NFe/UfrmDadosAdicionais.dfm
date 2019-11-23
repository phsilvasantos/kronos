object frmDadosAdicionais: TfrmDadosAdicionais
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Dados Adicionais'
  ClientHeight = 450
  ClientWidth = 815
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 815
    Height = 121
    Align = alTop
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 19
      Top = 14
      Width = 102
      Height = 13
      Caption = '* Tipo Documento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 136
      Top = 14
      Width = 67
      Height = 13
      Caption = '* Finalidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 307
      Top = 14
      Width = 134
      Height = 13
      Caption = '* Tipo impress'#227'o DANFE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 453
      Top = 14
      Width = 82
      Height = 13
      Caption = '* N'#250'mero NF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 19
      Top = 65
      Width = 134
      Height = 13
      Caption = '* Natureza da opera'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 591
      Top = 61
      Width = 55
      Height = 13
      Caption = 'Cod. CFOP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl26: TLabel
      Left = 541
      Top = 14
      Width = 75
      Height = 13
      Caption = '* Dt. Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl27: TLabel
      Left = 639
      Top = 14
      Width = 126
      Height = 13
      Caption = '* Data e hora de sa'#237'da'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbbTIPODOCUMENTO: TJvComboBox
      Left = 19
      Top = 32
      Width = 111
      Height = 24
      Style = csDropDownList
      ReadOnly = True
      TabOrder = 0
      Text = '1 - Sa'#237'da'
      Items.Strings = (
        '0 - Entrada'
        '1 - Sa'#237'da'
        '2 - Sa'#237'da (Devolu'#231#227'o de compra)')
      ItemIndex = 1
    end
    object cbbFINALIDADE: TJvComboBox
      Left = 134
      Top = 32
      Width = 169
      Height = 24
      Style = csDropDownList
      TabOrder = 1
      Text = '1 - NF-e normal'
      Items.Strings = (
        '1 - NF-e normal'
        '2 - NF-e complementar'
        '3 - NF-e Ajuste'
        '4 - NF-e Devolu'#231#227'o')
      ItemIndex = 0
    end
    object cbbTIPOIMPRESSAO: TJvComboBox
      Left = 307
      Top = 32
      Width = 136
      Height = 24
      Style = csDropDownList
      TabOrder = 2
      Text = 'Retrato'
      Items.Strings = (
        'Retrato'
        'Paisagem')
      ItemIndex = 0
    end
    object edtNumeroNFe: TEdit
      Left = 447
      Top = 32
      Width = 93
      Height = 24
      MaxLength = 9
      NumbersOnly = True
      TabOrder = 3
      Text = '1'
      OnExit = edtNumeroNFeExit
    end
    object edtdescricaoCFOP: TEdit
      Left = 19
      Top = 80
      Width = 569
      Height = 24
      CharCase = ecUpperCase
      MaxLength = 60
      TabOrder = 4
      Text = 'VENDA DE MERCADORIA'
      OnExit = edtdescricaoCFOPExit
    end
    object edtCFOP: TEdit
      Left = 591
      Top = 80
      Width = 60
      Height = 24
      MaxLength = 4
      NumbersOnly = True
      TabOrder = 5
      Text = '5102'
      OnExit = edtCFOPExit
    end
    object dtpHora: TDateTimePicker
      Left = 727
      Top = 31
      Width = 79
      Height = 24
      Date = 41107.000000000000000000
      Time = 0.858826030089403500
      Kind = dtkTime
      TabOrder = 6
      OnChange = dtpHoraChange
    end
    object btnCFOP: TJvXPButton
      Left = 654
      Top = 80
      Width = 24
      Height = 24
      TabOrder = 7
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
        001008060000001FF3FF61000000097048597300000B1300000B1301009A9C18
        0000000467414D410000B18E7CFB5193000002514944415478DA95925D485361
        18C7FF67E7E8B6B3DC8E993074D3C858D1DA5C33E8833EAC0656180451B406DE
        94118160ED4A42D069BB6A849117D1075DA41026C11A5D043976A1EE22A661AD
        D460A541ABE13C5BDB5C73EDF46E8C6E3A437BE0CF0BCFF3FE7FEFFBBCCF4B09
        828052D1DADA6722CB51856A43F7EF6C5625914862A99FA93E921BF378BAA7F3
        7BA85200623E296765439AADB59CAE6537A4554A44E77EE0FDAB4910089F8C25
        6C04F25214903F59A164BD57AF1CE78C07F5781448E35BF817AAABA4D06ACA30
        EF1E4370FC5D1E72A414E0BAA1D9E46AB79F827F2689E0F70C365530D0D49443
        A562C0B1C0BD8EFB087F8DD84501E76DB7970F7758B9055E0E9ACE41DF2083AE
        4E0629432147EAE5443EF71BBC1EF6F1A280B35657CEE2E8A4A62697603629D0
        A46721A72994919A84689528B218C51DFB434114606D1B586E6ABFC02DC5691C
        DBAF84BA92819CE4D5C57A94C83F318BD1BB1EBEE41B68B76B5D3BDA6C303530
        502A2890B6A1295E3F1FF6AE27F83413B2979C02A7AEF65A3ACF71869D1B41E7
        E74DA42C42C67D1F3138F8825F49A545A6F0EC8010AEBF8CAE07C95BE995CCA5
        A66603B7C76284BAA6129FBF2C61E2B91FC1C03C9F8CA7FEFD07C2F03E814A67
        3035BD08D74223F8ECA15D6C053BC0308C31BBBAAA92D0742C114B88FF446168
        AF40657208BD9DC3684C8744ED35F4F45B29AC110540C14C66130A7CC0487C1B
        F8CD4E387B2C6B9A0B80DC63B3405165580CCCE229BF05D1BA7E381D27D6652E
        00DCFDA785C68817237C03A2F54EDCEC6D59B7F96F0B175BCD82C67C03BD8E33
        FF65CEC71F7071032C888175410000000049454E44AE426082}
      Visible = False
      OnClick = btnCFOPClick
    end
    object dtpDTSaida: TDateTimePicker
      Left = 637
      Top = 31
      Width = 88
      Height = 24
      Date = 41107.000000000000000000
      Time = 0.858826030089403500
      TabOrder = 8
    end
    object dtpDTEmissao: TDateTimePicker
      Left = 545
      Top = 31
      Width = 88
      Height = 24
      Date = 41107.000000000000000000
      Time = 0.858826030089403500
      TabOrder = 9
    end
  end
  object pgcDadosAdicionais: TJvgPageControl
    Left = 0
    Top = 121
    Width = 815
    Height = 280
    ActivePage = tsLocalEntrega
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    TabStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabStyle.BevelInner = bvNone
    TabStyle.BevelOuter = bvNone
    TabStyle.Bold = False
    TabStyle.BackgrColor = clBtnShadow
    TabStyle.Font.Charset = DEFAULT_CHARSET
    TabStyle.Font.Color = clBtnHighlight
    TabStyle.Font.Height = -11
    TabStyle.Font.Name = 'Arial'
    TabStyle.Font.Style = []
    TabStyle.CaptionHAlign = fhaCenter
    TabStyle.Gradient.Active = False
    TabStyle.Gradient.Orientation = fgdHorizontal
    TabSelectedStyle.Borders = [fsdLeft, fsdTop, fsdRight, fsdBottom]
    TabSelectedStyle.BevelInner = bvNone
    TabSelectedStyle.BevelOuter = bvNone
    TabSelectedStyle.Bold = False
    TabSelectedStyle.BackgrColor = clBtnFace
    TabSelectedStyle.Font.Charset = DEFAULT_CHARSET
    TabSelectedStyle.Font.Color = clBtnText
    TabSelectedStyle.Font.Height = -11
    TabSelectedStyle.Font.Name = 'Arial'
    TabSelectedStyle.Font.Style = []
    TabSelectedStyle.CaptionHAlign = fhaCenter
    TabSelectedStyle.Gradient.Active = False
    TabSelectedStyle.Gradient.Orientation = fgdHorizontal
    Options = [ftoAutoFontDirection, ftoExcludeGlyphs]
    object tsInformacoesAdicionais: TTabSheet
      Caption = 'Informa'#231#245'es Adicionais'
      ImageIndex = 4
      object mmoDadosAdicionais: TJvMemo
        Left = 0
        Top = 0
        Width = 807
        Height = 250
        Align = alClient
        Lines.Strings = (
          'EMPRESA OPTANTE PELO SIMPLES NACIONAL')
        TabOrder = 0
      end
    end
    object ts1: TTabSheet
      Caption = 'Transporte'
      object pgcTransportador: TPageControl
        Left = 0
        Top = 0
        Width = 807
        Height = 250
        ActivePage = tsTransportador
        Align = alClient
        TabOrder = 0
        object tsTransportador: TTabSheet
          Caption = 'Transportador'
          object grpIdentificacaoTransportador: TGroupBox
            Left = 0
            Top = 0
            Width = 799
            Height = 106
            Align = alTop
            Caption = ' Identifica'#231#227'o'
            TabOrder = 0
            object lbl7: TLabel
              Left = 12
              Top = 74
              Width = 118
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Raz'#227'o Social/Nome'
            end
            object lbl8: TLabel
              Left = 15
              Top = 19
              Width = 118
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'CPF/CNPJ'
            end
            object lbl9: TLabel
              Left = 12
              Top = 45
              Width = 118
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Insc. Estadual'
            end
            object edtRazao: TDBEdit
              Left = 141
              Top = 70
              Width = 417
              Height = 23
              CharCase = ecUpperCase
              DataField = 'NOME_TRANSPORTADOR'
              DataSource = dsTransportador
              MaxLength = 60
              TabOrder = 2
            end
            object edtCNPJ: TDBEdit
              Left = 141
              Top = 16
              Width = 118
              Height = 23
              CharCase = ecUpperCase
              DataField = 'CPFCNPJ'
              DataSource = dsTransportador
              MaxLength = 14
              TabOrder = 0
              OnExit = edtCNPJExit
            end
            object edtIE: TDBEdit
              Left = 141
              Top = 43
              Width = 150
              Height = 23
              CharCase = ecUpperCase
              DataField = 'INSC_ESTADUAL'
              DataSource = dsTransportador
              MaxLength = 14
              TabOrder = 1
            end
            object btnBuscaTransportador: TBitBtn
              Left = 265
              Top = 14
              Width = 120
              Height = 23
              Caption = 'Transportador'
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
              TabOrder = 3
              OnClick = btnBuscaTransportadorClick
            end
            object BitBtn1: TBitBtn
              Left = 388
              Top = 14
              Width = 165
              Height = 23
              Caption = 'Remover Transportador'
              TabOrder = 4
              OnClick = BitBtn1Click
            end
          end
          object grpEnderecoTransportador: TGroupBox
            Left = 0
            Top = 106
            Width = 799
            Height = 114
            Align = alClient
            Caption = ' Endere'#231'o'
            TabOrder = 1
            object lbl10: TLabel
              Left = 15
              Top = 24
              Width = 118
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Logradouro'
            end
            object lbl11: TLabel
              Left = 15
              Top = 51
              Width = 118
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Cidade'
            end
            object lbl12: TLabel
              Left = 15
              Top = 78
              Width = 118
              Height = 15
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Estado'
            end
            object edtEndereco: TDBEdit
              Left = 139
              Top = 20
              Width = 417
              Height = 23
              CharCase = ecUpperCase
              DataField = 'ENDERECO'
              DataSource = dsTransportador
              MaxLength = 60
              TabOrder = 0
            end
            object edtCidade: TDBEdit
              Left = 139
              Top = 47
              Width = 270
              Height = 23
              CharCase = ecUpperCase
              DataField = 'NOME_CIDADE'
              DataSource = dsTransportador
              MaxLength = 60
              TabOrder = 1
            end
            object cbbEstado: TDBComboBox
              Left = 139
              Top = 74
              Width = 94
              Height = 23
              Style = csDropDownList
              DataField = 'UF'
              DataSource = dsTransportador
              Items.Strings = (
                'RO'
                'AC'
                'AM'
                'RR'
                'PA'
                'AP'
                'TO'
                'MA'
                'PI'
                'CE'
                'RN'
                'PB'
                'PE'
                'AL'
                'SE'
                'BA'
                'MG'
                'ES'
                'RJ'
                'SP'
                'PR'
                'SC'
                'RS'
                'MS'
                'MT'
                'GO'
                'DF')
              TabOrder = 2
            end
          end
        end
        object tsVeiculo: TTabSheet
          Caption = 'Ve'#237'culo'
          ImageIndex = 1
          object lbl19: TLabel
            Left = 10
            Top = 65
            Width = 118
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'RNTC'
          end
          object lbl13: TLabel
            Left = 10
            Top = 38
            Width = 118
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Estado'
          end
          object lbl14: TLabel
            Left = 10
            Top = 11
            Width = 118
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Placa'
          end
          object edtRNTC: TDBEdit
            Left = 139
            Top = 62
            Width = 158
            Height = 23
            DataField = 'VEIC_RNTC'
            DataSource = dsTransportador
            MaxLength = 20
            TabOrder = 2
          end
          object cbbEstadoPlaca: TDBComboBox
            Left = 139
            Top = 35
            Width = 94
            Height = 23
            Style = csDropDownList
            DataField = 'VEIC_UF'
            DataSource = dsTransportador
            Items.Strings = (
              'NI'
              'RO'
              'AC'
              'AM'
              'RR'
              'PA'
              'AP'
              'TO'
              'MA'
              'PI'
              'CE'
              'RN'
              'PB'
              'PE'
              'AL'
              'SE'
              'BA'
              'MG'
              'ES'
              'RJ'
              'SP'
              'PR'
              'SC'
              'RS'
              'MS'
              'MT'
              'GO'
              'DF')
            TabOrder = 1
          end
          object edtPlaca: TDBEdit
            Left = 139
            Top = 8
            Width = 94
            Height = 23
            CharCase = ecUpperCase
            DataField = 'VEIC_PLACA'
            DataSource = dsTransportador
            MaxLength = 8
            TabOrder = 0
          end
        end
      end
    end
    object tsVolumes: TTabSheet
      Caption = 'Volumes'
      ImageIndex = 3
      object lbl24: TLabel
        Left = 24
        Top = 15
        Width = 64
        Height = 15
        Alignment = taRightJustify
        Caption = 'Quantidade'
      end
      object lbl20: TLabel
        Left = 457
        Top = 42
        Width = 63
        Height = 15
        Alignment = taRightJustify
        Caption = 'Numera'#231#227'o'
      end
      object lbl25: TLabel
        Left = 437
        Top = 15
        Width = 83
        Height = 15
        Alignment = taRightJustify
        Caption = 'Peso Bruto (Kg)'
      end
      object lbl16: TLabel
        Left = 228
        Top = 15
        Width = 71
        Height = 15
        Alignment = taRightJustify
        Caption = 'Peso Liq. (kg)'
      end
      object lbl17: TLabel
        Left = 263
        Top = 42
        Width = 36
        Height = 15
        Alignment = taRightJustify
        Caption = 'Marca'
      end
      object lbl18: TLabel
        Left = 47
        Top = 42
        Width = 41
        Height = 15
        Alignment = taRightJustify
        Caption = 'Esp'#233'cie'
      end
      object edtQuantidade: TJvCalcEdit
        Left = 101
        Top = 12
        Width = 85
        Height = 23
        DecimalPlaces = 1
        DisplayFormat = '0.#'
        ButtonWidth = 22
        TabOrder = 0
        Value = 1.000000000000000000
        DecimalPlacesAlwaysShown = False
      end
      object edtNumeracao: TEdit
        Left = 533
        Top = 39
        Width = 104
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object edtClcPBruto: TJvCalcEdit
        Left = 533
        Top = 12
        Width = 85
        Height = 23
        DecimalPlaces = 3
        DisplayFormat = '#,###0.000'
        ButtonWidth = 22
        TabOrder = 2
        DecimalPlacesAlwaysShown = False
      end
      object edtClcPLiquido: TJvCalcEdit
        Left = 312
        Top = 12
        Width = 85
        Height = 23
        DecimalPlaces = 3
        DisplayFormat = '#,###0.000'
        ButtonWidth = 22
        TabOrder = 1
        DecimalPlacesAlwaysShown = False
      end
      object edtMarca: TEdit
        Left = 312
        Top = 39
        Width = 104
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object edtEspecie: TEdit
        Left = 101
        Top = 39
        Width = 104
        Height = 23
        CharCase = ecUpperCase
        TabOrder = 3
      end
    end
    object tsECF: TTabSheet
      Caption = 'Cupom Fiscal Vinculado a NF-e'
      ImageIndex = 2
      object lbl21: TLabel
        Left = 10
        Top = 11
        Width = 118
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numero ECF'
      end
      object lbl22: TLabel
        Left = 10
        Top = 41
        Width = 118
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Numero COO'
      end
      object lbl23: TLabel
        Left = 10
        Top = 70
        Width = 118
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Modelo'
      end
      object edtNumeroECF: TEdit
        Left = 139
        Top = 8
        Width = 94
        Height = 23
        MaxLength = 8
        NumbersOnly = True
        TabOrder = 0
      end
      object edtNumeroCOO: TEdit
        Left = 139
        Top = 38
        Width = 94
        Height = 23
        MaxLength = 8
        NumbersOnly = True
        TabOrder = 1
      end
      object cbbModeloECF: TComboBox
        Left = 139
        Top = 67
        Width = 94
        Height = 23
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 2
        Text = '2D'
        Items.Strings = (
          '2B'
          '2C'
          '2D')
      end
    end
    object tsNotaFiscal: TTabSheet
      Caption = 'NF-e/CT-e Vinculada'
      ImageIndex = 2
      object lbl15: TLabel
        Left = 26
        Top = 16
        Width = 66
        Height = 16
        Caption = 'Chave NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 26
        Top = 44
        Width = 67
        Height = 16
        Caption = 'Chave CT-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtChave: TEdit
        Left = 98
        Top = 14
        Width = 374
        Height = 23
        MaxLength = 44
        NumbersOnly = True
        TabOrder = 0
      end
      object edtChaveCTe: TEdit
        Left = 98
        Top = 42
        Width = 374
        Height = 23
        MaxLength = 44
        NumbersOnly = True
        TabOrder = 1
      end
    end
    object tsLocalEntrega: TTabSheet
      Caption = 'Local de entrega'
      ImageIndex = 5
      object grpEE: TGroupBox
        Left = 0
        Top = 22
        Width = 807
        Height = 228
        Align = alClient
        Caption = ' Endere'#231'o'
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 39
          Top = 106
          Width = 52
          Height = 15
          Alignment = taRightJustify
          Caption = '*Estados:'
        end
        object Label2: TLabel
          Left = 404
          Top = 106
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = '*Munic'#237'pio:'
        end
        object Label3: TLabel
          Left = 15
          Top = 200
          Width = 603
          Height = 15
          Caption = 
            '* Campos obrigat'#243'rios - Caso falte algum campo ser preenchido os' +
            ' dados n'#227'o ser'#227'o adicionado a nota fiscal.'
        end
        object lbledtEECPFCNPJ: TLabeledEdit
          Left = 95
          Top = 18
          Width = 121
          Height = 23
          EditLabel.Width = 59
          EditLabel.Height = 15
          EditLabel.Caption = '*CPF/CNPJ:'
          LabelPosition = lpLeft
          TabOrder = 0
          OnExit = lbledtEECPFCNPJExit
        end
        object lbledtLEEndereco: TLabeledEdit
          Left = 95
          Top = 47
          Width = 305
          Height = 23
          EditLabel.Width = 72
          EditLabel.Height = 15
          EditLabel.Caption = '*Logradouro:'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object lbledtEEComplemento: TLabeledEdit
          Left = 95
          Top = 74
          Width = 305
          Height = 23
          EditLabel.Width = 78
          EditLabel.Height = 15
          EditLabel.Caption = 'Complemento:'
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object lbledtEEBairro: TLabeledEdit
          Left = 472
          Top = 74
          Width = 264
          Height = 23
          EditLabel.Width = 44
          EditLabel.Height = 15
          EditLabel.Caption = '*Bairro:'
          LabelPosition = lpLeft
          TabOrder = 3
        end
        object lbledtEENumero: TLabeledEdit
          Left = 472
          Top = 47
          Width = 121
          Height = 23
          EditLabel.Width = 52
          EditLabel.Height = 15
          EditLabel.Caption = '*N'#250'mero:'
          LabelPosition = lpLeft
          TabOrder = 4
        end
        object dblkcbbEEID_ESTADO: TDBLookupComboBox
          Left = 95
          Top = 102
          Width = 66
          Height = 23
          KeyField = 'ID'
          ListField = 'SIGLA'
          ListSource = dsEstado
          TabOrder = 5
        end
        object dblkcbbEEID_MUNICIPIO: TDBLookupComboBox
          Left = 472
          Top = 102
          Width = 247
          Height = 23
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsQyMunicipio
          TabOrder = 6
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object chkLocalEntrega: TCheckBox
          Left = 6
          Top = 2
          Width = 193
          Height = 17
          Caption = 'Informar endere'#231'o de entrega'
          TabOrder = 0
          OnClick = chkLocalEntregaClick
        end
      end
    end
    object tsLocalRetirada: TTabSheet
      Caption = 'Local de retirada'
      ImageIndex = 6
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 807
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object chkLocalRetirada: TCheckBox
          Left = 6
          Top = 3
          Width = 193
          Height = 17
          Caption = 'Informar endere'#231'o de retirada'
          TabOrder = 0
          OnClick = chkLocalRetiradaClick
        end
      end
      object grpLR: TGroupBox
        Left = 0
        Top = 22
        Width = 807
        Height = 228
        Align = alClient
        Caption = ' Endere'#231'o'
        Enabled = False
        TabOrder = 1
        object Label4: TLabel
          Left = 39
          Top = 106
          Width = 52
          Height = 15
          Alignment = taRightJustify
          Caption = '*Estados:'
        end
        object Label5: TLabel
          Left = 404
          Top = 106
          Width = 65
          Height = 15
          Alignment = taRightJustify
          Caption = '*Munic'#237'pio:'
        end
        object Label6: TLabel
          Left = 15
          Top = 200
          Width = 603
          Height = 15
          Caption = 
            '* Campos obrigat'#243'rios - Caso falte algum campo ser preenchido os' +
            ' dados n'#227'o ser'#227'o adicionado a nota fiscal.'
        end
        object lbledtLRCPFCNPJ: TLabeledEdit
          Left = 95
          Top = 20
          Width = 121
          Height = 23
          EditLabel.Width = 59
          EditLabel.Height = 15
          EditLabel.Caption = '*CPF/CNPJ:'
          LabelPosition = lpLeft
          TabOrder = 0
          OnExit = lbledtLRCPFCNPJExit
        end
        object lbledtLRENDERECO: TLabeledEdit
          Left = 95
          Top = 47
          Width = 305
          Height = 23
          EditLabel.Width = 72
          EditLabel.Height = 15
          EditLabel.Caption = '*Logradouro:'
          LabelPosition = lpLeft
          TabOrder = 1
        end
        object lbledtLRCOMPLEMENTO: TLabeledEdit
          Left = 95
          Top = 74
          Width = 181
          Height = 23
          EditLabel.Width = 78
          EditLabel.Height = 15
          EditLabel.Caption = 'Complemento:'
          LabelPosition = lpLeft
          TabOrder = 2
        end
        object lbledtLRBAIRRO: TLabeledEdit
          Left = 472
          Top = 74
          Width = 264
          Height = 23
          EditLabel.Width = 44
          EditLabel.Height = 15
          EditLabel.Caption = '*Bairro:'
          LabelPosition = lpLeft
          TabOrder = 3
        end
        object lbledtLRNUMERO: TLabeledEdit
          Left = 472
          Top = 47
          Width = 121
          Height = 23
          EditLabel.Width = 52
          EditLabel.Height = 15
          EditLabel.Caption = '*N'#250'mero:'
          LabelPosition = lpLeft
          TabOrder = 4
        end
        object dblkcbbLRID_ESTADO: TDBLookupComboBox
          Left = 95
          Top = 102
          Width = 66
          Height = 23
          KeyField = 'ID'
          ListField = 'SIGLA'
          ListSource = dsEstado
          TabOrder = 5
        end
        object dblkcbbLRID_MUNICIPIO: TDBLookupComboBox
          Left = 472
          Top = 102
          Width = 247
          Height = 23
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsQyMunicipio
          TabOrder = 6
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 401
    Width = 815
    Height = 49
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object btn1: TJvXPButton
      Left = 684
      Top = 6
      Width = 125
      Height = 35
      Caption = 'Enviar NF-e'
      TabOrder = 0
      Glyph.Data = {
        07544269746D617036090000424D360900000000000036000000280000001800
        000018000000010020000000000000090000C40E0000C40E0000000000000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0038D5464B197A1CC872FF7F1FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0027C3
        3548238E27ED62D168FF248228DDA0FFA91BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0016B02448188B
        1EEC70EE7AFF90FF9CFF5FE168FF238126DD6FFB7D1CFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0007A1154614831AEA56E7
        62FF63FF72FF63FE71FF73FF82FF4DDF57FF177E1BDC4AE95A1BFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00008D0C47107F17EC4ADC56FF4EF4
        5EFF62F370FF6FF77CFF57F866FF61FF70FF44DD4EFF117B15DD36D6461BFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000760B480E7D17EC39D047FF42E251FF6CE8
        77FF87EE90FF84EF8EFF6CEF79FF4DEE5CFF57F767FF41D94BFF0D7312DD22C3
        321BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0015731E491F7926ED27BF36FF44D552FF80E289FF8EE6
        96FF8AE893FFC7F6CCFF7EE888FF66E772FF43E452FF4CED5CFF3CCA46FF0867
        0DDD0DAF1D1CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF002D8A3747468C4BEB28B436FF55CE61FF94DF9BFF92E09AFF8FE2
        97FFDDF5DFFF429946FFC4F3C8FF7AE284FF5DDF6AFF39DA48FF42E552FF33B6
        3DFF045D08DC01950F1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000760722408A45EC51BC5BFF75CF7EFFA5DFABFF97DC9DFF97DD9DFFDFF5
        E1FF11861AE52EBA3A43459E4BFCBCEEC1FF77DC80FF56D763FF2ECF3DFF37DB
        46FF2BA936FF025405DD00720B1BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00007D080E338939BFA5D8ABFFBADFBEFFA2D8A7FFA3DAA8FFE1F4E3FF1396
        1EE30BAD1A2CFFFFFF0010B21F3228932FFDBCEBC1FF71D67BFF4FCE5BFF22C3
        31FF2BCF3AFF249C2EFF024A05DD0052071BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00068D140D178920BCBAE2BFFFC2DEC7FFE4F3E5FF118F19E101A4
        102DFFFFFF00FFFFFF00FFFFFF0009AB1832258E2DFDBAE8BEFF6CCF75FF47C4
        53FF16B725FF1EC22EFF1D9829FF024605DD0048071CFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000099090D078B12C0C8E8CBFF209629E4009F0A2FFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000A31034218929FDB7E4BCFF67C8
        70FF3EBB49FF09AA18FF10B620FF169122FF024506DB0049081AFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0007A7161005810D9A07A51532FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000970933208328FDB8DF
        BCFF65BD6FFF38AF44FF009B0DFF04A612FF148E1FFF19551BDC1255191BFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000950A332282
        2AFDBADABDFF68B16FFF399F43FF00850AFF008D08FF3A9B44FF18511AD40043
        0310FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000099
        0A3223812AFCBBD7BDFF6BAA71FF3B9244FF04730AFF87BB8DFF084F0DD10048
        0610FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00009B093425832CFDBCD6BFFF6FA874FFB1D2B4FF025D09D30054061AFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00009B093328822EFDC6DEC8FF36893DD10068081AFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000960B34157D1CC111871C1BFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00}
      ModalResult = 1
    end
    object btn2: TJvXPButton
      Left = 553
      Top = 6
      Width = 125
      Height = 35
      Caption = 'Cancelar'
      TabOrder = 1
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000160000
        00160806000000C4B46C3B0000000467414D410000AFC837058AE90000001974
        455874536F6674776172650041646F626520496D616765526561647971C9653C
        000005334944415478DAB5946D4C14571486DFD999D91976D9C55DAC0BECAE08
        51433512D414893452541A036D88B5342546DA1F159B368DA6F52BA94D437F98
        268D354D8D6DD32636FCA991D22F52AC06454084828034EA0614A140144A1536
        80FB3173677AEEB250FBF1D7496E6E66EEBDCF9CF39EF75CC1344D3C8E47E0E0
        F77D3E305D07B3585E4877BBBF0263C6683058A11846BD48EB161A7C16F901C6
        301F0A636CA3C7E5FA415114FBD8DDBB6FCB8C7DC1F7ED0985E260AF17339AB6
        6DB5DFFF7D99DBADB299197C373111BE333BBBC346F0FF0347743DCFE7749E2B
        C9CF77DAE8FC85A626BDFFDAB50A9B2C7FB3271C9E03BFEBF39565FA7CD52F11
        D4B16F1F0F05F70F1F46FD8307E1014DAB5019ABE1D07970C4340BFC8A52B775
        F56A87E7C81120351591D3A771F1EC596DB0A7E79D37A2D14F63E0CFF2F2A65E
        494949B2EDDA056CDE1C4BD3387F1E5374E89760307C1BD891609AF51CAC31B6
        C1278A0D45CB9625261F380091EF2719313A0AADA909E76B6A4225EDEDB618F8
        F3DCDC073BBD5E97A3B414C8CF07480A381CD09B9BF16755152E4E4D857F5794
        EDB4F9BE371269284C4B737AF6EF87B4691304BED76A05262610E9EAC2853367
        668B3B3A1263E0231E4F69667AFAE932A753759494001B3702B3B380CB05BDA5
        0513046F8A44A25141300A131254CFA143B0161602C12020CBC0BD7B0813F452
        438336D4DDFDE6EB86F1650C5C95928288A615AFF2FB6BB7DBEDAA9DC3737381
        E969202909A1B6368C1F3D0AA66948397810760EE56B8A0293A0D1EE6E34B7B6
        F2E255CAA278AA92A45900F38231C3287BD2E3A9DE66B3A9AEA222202707A00A
        233111B304372211380A0AE6B2912498E3E398B97A156DBDBDFAAD9B37F7CA82
        70521045ECA600FE01160D03BA6114AF74BB6BB7298AEAA4C8A4EC6C807C8984
        8439F3F21F51FAFAD8186629FDB640401F181CAC942C965302778DC5F237F883
        38D8420B16EE53D3DC92E970FC5C28CB4A32555DCECA223B6873608A482368B0
        BD1D9D4343FAE0D8583941BFA5431C1603BF360FFE9874E40BA62040A0413ECD
        F62527FF5A180EAB12E9A5AC5D0B81F4A44598F41E1A19018FAE6B72521B191D
        DDAA02CDDC8A96B8D7CBE77E62E2781CCC0F860D23CF9F9A7AEE594972B25BB7
        304D201E6B34DEC6565585EC74C2EE7643494B43C79D3BA1D1A1A117095E3FDF
        442FFF1B1C61ACC09F91515724490EF9C68D7F406342509A12F9DB6AB743A661
        A31F487E3F3A0381F0485F5F05C16BFE0326976EF0AF5CD9F09CDD9E285251A6
        A351E8FC4EA0C1E704D2963B214C118B04B59253242A2887CBCB97A3ADB3333C
        7AFDFA0E1EF902F8A3C4C48294152B7E7C7ED1A224F5CA15CCC4A13C52C6D3B7
        D9705D10748D36E7D86CB24E7A0BF46D01CE33E6F0E6E6F0786F6FC54ED3AC89
        81ABB3B3FF28F57A9F705EBA8469B293F60854A2EEFB4D10B4DBA1D0ABA6614C
        645AAD3FE52C59A2328ADE42D15B491A99661BED63E49ED6BABAE0969E9E4531
        F099DCDC99ED0E875D686CC4437AE75083864C36EC2225FA2627633EE5D7A741
        1D9AE972D5AE4B4F57757E5753C43C23856665DD3AB43634449F6E695162E04F
        1C8EB79667671FDBC2986C747420CAAD9791812EC6F4FEF1F1BD64A393162A1C
        F7A948053574BD2C833A34272B4B8DDDD3248D95A2ED0D048C81C6C6A3E5BAFE
        5E0C7C82D2896A5AF9AA356BAA9F614C620F1FE2B2AEEB03C3C395A2209CE236
        141E01F326324CB338DDEBAD7D6AFD7A555DBC18D7FAFB8DBECB970F4AC0B105
        1F9FA0CA0AFCE200762F5BBAF438358131323CBCD712879AF1569D078BBC4BB9
        0C4069AACFF735E9AC8E04021FD2F92A3C6AB7C7F1FC05F5A7B9F37AB47A4500
        00000049454E44AE426082}
      ModalResult = 2
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 472
    Top = 312
  end
  object dsEstado: TDataSource
    Left = 24
    Top = 376
  end
  object dsQyMunicipio: TDataSource
    Left = 112
    Top = 376
  end
  object dscdsMunicipioLR: TDataSource
    Left = 280
    Top = 384
  end
  object dscdsEstadoLR: TDataSource
    Left = 192
    Top = 384
  end
  object dsTransportador: TDataSource
    Left = 592
    Top = 184
  end
end
