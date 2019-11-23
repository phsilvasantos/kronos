inherited FrmCadastroContato: TFrmCadastroContato
  Caption = 'Cadastro de Contato'
  ClientHeight = 381
  ClientWidth = 739
  ExplicitWidth = 755
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnl1: TPanel
    Width = 739
    ExplicitWidth = 739
    inherited btnGravar: TJvBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 739
    Height = 343
    ExplicitWidth = 739
    ExplicitHeight = 343
    inherited tsPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 731
      ExplicitHeight = 312
      object lbl2: TLabel
        Left = 56
        Top = 13
        Width = 40
        Height = 16
        Alignment = taRightJustify
        Caption = 'Nome*'
        FocusControl = edtNOME
      end
      object lbl3: TLabel
        Left = 8
        Top = 41
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = 'N. Fantasia'
        FocusControl = edtAPELIDO
      end
      object lbl12: TLabel
        Left = 24
        Top = 97
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Endere'#231'o*'
        FocusControl = edtENDERECO
      end
      object lbl13: TLabel
        Left = 40
        Top = 125
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#250'mero*'
        FocusControl = edtNUMERO
      end
      object lbl15: TLabel
        Left = 40
        Top = 153
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Bairro*'
        FocusControl = edtBAIRRO
      end
      object lbl20: TLabel
        Left = 40
        Top = 182
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Estados'
      end
      object lbl16: TLabel
        Left = 174
        Top = 182
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Munic'#237'pio'
      end
      object lbl19: TLabel
        Left = 530
        Top = 182
        Width = 72
        Height = 16
        Caption = 'Fone Res.'
        FocusControl = edtTELEFONE_RES
      end
      object lbl17: TLabel
        Left = 490
        Top = 210
        Width = 112
        Height = 16
        Caption = 'Fone comercial'
        FocusControl = edtTELEFONE
      end
      object lbl23: TLabel
        Left = 40
        Top = 211
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Contato'
        FocusControl = edtNOME_CONTATO
      end
      object lblEmail: TLabel
        Left = 48
        Top = 240
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'E-mail'
        FocusControl = edtEMAIL
      end
      object lbl21: TLabel
        Left = 578
        Top = 238
        Width = 24
        Height = 16
        Caption = 'Fax'
      end
      object lbl33: TLabel
        Left = 546
        Top = 266
        Width = 56
        Height = 16
        Caption = 'Celular'
        FocusControl = edtCELULAR
      end
      object Label2: TLabel
        Left = 24
        Top = 270
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'Dt. Nasc.'
        FocusControl = edtNOME_CONTATO
      end
      object lbl14: TLabel
        Left = 212
        Top = 125
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = 'Complemento'
        FocusControl = edtCOMPLEMENTO
      end
      object Label1: TLabel
        Left = 366
        Top = 153
        Width = 32
        Height = 16
        Alignment = taRightJustify
        Caption = 'CEP*'
        FocusControl = edtCEP
      end
      object lbl6: TLabel
        Left = 24
        Top = 69
        Width = 72
        Height = 16
        Alignment = taRightJustify
        Caption = 'CPF/CNPJ*'
        FocusControl = edtDOCUMENTO
      end
      object Label4: TLabel
        Left = 284
        Top = 69
        Width = 112
        Height = 16
        Alignment = taRightJustify
        Caption = 'Insc. Estadual'
        FocusControl = edtINSC_ESTADUAL
      end
      object JvHTLabel1: TJvHTLabel
        Left = 0
        Top = 295
        Width = 731
        Height = 17
        Align = alBottom
        Caption = '* Campo Obrigat'#243'rio para NF-e'
        SuperSubScriptRatio = 0.666666666666666600
        ExplicitWidth = 232
      end
      object edtNOME: TDBEdit
        Left = 100
        Top = 10
        Width = 397
        Height = 24
        DataField = 'NOME'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object btnReceita: TJvBitBtn
        Left = 502
        Top = 10
        Width = 100
        Height = 24
        Hint = 'Consulta CNPJ Receita Federal'
        Caption = 'Cons. R.F.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TabStop = False
        OnClick = btnReceitaClick
      end
      object edtAPELIDO: TDBEdit
        Left = 100
        Top = 38
        Width = 502
        Height = 24
        DataField = 'APELIDO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object edtENDERECO: TDBEdit
        Left = 100
        Top = 94
        Width = 502
        Height = 24
        DataField = 'ENDERECO'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object edtNUMERO: TDBEdit
        Left = 100
        Top = 122
        Width = 93
        Height = 24
        DataField = 'NUMERO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object edtCOMPLEMENTO: TDBEdit
        Left = 304
        Top = 122
        Width = 298
        Height = 24
        DataField = 'COMPLEMENTO'
        DataSource = dsCadastro
        TabOrder = 8
      end
      object edtBAIRRO: TDBEdit
        Left = 100
        Top = 150
        Width = 259
        Height = 24
        DataField = 'BAIRRO'
        DataSource = dsCadastro
        TabOrder = 9
      end
      object btnBuscaCEP: TBitBtn
        Left = 510
        Top = 150
        Width = 92
        Height = 22
        Caption = 'Busca CEP'
        TabOrder = 11
        TabStop = False
        OnClick = btnBuscaCEPClick
      end
      object clkID_ESTADO: TDBLookupComboBox
        Left = 100
        Top = 178
        Width = 61
        Height = 24
        DataField = 'ID_ESTADO'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'SIGLA'
        ListSource = dmAcesso.dsLKPEstados
        TabOrder = 12
        OnCloseUp = clkID_ESTADOCloseUp
      end
      object clkID_MUNICIPIO: TDBLookupComboBox
        Left = 250
        Top = 178
        Width = 231
        Height = 24
        DataField = 'ID_MUNICIPIO'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dmAcesso.dsLKPMunicipios
        TabOrder = 13
      end
      object edtTELEFONE_RES: TDBEdit
        Left = 610
        Top = 179
        Width = 109
        Height = 24
        DataField = 'TELEFONE_RES'
        DataSource = dsCadastro
        MaxLength = 11
        TabOrder = 17
      end
      object edtTELEFONE: TDBEdit
        Left = 610
        Top = 207
        Width = 109
        Height = 24
        DataField = 'TELEFONE'
        DataSource = dsCadastro
        MaxLength = 11
        TabOrder = 18
      end
      object edtNOME_CONTATO: TDBEdit
        Left = 100
        Top = 208
        Width = 381
        Height = 24
        DataField = 'NOME_CONTATO'
        DataSource = dsCadastro
        TabOrder = 14
      end
      object edtEMAIL: TDBEdit
        Tag = 1
        Left = 100
        Top = 236
        Width = 381
        Height = 24
        CharCase = ecLowerCase
        DataField = 'EMAIL'
        DataSource = dsCadastro
        TabOrder = 15
      end
      object edtFAX: TDBEdit
        Left = 610
        Top = 235
        Width = 109
        Height = 24
        DataField = 'FAX'
        DataSource = dsCadastro
        MaxLength = 11
        TabOrder = 19
      end
      object edtCELULAR: TDBEdit
        Left = 610
        Top = 263
        Width = 109
        Height = 24
        DataField = 'CELULAR'
        DataSource = dsCadastro
        MaxLength = 11
        TabOrder = 20
      end
      object edtDATA_ANIV: TJvDBDateEdit
        Left = 100
        Top = 266
        Width = 121
        Height = 24
        DataField = 'DATA_ANIV'
        DataSource = dsCadastro
        ButtonWidth = 23
        ShowNullDate = False
        TabOrder = 16
      end
      object Panel1: TPanel
        Left = 610
        Top = 10
        Width = 109
        Height = 115
        Caption = 'Foto'
        TabOrder = 4
        object imgFoto: TJvDBImage
          Left = 1
          Top = 1
          Width = 107
          Height = 113
          Align = alClient
          DataField = 'Foto'
          DataSource = dsCadastro
          PopupMenu = pmFoto
          QuickDraw = False
          Stretch = True
          TabOrder = 0
          TabStop = False
          ShowNameIfEmpty = False
        end
      end
      object edtCEP: TDBEdit
        Left = 402
        Top = 150
        Width = 105
        Height = 24
        DataField = 'CEP'
        DataSource = dsCadastro
        MaxLength = 8
        TabOrder = 10
      end
      object edtDOCUMENTO: TDBEdit
        Left = 100
        Top = 66
        Width = 176
        Height = 24
        DataField = 'DOCUMENTO'
        DataSource = dsCadastro
        TabOrder = 2
        OnExit = edtDOCUMENTOExit
      end
      object edtINSC_ESTADUAL: TDBEdit
        Left = 400
        Top = 66
        Width = 202
        Height = 24
        DataField = 'INSC_ESTADUAL'
        DataSource = dsCadastro
        TabOrder = 5
      end
      object ckbBLOQUEADO: TJvDBCheckBox
        Left = 384
        Top = 270
        Width = 97
        Height = 17
        Caption = 'Bloqueado?'
        DataField = 'BLOQUEADO'
        DataSource = dsCadastro
        TabOrder = 21
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object tsGrupo: TTabSheet
      Caption = 'Grupo do contato'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 731
        Height = 46
        Align = alTop
        TabOrder = 0
        object lbl7: TLabel
          Left = 9
          Top = 14
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'Grupo Contato'
          FocusControl = clkGrupoContatos
        end
        object clkGrupoContatos: TJvDBLookupCombo
          Left = 117
          Top = 10
          Width = 185
          Height = 24
          DeleteKeyClear = False
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsLKPGrupoContato
          TabOrder = 0
        end
        object btnAddGrupoContao: TBitBtn
          Left = 306
          Top = 9
          Width = 95
          Height = 25
          Caption = 'Adicionar'
          TabOrder = 1
          OnClick = btnAddGrupoContaoClick
        end
        object btnRemoverGrupocontato: TBitBtn
          Left = 405
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Remover'
          TabOrder = 2
          OnClick = btnRemoverGrupocontatoClick
        end
      end
      object dbgrdListaGrupoContato: TJvDBGrid
        Left = 0
        Top = 46
        Width = 731
        Height = 266
        Align = alClient
        DataSource = dsDetGrupoContato
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 20
        TitleRowHeight = 20
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Grupo'
            Width = 265
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTATO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_GRUPOCONTATO'
            Visible = False
          end>
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 672
    Top = 16
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 520
    Top = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    object ProcurarFoto1: TMenuItem
      Caption = 'Adicionar Foto'
    end
    object RemoverFoto1: TMenuItem
      Caption = 'Remover Foto'
    end
  end
  object dsDetGrupoContato: TDataSource
    DataSet = dmAcesso.QyDetGrupoContato
    Left = 624
  end
  object dsLKPGrupoContato: TDataSource
    DataSet = dmAcesso.QyLKPGrupoContato
    Left = 680
  end
  object pmFoto: TPopupMenu
    Left = 496
    Top = 8
    object Adicionarfoto1: TMenuItem
      Caption = 'Adicionar foto'
      OnClick = Adicionarfoto1Click
    end
    object Removerfoto2: TMenuItem
      Caption = 'Remover foto'
      OnClick = Removerfoto2Click
    end
  end
  object dlgOpen1: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'jpg|*.jpg'
    Title = 'Imagens'
    Left = 528
    Top = 136
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 436
    Top = 281
  end
  object dsLKPEstados: TDataSource
    DataSet = dmAcesso.QyLKPEstados
    Left = 272
    Top = 304
  end
  object dsLKPCidades: TDataSource
    DataSet = dmAcesso.QyLKPCidades
    Left = 336
    Top = 312
  end
end
