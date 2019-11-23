object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 261
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGrid1: TDBGrid
    Left = 737
    Top = 198
    Width = 289
    Height = 368
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    Visible = False
  end
  object btnNext: TBitBtn
    Left = 745
    Top = 353
    Width = 75
    Height = 25
    Caption = '>'
    TabOrder = 2
    Visible = False
    OnClick = btnNextClick
  end
  object BtnPrior: TBitBtn
    Left = 664
    Top = 353
    Width = 75
    Height = 25
    Caption = '<'
    Enabled = False
    TabOrder = 1
    Visible = False
    OnClick = BtnPriorClick
  end
  object gbxEmpresas: TJvgGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 394
    Height = 66
    Align = alTop
    Caption = ''
    TabOrder = 3
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
    object Label1: TLabel
      Left = 11
      Top = 10
      Width = 72
      Height = 16
      Caption = 'Empresas:'
    end
    object cbbFilial: TJvDBLookupCombo
      Left = 11
      Top = 28
      Width = 368
      Height = 25
      Hint = 'FANTASIA'
      DeleteKeyClear = False
      TabSelects = True
      LookupField = 'ID'
      LookupDisplay = 'FANTASIA'
      LookupSource = dsFilial
      TabOrder = 0
      OnCloseUp = cbbFilialCloseUp
      OnKeyUp = cbbFilialKeyUp
    end
  end
  object JvgGroupBox1: TJvgGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 75
    Width = 394
    Height = 150
    Align = alClient
    Caption = ''
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
    object btnProdutos: TJvBitBtn
      Tag = 1
      Left = 11
      Top = 11
      Width = 120
      Height = 40
      Hint = 'nmProduto'
      Caption = 'Produtos'
      TabOrder = 0
      OnClick = btnProdutosClick
    end
    object btnContatos: TJvBitBtn
      Left = 135
      Top = 11
      Width = 120
      Height = 40
      Hint = 'nmContato'
      Caption = 'Contatos'
      TabOrder = 1
      OnClick = btnContatosClick
    end
    object BtnOrcamentos: TJvBitBtn
      Left = 259
      Top = 11
      Width = 120
      Height = 40
      Hint = 'nmControleVendas'
      Caption = 'Or'#231'amentos'
      TabOrder = 2
      OnClick = BtnOrcamentosClick
    end
    object btnFinanceiro: TJvBitBtn
      Left = 135
      Top = 54
      Width = 120
      Height = 40
      Caption = 'Financeiro'
      TabOrder = 3
      DropDownMenu = pmFinanceiro
    end
    object BtnRecebimento: TJvBitBtn
      Left = 11
      Top = 54
      Width = 120
      Height = 40
      Hint = 'nmRecebimento'
      Caption = 'Recebimentos'
      TabOrder = 4
      OnClick = BtnRecebimentoClick
    end
    object BtnConfiguracoes: TJvBitBtn
      Left = 259
      Top = 54
      Width = 120
      Height = 40
      Hint = 'nmConfiguracoes'
      Caption = 'Configura'#231#245'es'
      TabOrder = 5
      DropDownMenu = pmConfiguracoes
    end
    object btnEstoque: TJvBitBtn
      Left = 11
      Top = 100
      Width = 368
      Height = 40
      Caption = 'Estoque Filiais'
      TabOrder = 6
      OnClick = btnEstoqueClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 228
    Width = 400
    Height = 33
    Align = alBottom
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 5
    object lblUsuarioLogado: TJvMarkupLabel
      Left = 0
      Top = 0
      Width = 396
      Height = 29
      Text = 'Usu'#225'rio:'
      Align = alClient
      ExplicitLeft = 10
      ExplicitWidth = 375
      ExplicitHeight = 36
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 704
    Top = 296
  end
  object FDQuery1: TFDQuery
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM NCM')
    Left = 432
    Top = 16
  end
  object pmFinanceiro: TPopupMenu
    Left = 232
    object ContasaReceber1: TMenuItem
      Caption = 'Contas a Receber'
      Hint = 'nmContasReceber'
      OnClick = ContasaReceber1Click
    end
    object ContasaPagar1: TMenuItem
      Caption = 'Contas a Pagar'
      Hint = 'nmContasPagar'
      OnClick = ContasaPagar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Formasdepagamentos1: TMenuItem
      Caption = 'Formas de pagamentos'
      Hint = 'nmFormaPagamento'
      OnClick = Formasdepagamentos1Click
    end
    object Condiesdepagamentos1: TMenuItem
      Caption = 'Condi'#231#245'es de pagamentos'
      Hint = 'nmCondicaoPagamento'
      OnClick = Condiesdepagamentos1Click
    end
  end
  object dsFilial: TDataSource
    DataSet = dmAcesso.QyFiliais
    Left = 444
    Top = 59
  end
  object pmConfiguracoes: TPopupMenu
    Left = 416
    Top = 192
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      OnClick = Sistema1Click
    end
    object Estabelecimento1: TMenuItem
      Caption = 'Estabelecimento'
      OnClick = Estabelecimento1Click
    end
    object Usurios1: TMenuItem
      Caption = 'Perfil e Usu'#225'rios'
      OnClick = Usurios1Click
    end
    object Alterarsenha1: TMenuItem
      Caption = 'Alterar senha'
      OnClick = Alterarsenha1Click
    end
    object Programador1: TMenuItem
      Caption = 'Programador'
      OnClick = Programador1Click
    end
    object Importaes1: TMenuItem
      Caption = 'Importa'#231#245'es'
    end
  end
  object JvLoginDialog1: TJvLoginDialog
    Caption = 'Senha do programador'
    Active = False
    AppTitleLabelCaption = 'Login do programador'
    PasswordLabelCaption = 'Senha:'
    UserNameLabelCaption = 'Usu'#225'rio:'
    UpdateCaption = ucAppTitle
    OnGetPassword = JvLoginDialog1GetPassword
    Left = 152
    Top = 120
  end
end
