inherited FrmListaCondicaoPagamentos: TFrmListaCondicaoPagamentos
  Caption = 'Lista de condi'#231#227'o de pagamentos'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    inherited btnNovo: TJvBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TJvBitBtn
      OnClick = btnEditarClick
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 401
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PAGAMENTO'
        Title.Caption = 'TIPO PAGTO'
        Width = 153
        Visible = True
      end>
  end
end
