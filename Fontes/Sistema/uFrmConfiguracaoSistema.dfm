object FrmConfiguracaoSistema: TFrmConfiguracaoSistema
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o Sistema'
  ClientHeight = 442
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pgcGeral: TPageControl
    Left = 0
    Top = 0
    Width = 544
    Height = 401
    ActivePage = tsNFe
    Align = alClient
    TabOrder = 0
    object tsVenda: TTabSheet
      Caption = 'Geral'
      ImageIndex = 1
      object pgcPadrao: TPageControl
        Left = 0
        Top = 0
        Width = 536
        Height = 371
        ActivePage = tsDefault
        Align = alClient
        TabOrder = 0
        object tsDefault: TTabSheet
          Caption = 'Padr'#227'o'
          object pgc3: TPageControl
            Left = 0
            Top = 0
            Width = 528
            Height = 341
            ActivePage = tsProdutos
            Align = alClient
            TabOrder = 0
            object tsProdutos: TTabSheet
              Caption = 'Produto'
              object grpConfProdutos: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl25: TLabel
                  Left = 42
                  Top = 14
                  Width = 56
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Unidade:'
                end
                object lbl26: TLabel
                  Left = 271
                  Top = 14
                  Width = 42
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Marca:'
                end
                object lbl27: TLabel
                  Left = 7
                  Top = 39
                  Width = 91
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Departamento:'
                end
                object lbl28: TLabel
                  Left = 271
                  Top = 39
                  Width = 42
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Grupo:'
                end
                object lbl51: TLabel
                  Left = 14
                  Top = 114
                  Width = 84
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'C'#243'digo GTIN:'
                  FocusControl = JvDBComboBox1
                end
                object lbl82: TLabel
                  Left = 280
                  Top = 89
                  Width = 161
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Casas decimal no pre'#231'o:'
                  FocusControl = cbbDEFAULT_PRODUTO_PRECO_CASAS
                end
                object Label27: TLabel
                  Left = 62
                  Top = 140
                  Width = 35
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'CFOP:'
                end
                object Label28: TLabel
                  Left = 315
                  Top = 114
                  Width = 112
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Cod. Sit. NFC-e:'
                end
                object Label29: TLabel
                  Left = 28
                  Top = 64
                  Width = 70
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Categoria:'
                end
                object Label30: TLabel
                  Left = 243
                  Top = 64
                  Width = 70
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Vasilhame:'
                end
                object Label26: TLabel
                  Left = 7
                  Top = 89
                  Width = 91
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Tipo Produto:'
                end
                object cbbUnidade: TJvDBLookupCombo
                  Left = 102
                  Top = 10
                  Width = 133
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_UNIDADE'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dsLkpUnidades
                  TabOrder = 0
                end
                object cbbMarca: TJvDBLookupCombo
                  Left = 317
                  Top = 10
                  Width = 191
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_MARCA'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dsLkpMarca
                  TabOrder = 1
                end
                object cbbDepartamento: TJvDBLookupCombo
                  Left = 102
                  Top = 35
                  Width = 133
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_DEPARTAMENTO'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dslLkpDepartamento
                  TabOrder = 2
                end
                object cbbGrupoProduto: TJvDBLookupCombo
                  Left = 317
                  Top = 35
                  Width = 191
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_GRUPOPRODUTO'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dsLkpGrupoProduto
                  TabOrder = 3
                end
                object JvDBComboBox1: TJvDBComboBox
                  Left = 102
                  Top = 110
                  Width = 163
                  Height = 23
                  DataField = 'CONFIG_PRODUTO_GTIN'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    'Sem formata'#231#227'o'
                    'Codigo de Barras EAN13')
                  TabOrder = 8
                  Values.Strings = (
                    '0'
                    '1')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object cbbDEFAULT_PRODUTO_PRECO_CASAS: TJvDBComboBox
                  Left = 447
                  Top = 85
                  Width = 61
                  Height = 23
                  DataField = 'DEFAULT_PRODUTO_PRECO_CASAS'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9'
                    '10')
                  TabOrder = 7
                  Values.Strings = (
                    '2'
                    '3'
                    '4'
                    '5'
                    '6'
                    '7'
                    '8'
                    '9'
                    '10')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object dbedtID_CFOP: TDBEdit
                  Left = 101
                  Top = 136
                  Width = 77
                  Height = 23
                  DataField = 'DEFAULT_PRODUTO_ID_CFOP'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 10
                end
                object dbedtCOD_SIT_TRIB: TDBEdit
                  Left = 431
                  Top = 110
                  Width = 77
                  Height = 23
                  DataField = 'DEFAULT_PRODUTO_COD_SIT_TRIB'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 9
                end
                object jvdblkpcmbDEFAULT_PRODUTO_CATEGORIA: TJvDBLookupCombo
                  Left = 102
                  Top = 60
                  Width = 133
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_CATEGORIA'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dsLkpCategoria
                  TabOrder = 4
                end
                object JvDBLookupCombo1: TJvDBLookupCombo
                  Left = 317
                  Top = 60
                  Width = 191
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_VASILHAME'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dsLkpVasilhame
                  TabOrder = 5
                end
                object JvDBLookupCombo2: TJvDBLookupCombo
                  Left = 102
                  Top = 85
                  Width = 133
                  Height = 22
                  DataField = 'DEFAULT_PRODUTO_TIPOPRODUTO'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID'
                  LookupDisplay = 'NOME'
                  LookupSource = dsLkpTipoProduto
                  TabOrder = 6
                end
                object JvDBCheckBox4: TJvDBCheckBox
                  Left = 101
                  Top = 164
                  Width = 300
                  Height = 17
                  Caption = 'Exibe filtro de grupo de produto?'
                  DataField = 'PRODUTO_EXIBE_FILTRO'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 11
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object JvDBCheckBox5: TJvDBCheckBox
                  Left = 101
                  Top = 187
                  Width = 184
                  Height = 17
                  Caption = 'Usar e exibir Subgrupo?'
                  DataField = 'DEFAULT_PRODUTO_SUBGRUPO'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 12
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object JvDBCheckBox6: TJvDBCheckBox
                  Left = 101
                  Top = 210
                  Width = 184
                  Height = 17
                  Caption = 'Exibe filtro de marcas?'
                  DataField = 'PRODUTO_EXIBE_FILTRO_MARCA'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 13
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object JvDBCheckBox7: TJvDBCheckBox
                  Left = 101
                  Top = 233
                  Width = 300
                  Height = 17
                  Hint = 'Ao selecionar o grupo complementar na descri'#231#227'o do produto.'
                  Caption = 'Complem. descri'#231#227'o com grupo?'
                  DataField = 'DEFAULT_PRODUTO_GRUPO_COMPL'
                  DataSource = dsConfiguracaoSistema
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 14
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
              end
            end
            object tsPadraoContato: TTabSheet
              Caption = 'Contato'
              ImageIndex = 2
              object JvDBCheckBox8: TJvDBCheckBox
                Left = 10
                Top = 10
                Width = 255
                Height = 17
                Hint = 'Ao selecionar o grupo complementar na descri'#231#227'o do produto.'
                Caption = 'Aceita CPF/CNPJ duplicado?'
                DataField = 'CONTATO_CNPJDUPLICADO'
                DataSource = dsConfiguracaoSistema
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                ValueChecked = '1'
                ValueUnchecked = '0'
              end
            end
          end
        end
        object tsSistema: TTabSheet
          Caption = 'Sistema'
          ImageIndex = 1
          object JvDBCheckBox10: TJvDBCheckBox
            Left = 10
            Top = 10
            Width = 184
            Height = 17
            Caption = 'Exibe registro bloqueados?'
            DataField = 'EXIBEREGISTROBLOQUEADO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox11: TJvDBCheckBox
            Left = 10
            Top = 31
            Width = 184
            Height = 17
            Caption = 'Exibe aniversariantes?'
            DataField = 'SISTEMA_ANIVERSARIANTE'
            DataSource = dsConfiguracaoSistema
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox12: TJvDBCheckBox
            Left = 10
            Top = 73
            Width = 184
            Height = 17
            Hint = 'Ao selecionar o grupo complementar na descri'#231#227'o do produto.'
            Caption = 'Exibe titulos a vencer?'
            DataField = 'FINANCA_EXIBE_TITULO_VENCER'
            DataSource = dsConfiguracaoSistema
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox13: TJvDBCheckBox
            Left = 10
            Top = 52
            Width = 311
            Height = 17
            Caption = 'Carregar dados ao digitar?'
            DataField = 'SISTEMA_LISTAGEM_DADOS'
            DataSource = dsConfiguracaoSistema
            Enabled = False
            ReadOnly = True
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object grpConfFontGrid: TJvgGroupBox
            Left = 0
            Top = 94
            Width = 528
            Height = 247
            Align = alBottom
            Caption = 'Configura'#231#227'o do grid da consulta'
            TabOrder = 4
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object lbl63: TLabel
              Left = 11
              Top = 27
              Width = 35
              Height = 15
              Caption = 'Fonte'
            end
            object lbl64: TLabel
              Left = 178
              Top = 27
              Width = 28
              Height = 15
              Caption = 'Tam.'
            end
            object lbl65: TLabel
              Left = 12
              Top = 74
              Width = 84
              Height = 15
              Caption = 'Tema do Grid'
            end
            object edtSISTEMA_CONSULTA_FONTE_TAMANHO: TJvDBSpinEdit
              Left = 178
              Top = 43
              Width = 46
              Height = 23
              TabOrder = 0
              DataField = 'SISTEMA_CONSULTA_FONTE_TAMANHO'
              DataSource = dsConfiguracaoSistema
            end
            object chkFINANCA_EXIBE_TITULO_VENCER: TJvDBCheckBox
              Left = 12
              Top = 145
              Width = 184
              Height = 17
              Hint = 'Ao selecionar o grupo complementar na descri'#231#227'o do produto.'
              Caption = 'Exibe coluna no grid?'
              DataField = 'SISTEMA_CONSULTA_COLUNA'
              DataSource = dsConfiguracaoSistema
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object chkSISTEMA_LISTAGEM_DADOS: TJvDBCheckBox
              Left = 12
              Top = 124
              Width = 184
              Height = 17
              Caption = 'Exibe linha no grid?'
              DataField = 'SISTEMA_CONSULTA_LINHA'
              DataSource = dsConfiguracaoSistema
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
            object cbbFonte: TJvDBComboBox
              Left = 11
              Top = 43
              Width = 162
              Height = 23
              DataField = 'SISTEMA_CONSULTA_FONTE'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'Arial'
                'Courier New'
                'Times New Roman'
                'Tahoma'
                'Verdana')
              TabOrder = 3
              Values.Strings = (
                'Arial'
                'Courier New'
                'Times New Roman'
                'Tahoma'
                'Verdana')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbbSISTEMA_CONSULTA_FONTE: TJvDBComboBox
              Left = 12
              Top = 90
              Width = 162
              Height = 23
              DataField = 'SISTEMA_CONSULTA_GRID_TEMA'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'gdsClassic'
                'gdsGradient'
                'gdsThemed')
              TabOrder = 4
              Values.Strings = (
                '0'
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
        object tsGeral: TTabSheet
          Caption = 'Geral'
          ImageIndex = 2
          TabVisible = False
          object JvDBGrid1: TJvDBGrid
            Left = 0
            Top = 0
            Width = 528
            Height = 341
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            PostOnEnterKey = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 19
            Columns = <
              item
                Expanded = False
                FieldName = 'PARAMETRO'
                ReadOnly = True
                Title.Caption = 'Parametro'
                Width = 106
                Visible = True
              end
              item
                Color = 16777088
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Valor'
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                ReadOnly = True
                Title.Caption = 'Descri'#231#227'o'
                Width = 278
                Visible = True
              end>
          end
        end
        object tsConfiguracaoLocal: TTabSheet
          Caption = 'Configura'#231#245'es Local'
          ImageIndex = 3
          object btnAbrirConfiguracaoLocal: TBitBtn
            Left = 5
            Top = 10
            Width = 177
            Height = 25
            Caption = 'Abrir Configuracao Local'
            TabOrder = 0
          end
        end
        object tsDicionario: TTabSheet
          Caption = 'Dicionario'
          ImageIndex = 4
          object pnl2: TPanel
            Left = 0
            Top = 0
            Width = 528
            Height = 36
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object edtTabela: TLabeledEdit
              Left = 54
              Top = 7
              Width = 169
              Height = 23
              CharCase = ecUpperCase
              EditLabel.Width = 42
              EditLabel.Height = 15
              EditLabel.Caption = 'Tabela'
              LabelPosition = lpLeft
              TabOrder = 0
            end
            object btn10: TBitBtn
              Left = 229
              Top = 7
              Width = 138
              Height = 22
              Caption = 'Localizar'
              TabOrder = 1
              OnClick = btn10Click
            end
          end
          object grd1: TJvDBGrid
            Left = 0
            Top = 36
            Width = 528
            Height = 305
            Align = alClient
            DataSource = dsConfDicionario
            DrawingStyle = gdsClassic
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            PostOnEnterKey = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 19
            Columns = <
              item
                Expanded = False
                FieldName = 'TABELA'
                ReadOnly = True
                Title.Caption = 'Tabela'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CAMPO'
                ReadOnly = True
                Title.Caption = 'Nome campo'
                Width = 137
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CAPTION'
                Title.Caption = 'Titulo'
                Width = 99
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ORDEM'
                ReadOnly = True
                Title.Caption = 'Ordem'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO_DADO'
                ReadOnly = True
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'LENG'
                ReadOnly = True
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'DECI'
                ReadOnly = True
                Visible = False
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'CONSULTA'
                Width = 129
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'BROWSER'
                PickList.Strings = (
                  'Sim'
                  'N'#227'o')
                Title.Caption = 'Exibe Consulta?'
                Width = 116
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'BROWSER_WIDTH'
                Title.Caption = 'Largura na Consulta'
                Width = 150
                Visible = True
              end
              item
                Color = clInfoBk
                Expanded = False
                FieldName = 'PESQUISA'
                Title.Caption = 'Pesquis'#225'vel?'
                Width = 129
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CAMPO_VIRTUAL'
                ReadOnly = True
                Visible = False
              end>
          end
        end
        object tsRelatorios: TTabSheet
          Caption = 'Relatorios'
          ImageIndex = 5
          object dbg1: TJvDBGrid
            Left = 0
            Top = 33
            Width = 528
            Height = 308
            Align = alClient
            DrawingStyle = gdsClassic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 19
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                ReadOnly = True
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME'
                Title.Caption = 'Nome do relat'#243'rio'
                Width = 161
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PERFIL'
                ReadOnly = True
                Title.Caption = 'Perfil'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TABELA'
                Title.Caption = 'Tabela'
                Width = 117
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'BLOQUEADO'
                Title.Caption = 'Bloqueado'
                Width = 149
                Visible = True
              end>
          end
          object pnl7: TPanel
            Left = 0
            Top = 0
            Width = 528
            Height = 33
            Align = alTop
            TabOrder = 1
            object btnLimparRelatorio: TButton
              Left = 2
              Top = 2
              Width = 146
              Height = 25
              Caption = 'Recriar Relat'#243'rios'
              TabOrder = 0
            end
            object chk1: TCheckBox
              Left = 153
              Top = 6
              Width = 341
              Height = 17
              Caption = 'Mostrar relat'#243'rio somente o perfil logado.'
              TabOrder = 1
            end
          end
        end
      end
    end
    object tsNFe: TTabSheet
      Caption = 'Nota Fiscal'
      object pgcNota: TPageControl
        Left = 0
        Top = 0
        Width = 536
        Height = 371
        ActivePage = tsNF
        Align = alClient
        TabOrder = 0
        object tsNFeGeral: TTabSheet
          Caption = 'Geral'
          ImageIndex = 4
          object lbl103: TLabel
            Left = 364
            Top = 39
            Width = 35
            Height = 15
            Caption = 'CFOP:'
          end
          object lbl107: TLabel
            Left = 343
            Top = 64
            Width = 56
            Height = 15
            Caption = 'Esp'#233'cie:'
          end
          object lbl108: TLabel
            Left = 357
            Top = 14
            Width = 42
            Height = 15
            Caption = 'Marca:'
          end
          object dbedtDEFAULT_VENDA_CFOP: TDBEdit
            Left = 401
            Top = 35
            Width = 98
            Height = 23
            DataField = 'DEFAULT_VENDA_CFOP'
            DataSource = dsConfiguracaoSistema
            TabOrder = 0
          end
          object dbedtNFE_ENVIO_ESPECIE: TDBEdit
            Left = 402
            Top = 60
            Width = 98
            Height = 23
            DataField = 'NFE_ENVIO_ESPECIE'
            DataSource = dsConfiguracaoSistema
            TabOrder = 1
          end
          object dbedtNFE_ENVIO_MARCA: TDBEdit
            Left = 401
            Top = 10
            Width = 98
            Height = 23
            DataField = 'NFE_ENVIO_MARCA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 2
          end
          object chkNFE_INFO_CFOP: TJvDBCheckBox
            Left = 14
            Top = 11
            Width = 97
            Height = 17
            Caption = 'Inf. CFOP?'
            DataField = 'NFE_INFO_CFOP'
            DataSource = dsConfiguracaoSistema
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkNFE_NCMGRUPO: TJvDBCheckBox
            Left = 14
            Top = 32
            Width = 139
            Height = 17
            Caption = 'NCM por Grupo?'
            DataField = 'NFE_NCMGRUPO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkNFE_CEST: TJvDBCheckBox
            Left = 14
            Top = 53
            Width = 187
            Height = 17
            Caption = 'Utilizar CEST?'
            DataField = 'NFE_CEST'
            DataSource = dsConfiguracaoSistema
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkNFE_CEAN: TJvDBCheckBox
            Left = 14
            Top = 74
            Width = 155
            Height = 17
            Hint = 
              'Se marcado, todos os produtos devem possuir GTIN/ EAN. Exceto na' +
              ' vers'#227'o 3.10'
            Caption = 'Utilizar Cod. EAN na NF-e'
            Color = clBtnFace
            DataField = 'NFE_CEAN'
            DataSource = dsConfiguracaoSistema
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object tsNF: TTabSheet
          Caption = 'Nota Fiscal Eletr'#244'nica'
          object pgcConfNF: TPageControl
            Left = 0
            Top = 0
            Width = 528
            Height = 341
            ActivePage = tsModeloSerie
            Align = alClient
            TabOrder = 0
            object tsCertificado: TTabSheet
              Caption = 'Certificado'
              object grpCertificado: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl24: TLabel
                  Left = 59
                  Top = 66
                  Width = 70
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Logomarca:'
                end
                object lbl23: TLabel
                  Left = 24
                  Top = 40
                  Width = 105
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Diret'#243'rio XMLs:'
                end
                object lbl17: TLabel
                  Left = 17
                  Top = 14
                  Width = 112
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'N'#250'mero de S'#233'rie:'
                end
                object Label24: TLabel
                  Left = 10
                  Top = 92
                  Width = 119
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Diret'#243'rio Schama:'
                end
                object Label6: TLabel
                  Left = 49
                  Top = 180
                  Width = 77
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Arquivo pfx'
                  Visible = False
                end
                object Label7: TLabel
                  Left = 91
                  Top = 204
                  Width = 35
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Senha'
                  Visible = False
                end
                object edtNFE_LOGOMARCA: TDBEdit
                  Left = 132
                  Top = 62
                  Width = 202
                  Height = 23
                  DataField = 'NFE_LOGOMARCA'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 0
                end
                object btn4: TJvXPButton
                  Left = 336
                  Top = 37
                  Width = 25
                  Caption = '...'
                  TabOrder = 1
                  OnClick = btn4Click
                end
                object edtNFE_PASTAXML: TDBEdit
                  Left = 132
                  Top = 36
                  Width = 202
                  Height = 23
                  DataField = 'NFE_PASTAXML'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 2
                end
                object btn3: TJvXPButton
                  Left = 336
                  Top = 11
                  Width = 25
                  Caption = '...'
                  TabOrder = 3
                  OnClick = btn3Click
                end
                object edtNFE_NUMEROSERIECERTIFICADO: TDBEdit
                  Left = 132
                  Top = 10
                  Width = 202
                  Height = 23
                  DataField = 'NFE_NUMEROSERIECERTIFICADO'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 4
                end
                object btn5: TJvXPButton
                  Left = 336
                  Top = 63
                  Width = 25
                  Caption = '...'
                  TabOrder = 5
                  OnClick = btn5Click
                end
                object dbedtNFE_SCHEMA: TDBEdit
                  Left = 132
                  Top = 88
                  Width = 202
                  Height = 23
                  DataField = 'NFE_SCHEMA'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 6
                end
                object JvXPButton1: TJvXPButton
                  Left = 336
                  Top = 89
                  Width = 25
                  Caption = '...'
                  TabOrder = 7
                  OnClick = JvXPButton1Click
                end
                object dbedtNFE_ARQUIVOPFX: TDBEdit
                  Left = 132
                  Top = 174
                  Width = 202
                  Height = 23
                  DataField = 'NFE_ARQUIVOPFX'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 8
                  Visible = False
                end
                object JvXPButton2: TJvXPButton
                  Left = 602
                  Top = 32
                  Width = 25
                  Caption = '...'
                  TabOrder = 9
                  Visible = False
                end
                object dbedtNFE_SENHA: TDBEdit
                  Left = 132
                  Top = 200
                  Width = 202
                  Height = 23
                  DataField = 'NFE_SENHA'
                  DataSource = dsConfiguracaoSistema
                  PasswordChar = '*'
                  TabOrder = 10
                  Visible = False
                end
              end
            end
            object tsModeloSerie: TTabSheet
              Caption = 'Modelo/Serie/N'#250'mero'
              ImageIndex = 1
              object grpModeloSerie: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl38: TLabel
                  Left = 28
                  Top = 14
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Modelo:'
                end
                object lbl39: TLabel
                  Left = 35
                  Top = 40
                  Width = 42
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'S'#233'rie:'
                end
                object Label25: TLabel
                  Left = 28
                  Top = 66
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'N. NFe:'
                end
                object edtNFE_MODELO: TDBEdit
                  Left = 78
                  Top = 10
                  Width = 100
                  Height = 23
                  DataField = 'NFE_MODELO'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 0
                end
                object edtNFE_SERIE: TDBEdit
                  Left = 78
                  Top = 36
                  Width = 100
                  Height = 23
                  DataField = 'NFE_SERIE'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 1
                end
                object dbedt1: TDBEdit
                  Left = 78
                  Top = 62
                  Width = 100
                  Height = 23
                  DataField = 'ID'
                  DataSource = dsQySequencial
                  TabOrder = 2
                end
              end
            end
            object tsWebService: TTabSheet
              Caption = 'WebService'
              ImageIndex = 2
              object grpWebService: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl32: TLabel
                  Left = 90
                  Top = 14
                  Width = 21
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'UF:'
                end
                object lbl33: TLabel
                  Left = 48
                  Top = 66
                  Width = 63
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Ambiente:'
                end
                object lbl35: TLabel
                  Left = 13
                  Top = 92
                  Width = 98
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'R. Tribut'#225'rio:'
                end
                object lbl36: TLabel
                  Left = 13
                  Top = 40
                  Width = 98
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Tipo Em. NF-e:'
                end
                object Label8: TLabel
                  Left = 41
                  Top = 118
                  Width = 70
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Vers'#227'o DF:'
                end
                object cbbNFE_WEBSERVICE_AMBIENTE: TJvDBComboBox
                  Left = 113
                  Top = 62
                  Width = 127
                  Height = 23
                  DataField = 'NFE_WEBSERVICE_AMBIENTE'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '0 - Produ'#231#227'o'
                    '1 - Homologa'#231#227'o')
                  TabOrder = 0
                  Values.Strings = (
                    '0'
                    '1')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object cbbNFE_WEBSERVICE_REGIMETRIBUTARIO: TJvDBComboBox
                  Left = 113
                  Top = 88
                  Width = 127
                  Height = 23
                  DataField = 'NFE_WEBSERVICE_REGIMETRIBUTARIO'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '1 '#8211' Simples Nacional'
                    '2 '#8211' Simples Nacional '#8211' excesso de sublimite de receita bruta'
                    '3 '#8211' Regime Normal')
                  TabOrder = 2
                  Values.Strings = (
                    '1'
                    '2'
                    '3')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object cbb3: TJvDBComboBox
                  Left = 113
                  Top = 36
                  Width = 126
                  Height = 23
                  DataField = 'NFE_FORMAEMISSAO'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '1 '#8211' Normal'
                    '2 '#8211' Conting'#234'ncia FS'
                    '3 '#8211' Conting'#234'ncia SCAN'
                    '4 '#8211' Conting'#234'ncia DPEC'
                    '5 '#8211' Conting'#234'ncia FS-DA')
                  TabOrder = 1
                  Values.Strings = (
                    '1'
                    '2'
                    '3'
                    '4'
                    '5')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object chkNFE_WEBSERVICE_VISUALIZA: TJvDBCheckBox
                  Left = 246
                  Top = 118
                  Width = 127
                  Height = 17
                  Caption = 'Exibe Mensagem?'
                  DataField = 'NFE_WEBSERVICE_VISUALIZA'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 3
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object cbbNFE_VERSAO_DF: TJvDBComboBox
                  Left = 113
                  Top = 114
                  Width = 127
                  Height = 23
                  DataField = 'NFE_VERSAO_DF'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    've200'
                    've300'
                    've310'
                    've400')
                  TabOrder = 4
                  Values.Strings = (
                    '2.00'
                    '3.00'
                    '3.10'
                    '4.00')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object btn9: TBitBtn
                  Left = 113
                  Top = 140
                  Width = 176
                  Height = 25
                  Caption = 'Situa'#231#227'o do Servi'#231'o'
                  TabOrder = 5
                  OnClick = btn9Click
                end
                object cbNFE_WEBSERVICE_UF: TJvDBComboBox
                  Left = 113
                  Top = 10
                  Width = 74
                  Height = 23
                  DataField = 'NFE_WEBSERVICE_UF'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    'AC'
                    'AL'
                    'AP'
                    'AM'
                    'BA'
                    'CE'
                    'DF'
                    'ES'
                    'GO'
                    'MA'
                    'MT'
                    'MS'
                    'MG'
                    'PA'
                    'PB'
                    'PR'
                    'PE'
                    'PI'
                    'RJ'
                    'RN'
                    'RS'
                    'RO'
                    'RR'
                    'SC'
                    'SP'
                    'SE'
                    'TO')
                  TabOrder = 6
                  Values.Strings = (
                    'AC'
                    'AL'
                    'AP'
                    'AM'
                    'BA'
                    'CE'
                    'DF'
                    'ES'
                    'GO'
                    'MA'
                    'MT'
                    'MS'
                    'MG'
                    'PA'
                    'PB'
                    'PR'
                    'PE'
                    'PI'
                    'RJ'
                    'RN'
                    'RS'
                    'RO'
                    'RR'
                    'SC'
                    'SP'
                    'SE'
                    'TO')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
              end
            end
            object tsDanfe: TTabSheet
              Caption = 'DANF-e'
              ImageIndex = 3
              object grpDanfe: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl37: TLabel
                  Left = 9
                  Top = 14
                  Width = 98
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Formato DANFE:'
                end
                object lbl88: TLabel
                  Left = 30
                  Top = 66
                  Width = 77
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Quantidade:'
                end
                object lbl89: TLabel
                  Left = 65
                  Top = 40
                  Width = 42
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Pre'#231'o:'
                end
                object cbbNFE_DANFE: TJvDBComboBox
                  Left = 109
                  Top = 10
                  Width = 127
                  Height = 23
                  DataField = 'NFE_DANFE'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '1 '#8211' Retrato'
                    '2 '#8211' Paisagem')
                  TabOrder = 0
                  Values.Strings = (
                    '1'
                    '2')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object JvDBComboBox4: TJvDBComboBox
                  Left = 109
                  Top = 36
                  Width = 100
                  Height = 23
                  DataField = 'DANFE_CASAS_DECIMAIS_QUANTIDADE'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '2 Casas'
                    '3 Casas')
                  TabOrder = 1
                  Values.Strings = (
                    '2'
                    '3')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object cbbDANFE_CASAS_DECIMAIS_QUANTIDADE: TJvDBComboBox
                  Left = 109
                  Top = 62
                  Width = 100
                  Height = 23
                  DataField = 'DANFE_CASAS_DECIMAIS_PRECO'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '2 Casas'
                    '3 Casas')
                  TabOrder = 2
                  Values.Strings = (
                    '2'
                    '3')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
              end
            end
          end
        end
        object tsNFCe: TTabSheet
          Caption = 'NFCe'
          ImageIndex = 7
          object GroupBox1: TJvgGroupBox
            Left = 0
            Top = 90
            Width = 528
            Height = 90
            Align = alTop
            Caption = ' Impressora'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label14: TLabel
              Left = 7
              Top = 22
              Width = 147
              Height = 15
              Alignment = taRightJustify
              Caption = 'Modelo da Impressora:'
            end
            object Label15: TLabel
              Left = 350
              Top = 22
              Width = 42
              Height = 15
              Alignment = taRightJustify
              Caption = 'Porta:'
            end
            object cbxModelo: TJvDBComboBox
              Left = 160
              Top = 18
              Width = 184
              Height = 23
              DataField = 'TIPO_IMPRESSORA'
              DataSource = dsConfiguracaoSistema
              TabOrder = 0
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbxporta: TDBComboBox
              Left = 398
              Top = 18
              Width = 73
              Height = 23
              DataField = 'PORTACOM'
              DataSource = dsConfiguracaoSistema
              TabOrder = 1
            end
            object chkNFC_MENSAGEM_ENVIO: TJvDBCheckBox
              Left = 160
              Top = 45
              Width = 311
              Height = 17
              Caption = 'Enviar NFC-e ao fechar pedido?'
              DataField = 'NFC_MENSAGEM_ENVIO'
              DataSource = dsConfiguracaoSistema
              TabOrder = 2
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
          object JvgGroupBox1: TJvgGroupBox
            Left = 0
            Top = 0
            Width = 528
            Height = 90
            Align = alTop
            Caption = 'CSC'
            Color = clWhite
            ParentColor = False
            TabOrder = 1
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label13: TLabel
              Left = 35
              Top = 52
              Width = 70
              Height = 15
              Alignment = taRightJustify
              Caption = 'Token/CSC:'
            end
            object Label12: TLabel
              Left = 7
              Top = 27
              Width = 98
              Height = 15
              Alignment = taRightJustify
              Caption = 'IdToken/IdCSC:'
            end
            object Label19: TLabel
              Left = 352
              Top = 26
              Width = 84
              Height = 15
              Alignment = taRightJustify
              Caption = 'N'#250'mero NFCe:'
            end
            object dbedtTOKEN: TDBEdit
              Left = 111
              Top = 48
              Width = 406
              Height = 23
              DataField = 'TOKEN'
              DataSource = dsConfiguracaoSistema
              TabOrder = 0
            end
            object dbedtIDTOKEN: TDBEdit
              Left = 111
              Top = 23
              Width = 99
              Height = 23
              DataField = 'IDTOKEN'
              DataSource = dsConfiguracaoSistema
              TabOrder = 1
            end
            object dbedtNFCeID: TDBEdit
              Left = 442
              Top = 23
              Width = 75
              Height = 23
              DataField = 'ID'
              DataSource = dsConfiguracaoSistema
              ReadOnly = True
              TabOrder = 2
            end
          end
        end
        object tsResptecnico: TTabSheet
          Caption = 'Respons'#225'vel T'#233'cnico'
          ImageIndex = 8
          object grpRespTec: TJvgGroupBox
            Left = 0
            Top = 121
            Width = 528
            Height = 220
            Align = alClient
            Caption = 'CSRT'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object lbl72: TLabel
              Left = 71
              Top = 31
              Width = 56
              Height = 15
              Caption = 'Id CSRT:'
              FocusControl = dbedtNFE_RESPTEC_IDCSRT
            end
            object lbl73: TLabel
              Left = 57
              Top = 53
              Width = 70
              Height = 15
              Caption = 'Hash CSRT:'
              FocusControl = dbedtNFE_RESPTEC_HASHCSRT
            end
            object dbedtNFE_RESPTEC_IDCSRT: TDBEdit
              Left = 130
              Top = 25
              Width = 160
              Height = 23
              DataField = 'NFE_RESPTEC_IDCSRT'
              DataSource = dsConfiguracaoSistema
              TabOrder = 0
            end
            object dbedtNFE_RESPTEC_HASHCSRT: TDBEdit
              Left = 130
              Top = 51
              Width = 385
              Height = 23
              DataField = 'NFE_RESPTEC_HASHCSRT'
              DataSource = dsConfiguracaoSistema
              TabOrder = 1
            end
          end
          object gbxDadosRespTec: TJvgGroupBox
            Left = 0
            Top = 0
            Width = 528
            Height = 121
            Align = alTop
            Caption = 'Dados do Respons'#225'vel T'#233'cnico'
            TabOrder = 1
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object Label11: TLabel
              Left = 92
              Top = 54
              Width = 35
              Height = 15
              Caption = 'CNPJ:'
              FocusControl = dbedtNFE_RESPTEC_CNPJ
            end
            object lbl70: TLabel
              Left = 78
              Top = 80
              Width = 49
              Height = 15
              Caption = 'E-mail:'
              FocusControl = dbedtNFE_RESPTEC_EMAIL
            end
            object Label10: TLabel
              Left = 29
              Top = 28
              Width = 98
              Height = 15
              Alignment = taRightJustify
              Caption = 'Nome do resp.:'
              FocusControl = dbedtNFE_RESPTEC_CONTATO
            end
            object dbedtNFE_RESPTEC_EMAIL: TDBEdit
              Left = 130
              Top = 76
              Width = 338
              Height = 23
              DataField = 'NFE_RESPTEC_EMAIL'
              DataSource = dsConfiguracaoSistema
              TabOrder = 0
            end
            object dbedtNFE_RESPTEC_CNPJ: TDBEdit
              Left = 130
              Top = 50
              Width = 160
              Height = 23
              DataField = 'NFE_RESPTEC_CNPJ'
              DataSource = dsConfiguracaoSistema
              TabOrder = 1
            end
            object dbedtNFE_RESPTEC_CONTATO: TDBEdit
              Left = 128
              Top = 24
              Width = 387
              Height = 23
              DataField = 'NFE_RESPTEC_CONTATO'
              DataSource = dsConfiguracaoSistema
              TabOrder = 2
            end
          end
        end
        object tsPisCofins: TTabSheet
          Caption = 'Pis Cofins'
          ImageIndex = 1
          object lbl40: TLabel
            Left = 6
            Top = 14
            Width = 70
            Height = 15
            Alignment = taRightJustify
            Caption = 'Aliq. PIS:'
          end
          object lbl41: TLabel
            Left = 291
            Top = 14
            Width = 91
            Height = 15
            Alignment = taRightJustify
            Caption = 'Aliq. COFINS:'
          end
          object edtNFE_IMPOSTOS_PIS: TJvDBCalcEdit
            Left = 82
            Top = 10
            Width = 87
            Height = 23
            DisplayFormat = '#,##0.00'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            DataField = 'NFE_IMPOSTOS_PIS'
            DataSource = dsConfiguracaoSistema
          end
          object edtNFE_IMPOSTOS_COFINS: TJvDBCalcEdit
            Left = 388
            Top = 10
            Width = 87
            Height = 23
            DisplayFormat = '#,##0.00'
            ShowButton = False
            TabOrder = 1
            DecimalPlacesAlwaysShown = False
            DataField = 'NFE_IMPOSTOS_COFINS'
            DataSource = dsConfiguracaoSistema
          end
        end
        object tsEmail: TTabSheet
          Caption = 'Email'
          ImageIndex = 2
          object grpConfEmail: TJvgGroupBox
            Left = 0
            Top = 0
            Width = 528
            Height = 341
            Align = alClient
            Caption = 'Informa'#231#245'es da conta (Gmail ou Yahoo)'
            TabOrder = 0
            Border.Inner = bvSpace
            Border.Outer = bvNone
            Border.Bold = False
            CaptionBorder.Inner = bvSpace
            CaptionBorder.Outer = bvNone
            CaptionBorder.Bold = False
            CaptionGradient.Active = False
            CaptionGradient.Orientation = fgdHorizontal
            CaptionShift.X = 8
            CaptionShift.Y = 0
            Colors.Text = clHighlightText
            Colors.TextActive = clHighlightText
            Colors.Caption = clBtnShadow
            Colors.CaptionActive = clBtnShadow
            Colors.Client = clBtnFace
            Colors.ClientActive = clBtnFace
            Gradient.FromColor = clBlack
            Gradient.ToColor = clGray
            Gradient.Active = False
            Gradient.Orientation = fgdHorizontal
            Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
            FullHeight = 0
            object lbl57: TLabel
              Left = 16
              Top = 24
              Width = 98
              Height = 15
              Alignment = taRightJustify
              Caption = 'Servidor SMTP:'
            end
            object lbl58: TLabel
              Left = 16
              Top = 49
              Width = 98
              Height = 15
              Alignment = taRightJustify
              Caption = 'Usu'#225'rio/Email:'
            end
            object lbl59: TLabel
              Left = 72
              Top = 74
              Width = 42
              Height = 15
              Alignment = taRightJustify
              Caption = 'Senha:'
            end
            object lbl60: TLabel
              Left = 399
              Top = 24
              Width = 42
              Height = 15
              Alignment = taRightJustify
              Caption = 'Porta:'
            end
            object edtNFE_SMTP_SERVER: TDBEdit
              Left = 120
              Top = 20
              Width = 236
              Height = 23
              DataField = 'NFE_SMTP_SERVER'
              DataSource = dsConfiguracaoSistema
              TabOrder = 0
            end
            object edtNFE_SMTP_PORTA: TDBEdit
              Left = 447
              Top = 20
              Width = 52
              Height = 23
              DataField = 'NFE_SMTP_PORTA'
              DataSource = dsConfiguracaoSistema
              TabOrder = 1
            end
            object edtNFE_SMTP_USUARIO: TDBEdit
              Left = 120
              Top = 45
              Width = 236
              Height = 23
              DataField = 'NFE_SMTP_USUARIO'
              DataSource = dsConfiguracaoSistema
              TabOrder = 2
            end
            object edtNFE_SMTP_SENHA: TDBEdit
              Left = 120
              Top = 70
              Width = 236
              Height = 23
              DataField = 'NFE_SMTP_SENHA'
              DataSource = dsConfiguracaoSistema
              PasswordChar = '*'
              TabOrder = 3
            end
            object btnEnvioEmail: TBitBtn
              Left = 120
              Top = 122
              Width = 236
              Height = 21
              Caption = 'Enviar email Teste'
              TabOrder = 4
            end
            object edtCC: TLabeledEdit
              Left = 120
              Top = 95
              Width = 236
              Height = 23
              EditLabel.Width = 91
              EditLabel.Height = 15
              EditLabel.Caption = 'Destinat'#225'rio:'
              LabelPosition = lpLeft
              TabOrder = 5
            end
          end
        end
        object tsDadosAdicionais1: TTabSheet
          Caption = 'Dados Adicionais NF-e'
          ImageIndex = 3
          object lbl55: TLabel
            Left = 3
            Top = 4
            Width = 259
            Height = 15
            Caption = 'Vari'#225'veis a Tabela do Simples Nacinal'
          end
          object mmo1: TDBMemo
            Left = 210
            Top = 3
            Width = 313
            Height = 340
            DataField = 'NFE_DADOSADICIONAIS'
            DataSource = dsConfiguracaoSistema
            TabOrder = 0
          end
          object cbbVariaveisSN: TJvDBComboBox
            Left = 3
            Top = 20
            Width = 158
            Height = 23
            Items.Strings = (
              '#ALIQUOTA_ICMS'
              '#VALOR_ICMS'
              '#ALIQUOTA_CPP'
              '#VALOR_CPP'
              '#ALIQUOTA_PIS'
              '#VALOR_PIS'
              '#ALIQUOTA_COFINS'
              '#VALOR_COFINS'
              '#ALIQUOTA_CSLL'
              '#VALOR_CSLL'
              '#ALIQUOTA_IRPJ'
              '#VALOR_IRPJ'
              '#ALIQUOTA_SN'
              '#VALOR_SN')
            TabOrder = 1
            Values.Strings = (
              '#ALIQUOTA_ICMS'
              '#VALOR_ICMS'
              '#ALIQUOTA_CPP'
              '#VALOR_CPP'
              '#ALIQUOTA_PIS'
              '#VALOR_PIS'
              '#ALIQUOTA_COFINS'
              '#VALOR_COFINS'
              '#ALIQUOTA_CSLL'
              '#VALOR_CSLL'
              '#ALIQUOTA_IRPJ'
              '#VALOR_IRPJ'
              '#ALIQUOTA_SN'
              '#VALOR_SN')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object btn8: TBitBtn
            Left = 164
            Top = 20
            Width = 40
            Height = 22
            Caption = '>'
            TabOrder = 2
          end
        end
        object tsTabelaSN: TTabSheet
          Caption = 'Tabela Simples Nacional'
          ImageIndex = 6
          object grdSN: TJvDBGrid
            Left = 0
            Top = 41
            Width = 528
            Height = 300
            Align = alClient
            DrawingStyle = gdsClassic
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Courier New'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 19
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_TABSN'
                Title.Caption = 'Tabela'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_INICIAL'
                Title.Caption = 'VL INICIAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_FINAL'
                Title.Caption = 'VL FINAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTA_SN'
                Title.Caption = 'ALIQUOTA SN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_IRPJ'
                Title.Caption = 'VL IRPJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_CSLL'
                Title.Caption = 'VL CSLL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_COFINS'
                Title.Caption = 'VL COFINS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_PIS'
                Title.Caption = 'VL PIS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_CPP'
                Title.Caption = 'VL CPP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VL_ICMS'
                Title.Caption = 'VL ICMS'
                Visible = True
              end>
          end
          object pnl3: TPanel
            Left = 0
            Top = 0
            Width = 528
            Height = 41
            Align = alTop
            TabOrder = 1
            object JvDBCheckBox3: TJvDBCheckBox
              Left = 10
              Top = 13
              Width = 184
              Height = 17
              Caption = 'Mostrar imposto na NF-e?'
              DataField = 'NFE_EXIBEIMPOSTOSNDA'
              TabOrder = 0
              ValueChecked = '1'
              ValueUnchecked = '0'
            end
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'Fundo de Combate a Pobreza'
          ImageIndex = 8
          object JvDBGrid2: TJvDBGrid
            Left = 0
            Top = 0
            Width = 528
            Height = 341
            Align = alClient
            DrawingStyle = gdsClassic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            PostOnEnterKey = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 20
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'UF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMSINTERNO'
                Title.Caption = 'ICMS Praticado no estado.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PFCPUFDEST'
                Title.Caption = '% FCP Destino'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ICMSDESTINO'
                Title.Caption = 'ICMS entre estado'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PFCPUFPARTILHA'
                Title.Caption = '% ICMS Partilha'
                Width = 123
                Visible = True
              end>
          end
        end
      end
    end
    object tsSPEDFiscal: TTabSheet
      Caption = 'SPED'
      ImageIndex = 2
      object pgcSped: TPageControl
        Left = 0
        Top = 0
        Width = 536
        Height = 371
        ActivePage = tsSpedFiscal2
        Align = alClient
        TabOrder = 0
        object tsSpedFiscal2: TTabSheet
          Caption = 'SPED Fiscal'
          object pgcSpedFiscal: TPageControl
            Left = 0
            Top = 0
            Width = 528
            Height = 341
            ActivePage = tsSpedFiscalPerfil
            Align = alClient
            TabOrder = 0
            object tsSpedFiscalPerfil: TTabSheet
              Caption = 'Perfil'
              object grpPerfilSped: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl1: TLabel
                  Left = 68
                  Top = 14
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Perfil:'
                  FocusControl = cbbSPED_FISCAL_PERFIL_FISCAL
                end
                object lbl2: TLabel
                  Left = 12
                  Top = 40
                  Width = 105
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Ind. Atividade:'
                  FocusControl = cbbSPED_FISCAL_ATIVIDADE_FISCAL
                end
                object lbl3: TLabel
                  Left = 40
                  Top = 66
                  Width = 77
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Finalidade:'
                  FocusControl = cbbSPED_FISCAL_FINALIDADE
                end
                object lbl4: TLabel
                  Left = 68
                  Top = 92
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Vers'#227'o:'
                  FocusControl = cbbSPED_FISCAL_VERSAOSPEDFISCAL
                end
                object cbbSPED_FISCAL_PERFIL_FISCAL: TJvDBComboBox
                  Left = 120
                  Top = 10
                  Width = 96
                  Height = 23
                  DataField = 'SPED_FISCAL_PERFIL_FISCAL'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    'Perfil A'
                    'Perfil B'
                    'Perfil C')
                  TabOrder = 0
                  Values.Strings = (
                    '0'
                    '1'
                    '2')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object cbbSPED_FISCAL_ATIVIDADE_FISCAL: TJvDBComboBox
                  Left = 120
                  Top = 36
                  Width = 253
                  Height = 23
                  DataField = 'SPED_FISCAL_ATIVIDADE_FISCAL'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '0 - Industrial ou equiparado a industrial'
                    '1 - Outros')
                  TabOrder = 1
                  Values.Strings = (
                    '0'
                    '1')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
                object cbbSPED_FISCAL_FINALIDADE: TJvDBComboBox
                  Left = 120
                  Top = 62
                  Width = 253
                  Height = 23
                  DataField = 'SPED_FISCAL_FINALIDADE'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '0 - Remessa do arquivo original'
                    '1 - Remessa do arquivo substituto')
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
                object cbbSPED_FISCAL_VERSAOSPEDFISCAL: TJvDBComboBox
                  Left = 120
                  Top = 88
                  Width = 136
                  Height = 23
                  DataField = 'SPED_FISCAL_VERSAOSPEDFISCAL'
                  DataSource = dsConfiguracaoSistema
                  Items.Strings = (
                    '100'
                    '101'
                    '102'
                    '103'
                    '104'
                    '105'
                    '106'
                    '107'
                    '108'
                    '109'
                    '110'
                    '111'
                    '112'
                    '113')
                  TabOrder = 3
                  Values.Strings = (
                    '100'
                    '101'
                    '102'
                    '103'
                    '104'
                    '105'
                    '106'
                    '107'
                    '108'
                    '109'
                    '110'
                    '111'
                    '112'
                    '113')
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                end
              end
            end
            object tsSpedFiscalContador: TTabSheet
              Caption = 'Dados do contador'
              ImageIndex = 1
              object grpDadosContador: TJvgGroupBox
                Left = 0
                Top = 0
                Width = 520
                Height = 311
                Align = alClient
                Caption = ''
                TabOrder = 0
                Border.Inner = bvSpace
                Border.Outer = bvNone
                Border.Bold = False
                CaptionBorder.Inner = bvSpace
                CaptionBorder.Outer = bvNone
                CaptionBorder.Bold = False
                CaptionGradient.Active = False
                CaptionGradient.Orientation = fgdHorizontal
                CaptionShift.X = 8
                CaptionShift.Y = 0
                Colors.Text = clHighlightText
                Colors.TextActive = clHighlightText
                Colors.Caption = clBtnShadow
                Colors.CaptionActive = clBtnShadow
                Colors.Client = clBtnFace
                Colors.ClientActive = clBtnFace
                Gradient.FromColor = clBlack
                Gradient.ToColor = clGray
                Gradient.Active = False
                Gradient.Orientation = fgdHorizontal
                Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
                FullHeight = 0
                object lbl5: TLabel
                  Left = 27
                  Top = 14
                  Width = 98
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Nome Contador:'
                  FocusControl = edtSPED_FISCAL_NOME_CONTADOR
                end
                object lbl6: TLabel
                  Left = 20
                  Top = 40
                  Width = 105
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'CPF/CNPJ Cont.:'
                  FocusControl = edtSPED_FISCAL_CPFCNPJ_CONTADOR
                end
                object lbl7: TLabel
                  Left = 269
                  Top = 42
                  Width = 112
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'CNPJ Escrit'#243'rio:'
                  FocusControl = edtSPED_FISCAL_CNPJ_ESCRITORIO
                end
                object lbl8: TLabel
                  Left = 76
                  Top = 66
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'N'#186' CRC:'
                  FocusControl = edtSPED_FISCAL_CRC_CONTADOR
                end
                object lbl9: TLabel
                  Left = 62
                  Top = 92
                  Width = 63
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Endere'#231'o:'
                  FocusControl = edtSPED_FISCAL_ENDERECO_CONTADOR
                end
                object lbl10: TLabel
                  Left = 400
                  Top = 87
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'N'#250'mero:'
                  FocusControl = edtSPED_FISCAL_NUMERO_CONTADOR
                end
                object lbl11: TLabel
                  Left = 225
                  Top = 118
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Compl.:'
                  FocusControl = edtSPED_FISCAL_COMPLEMENTO_CONTADOR
                end
                object lbl12: TLabel
                  Left = 76
                  Top = 144
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Bairro:'
                  FocusControl = edtSPED_FISCAL_BAIRRO_CONTADOR
                end
                object lbl13: TLabel
                  Left = 55
                  Top = 169
                  Width = 70
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Munic'#237'pio:'
                  FocusControl = edtSPED_FISCAL_CODIBGE_MUNICIPIO_CONTADOR
                end
                object lbl14: TLabel
                  Left = 62
                  Top = 195
                  Width = 63
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Telefone:'
                  FocusControl = edtSPED_FISCAL_TELEFONE_CONTADOR
                end
                object lbl15: TLabel
                  Left = 381
                  Top = 195
                  Width = 28
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'Fax:'
                  FocusControl = edtSPED_FISCAL_FAX_CONTADOR
                end
                object lbl16: TLabel
                  Left = 76
                  Top = 221
                  Width = 49
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'E-mail:'
                  FocusControl = dbedtSPED_FISCAL_EMAIL_CONTADOR
                end
                object Label18: TLabel
                  Left = 97
                  Top = 118
                  Width = 28
                  Height = 15
                  Alignment = taRightJustify
                  Caption = 'CEP:'
                  FocusControl = edtSPED_FISCAL_NUMERO_CONTADOR
                end
                object edtSPED_FISCAL_NOME_CONTADOR: TDBEdit
                  Left = 128
                  Top = 10
                  Width = 382
                  Height = 23
                  DataField = 'SPED_FISCAL_NOME_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 0
                end
                object edtSPED_FISCAL_CPFCNPJ_CONTADOR: TDBEdit
                  Left = 128
                  Top = 36
                  Width = 130
                  Height = 23
                  DataField = 'SPED_FISCAL_CPFCNPJ_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 1
                end
                object edtSPED_FISCAL_CNPJ_ESCRITORIO: TDBEdit
                  Left = 383
                  Top = 38
                  Width = 130
                  Height = 23
                  DataField = 'SPED_FISCAL_CNPJ_ESCRITORIO'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 2
                end
                object edtSPED_FISCAL_CRC_CONTADOR: TDBEdit
                  Left = 128
                  Top = 62
                  Width = 144
                  Height = 23
                  DataField = 'SPED_FISCAL_CRC_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 3
                end
                object edtSPED_FISCAL_ENDERECO_CONTADOR: TDBEdit
                  Left = 128
                  Top = 88
                  Width = 224
                  Height = 23
                  DataField = 'SPED_FISCAL_ENDERECO_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 4
                end
                object edtSPED_FISCAL_NUMERO_CONTADOR: TDBEdit
                  Left = 451
                  Top = 83
                  Width = 62
                  Height = 23
                  DataField = 'SPED_FISCAL_NUMERO_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 5
                end
                object edtSPED_FISCAL_COMPLEMENTO_CONTADOR: TDBEdit
                  Left = 276
                  Top = 114
                  Width = 237
                  Height = 23
                  DataField = 'SPED_FISCAL_COMPLEMENTO_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 7
                end
                object edtSPED_FISCAL_BAIRRO_CONTADOR: TDBEdit
                  Left = 128
                  Top = 140
                  Width = 385
                  Height = 23
                  DataField = 'SPED_FISCAL_BAIRRO_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 8
                end
                object edtSPED_FISCAL_CODIBGE_MUNICIPIO_CONTADOR: TJvDBLookupCombo
                  Left = 128
                  Top = 166
                  Width = 385
                  Height = 22
                  DataField = 'SPED_FISCAL_CODIBGE_MUNICIPIO_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  LookupField = 'ID_IBGE'
                  LookupDisplay = 'NOME'
                  TabOrder = 9
                end
                object edtSPED_FISCAL_TELEFONE_CONTADOR: TDBEdit
                  Left = 128
                  Top = 191
                  Width = 100
                  Height = 23
                  DataField = 'SPED_FISCAL_TELEFONE_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 10
                end
                object edtSPED_FISCAL_FAX_CONTADOR: TDBEdit
                  Left = 413
                  Top = 191
                  Width = 100
                  Height = 23
                  DataField = 'SPED_FISCAL_FAX_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 11
                end
                object dbedtSPED_FISCAL_EMAIL_CONTADOR: TDBEdit
                  Left = 128
                  Top = 217
                  Width = 253
                  Height = 23
                  DataField = 'SPED_FISCAL_EMAIL_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  TabOrder = 12
                end
                object dbedtSPED_FISCAL_CEP_CONTADOR: TDBEdit
                  Left = 128
                  Top = 114
                  Width = 86
                  Height = 23
                  DataField = 'SPED_FISCAL_CEP_CONTADOR'
                  DataSource = dsConfiguracaoSistema
                  MaxLength = 8
                  TabOrder = 6
                end
              end
            end
            object tsSpedFiscalArquivo: TTabSheet
              Caption = 'Arquivo'
              ImageIndex = 2
              object lbl97: TLabel
                Left = 16
                Top = 13
                Width = 126
                Height = 15
                Alignment = taRightJustify
                Caption = 'Diretorio do SPED:'
                FocusControl = dbedtSPED_FISCAL_EMAIL_CONTADOR
              end
              object edtSPED_DIR: TDBEdit
                Left = 146
                Top = 10
                Width = 338
                Height = 23
                DataField = 'SPED_DIR'
                DataSource = dsConfiguracaoSistema
                TabOrder = 0
              end
              object btnDirSPED: TJvXPButton
                Left = 486
                Top = 10
                Width = 26
                Caption = '...'
                TabOrder = 1
              end
            end
          end
        end
      end
    end
    object tsExportacao: TTabSheet
      Caption = 'Exporta'#231#227'o'
      ImageIndex = 3
      TabVisible = False
      object lbl18: TLabel
        Left = 6
        Top = 11
        Width = 63
        Height = 15
        Caption = 'Exporta ?'
        FocusControl = cbbEXPORTACAO
      end
      object lbl19: TLabel
        Left = 88
        Top = 14
        Width = 105
        Height = 15
        Caption = 'Mod. Exporta'#231#227'o'
        FocusControl = cbbEXPORTACAO_MODELO
      end
      object lbl20: TLabel
        Left = 228
        Top = 14
        Width = 56
        Height = 15
        Caption = 'Clientes'
        FocusControl = cbbEXPORTACAO_CLIENTE
      end
      object lbl21: TLabel
        Left = 311
        Top = 14
        Width = 56
        Height = 15
        Caption = 'Produtos'
        FocusControl = cbbEXPORTACAO_PRODUTO
      end
      object lbl22: TLabel
        Left = 399
        Top = 14
        Width = 35
        Height = 15
        Caption = 'Venda'
        FocusControl = cbbEXPORTACAO_VENDA
        Visible = False
      end
      object cbbEXPORTACAO: TJvDBComboBox
        Left = 3
        Top = 30
        Width = 79
        Height = 23
        DataField = 'EXPORTACAO'
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 0
        Values.Strings = (
          '1'
          '0')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbEXPORTACAO_MODELO: TJvDBComboBox
        Left = 88
        Top = 30
        Width = 134
        Height = 23
        DataField = 'EXPORTACAO_MODELO'
        Items.Strings = (
          '0 - Sem Modelo'
          '1 - DJ System')
        TabOrder = 1
        Values.Strings = (
          '0'
          '1')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbEXPORTACAO_CLIENTE: TJvDBComboBox
        Left = 228
        Top = 30
        Width = 79
        Height = 23
        DataField = 'EXPORTACAO_CLIENTE'
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 2
        Values.Strings = (
          '1'
          '0')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbEXPORTACAO_PRODUTO: TJvDBComboBox
        Left = 311
        Top = 30
        Width = 84
        Height = 23
        DataField = 'EXPORTACAO_PRODUTO'
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 3
        Values.Strings = (
          '1'
          '0')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbEXPORTACAO_VENDA: TJvDBComboBox
        Left = 399
        Top = 30
        Width = 71
        Height = 23
        DataField = 'EXPORTACAO_VENDA'
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 4
        Values.Strings = (
          '1'
          '0')
        Visible = False
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object btn2: TJvXPButton
        Left = 3
        Top = 57
        Width = 129
        Height = 33
        Caption = 'Exportar'
        TabOrder = 5
      end
    end
    object tsBackup: TTabSheet
      Caption = 'Backup'
      ImageIndex = 4
      object lbl44: TLabel
        Left = 16
        Top = 7
        Width = 84
        Height = 15
        Caption = 'Local Backup'
      end
      object edtGERAL_SISTEMA_LOCAL_BACKUP: TJvDBComboEdit
        Left = 16
        Top = 24
        Width = 361
        Height = 23
        DataField = 'GERAL_SISTEMA_LOCAL_BACKUP'
        DataSource = dsConfiguracaoSistema
        ImageKind = ikEllipsis
        TabOrder = 0
      end
      object btnBackup: TJvXPButton
        Left = 383
        Top = 24
        Width = 138
        Caption = 'Executar Backup'
        TabOrder = 1
      end
      object chkSISTEMA_BACKUPAOSAIR: TJvDBCheckBox
        Left = 16
        Top = 51
        Width = 184
        Height = 17
        Caption = 'Executar Backup ao sair?'
        DataField = 'SISTEMA_BACKUPAOSAIR'
        DataSource = dsConfiguracaoSistema
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object tsCV: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 5
      object pgcVendas: TJvgPageControl
        Left = 0
        Top = 0
        Width = 536
        Height = 371
        ActivePage = tsParaovenda
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
        object tsParaovenda: TTabSheet
          Caption = 'Padr'#227'o'
          ImageIndex = 5
          object grpPadraoVenda: TGroupBox
            Left = 0
            Top = 0
            Width = 528
            Height = 343
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object lbl29: TLabel
              Left = 48
              Top = 14
              Width = 56
              Height = 15
              Alignment = taRightJustify
              Caption = 'Cliente:'
            end
            object Label2: TLabel
              Left = 41
              Top = 39
              Width = 63
              Height = 15
              Alignment = taRightJustify
              Caption = 'Natureza:'
            end
            object lbl49: TLabel
              Left = 285
              Top = 41
              Width = 63
              Height = 15
              Alignment = taRightJustify
              Caption = 'Conta C.:'
            end
            object lbl84: TLabel
              Left = 6
              Top = 64
              Width = 98
              Height = 15
              Alignment = taRightJustify
              Caption = 'Lista de anos:'
            end
            object lbl85: TLabel
              Left = 6
              Top = 89
              Width = 98
              Height = 15
              Alignment = taRightJustify
              Caption = 'Tab. na busca?'
            end
            object lbl90: TLabel
              Left = 325
              Top = 63
              Width = 28
              Height = 15
              Caption = 'M'#234's:'
              FocusControl = cbbVENDA_LIMITE_MENSAL
            end
            object lbl104: TLabel
              Left = 20
              Top = 114
              Width = 84
              Height = 15
              Alignment = taRightJustify
              Caption = 'CFOP Padr'#227'o:'
            end
            object lbl105: TLabel
              Left = 193
              Top = 114
              Width = 105
              Height = 15
              Alignment = taRightJustify
              Caption = 'CFOP Descri'#231#227'o:'
            end
            object cbbCliente: TJvDBLookupCombo
              Left = 109
              Top = 10
              Width = 352
              Height = 22
              DataField = 'DEFAULT_VENDA_CLIENTE'
              DataSource = dsConfiguracaoSistema
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = dsLkpCLientes
              TabOrder = 0
            end
            object cbbDEFAULT_VENDA_NATUREZA: TJvDBLookupCombo
              Left = 109
              Top = 35
              Width = 147
              Height = 22
              DataField = 'DEFAULT_VENDA_NATUREZA'
              DataSource = dsConfiguracaoSistema
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = dsLkpNatureza
              TabOrder = 1
            end
            object cbb5: TJvDBLookupCombo
              Left = 354
              Top = 35
              Width = 159
              Height = 22
              DataField = 'DEFAULT_VENDA_CONTACORRENTE'
              DataSource = dsConfiguracaoSistema
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = dsLkpContas
              TabOrder = 2
            end
            object grp9: TGroupBox
              Left = 10
              Top = 162
              Width = 503
              Height = 80
              Caption = 'Planos de Pagamentos'
              TabOrder = 8
              object lbl30: TLabel
                Left = 16
                Top = 26
                Width = 105
                Height = 15
                Alignment = taRightJustify
                Caption = 'Cond. de Pagto:'
              end
              object lbl31: TLabel
                Left = 16
                Top = 53
                Width = 105
                Height = 15
                Alignment = taRightJustify
                Caption = 'Forma de Pagto:'
              end
              object cbblkpDEFAULT_VENDA_CONDPAGTO: TJvDBLookupCombo
                Left = 128
                Top = 22
                Width = 294
                Height = 22
                DataField = 'DEFAULT_VENDA_CONDPAGTO'
                DataSource = dsConfiguracaoSistema
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                TabOrder = 0
              end
              object cbblkpDEFAULT_VENDA_FORMAPAGTO: TJvDBLookupCombo
                Left = 128
                Top = 49
                Width = 294
                Height = 22
                DataField = 'DEFAULT_VENDA_FORMAPAGTO'
                DataSource = dsConfiguracaoSistema
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                TabOrder = 1
              end
            end
            object cbbVENDA_LIMITE_ANUAL: TJvDBComboBox
              Left = 109
              Top = 60
              Width = 141
              Height = 23
              DataField = 'VENDA_LIMITE_ANUAL'
              DataSource = dsConfiguracaoSistema
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
            object cbbVENDA_EXIBE_TABELA_BUSCA: TJvDBComboBox
              Left = 109
              Top = 85
              Width = 167
              Height = 23
              DataField = 'VENDA_EXIBE_TABELA_BUSCA'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                '0 - Sem tabela de pre'#231'o'
                '1 - Tab. de Pr'#231' por produto'
                '2 - Tab. de Pr'#231' por Forma pagto')
              TabOrder = 5
              Values.Strings = (
                '0'
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbbVENDA_LIMITE_MENSAL: TJvDBComboBox
              Left = 354
              Top = 60
              Width = 159
              Height = 23
              DataField = 'VENDA_LIMITE_MENSAL'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                '0 - Todos'
                '1 - Janeiro'
                '2 - Fevereiro'
                '3 - Mar'#231'o'
                '4 - Abril'
                '5 - Maio'
                '6 - Junho'
                '7 - Julho'
                '8 - Agosto'
                '9 - Setembro'
                '10 - Outubro'
                '11 - Novembro'
                '12 - Dezembro'
                '13 - M'#234's Atual')
              TabOrder = 4
              Values.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4'
                '5'
                '6'
                '7'
                '8'
                '9'
                '10'
                '11'
                '12'
                '13')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object dbedtDEFAULT_VENDA_CFOP1: TDBEdit
              Left = 109
              Top = 112
              Width = 74
              Height = 23
              DataField = 'DEFAULT_VENDA_CFOP'
              DataSource = dsConfiguracaoSistema
              TabOrder = 6
            end
            object dbedtDEFAULT_VENDA_CFOP_DESCRICAO: TDBEdit
              Left = 304
              Top = 110
              Width = 209
              Height = 23
              CharCase = ecUpperCase
              DataField = 'DEFAULT_VENDA_CFOP_DESCRICAO'
              DataSource = dsConfiguracaoSistema
              TabOrder = 7
            end
          end
        end
        object tsVendaGeral: TTabSheet
          Caption = 'Geral'
          object grp10: TGroupBox
            Left = 0
            Top = 0
            Width = 528
            Height = 343
            Hint = 'OFICINA_PREVISAO_ENTREGA'
            Align = alClient
            Caption = 'Geral'
            TabOrder = 0
            object Label1: TLabel
              Left = 21
              Top = 16
              Width = 73
              Height = 13
              Alignment = taRightJustify
              Caption = 'Modelo Pedido:'
              FocusControl = cbbVENDA_MODELO
            end
            object lbl50: TLabel
              Left = 18
              Top = 42
              Width = 76
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tp Busca Prod.:'
              FocusControl = cbbVENDA_TP_PESQ_PRODUTO
            end
            object lbl62: TLabel
              Left = 287
              Top = 17
              Width = 57
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Venda:'
              FocusControl = cbbVENDA_TIPO_VENDA
            end
            object lbl43: TLabel
              Left = 257
              Top = 42
              Width = 87
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo de Comiss'#227'o:'
              FocusControl = cbbVENDA_COMISSAO
            end
            object lbl92: TLabel
              Left = 293
              Top = 67
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Filtro:'
              FocusControl = cbb11
            end
            object lbl83: TLabel
              Left = 22
              Top = 67
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = 'Tipo Desconto:'
              FocusControl = cbbVENDA_TIPO_DESCONTO
            end
            object Label3: TLabel
              Left = 40
              Top = 92
              Width = 54
              Height = 13
              Alignment = taRightJustify
              Caption = 'Casas Qtd:'
              FocusControl = cbbVENDA_CASAS_QUANTIDADE
            end
            object cbbVENDA_MODELO: TJvDBComboBox
              Left = 101
              Top = 13
              Width = 154
              Height = 21
              DataField = 'VENDA_MODELO'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'Pedido'
                'Ordem de Servi'#231'o')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbbVENDA_TP_PESQ_PRODUTO: TJvDBComboBox
              Left = 101
              Top = 38
              Width = 152
              Height = 21
              DataField = 'VENDA_TP_PESQ_PRODUTO'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'Por DESCRI'#199#195'O'
                'Por C'#211'DIGO'
                'Por Leitor (CODIGO DE BARRAS)'
                'Por AMBOS (DESCRI'#199#195'O E OU CODIGO DE BARRAS)')
              TabOrder = 2
              Values.Strings = (
                '0'
                '1'
                '2'
                '3')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbbVENDA_TIPO_VENDA: TJvDBComboBox
              Left = 350
              Top = 13
              Width = 161
              Height = 21
              DataField = 'VENDA_TIPO_VENDA'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'Venda Normal (Modelo otimizado)'
                'Venda R'#225'pida'
                'Venda Modelo Tradicional')
              TabOrder = 1
              Values.Strings = (
                '0'
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbbVENDA_COMISSAO: TJvDBComboBox
              Left = 350
              Top = 38
              Width = 151
              Height = 21
              DataField = 'VENDA_COMISSAO'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                '1 - Por Venda'
                '2 - Por Produto'
                '3 - Por Servico'
                '4 - Sem Comis'#227'o')
              TabOrder = 3
              Values.Strings = (
                '1'
                '2'
                '3'
                '4')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbb11: TJvDBComboBox
              Left = 350
              Top = 63
              Width = 161
              Height = 21
              DataField = 'VENDA_TIPOFILTROPRODUTO'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                '1 - Igual a '
                '2 - Iniciado por'
                '3 - Cont'#233'm')
              TabOrder = 5
              Values.Strings = (
                '1'
                '2'
                '3')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object cbbVENDA_TIPO_DESCONTO: TJvDBComboBox
              Left = 101
              Top = 63
              Width = 109
              Height = 21
              DataField = 'VENDA_TIPO_DESCONTO'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'Monet'#225'rio (R$)'
                'Percentual (%)')
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
            object cbbVENDA_CASAS_QUANTIDADE: TJvDBComboBox
              Left = 101
              Top = 88
              Width = 52
              Height = 21
              DataField = 'VENDA_CASAS_QUANTIDADE'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                '2'
                '3'
                '4')
              TabOrder = 6
              Values.Strings = (
                '2'
                '3'
                '4')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
        object tsParametrosVendas: TTabSheet
          Caption = 'Parametros'
          ImageIndex = 6
          object cbbVENDA_FOTO_BUSCA_POS: TJvDBComboBox
            Left = 200
            Top = 258
            Width = 77
            Height = 21
            DataField = 'VENDA_FOTO_BUSCA_POS'
            DataSource = dsConfiguracaoSistema
            Items.Strings = (
              'Direita'
              'Esquerda')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBCheckBox1: TJvDBCheckBox
            Left = 10
            Top = 302
            Width = 335
            Height = 17
            Caption = 'Salvar ultimo pre'#231'o do cliente e recuperar nas pr'#243'ximas vendas?'
            DataField = 'VENDA_UPDATE_PRECO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_DESCONTO_ITEM: TJvDBCheckBox
            Left = 10
            Top = 8
            Width = 184
            Height = 17
            Caption = 'Desconto por item?'
            DataField = 'VENDA_DESCONTO_ITEM'
            DataSource = dsConfiguracaoSistema
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_BUSCA_PRODUTO_AUTO: TJvDBCheckBox
            Left = 10
            Top = 29
            Width = 184
            Height = 17
            Caption = 'Busca produto automaticamente?'
            DataField = 'VENDA_BUSCA_PRODUTO_AUTO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_BUSCA_PRODUTO_MAXIMIZADA: TJvDBCheckBox
            Left = 10
            Top = 50
            Width = 184
            Height = 17
            Caption = 'Tela de busca do produto Maximizada?'
            DataField = 'VENDA_BUSCA_PRODUTO_MAXIMIZADA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_CHAMATROCO: TJvDBCheckBox
            Left = 10
            Top = 71
            Width = 184
            Height = 17
            Caption = 'Exibir Tela de Troco?'
            DataField = 'VENDA_CHAMATROCO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_BUSCA_PROD_EXIBE_NSERIE: TJvDBCheckBox
            Left = 10
            Top = 92
            Width = 209
            Height = 17
            Caption = 'Exibir Num. S'#233'rie na busca do produto?'
            DataField = 'VENDA_BUSCA_PROD_EXIBE_NSERIE'
            DataSource = dsConfiguracaoSistema
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_DIMENSAO: TJvDBCheckBox
            Left = 10
            Top = 113
            Width = 209
            Height = 17
            Caption = 'Exibir Dimens'#245'es Altura e Largura ?'
            DataField = 'VENDA_DIMENSAO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkSISTEMA_CONTROLA_CAIXA: TJvDBCheckBox
            Left = 10
            Top = 134
            Width = 209
            Height = 17
            Caption = 'Usar controle de caixa?'
            DataField = 'SISTEMA_CONTROLA_CAIXA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_EXIBE_PED_ECOMMERCE: TJvDBCheckBox
            Left = 10
            Top = 155
            Width = 209
            Height = 17
            Caption = 'Exibir campo Ecommerce no Pedido?'
            DataField = 'VENDA_EXIBE_PED_ECOMMERCE'
            DataSource = dsConfiguracaoSistema
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_EDITA_PRECO: TJvDBCheckBox
            Left = 10
            Top = 176
            Width = 209
            Height = 17
            Caption = 'Permitir editar pre'#231'o no pedido?'
            DataField = 'VENDA_EDITA_PRECO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 10
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_INCREMENTA_ITEM: TJvDBCheckBox
            Left = 10
            Top = 197
            Width = 236
            Height = 17
            Caption = 'Incrementar quantidade do mesmo produto?'
            DataField = 'VENDA_INCREMENTA_ITEM'
            DataSource = dsConfiguracaoSistema
            TabOrder = 11
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkDEFAULT_VENDA_EXIBE_ITENS: TJvDBCheckBox
            Left = 10
            Top = 218
            Width = 184
            Height = 17
            Caption = 'Exibir item(ns) na consulta?'
            DataField = 'DEFAULT_VENDA_EXIBE_ITENS'
            DataSource = dsConfiguracaoSistema
            TabOrder = 12
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_TELA_MAXIMIZADA: TJvDBCheckBox
            Left = 10
            Top = 239
            Width = 236
            Height = 17
            Caption = 'Exibir tela do pedido maximizada?'
            DataField = 'VENDA_TELA_MAXIMIZADA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 13
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_FOTO_BUSCA: TJvDBCheckBox
            Left = 10
            Top = 260
            Width = 184
            Height = 17
            Caption = 'Exibir foto do produto no pedido?'
            DataField = 'VENDA_FOTO_BUSCA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 14
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_MENSAGEM_NOVOPEDIDO: TJvDBCheckBox
            Left = 10
            Top = 281
            Width = 184
            Height = 17
            Caption = 'Msg Iniciar novo Pedido?'
            DataField = 'VENDA_MENSAGEM_NOVOPEDIDO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 15
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_INFO_DIA_VENCIMENTO: TJvDBCheckBox
            Left = 256
            Top = 8
            Width = 184
            Height = 17
            Caption = 'Informa dia do Vencimento?'
            DataField = 'VENDA_INFO_DIA_VENCIMENTO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 16
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_DETALHE_PRODUTO_BUSCA: TJvDBCheckBox
            Left = 256
            Top = 29
            Width = 209
            Height = 17
            Caption = 'Exibe detalhe do produto no pedido?'
            DataField = 'VENDA_DETALHE_PRODUTO_BUSCA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 17
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_RECEBIMENTO_SIMPLES: TJvDBCheckBox
            Left = 256
            Top = 50
            Width = 184
            Height = 17
            Caption = 'Recebimento Simples?'
            DataField = 'VENDA_RECEBIMENTO_SIMPLES'
            DataSource = dsConfiguracaoSistema
            TabOrder = 18
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object chkVENDA_EDITAR_PRODUTO: TJvDBCheckBox
            Left = 256
            Top = 71
            Width = 184
            Height = 17
            Caption = 'Permite editar produto?'
            DataField = 'VENDA_EDITAR_PRODUTO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 19
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox27: TJvDBCheckBox
            Left = 256
            Top = 92
            Width = 264
            Height = 17
            Caption = 'Bloquear venda cart'#227'o se n'#227'o informar cAut?'
            DataField = 'VENDA_BLOQUEA_SEM_CAUT_CARTAO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 20
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox29: TJvDBCheckBox
            Left = 256
            Top = 113
            Width = 264
            Height = 17
            Caption = 'Exigir endere'#231'o completo do cliente.'
            DataField = 'VENDA_ENDERECO_COMPLETO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 21
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object tsVendaImpressao: TTabSheet
          Caption = 'Impress'#227'o'
          ImageIndex = 4
          object lbl45: TLabel
            Left = 15
            Top = 14
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = 'Modelo Espelho:'
            FocusControl = cbbVENDA_MODELO_ESPELHO
          end
          object lbl56: TLabel
            Left = 415
            Top = 14
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vias:'
            FocusControl = edtVENDA_NUMERO_VIA_BOBINA
          end
          object lbl46: TLabel
            Left = 252
            Top = 14
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Porta:'
            FocusControl = edtVENDA_PORTA_IMPRESSAO
          end
          object lblOrdemItens: TLabel
            Left = 8
            Top = 39
            Width = 84
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ordem dos Itens:'
          end
          object lbl69: TLabel
            Left = 339
            Top = 39
            Width = 87
            Height = 13
            Alignment = taRightJustify
            Caption = 'Prazo de Entrega:'
          end
          object cbbVENDA_MODELO_ESPELHO: TJvDBComboBox
            Left = 98
            Top = 10
            Width = 145
            Height = 21
            DataField = 'VENDA_MODELO_ESPELHO'
            DataSource = dsConfiguracaoSistema
            Items.Strings = (
              '1 - Jato de Tinta'
              '2 - Matricial'
              '3 - Bobina'
              '4 - Modelo1'
              '5 - Modelo Oficina (OS)'
              '6 - Modelo Confec'#231#227'o'
              '7 - Modelo duas vias paisagem')
            TabOrder = 0
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object edtVENDA_NUMERO_VIA_BOBINA: TDBEdit
            Left = 444
            Top = 10
            Width = 71
            Height = 21
            DataField = 'VENDA_NUMERO_VIA_BOBINA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 2
          end
          object edtVENDA_PORTA_IMPRESSAO: TDBEdit
            Left = 287
            Top = 10
            Width = 114
            Height = 21
            DataField = 'VENDA_PORTA_IMPRESSAO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 1
          end
          object cbbVENDA_ORDEM_ITEM: TJvDBComboBox
            Left = 98
            Top = 35
            Width = 119
            Height = 21
            DataField = 'VENDA_ORDEM_ITEM'
            DataSource = dsConfiguracaoSistema
            Items.Strings = (
              'Por Descri'#231#227'o '
              'Por Item')
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
          object dbedtOFICINA_PREVISAO_ENTREGA: TDBEdit
            Left = 432
            Top = 35
            Width = 83
            Height = 21
            Hint = 'Prazo de Entrega padrao na venda em dias'
            DataField = 'OFICINA_PREVISAO_ENTREGA'
            DataSource = dsConfiguracaoSistema
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object JvDBCheckBox14: TJvDBCheckBox
            Left = 98
            Top = 62
            Width = 184
            Height = 17
            Caption = 'Exibe Promiss'#243'ria?'
            DataField = 'EXBIPROMISSORIAVENDA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox15: TJvDBCheckBox
            Left = 98
            Top = 85
            Width = 184
            Height = 17
            Caption = 'Exibe prazo de entrega?'
            DataField = 'VENDA_EXIBEPRAZOENTREGA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox16: TJvDBCheckBox
            Left = 98
            Top = 108
            Width = 184
            Height = 17
            Caption = 'Exibe termo de garantia?'
            DataField = 'OS_EXIBE_TERMO_GARANTIA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 7
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox18: TJvDBCheckBox
            Left = 98
            Top = 154
            Width = 184
            Height = 17
            Caption = 'Exibe dados da fatura?'
            DataField = 'VENDA_EXIBE_FATURA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 8
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox19: TJvDBCheckBox
            Left = 98
            Top = 131
            Width = 184
            Height = 17
            Caption = 'Exibe assinatura?'
            DataField = 'VENDA_ASSINATURA_ESPELHO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 9
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox17: TJvDBCheckBox
            Left = 98
            Top = 177
            Width = 199
            Height = 17
            Caption = 'Exibe mensagem impress'#227'o pedido?'
            DataField = 'VENDA_MENSAGEM_IMPRESSAO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 10
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object JvDBCheckBox26: TJvDBCheckBox
            Left = 98
            Top = 199
            Width = 367
            Height = 17
            Caption = 'Imprime endere'#231'o do cliente na impress'#227'o bobina?'
            DataField = 'VENDA_IMP_BOBINA_END_ENTREGA'
            DataSource = dsConfiguracaoSistema
            TabOrder = 11
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object grp13: TGroupBox
            Left = 98
            Top = 227
            Width = 256
            Height = 86
            Caption = 'Fonte e Tamnho dos item do espelho de venda'
            TabOrder = 12
            object lbl67: TLabel
              Left = 11
              Top = 27
              Width = 28
              Height = 13
              Caption = 'Fonte'
            end
            object lbl68: TLabel
              Left = 178
              Top = 27
              Width = 24
              Height = 13
              Caption = 'Tam.'
            end
            object cbbVENDA_ESPELHO_FONTE: TJvDBComboBox
              Left = 11
              Top = 43
              Width = 162
              Height = 21
              DataField = 'VENDA_ESPELHO_FONTE'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                'Arial'
                'Times New Roman'
                'Tahoma'
                'Verdana')
              TabOrder = 0
              Values.Strings = (
                'Arial'
                'Times New Roman'
                'Tahoma'
                'Verdana')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object edtVENDA_ESPELHO_FONTE_TAMANHO: TJvDBSpinEdit
              Left = 178
              Top = 43
              Width = 46
              Height = 21
              MaxValue = 11.000000000000000000
              MinValue = 1.000000000000000000
              TabOrder = 1
              DataField = 'VENDA_ESPELHO_FONTE_TAMANHO'
              DataSource = dsConfiguracaoSistema
            end
          end
        end
        object tsVendaMensagens: TTabSheet
          Caption = 'Mensagens'
          ImageIndex = 1
          object lbl61: TLabel
            Left = 15
            Top = 144
            Width = 89
            Height = 13
            Alignment = taRightJustify
            Caption = 'Termo de Garantia'
          end
          object lbl71: TLabel
            Left = 15
            Top = 210
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Termo de Entrega'
          end
          object lbl76: TLabel
            Left = 3
            Top = 276
            Width = 101
            Height = 13
            Alignment = taRightJustify
            Caption = 'Validade de Proposta'
          end
          object Label9: TLabel
            Left = 31
            Top = 3
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obs. do Pedido'
          end
          object dbmmoVENDA_TERMOGARANTIA: TDBMemo
            Left = 107
            Top = 144
            Width = 400
            Height = 62
            DataField = 'VENDA_TERMOGARANTIA'
            DataSource = dsConfiguracaoSistema
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object dbmmoVENDA_TERMOENTREGA: TDBMemo
            Left = 107
            Top = 210
            Width = 400
            Height = 62
            DataField = 'VENDA_TERMOENTREGA'
            DataSource = dsConfiguracaoSistema
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object dbmmoVENDA_VALIDADEPROPOSTA: TDBMemo
            Left = 107
            Top = 276
            Width = 400
            Height = 62
            DataField = 'VENDA_VALIDADEPROPOSTA'
            DataSource = dsConfiguracaoSistema
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object dbmmoDEFAULT_VENDA_OBS: TDBMemo
            Left = 107
            Top = 3
            Width = 400
            Height = 135
            DataField = 'DEFAULT_VENDA_OBS'
            DataSource = dsConfiguracaoSistema
            ScrollBars = ssVertical
            TabOrder = 3
          end
        end
        object tsVendaRecibo: TTabSheet
          Caption = 'Configura'#231#227'o do Recibo'
          ImageIndex = 2
          object lblModoRecibo: TLabel
            Left = 213
            Top = 11
            Width = 126
            Height = 13
            Alignment = taRightJustify
            Caption = 'Modo chamada do Recibo:'
            FocusControl = cbbModoRecibo
          end
          object cbbModoRecibo: TJvDBComboBox
            Left = 343
            Top = 8
            Width = 171
            Height = 21
            DataField = 'VENDA_RECIBO_MODO'
            DataSource = dsConfiguracaoSistema
            Items.Strings = (
              'Manual - (Tem que preencher todos os dados)'
              'Parcial - (Preenche somente o campo Referente)'
              'Autom'#225'tico')
            TabOrder = 0
            Values.Strings = (
              'M'
              'P'
              'S')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBCheckBox20: TJvDBCheckBox
            Left = 10
            Top = 10
            Width = 184
            Height = 17
            Caption = 'Imprime recibo no Pedido?'
            DataField = 'VENDA_RECIBO'
            DataSource = dsConfiguracaoSistema
            TabOrder = 1
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
        object tsVendaImposto: TTabSheet
          Caption = 'Imposto'
          ImageIndex = 3
          object JvDBCheckBox21: TJvDBCheckBox
            Left = 10
            Top = 10
            Width = 184
            Height = 17
            Caption = 'ICMS por UF?'
            DataField = 'VENDA_ICMSUF'
            DataSource = dsConfiguracaoSistema
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
    end
    object tsEnergia: TTabSheet
      Caption = 'Energia'
      ImageIndex = 6
      object lbl47: TLabel
        Left = 14
        Top = 10
        Width = 91
        Height = 15
        Alignment = taRightJustify
        Caption = 'Tipo Liga'#231#227'o:'
        FocusControl = cbbTP_LIGACAO
      end
      object lbl48: TLabel
        Left = 13
        Top = 38
        Width = 91
        Height = 15
        Alignment = taRightJustify
        Caption = 'Grupo Tens'#227'o:'
        FocusControl = cbbCOD_GRUPO_TENSA
      end
      object cbbTP_LIGACAO: TJvDBComboBox
        Left = 110
        Top = 7
        Width = 239
        Height = 23
        DataField = 'SPED_FISCAL_TP_LIGACAO'
        DataSource = dsConfiguracaoSistema
        Items.Strings = (
          '1 - Monof'#225'sico'
          '2 - Bif'#225'sico'
          '3 - Trif'#225'sico')
        TabOrder = 0
        Values.Strings = (
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbCOD_GRUPO_TENSA: TJvDBComboBox
        Left = 110
        Top = 35
        Width = 239
        Height = 23
        DataField = 'SPED_FISCAL_COD_GRUPO_TENSAO'
        DataSource = dsConfiguracaoSistema
        Items.Strings = (
          'A1 - Alta Tens'#227'o (230kV ou mais)'
          'A2 - Alta Tens'#227'o (88 a 138kV)'
          'A3 - Alta Tens'#227'o (69kV)'
          'A3a - Alta Tens'#227'o (30kV a 44kV)'
          'A4 - Alta Tens'#227'o (2,3kV a 25kV)'
          'AS - Alta Tens'#227'o Subterr'#226'neo 06'
          'B1 - Residencial 07'
          'B1 - Residencial Baixa Renda 08'
          'B2 - Rural 09'
          'B2 - Cooperativa de Eletrifica'#231#227'o Rural'
          'B2 - Servi'#231'o P'#250'blico de Irriga'#231#227'o'
          'B3 - Demais Classes'
          'B4a - Ilumina'#231#227'o P'#250'blica - rede de distribui'#231#227'o'
          'B4b - Ilumina'#231#227'o P'#250'blica - bulbo de l'#226'mpada')
        TabOrder = 1
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object tsFinancas: TTabSheet
      Caption = 'Financeiro'
      ImageIndex = 7
      object Label21: TLabel
        Left = 286
        Top = 11
        Width = 98
        Height = 15
        Caption = 'Tipo de Carn'#234':'
        FocusControl = JvDBComboBox9
      end
      object JvDBComboBox9: TJvDBComboBox
        Left = 392
        Top = 7
        Width = 121
        Height = 23
        DataField = 'FINANCA_TIPO_CARNE'
        DataSource = dsConfiguracaoSistema
        Items.Strings = (
          '1 - Modelo 1'
          '2 - Modelo 2'
          '3 - Modelo 3')
        TabOrder = 1
        Values.Strings = (
          '1'
          '2'
          '3')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object JvDBCheckBox22: TJvDBCheckBox
        Left = 10
        Top = 10
        Width = 271
        Height = 17
        Caption = 'Permite saldo negativo na conta?'
        DataField = 'FINANCA_SALDONEGATIVOCONTA'
        DataSource = dsConfiguracaoSistema
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object GroupBox3: TGroupBox
        Left = 5
        Top = 42
        Width = 517
        Height = 159
        Caption = 'Contas a Receber'
        TabOrder = 2
        object Label4: TLabel
          Left = 13
          Top = 27
          Width = 56
          Height = 15
          Alignment = taRightJustify
          Caption = 'Cliente:'
        end
        object JvDBLookupCombo3: TJvDBLookupCombo
          Left = 77
          Top = 23
          Width = 407
          Height = 22
          DataField = 'FINANCA_CLIENTE'
          DataSource = dsConfiguracaoSistema
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsFinLkpClientes
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 5
        Top = 207
        Width = 517
        Height = 161
        Caption = 'Contas a Pagar'
        TabOrder = 3
        object lbl34: TLabel
          Left = 8
          Top = 33
          Width = 77
          Height = 15
          Alignment = taRightJustify
          Caption = 'Fornecedor:'
        end
        object cblkpDEFAULT_VENDA_CLIENTE: TJvDBLookupCombo
          Left = 93
          Top = 29
          Width = 407
          Height = 22
          DataField = 'FINANCA_FORNECEDOR'
          DataSource = dsConfiguracaoSistema
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsFinLkpFornecedores
          TabOrder = 0
        end
      end
    end
    object tsEstoque: TTabSheet
      Caption = 'Estoque'
      ImageIndex = 8
      object grp12: TGroupBox
        Left = 0
        Top = 0
        Width = 536
        Height = 371
        Align = alClient
        Caption = 'Controle de Estoque'
        TabOrder = 0
        object JvDBCheckBox23: TJvDBCheckBox
          Left = 10
          Top = 20
          Width = 184
          Height = 17
          Caption = 'Permite saldo Negativo?'
          DataField = 'ESTOQUE_SALDONEGATIVO'
          DataSource = dsConfiguracaoSistema
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object JvDBCheckBox24: TJvDBCheckBox
          Left = 10
          Top = 43
          Width = 184
          Height = 17
          Caption = 'Atualiza Estoque?'
          DataField = 'VENDA_ATUALIZAESTOQUE'
          DataSource = dsConfiguracaoSistema
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object JvDBCheckBox25: TJvDBCheckBox
          Left = 10
          Top = 67
          Width = 184
          Height = 17
          Caption = 'Permite alterar estoque?'
          DataField = 'ESTOQUE_PERMITE_ALTERAR'
          DataSource = dsConfiguracaoSistema
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
    end
    object tsRecebimento: TTabSheet
      Caption = 'Recebimento'
      ImageIndex = 9
      object lbl66: TLabel
        Left = 35
        Top = 11
        Width = 63
        Height = 15
        Alignment = taRightJustify
        Caption = 'Natureza:'
      end
      object lbl80: TLabel
        Left = 0
        Top = 36
        Width = 98
        Height = 15
        Alignment = taRightJustify
        Caption = 'S. Tribut'#225'ria:'
      end
      object lbl42: TLabel
        Left = 7
        Top = 60
        Width = 91
        Height = 15
        Alignment = taRightJustify
        Caption = 'N'#186' Casa pre'#231'o'
      end
      object lbl53: TLabel
        Left = 267
        Top = 60
        Width = 126
        Height = 15
        Alignment = taRightJustify
        Caption = 'N'#186' Casa Quantidade'
      end
      object jvdblkpcmb1: TJvDBLookupCombo
        Left = 104
        Top = 7
        Width = 226
        Height = 22
        DataField = 'DEFAULT_COMPRA_NATUREZA'
        DataSource = dsConfiguracaoSistema
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = dsComLkpNatureza
        TabOrder = 0
      end
      object cbbCSOSN: TJvDBComboBox
        Left = 104
        Top = 32
        Width = 416
        Height = 23
        DataField = 'DEFAULT_COMPRA_ST'
        DataSource = dsConfiguracaoSistema
        Items.Strings = (
          '101 '#8211' Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito'
          '102 '#8211' Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito'
          
            '103 '#8211' Isen'#231#227'o do ICMS no Simples Nacional para faixa de receita ' +
            'bruta'
          
            '201 '#8211' Tributada pelo Simples Nacional com permiss'#227'o de cr'#233'dito e' +
            ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'
          
            '202 '#8211' Tributada pelo Simples Nacional sem permiss'#227'o de cr'#233'dito e' +
            ' com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'
          
            '203 '#8211' Isen'#231#227'o do ICMS nos Simples Nacional para faixa de receita' +
            ' bruta e com cobran'#231'a do ICMS por Substitui'#231#227'o Tribut'#225'ria'
          '300 '#8211' Imune'
          '400 '#8211' N'#227'o tributada pelo Simples Nacional'
          
            '500 '#8211' ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria (su' +
            'bstitu'#237'do) ou por antecipa'#231#227'o'
          '900 '#8211' Outros ')
        TabOrder = 1
        Values.Strings = (
          '101'
          '102'
          '103'
          '201'
          '202'
          '203'
          '300'
          '400'
          '500'
          '900')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbDEFAULT_COMPRA_CASAPRECO: TJvDBComboBox
        Left = 104
        Top = 57
        Width = 121
        Height = 23
        DataField = 'DEFAULT_COMPRA_CASAPRECO'
        DataSource = dsConfiguracaoSistema
        Items.Strings = (
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        TabOrder = 2
        Values.Strings = (
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
      object cbbDEFAULT_COMPRA_CASAQUANTIDADE: TJvDBComboBox
        Left = 399
        Top = 57
        Width = 121
        Height = 23
        DataField = 'DEFAULT_COMPRA_CASAQUANTIDADE'
        DataSource = dsConfiguracaoSistema
        Items.Strings = (
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        TabOrder = 3
        Values.Strings = (
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
        ListSettings.OutfilteredValueFont.Color = clRed
        ListSettings.OutfilteredValueFont.Height = -11
        ListSettings.OutfilteredValueFont.Name = 'Tahoma'
        ListSettings.OutfilteredValueFont.Style = []
      end
    end
    object tsOrdemServico: TTabSheet
      Caption = 'Ordem Servi'#231'o'
      ImageIndex = 10
      object pgcOS: TPageControl
        Left = 0
        Top = 0
        Width = 536
        Height = 371
        ActivePage = tsOSPrincipal
        Align = alClient
        TabOrder = 0
        object tsOSPrincipal: TTabSheet
          Caption = 'Principal'
          object dbmmo1: TDBMemo
            Left = 0
            Top = 85
            Width = 528
            Height = 256
            Align = alClient
            DataField = 'OS_MESAGEMOS'
            DataSource = dsConfiguracaoSistema
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object pnl4: TPanel
            Left = 0
            Top = 0
            Width = 528
            Height = 85
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label5: TLabel
              Left = 291
              Top = 14
              Width = 91
              Height = 15
              Alignment = taRightJustify
              Caption = 'Filtro Busca:'
              FocusControl = cbbOS_FILTROPRODUTO
            end
            object lbl95: TLabel
              Left = 9
              Top = 14
              Width = 63
              Height = 15
              Alignment = taRightJustify
              Caption = 'Mecanico:'
            end
            object lbl96: TLabel
              Left = 0
              Top = 68
              Width = 119
              Height = 15
              Alignment = taRightJustify
              Caption = 'Termo de Garantia'
            end
            object lbl102: TLabel
              Left = 9
              Top = 39
              Width = 119
              Height = 15
              Alignment = taRightJustify
              Caption = 'Garantia em Dias:'
              FocusControl = cbbOS_FILTROPRODUTO
            end
            object cbbOS_FILTROPRODUTO: TJvDBComboBox
              Left = 388
              Top = 10
              Width = 123
              Height = 23
              DataField = 'OS_FILTROPRODUTO'
              DataSource = dsConfiguracaoSistema
              Items.Strings = (
                '1 - Somente servi'#231'os'
                '2 - Produtos e servi'#231'os')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
            object jvdblkpcmbOS_MECANICO: TJvDBLookupCombo
              Left = 78
              Top = 12
              Width = 171
              Height = 22
              DataField = 'OS_MECANICO'
              DataSource = dsConfiguracaoSistema
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              TabOrder = 1
            end
            object dbedtOS_GARANTIA_DIAS: TDBEdit
              Left = 134
              Top = 35
              Width = 67
              Height = 23
              DataField = 'OS_GARANTIA_DIAS'
              DataSource = dsConfiguracaoSistema
              TabOrder = 2
            end
          end
        end
        object tsOSTelefones: TTabSheet
          Caption = 'Telefones'
          ImageIndex = 1
          object pnl5: TPanel
            Left = 0
            Top = 0
            Width = 528
            Height = 89
            Align = alTop
            TabOrder = 0
            object dbnvgr2: TDBNavigator
              Left = 1
              Top = 63
              Width = 526
              Height = 25
              VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
              Align = alBottom
              TabOrder = 0
            end
            object pnl6: TPanel
              Left = 1
              Top = 1
              Width = 526
              Height = 62
              Align = alClient
              BevelOuter = bvNone
              Enabled = False
              TabOrder = 1
              object lbl99: TLabel
                Left = 3
                Top = 8
                Width = 84
                Height = 15
                Caption = 'Tipo Contato'
                FocusControl = edtTipo
              end
              object lbl100: TLabel
                Left = 142
                Top = 8
                Width = 91
                Height = 15
                Caption = 'N'#250'mero/e-mail'
                FocusControl = edtNumero
              end
              object edtTipo: TJvDBComboBox
                Left = 3
                Top = 24
                Width = 134
                Height = 23
                DataField = 'TIPO'
                Items.Strings = (
                  'Telefone'
                  'Celular'
                  'E-mail')
                TabOrder = 0
                Values.Strings = (
                  '1'
                  '2'
                  '3')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
              object edtNumero: TDBEdit
                Left = 142
                Top = 24
                Width = 357
                Height = 23
                DataField = 'NUMERO'
                TabOrder = 1
              end
            end
          end
          object dbnvgr1: TDBNavigator
            Left = 0
            Top = 316
            Width = 528
            Height = 25
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alBottom
            TabOrder = 1
          end
          object grd2: TJvDBGrid
            Left = 0
            Top = 89
            Width = 528
            Height = 227
            Align = alClient
            DrawingStyle = gdsClassic
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 20
            TitleRowHeight = 17
            Columns = <
              item
                Expanded = False
                FieldName = 'ID_FILIAL'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO'
                Title.Caption = 'Numero/Email'
                Width = 382
                Visible = True
              end>
          end
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 401
    Width = 544
    Height = 41
    Align = alBottom
    ParentColor = True
    TabOrder = 1
    object btn1: TJvXPButton
      Left = 456
      Top = 6
      Width = 80
      Height = 28
      Hint = 'Confirmar'
      Caption = '           '
      TabOrder = 0
      Glyph.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
        00180806000000E0773DF80000035F4944415478DAD596CD4F1B4718877FBBF6
        7AD7D8C44E6D524A1C0A8280F9906D404965D24B7AA81425CAA1070EA58D73C8
        5FD23F22B728177AEBB5879E2A55A545026CE3803182086A53F3610CACBDBBDE
        2FEF74D60996284E420A1C3AD2ABD9D5EC3CCF3BEFCC48CB104270958DB972C1
        F44CE0428099E983E6F3773F06097D674E091E3EEFBF944C033E99847B81571B
        062A92BF29B91481A74D2491DB1CBEFDE2117E5AFC190BAB3A64C5C75C8A40E0
        45121DE0301D9F4251DF84E034F1CB7C0AA99C0155F331171238B90A853B9188
        7F83A2B60BD53261313204D72E7E9D2F53897981153055120D3BF07DFC314A6A
        19725D8709151C27E2F7541EA96C1D20EDDDFF4950B7241209B37832F900FBEA
        11AA8646E11A5C7C05B3C96DA4B3161CACB79B7EBAF76F01AB1A725DE03CCCBB
        E0749C4486192426BF46493984A86B30289C17AA984DEF20BD4C40E7DBF01D1A
        E689C006B2524D31A323C0D20AE075B79D91D071628F2726EF63473A444537DE
        64EEAEE2CFF43E8537E6D9F0A2BDD006980A6C90BB5AD3E4E8A885C4BD385EFC
        F60732CB0CFC5E7753722CD548649450F83D14C543946A2A58B60EDE23632E53
        46E615039FD76DC3776918CDADA202F7C1B1AA8CC508A6EEC4B0755442DF2737
        3033974426C322E817183A4E22110B4FE377B1278AC85764B00E0B42BB8C8515
        1199251601BFD0A8390DFDD45998F8214446A3757C156FC7415180AE3970F39A
        805B413F5ECEA6B19271602452C7B32FC7511625E40E2A6FE03E05C9AC84E525
        073A83C2E76FCB629E396C7405A1ED7DAD301233100BB7A176E48665B218EAF0
        D0EBEFC3C2E13AEE0606505364AC962428960EF7F51AD239052B690EA11BBC0D
        FFFBA4E6AD040EDA7FB655D40B43630622832EA865A1218975F9D1E90BE05839
        C6DC5F65B04E9A794045664DC76A8A434F97EB4CCD5B09EC9EA3F1E97AC1280C
        8E6918EE67A19578580695F4FA90DE14C17216F80E0DD90D0B6B291EB76F712D
        6BFE2E81DD9CF64A725B66BE6F5CC560AF056DD745250C8513F09D3AD63659BC
        4E0A08F7383F98792BC1C97D082D6FD4F33D130AFABA75182527B80E13AFF32E
        6C2DB661B4DF71EA9C7FACC06E8D3D595AB70AA17119FD631236525E6C2F7A10
        1D60CF9DF9FB0427E5EA4CE6AC42D78484E28217E343ECB96A7E5E41734FE6B3
        247F6798F9E8CC9B82FFFD5FC53FCE4C8F9560310D010000000049454E44AE42
        6082}
      ModalResult = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btn1Click
    end
    object btnOK: TJvXPButton
      Left = 370
      Top = 6
      Width = 80
      Height = 28
      Hint = 'Cancelar'
      Caption = '           '
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
      ParentShowHint = False
      ShowHint = True
      OnClick = btnOKClick
    end
  end
  object dsConfiguracaoSistema: TDataSource
    DataSet = dmAcesso.QyConfigSistema
    Left = 352
    Top = 264
  end
  object dsLkpUnidades: TDataSource
    DataSet = dmAcesso.QyLKPUnidades
    Left = 448
    Top = 256
  end
  object dslLkpDepartamento: TDataSource
    DataSet = dmAcesso.QyLKPDepartamento
    Left = 448
    Top = 306
  end
  object dsLkpCategoria: TDataSource
    DataSet = dmAcesso.QyLKPCategoria
    Left = 440
    Top = 370
  end
  object dsLkpTipoProduto: TDataSource
    DataSet = dmAcesso.QyLKPTipoProdutos
    Left = 328
    Top = 346
  end
  object dsLkpMarca: TDataSource
    DataSet = dmAcesso.QyLKPMarcas
    Left = 160
    Top = 362
  end
  object dsLkpGrupoProduto: TDataSource
    DataSet = dmAcesso.QyLKPGrupoProduto
    Left = 240
    Top = 362
  end
  object dsLkpVasilhame: TDataSource
    DataSet = dmAcesso.QyLKPVasilhames
    Left = 72
    Top = 354
  end
  object dsLkpCLientes: TDataSource
    DataSet = dmAcesso.QyLKPClientes
    Left = 164
    Top = 346
  end
  object dsLkpNatureza: TDataSource
    DataSet = dmAcesso.QyLkpNaturezaCR
    Left = 220
    Top = 338
  end
  object dsLkpContas: TDataSource
    DataSet = dmAcesso.QyLkpContaCorrente
    Left = 276
    Top = 282
  end
  object dsFinLkpClientes: TDataSource
    DataSet = dmAcesso.QyLKPClientes
    Left = 184
    Top = 208
  end
  object dsFinLkpFornecedores: TDataSource
    DataSet = dmAcesso.QyLKPFornecedores
    Left = 284
    Top = 162
  end
  object dsComLkpNatureza: TDataSource
    DataSet = dmAcesso.QyLkpNaturezaCP
    Left = 476
    Top = 257
  end
  object dsConfDicionario: TDataSource
    DataSet = dmAcesso.QyConfDicionario
    Left = 100
    Top = 163
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 224
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr200
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 40
    Top = 264
  end
  object dsQySequencial: TDataSource
    DataSet = dmAcesso.QySequencial
    Left = 388
    Top = 174
  end
end
