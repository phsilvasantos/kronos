inherited FrmListaContasReceber: TFrmListaContasReceber
  Caption = 'Contas a Receber'
  ClientHeight = 562
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    Width = 784
    ExplicitWidth = 784
    inherited btnNovo: TJvBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TJvBitBtn
      Left = 89
      OnClick = btnEditarClick
      ExplicitLeft = 89
    end
    inherited btnRemover: TJvBitBtn
      Left = 174
      ExplicitLeft = 174
    end
    inherited btnOpcoes: TJvBitBtn
      Left = 259
      DropDownMenu = PopupMenu1
      ExplicitLeft = 259
    end
    object btnMovimentos: TJvBitBtn
      Left = 383
      Top = 4
      Width = 97
      Height = 33
      Caption = 'Movimentos'
      TabOrder = 4
      DropDownMenu = pmMovimentos
    end
  end
  inherited pnlBusca: TPanel
    Width = 784
    ExplicitWidth = 784
    inherited BtnPrior: TJvBitBtn
      Left = 627
      ExplicitLeft = 627
    end
    inherited BtnNext: TJvBitBtn
      Left = 703
      ExplicitLeft = 703
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    Width = 784
    Height = 487
    OnDrawColumnCell = dbgrdConsultaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'Documento'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Caption = 'Parc.'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONTATO'
        Title.Caption = 'Nome Contato'
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CONDICAO'
        Title.Caption = 'Cond. Pagto'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Emiss'#227'o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Title.Caption = 'Vencto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIXA'
        Title.Caption = 'Dt. Pagto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Vlr. T'#237'tulo'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORPAGO'
        Title.Caption = 'Vlr. Pago'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Visible = True
      end>
  end
  inherited PopupMenu1: TPopupMenu
    object Centralderelatrio1: TMenuItem
      Caption = 'Central de relat'#243'rios'
      OnClick = Centralderelatrio1Click
    end
  end
  object pmMovimentos: TPopupMenu
    Left = 520
    Top = 152
    object Baixarttulo1: TMenuItem
      Caption = 'Baixar t'#237'tulo'
      OnClick = Baixarttulo1Click
    end
    object Estornarttulo1: TMenuItem
      Caption = 'Estornar t'#237'tulo'
      OnClick = Estornarttulo1Click
    end
  end
end
