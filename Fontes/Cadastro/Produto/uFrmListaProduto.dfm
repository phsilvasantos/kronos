inherited FrmListaProduto: TFrmListaProduto
  Caption = 'Lista de Produtos'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    inherited btnNovo: TJvBitBtn
      Top = 3
      OnClick = btnNovoClick
      ExplicitTop = 3
    end
    inherited btnEditar: TJvBitBtn
      Left = 91
      OnClick = btnEditarClick
      ExplicitLeft = 91
    end
    inherited btnRemover: TJvBitBtn
      Left = 176
      ExplicitLeft = 176
    end
    inherited btnOpcoes: TJvBitBtn
      Left = 261
      DropDownMenu = PopupMenu1
      ExplicitLeft = 261
    end
    object btnArquivos: TJvBitBtn
      Left = 385
      Top = 4
      Width = 87
      Height = 33
      Caption = '+ Op'#231#245'es'
      TabOrder = 4
      DropDownMenu = pmArquivos
    end
    object Button1: TButton
      Left = 488
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object btn1: TButton
      Left = 569
      Top = 11
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 6
      Visible = False
      OnClick = btn1Click
    end
    object btnOpen: TButton
      Left = 664
      Top = 16
      Width = 75
      Height = 25
      Caption = 'btnOpen'
      TabOrder = 7
      Visible = False
      OnClick = btnOpenClick
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    PopupMenu = pmContext
    OnDrawColumnCell = dbgrdConsultaDrawColumnCell
    AutoSizeColumns = True
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GTIN'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UND'
        Title.Caption = 'Und.'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 268
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Title.Caption = 'Marca'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NCM'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pre'#231'o Unit'#225'rio'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_QTD'
        Title.Alignment = taRightJustify
        Title.Caption = 'Estoque'
        Width = 66
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid [4]
    Left = 568
    Top = 96
    Width = 665
    Height = 313
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    Visible = False
  end
  object mmo1: TMemo [5]
    Left = 8
    Top = 104
    Width = 481
    Height = 257
    TabOrder = 5
    Visible = False
  end
  inherited dsConsulta: TDataSource
    Left = 288
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 472
    Top = 192
  end
  inherited PopupMenu1: TPopupMenu
    object Centralderelatrios1: TMenuItem
      Caption = 'Central de relat'#243'rios'
      OnClick = Centralderelatrios1Click
    end
  end
  object pmArquivos: TPopupMenu
    Left = 456
    Top = 120
    object Exportar1: TMenuItem
      Caption = 'Exportar DJPDV'
      object Exportartodososprodutos1: TMenuItem
        Caption = 'Exportar todos os produtos'
        OnClick = Exportartodososprodutos1Click
      end
      object Exportarprodutopelogrupo1: TMenuItem
        Caption = 'Exportar todos os produto pelo grupo'
        OnClick = Exportarprodutopelogrupo1Click
      end
    end
  end
  object pmContext: TPopupMenu
    Left = 440
    Top = 224
    object Exportarprodutoselecionado2: TMenuItem
      Caption = 'Exportar produto selecionado'
      OnClick = Exportarprodutoselecionado2Click
    end
    object ExportarprodutoselecionadoNCMGrupo1: TMenuItem
      Caption = 'Exportar produto selecionado NCM Grupo'
      OnClick = ExportarprodutoselecionadoNCMGrupo1Click
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 544
    Top = 240
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 144
    Top = 336
  end
  object QyCidades: TFDQuery
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM NCM')
    Left = 120
    Top = 176
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 416
    Top = 312
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = QyCidades
    Left = 88
    Top = 280
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 584
    Top = 136
  end
  object FDBatchMoveTextWriter1: TFDBatchMoveTextWriter
    FileName = 'c:\kronos\cidades.txt'
    DataDef.Fields = <>
    Left = 208
    Top = 264
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = FDMemTable1
    Left = 264
    Top = 384
  end
end
