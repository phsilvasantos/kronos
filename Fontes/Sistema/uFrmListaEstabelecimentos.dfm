inherited FrmListaEstabelecimentos: TFrmListaEstabelecimentos
  Caption = 'Listagem de estabelecimentos'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    inherited btnNovo: TJvBitBtn
      Left = 341
      Top = 3
      Visible = False
      ExplicitLeft = 341
      ExplicitTop = 3
    end
    inherited btnEditar: TJvBitBtn
      Left = 4
      OnClick = btnEditarClick
      ExplicitLeft = 4
    end
    inherited btnRemover: TJvBitBtn
      Left = 428
      Top = 3
      Visible = False
      ExplicitLeft = 428
      ExplicitTop = 3
    end
    inherited btnOpcoes: TJvBitBtn
      Left = 89
      ExplicitLeft = 89
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Raz'#227'o Social'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Caption = 'Nome fantasia'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'CNPJ'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSC_ESTADUAL'
        Title.Caption = 'Insc. Estadual'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Width = 125
        Visible = True
      end>
  end
end
