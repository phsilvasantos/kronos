inherited FrmListaFormapagamentos: TFrmListaFormapagamentos
  Caption = 'FrmListaFormapagamentos'
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
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 407
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_PAGAMENTO'
        Title.Caption = 'TIPO PAGTO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_PARCELA'
        Title.Caption = 'N'#218'MERO PARCELA'
        Width = 111
        Visible = True
      end>
  end
end
