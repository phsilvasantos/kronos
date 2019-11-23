inherited FrmListaCompras: TFrmListaCompras
  Caption = 'Lista de compras'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    inherited btnNovo: TJvBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TJvBitBtn
      OnClick = btnEditarClick
    end
    object btnNF: TJvBitBtn
      Left = 380
      Top = 4
      Width = 81
      Height = 33
      Caption = 'NFs'
      TabOrder = 4
      DropDownMenu = pmNF
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'FINALIDADENFE'
        Title.Caption = 'Finalidade'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_NOTA'
        Title.Caption = 'N. Nota'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do fornecedor'
        Width = 329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total NF-e'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVENFE'
        Title.Caption = 'Chave NF-e'
        Width = 383
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROTOCOLONFE'
        Title.Caption = 'Protocolo NF-e'
        Width = 142
        Visible = True
      end>
  end
  object pmNF: TPopupMenu
    Left = 520
    Top = 136
    object EmitirNFe1: TMenuItem
      Caption = 'Emitir NF-e'
      OnClick = EmitirNFe1Click
    end
    object ImprimirDANFe1: TMenuItem
      Caption = 'Imprimir DANF-e'
    end
    object CancelarNFe1: TMenuItem
      Caption = 'Cancelar NF-e'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ConsultarNFe1: TMenuItem
      Caption = 'Consultar NF-e'
    end
    object Cartadecorreo1: TMenuItem
      Caption = 'Carta de Corre'#231#227'o'
      object EmitirCartadeCorreo1: TMenuItem
        Caption = 'Emitir Carta de Corre'#231#227'o'
      end
      object ImprimirCartadeCorreo1: TMenuItem
        Caption = 'Imprimir Carta de Corre'#231#227'o'
      end
    end
    object InutilizarNumeroNFe1: TMenuItem
      Caption = 'Inutilizar Numer'#231#227'o NF-e'
    end
    object PrVisualizarNFe1: TMenuItem
      Caption = 'Pr'#233'-Visualizar NF-e'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Enviaremail1: TMenuItem
      Caption = 'Enviar e-mail'
      object EnviaremailNFe1: TMenuItem
        Caption = 'Enviar e-mail NF-e'
      end
      object EnviaremailNFeviaXML1: TMenuItem
        Caption = 'Enviar e-mail NF-e via XML'
      end
    end
    object StatusdoServiodaNFe1: TMenuItem
      Caption = 'Status do Servi'#231'o da NF-e'
      OnClick = StatusdoServiodaNFe1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CertificadoDigital1: TMenuItem
      Caption = 'Certificado Digital'
      object Validade1: TMenuItem
        Caption = 'Validade'
        OnClick = Validade1Click
      end
      object Nmerodesrie1: TMenuItem
        Caption = 'N'#250'mero de s'#233'rie'
        OnClick = Nmerodesrie1Click
      end
      object RazoSocial1: TMenuItem
        Caption = 'Raz'#227'o Social'
        OnClick = RazoSocial1Click
      end
      object CNPJ1: TMenuItem
        Caption = 'CNPJ'
        OnClick = CNPJ1Click
      end
    end
    object PDFNFe1: TMenuItem
      Caption = 'PDF NF-e'
      object GerarPDFindividual1: TMenuItem
        Caption = 'Gerar PDF individual'
      end
      object GerarPDFfiltrado1: TMenuItem
        Caption = 'Gerar PDF filtrado'
      end
    end
    object OperaesNFeXML1: TMenuItem
      Caption = 'Opera'#231#245'es NF-e XML'
      object LoaddoXMLparaPedido1: TMenuItem
        Caption = 'Load do XML para Pedido'
      end
      object ListarXMLs1: TMenuItem
        Caption = 'Listar XMLs'
      end
      object CancelarNFecomXML1: TMenuItem
        Caption = 'Cancelar NF-e com XML'
      end
      object SalvarXML1: TMenuItem
        Caption = 'Salvar XML (Filtrado)'
      end
    end
    object OperaesNFe1: TMenuItem
      Caption = 'Opera'#231#245'es NF-e'
      object AjustarCFOP1: TMenuItem
        Caption = 'Ajustar CFOP NF-e'
      end
      object Adicionarprotocolo1: TMenuItem
        Caption = 'Adicionar protocolo'
      end
    end
  end
end
