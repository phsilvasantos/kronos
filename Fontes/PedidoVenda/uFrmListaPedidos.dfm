inherited FrmListaPedidos: TFrmListaPedidos
  Hint = 'VENDA'
  Caption = 'Lista de Pedidos'
  ExplicitTop = 2
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
      Left = 342
      DropDownMenu = PopupMenu1
      ExplicitLeft = 342
    end
    object JvBitBtn1: TJvBitBtn
      Left = 257
      Top = 4
      Width = 81
      Height = 33
      Caption = 'Estorno'
      TabOrder = 4
      OnClick = JvBitBtn1Click
    end
    object btnNF: TJvBitBtn
      Left = 465
      Top = 4
      Width = 81
      Height = 33
      Caption = 'NFs'
      TabOrder = 5
      DropDownMenu = pmNF
    end
    object btnMetasVenda: TJvBitBtn
      Left = 550
      Top = 4
      Width = 129
      Height = 33
      Caption = 'Metas de Venda'
      TabOrder = 6
      OnClick = btnMetasVendaClick
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    PopupMenu = pmContext
    OnDrawColumnCell = dbgrdConsultaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'BLOQUEADO'
        Title.Caption = 'Removido?'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Situa'#231#227'o'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'N'#186' Pedido'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMISSAO'
        Title.Caption = 'Dt. Emiss'#227'o'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO_NOTA'
        Title.Caption = 'Num. Nota'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome do Cliente'
        Width = 324
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'SubTotal'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Desconto'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHAVENFE'
        Title.Caption = 'Chave'
        Width = 383
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROTOCOLONFE'
        Title.Caption = 'Protocolo'
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FINALIDADENFE'
        Title.Caption = 'Finalidade'
        Width = 101
        Visible = True
      end>
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 424
    Top = 200
  end
  inherited PopupMenu1: TPopupMenu
    object EspelhodoPedido1: TMenuItem
      Caption = 'Espelho do Pedido'
      OnClick = EspelhodoPedido1Click
    end
    object Recibodepagamento1: TMenuItem
      Caption = 'Recibo de pagamento'
      OnClick = Recibodepagamento1Click
    end
    object Recibodeentrega1: TMenuItem
      Caption = 'Recibo de entrega'
      OnClick = Recibodeentrega1Click
    end
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
      OnClick = ImprimirDANFe1Click
    end
    object CancelarNFe1: TMenuItem
      Caption = 'Cancelar NF-e'
      OnClick = CancelarNFe1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ConsultarNFe1: TMenuItem
      Caption = 'Consultar NF-e'
      OnClick = ConsultarNFe1Click
    end
    object Cartadecorreo1: TMenuItem
      Caption = 'Carta de Corre'#231#227'o'
      object EmitirCartadeCorreo1: TMenuItem
        Caption = 'Emitir Carta de Corre'#231#227'o'
        OnClick = EmitirCartadeCorreo1Click
      end
      object ImprimirCartadeCorreo1: TMenuItem
        Caption = 'Imprimir Carta de Corre'#231#227'o'
        OnClick = ImprimirCartadeCorreo1Click
      end
    end
    object InutilizarNumeroNFe1: TMenuItem
      Caption = 'Inutilizar Numer'#231#227'o NF-e'
    end
    object PrVisualizarNFe1: TMenuItem
      Caption = 'Pr'#233'-Visualizar NF-e'
      OnClick = PrVisualizarNFe1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Enviaremail1: TMenuItem
      Caption = 'Enviar e-mail'
      object EnviaremailNFe1: TMenuItem
        Caption = 'Enviar e-mail NF-e'
        OnClick = EnviaremailNFe1Click
      end
      object EnviaremailNFeviaXML1: TMenuItem
        Caption = 'Enviar e-mail NF-e via XML'
        OnClick = EnviaremailNFeviaXML1Click
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
  object OpenDialog1: TOpenDialog
    Left = 208
    Top = 232
  end
  object pmContext: TPopupMenu
    Left = 504
    Top = 208
    object CopiarChaveNFe1: TMenuItem
      Caption = 'Copiar Chave NF-e'
      OnClick = CopiarChaveNFe1Click
    end
    object CopiarProtocolo1: TMenuItem
      Caption = 'Copiar Protocolo'
      OnClick = CopiarProtocolo1Click
    end
    object ImprimirDANFe2: TMenuItem
      Caption = 'Imprimir DANF-e'
      OnClick = ImprimirDANFe2Click
    end
    object Enviaremail2: TMenuItem
      Caption = 'Enviar e-mail'
      OnClick = Enviaremail2Click
    end
    object Histrico1: TMenuItem
      Caption = 'Hist'#243'rico '
      OnClick = Histrico1Click
    end
  end
  object ACBrExtenso1: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 488
    Top = 328
  end
end
