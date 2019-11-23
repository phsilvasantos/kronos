inherited FrmListaContatos: TFrmListaContatos
  Caption = 'Lista de Contatos'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    inherited btnNovo: TJvBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TJvBitBtn
      OnClick = btnEditarClick
    end
    inherited btnOpcoes: TJvBitBtn
      DropDownMenu = PopupMenu1
    end
    object btnArquivos: TJvBitBtn
      Left = 381
      Top = 4
      Width = 81
      Height = 33
      Caption = '+ Op'#231#245'es'
      TabOrder = 4
      DropDownMenu = pmMasOpcoes
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    PopupMenu = pmContext
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome/Raz'#227'o Social'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APELIDO'
        Title.Caption = 'Apelido/N. Fantasia'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Caption = 'CPF/CNPJ'
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INSC_ESTADUAL'
        Title.Caption = 'Insc. Estadual'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Title.Caption = 'Celular'
        Width = 114
        Visible = True
      end>
  end
  inherited PopupMenu1: TPopupMenu
    Left = 416
    Top = 120
    object Centralderelatorios1: TMenuItem
      Caption = 'Central de relat'#243'rios'
      OnClick = Centralderelatorios1Click
    end
  end
  object pmMasOpcoes: TPopupMenu
    Left = 512
    Top = 120
    object ExportarcontatoPDVDJ1: TMenuItem
      Caption = 'Exportar contato PDV-DJ'
      OnClick = ExportarcontatoPDVDJ1Click
    end
  end
  object pmContext: TPopupMenu
    Left = 352
    Top = 184
    object ExportarPDVDJcontatoselecionado1: TMenuItem
      Caption = 'Exportar PDVDJ contato selecionado.'
      OnClick = ExportarPDVDJcontatoselecionado1Click
    end
  end
end
