object FrmBuscaProdutos: TFrmBuscaProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de produtos'
  ClientHeight = 416
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 784
    object Label1: TLabel
      Left = 403
      Top = 7
      Width = 80
      Height = 16
      Alignment = taRightJustify
      Caption = 'Quantidade'
    end
    object Label2: TLabel
      Left = 506
      Top = 7
      Width = 80
      Height = 16
      Alignment = taRightJustify
      Caption = 'Prc. Unit.'
    end
    object Label3: TLabel
      Left = 520
      Top = 65
      Width = 64
      Height = 16
      Alignment = taRightJustify
      Caption = 'Desconto'
      Visible = False
    end
    object Label4: TLabel
      Left = 647
      Top = 7
      Width = 40
      Height = 16
      Alignment = taRightJustify
      Caption = 'Total'
    end
    object edtProduto: TLabeledEdit
      Left = 8
      Top = 25
      Width = 372
      Height = 24
      CharCase = ecUpperCase
      EditLabel.Width = 240
      EditLabel.Height = 16
      EditLabel.Caption = 'Produto (Enter para pesquisar)'
      TabOrder = 0
      OnKeyPress = edtProdutoKeyPress
    end
    object edtQtd: TJvCalcEdit
      Left = 384
      Top = 25
      Width = 99
      Height = 24
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
      OnChange = edtQtdChange
      OnKeyPress = edtQtdKeyPress
    end
    object edtPreco: TJvCalcEdit
      Left = 487
      Top = 25
      Width = 99
      Height = 24
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 2
      DecimalPlacesAlwaysShown = True
      OnChange = edtQtdChange
      OnKeyPress = edtQtdKeyPress
    end
    object edtDesconto: TJvCalcEdit
      Left = 485
      Top = 83
      Width = 99
      Height = 24
      DisplayFormat = ',0.00'
      ShowButton = False
      TabOrder = 3
      Visible = False
      DecimalPlacesAlwaysShown = True
      OnChange = edtQtdChange
      OnKeyPress = edtQtdKeyPress
    end
    object edtTotal: TJvCalcEdit
      Left = 588
      Top = 25
      Width = 99
      Height = 24
      TabStop = False
      Color = clScrollBar
      DisplayFormat = '#,##0.00'
      ReadOnly = True
      ShowButton = False
      TabOrder = 4
      DecimalPlacesAlwaysShown = False
    end
    object btnAdicionar: TBitBtn
      Left = 691
      Top = 25
      Width = 88
      Height = 24
      Caption = 'Adicionar'
      TabOrder = 5
      OnClick = btnAdicionarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 57
    Width = 793
    Height = 359
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 784
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 791
      Height = 357
      Align = alClient
      DataSource = dsProdutoBusca
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Courier New'
      TitleFont.Style = [fsBold]
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 19
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'GTIN'
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o do produto'
          Width = 395
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO_COMPRA'
          Title.Caption = 'Pre'#231'o Compra'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pre'#231'o Unit'#225'rio'
          Width = 126
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'ESTOQUE_QTD'
          Title.Alignment = taRightJustify
          Title.Caption = 'Estoque'
          Width = 117
          Visible = True
        end>
    end
  end
  object dsProdutoBusca: TDataSource
    DataSet = QyProdutoBusca
    Left = 312
    Top = 112
  end
  object QyProdutoBusca: TFDQuery
    AfterScroll = QyProdutoBuscaAfterScroll
    Connection = dmAcesso.FDConnection1
    Left = 200
    Top = 284
  end
end
