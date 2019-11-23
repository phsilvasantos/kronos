inherited FrmCadastroEstabelecimento: TFrmCadastroEstabelecimento
  Caption = 'Cadastro Estabelecimento'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnl1: TPanel
    inherited btnGravar: TJvBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCobranca
    inherited tsPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 776
      ExplicitHeight = 493
      object lbl2: TLabel
        Left = -11
        Top = 16
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Caption = '* Raz'#227'o Social'
        FocusControl = edtNOME
      end
      object lbl3: TLabel
        Left = 13
        Top = 45
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = 'N. Fantasia'
        FocusControl = dbedtFANTASIA
      end
      object lbl4: TLabel
        Left = 37
        Top = 73
        Width = 64
        Height = 16
        Alignment = taRightJustify
        Caption = 'Endere'#231'o'
        FocusControl = dbedtENDERECO
      end
      object lbl5: TLabel
        Left = 556
        Top = 74
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#250'mero'
        FocusControl = dbedtNUMERO
      end
      object lbl8: TLabel
        Left = 580
        Top = 102
        Width = 24
        Height = 16
        Alignment = taRightJustify
        Caption = 'CEP'
        FocusControl = dbedtCEP
      end
      object lbl6: TLabel
        Left = 13
        Top = 101
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = 'Complemento'
        FocusControl = dbedtCOMPLEMENTO
      end
      object lbl7: TLabel
        Left = 53
        Top = 129
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Bairro'
        FocusControl = dbedtBAIRRO
      end
      object lbl10: TLabel
        Left = 29
        Top = 157
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Munic'#237'pio'
      end
      object lbl9: TLabel
        Left = 556
        Top = 130
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Estado'
      end
      object lbl11: TLabel
        Left = 540
        Top = 158
        Width = 64
        Height = 16
        Alignment = taRightJustify
        Caption = 'Telefone'
        FocusControl = dbedtTELEFONE
      end
      object lbl13: TLabel
        Left = 548
        Top = 186
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Celular'
        FocusControl = dbedtCELULAR
      end
      object lbl12: TLabel
        Left = 77
        Top = 185
        Width = 24
        Height = 16
        Alignment = taRightJustify
        Caption = 'Fax'
        FocusControl = dbedtFAX
      end
      object lbl14: TLabel
        Left = 53
        Top = 213
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'E-mail'
        FocusControl = dbedtEMAIL
      end
      object lbl23: TLabel
        Left = 14
        Top = 264
        Width = 416
        Height = 16
        Alignment = taCenter
        Caption = '* A raz'#227'o social nem o CNPJ n'#227'o podem ser alterados.'
        FocusControl = edtNOME
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNOME: TDBEdit
        Left = 105
        Top = 13
        Width = 473
        Height = 24
        DataField = 'NOME'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 0
      end
      object dbedtFANTASIA: TDBEdit
        Left = 105
        Top = 41
        Width = 656
        Height = 24
        DataField = 'FANTASIA'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object dbedtENDERECO: TDBEdit
        Left = 105
        Top = 69
        Width = 350
        Height = 24
        DataField = 'ENDERECO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object dbedtNUMERO: TDBEdit
        Left = 611
        Top = 69
        Width = 150
        Height = 24
        DataField = 'NUMERO'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object dbedtCEP: TDBEdit
        Left = 611
        Top = 97
        Width = 150
        Height = 24
        DataField = 'CEP'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object dbedtCOMPLEMENTO: TDBEdit
        Left = 105
        Top = 97
        Width = 350
        Height = 24
        DataField = 'COMPLEMENTO'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object dbedtBAIRRO: TDBEdit
        Left = 105
        Top = 125
        Width = 350
        Height = 24
        DataField = 'BAIRRO'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object dblkcbbID_ESTADO: TDBLookupComboBox
        Left = 611
        Top = 125
        Width = 78
        Height = 24
        DataField = 'ID_ESTADO'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'SIGLA'
        TabOrder = 7
      end
      object dblkcbbID_MUNICIPIO: TDBLookupComboBox
        Left = 105
        Top = 153
        Width = 350
        Height = 24
        DataField = 'ID_MUNICIPIO'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'NOME'
        TabOrder = 8
      end
      object dbedtTELEFONE: TDBEdit
        Left = 611
        Top = 153
        Width = 150
        Height = 24
        DataField = 'TELEFONE'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object dbedtCELULAR: TDBEdit
        Left = 611
        Top = 181
        Width = 150
        Height = 24
        DataField = 'CELULAR'
        DataSource = dsCadastro
        TabOrder = 10
      end
      object dbedtFAX: TDBEdit
        Left = 105
        Top = 181
        Width = 150
        Height = 24
        DataField = 'FAX'
        DataSource = dsCadastro
        TabOrder = 11
      end
      object dbedtEMAIL: TDBEdit
        Tag = 1
        Left = 105
        Top = 209
        Width = 350
        Height = 24
        CharCase = ecLowerCase
        DataField = 'EMAIL'
        DataSource = dsCadastro
        TabOrder = 12
      end
    end
    object tsDocumentos: TTabSheet
      Caption = 'Documentos'
      ImageIndex = 1
      object lbl16: TLabel
        Left = 69
        Top = 16
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Documento'
        FocusControl = edtDOCUMENTO
      end
      object lbl17: TLabel
        Left = 29
        Top = 44
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Caption = 'Insc. Estadual'
        FocusControl = edtINSC_ESTADUAL
      end
      object lbl19: TLabel
        Left = 5
        Top = 72
        Width = 136
        Height = 16
        Alignment = taRightJustify
        Caption = 'Insc. Estadual ST'
        FocusControl = edtINSC_ESTADUAL_ST
      end
      object lbl20: TLabel
        Left = 21
        Top = 100
        Width = 120
        Height = 16
        Alignment = taRightJustify
        Caption = 'Insc. Municipal'
        FocusControl = edtINSC_MUNICIPAL
      end
      object lbl21: TLabel
        Left = 37
        Top = 128
        Width = 104
        Height = 16
        Alignment = taRightJustify
        Caption = 'Insc. Suframa'
        FocusControl = edtINSC_SUFRAMA
      end
      object lbl22: TLabel
        Left = 109
        Top = 156
        Width = 32
        Height = 16
        Alignment = taRightJustify
        Caption = 'CNAE'
        FocusControl = edtCNAE
      end
      object edtDOCUMENTO: TDBEdit
        Left = 147
        Top = 13
        Width = 148
        Height = 24
        DataField = 'DOCUMENTO'
        DataSource = dsCadastro
        Enabled = False
        TabOrder = 0
      end
      object edtINSC_ESTADUAL: TDBEdit
        Left = 147
        Top = 41
        Width = 148
        Height = 24
        DataField = 'INSC_ESTADUAL'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object edtINSC_ESTADUAL_ST: TDBEdit
        Left = 147
        Top = 69
        Width = 148
        Height = 24
        DataField = 'INSC_ESTADUAL_ST'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object edtINSC_MUNICIPAL: TDBEdit
        Left = 147
        Top = 97
        Width = 148
        Height = 24
        DataField = 'INSC_MUNICIPAL'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object edtINSC_SUFRAMA: TDBEdit
        Left = 147
        Top = 125
        Width = 148
        Height = 24
        DataField = 'INSC_SUFRAMA'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object edtCNAE: TDBEdit
        Left = 147
        Top = 153
        Width = 116
        Height = 24
        DataField = 'CNAE'
        DataSource = dsCadastro
        TabOrder = 5
      end
    end
    object tsCobranca: TTabSheet
      Caption = 'Cobran'#231'a'
      ImageIndex = 2
      object dbgrdCobrancas: TDBGrid
        Left = 0
        Top = 41
        Width = 776
        Height = 452
        Align = alClient
        DataSource = dsQyMemCobranca
        DrawingStyle = gdsClassic
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        OnDrawColumnCell = dbgrdCobrancasDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'VENCTO'
            Title.Caption = 'Dt. Vencto'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTBAIXA'
            Title.Caption = 'Dt. Baixa'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TITULO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. T'#237'tulo'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PAGO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vlr. Pago'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Title.Caption = 'Situa'#231#227'o'
            Width = 106
            Visible = True
          end>
      end
      object pnlOpcoesCobranca: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 41
        Align = alTop
        TabOrder = 1
        object btnListarCobranca: TBitBtn
          Left = 6
          Top = 7
          Width = 179
          Height = 25
          Caption = 'Listar cobran'#231'as'
          TabOrder = 0
          OnClick = btnListarCobrancaClick
        end
      end
    end
    object tsLogoMarca: TTabSheet
      Caption = 'Logomarca'
      ImageIndex = 3
      object dbimgFOTO: TJvDBImage
        Left = 0
        Top = 0
        Width = 648
        Height = 493
        Align = alClient
        DataField = 'LOGOMARCA'
        DataSource = dsCadastro
        Stretch = True
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 648
        Top = 0
        Width = 128
        Height = 493
        Align = alRight
        TabOrder = 1
        object btnRemoverFoto: TBitBtn
          Left = 6
          Top = 34
          Width = 114
          Height = 25
          Caption = 'Remover'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000FF00FF000000
            82000566950003689A00086B9A000268A3000274A9000479AF001479AD00000E
            E6000011ED000016F700001AFB000020FF000325FF00072FFF000D36FF001641
            FF001D49FF002753FF002C59FF000787BB00108BBC001F91BF000386C100058B
            C7000791C5001CAAD3002CA7D30031B5D30030B0DA001FC6F40012CAFD0030C9
            E90020CEFE003FE3FE0079C0DC0048CFF20054DEFF0055F6FE005FFEFF0074E0
            F80068F6FF0073FAFE0078FBFE007FFEFF0083FAFB0089FBFE0092FFFF009FFB
            FE0098FFFF00A7E9F300A3F3FF00A0FFFF00B6F2FF00B7FFFF00C6FFFF00D8F6
            FC00DCFFFF00EDFAFC00F0FFFF00FBFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000002020202020200000000000000000006212022
            26291C0200000000000000062B23201F0101010101010101000000062B23201F
            0113110F0D0B0901000000062B23201F011412100D0C0A010000000631343639
            010101010101010100000006331B1A151617082402000000000000061D232022
            26291E0503000000000000062B23202226291E1802000000000000062B232022
            26291E1802000000000000062B23202226291E1802000000000000062C2A2728
            2C2F251902000000000000063D3C3835313130270200000000000000073B3A37
            312F2E0400000000000000000006060606060600000000000000}
          TabOrder = 0
          OnClick = btnRemoverFotoClick
        end
        object btnAdicionarFoto: TBitBtn
          Left = 6
          Top = 3
          Width = 114
          Height = 25
          Caption = 'Adicionar'
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000FF00FF00035A
            050006900E00089511000A9915000C9D19000DA01C0010A5210011A6240013AB
            270014AC290017B02E0018B230001BB735001CBA38001FBF3E0020C1400022C4
            430023C5450025C7470027CB4B0028CC4D0029CF52002CD355002DD4580030D9
            5E0034DE65000565930005669500086B9A000268A3000274A9000479AF001479
            AD000788BC00108ABB001F91BF000385C000058BC7000791C5001CAAD3002CA7
            D30031B5D30030B0DA0012CBFE0030C9E90020CDFD003FE3FE0079C0DC0048CF
            F20051D7F60051D8F70054DEFF0055F6FE005FFEFF0074E0F80068F6FF0073FA
            FE0078FBFE007FFEFF0083FAFB0089FBFE0092FFFF009FFBFE0098FFFF00A7E9
            F300A3F3FF00A0FFFF00B6F2FF00B7FFFF00C6FFFF00DAF8FF00DCFFFF00E2F7
            FC00EDFAFC00F0FFFF00FBFFFF00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000101010100000000001C1C1C1C1C1C0001030201000000001F2D2C2E34
            37291C010504010000001F392F2C2E32010101010806010101011F392F2C2E32
            0113130D0D09080604011F392F2C2E33011714130E0D0B0908011F3F42444749
            010101011413010101011F4128272223242130011716010000001F2A2F2C2E34
            372B1E011A19010000001F392F2C2E34372B25010101010000001F392F2C2E34
            372B251C0000000000001F392F2C2E34372B251C0000000000001F3A3835363A
            3D31261C0000000000001F4C4B46433F3F3E351C00000000000000204A47453F
            3D3C1D0000000000000000001F1F1F1F1F1F0000000000000000}
          TabOrder = 1
          OnClick = btnAdicionarFotoClick
        end
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 648
    Top = 32
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'jpg|*.jpg'
    InitialDir = 'c:\siga'
    Title = 'Imagens'
    Left = 544
    Top = 112
  end
  object QyMemCobranca: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'VENCTO'
        DataType = ftDate
      end
      item
        Name = 'DTBAIXA'
        DataType = ftDate
      end
      item
        Name = 'VLR_TITULO'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'VLR_PAGO'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'SITUACAO'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 320
    Top = 184
    object QyMemCobrancaVENCTO: TDateField
      FieldName = 'VENCTO'
    end
    object QyMemCobrancaDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object QyMemCobrancaVLR_TITULO: TCurrencyField
      FieldName = 'VLR_TITULO'
    end
    object QyMemCobrancaVLR_PAGO: TCurrencyField
      FieldName = 'VLR_PAGO'
    end
    object QyMemCobrancaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      OnGetText = QyMemCobrancaSITUACAOGetText
      Size = 2
    end
  end
  object dsQyMemCobranca: TDataSource
    DataSet = QyMemCobranca
    Left = 432
    Top = 240
  end
end
