inherited FrmListaEstoque: TFrmListaEstoque
  Caption = 'Estoque Por Filial'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    Height = 34
    ExplicitHeight = 34
    inherited btnNovo: TJvBitBtn
      Left = 687
      Top = 3
      Visible = False
      ExplicitLeft = 687
      ExplicitTop = 3
    end
    inherited btnEditar: TJvBitBtn
      Left = 770
      Top = 3
      Visible = False
      ExplicitLeft = 770
      ExplicitTop = 3
    end
    inherited btnRemover: TJvBitBtn
      Left = 855
      Top = 3
      Visible = False
      ExplicitLeft = 855
      ExplicitTop = 3
    end
    inherited btnOpcoes: TJvBitBtn
      Left = 940
      Top = 3
      Visible = False
      ExplicitLeft = 940
      ExplicitTop = 3
    end
    object clkFilial: TJvDBLookupCombo
      Left = 6
      Top = 4
      Width = 571
      Height = 25
      Hint = 'FANTASIA'
      DeleteKeyClear = False
      TabSelects = True
      LookupField = 'ID'
      LookupDisplay = 'FANTASIA'
      LookupSource = dsFiliais
      RightTrimmedLookup = True
      TabOrder = 4
      OnCloseUp = clkFilialCloseUp
      OnKeyUp = clkFilialKeyUp
    end
  end
  inherited pnlBusca: TPanel
    Top = 34
    ExplicitTop = 34
  end
  inherited dbgrdConsulta: TJvDBGrid
    Top = 67
    Height = 463
    OnDrawColumnCell = dbgrdConsultaDrawColumnCell
    AutoSizeColumns = True
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GTIN'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UND'
        Title.Caption = 'Und.'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o do produto'
        Width = 334
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Title.Caption = 'Marca'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Caption = 'Pre'#231'o Unit'#225'rio'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_QTD'
        Title.Caption = 'Estoque'
        Width = 50
        Visible = True
      end>
  end
  object dsFiliais: TDataSource
    DataSet = dmAcesso.QyListaFiliais
    Left = 392
    Top = 112
  end
end
