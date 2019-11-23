inherited FrmCadastroUsuario: TFrmCadastroUsuario
  Caption = 'Cadastro Usuario'
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
      object lbl1: TLabel
        Left = 68
        Top = 14
        Width = 40
        Height = 16
        Alignment = taRightJustify
        Caption = 'Nome:'
      end
      object lbl2: TLabel
        Left = 60
        Top = 42
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Senha:'
      end
      object Label1: TLabel
        Left = 20
        Top = 98
        Width = 88
        Height = 16
        Alignment = taRightJustify
        Caption = '% Comiss'#227'o:'
      end
      object Label2: TLabel
        Left = 453
        Top = 14
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = 'Login:'
      end
      object lbl3: TLabel
        Left = 4
        Top = 71
        Width = 104
        Height = 16
        Alignment = taRightJustify
        Caption = '% Desc. M'#225'x.:'
      end
      object Label3: TLabel
        Left = 208
        Top = 42
        Width = 272
        Height = 16
        Caption = '* M'#225'x. 6 digitos e somente n'#250'meros'
      end
      object Label4: TLabel
        Left = 445
        Top = 71
        Width = 56
        Height = 16
        Alignment = taRightJustify
        Caption = 'Perfil:'
      end
      object edtNOME: TDBEdit
        Left = 112
        Top = 10
        Width = 305
        Height = 24
        DataField = 'NOME'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object edtLOGIN: TDBEdit
        Left = 505
        Top = 10
        Width = 248
        Height = 24
        DataField = 'LOGIN'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object ckbGERENTE: TJvDBCheckBox
        Left = 112
        Top = 122
        Width = 97
        Height = 17
        Caption = 'Gerente?'
        DataField = 'GERENTE'
        DataSource = dsCadastro
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object ckbVENDEDOR: TJvDBCheckBox
        Left = 112
        Top = 145
        Width = 97
        Height = 17
        Caption = 'Vendedor?'
        DataField = 'VENDEDOR'
        DataSource = dsCadastro
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object ckbBLOQUEADO: TJvDBCheckBox
        Left = 112
        Top = 168
        Width = 129
        Height = 17
        Caption = 'Bloqueado?'
        DataField = 'BLOQUEADO'
        DataSource = dsCadastro
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edtDESCONTO: TJvDBCalcEdit
        Left = 112
        Top = 66
        Width = 121
        Height = 24
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
        DataField = 'DESCONTO'
        DataSource = dsCadastro
      end
      object edtPERC_COMISSAO: TJvDBCalcEdit
        Left = 112
        Top = 94
        Width = 121
        Height = 24
        TabOrder = 4
        DecimalPlacesAlwaysShown = False
        DataField = 'PERC_COMISSAO'
        DataSource = dsCadastro
      end
      object edtSENHA: TDBEdit
        Left = 112
        Top = 38
        Width = 88
        Height = 24
        DataField = 'SENHA'
        DataSource = dsCadastro
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 2
        OnKeyPress = edtSENHAKeyPress
      end
      object clkID_PERFIL: TDBLookupComboBox
        Left = 505
        Top = 66
        Width = 248
        Height = 24
        DataField = 'ID_PERFIL'
        DataSource = dsCadastro
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dsLkpPerfisUsuarios
        TabOrder = 8
      end
    end
    object tsMetasVenda: TTabSheet
      Caption = 'Metas de Venda'
      ImageIndex = 1
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 49
        Width = 776
        Height = 444
        Align = alClient
        DataSource = dsVendedorMetas
        ReadOnly = True
        TabOrder = 0
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
            FieldName = 'MES'
            Title.Caption = 'M'#202'S'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_META'
            Title.Alignment = taRightJustify
            Title.Caption = 'VALOR META'
            Width = 184
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label5: TLabel
          Left = 347
          Top = 16
          Width = 88
          Height = 16
          Alignment = taRightJustify
          Caption = 'Valor Meta:'
        end
        object Label6: TLabel
          Left = 27
          Top = 16
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'M'#234's/Ano Ref.:'
        end
        object edtValorMeta: TJvCalcEdit
          Left = 441
          Top = 12
          Width = 150
          Height = 24
          DisplayFormat = '#,##0.00'
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
        end
        object dtpckrMesAno: TDatePicker
          Left = 137
          Top = 12
          Height = 24
          Date = 43628.000000000000000000
          DateFormat = 'MM/yyyy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          MinYear = 2000
          TabOrder = 1
        end
        object btnRemover: TBitBtn
          Left = 676
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Remover'
          TabOrder = 2
          OnClick = btnRemoverClick
        end
        object btnIncluir: TBitBtn
          Left = 597
          Top = 11
          Width = 75
          Height = 25
          Caption = 'Incluir'
          TabOrder = 3
          OnClick = btnIncluirClick
        end
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 480
    Top = 304
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 584
    Top = 144
  end
  object dsLkpPerfisUsuarios: TDataSource
    DataSet = dmAcesso.QyLkpPerfisUsuarios
    Left = 536
    Top = 232
  end
  object QyVendedorMetas: TFDQuery
    IndexFieldNames = 'ID_VENDEDOR'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM VENDEDOR_META')
    Left = 296
    Top = 256
  end
  object dsVendedorMetas: TDataSource
    DataSet = QyVendedorMetas
    Left = 280
    Top = 336
  end
end
