object dmAcesso: TdmAcesso
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 469
  Width = 1006
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DBDADOS'
      'User_Name=root'
      'Password=psmaster'
      'Server=localhost'
      'DriverID=MySQL')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvRefreshDelete]
    LoginPrompt = False
    Left = 40
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 176
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 320
    Top = 24
  end
  object QyLista: TFDQuery
    AfterOpen = QyListaAfterOpen
    Connection = FDConnection1
    Left = 40
    Top = 80
  end
  object QyUsuarioLogin: TFDQuery
    Connection = FDConnection1
    Left = 152
    Top = 104
  end
  object QyFiliais: TFDQuery
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT FILIAL.*, MUNICIPIO.NOME NOME_MUNICIPIO, ESTADO.SIGLA , '
      
        'CONCAT(FMT_TELEFONE(FILIAL.TELEFONE) , '#39' / '#39' , FMT_TELEFONE(CELU' +
        'LAR) ) AS FONE'
      'FROM USUARIO_FILIAL '
      'INNER JOIN FILIAL ON FILIAL.ID = USUARIO_FILIAL.ID_FILIAL'
      'INNER JOIN USUARIO ON USUARIO.ID = USUARIO_FILIAL.ID_USUARIO'
      'INNER JOIN MUNICIPIO ON MUNICIPIO.ID = FILIAL.ID_MUNICIPIO'
      'INNER JOIN ESTADO ON ESTADO.ID = FILIAL.ID_ESTADO'
      'WHERE USUARIO_FILIAL.ID_USUARIO=:pIdUsuario')
    Left = 496
    Top = 352
    ParamData = <
      item
        Name = 'PIDUSUARIO'
        ParamType = ptInput
      end>
  end
  object QyGrupoUsuario: TFDQuery
    IndexFieldNames = 'ID'
    MasterSource = dsUsuarioLogin
    MasterFields = 'ID_PERFIL'
    Connection = FDConnection1
    Left = 320
    Top = 112
  end
  object dsUsuarioLogin: TDataSource
    DataSet = QyUsuarioLogin
    Left = 176
    Top = 208
  end
  object cdsCadastro: TFDQuery
    Connection = FDConnection1
    SchemaAdapter = FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    Left = 32
    Top = 136
  end
  object QyLKPMarcas: TFDQuery
    Connection = FDConnection1
    Left = 512
    Top = 240
  end
  object QyLKPGrupoProduto: TFDQuery
    Connection = FDConnection1
    Left = 768
    Top = 416
  end
  object QyLKPTipoProdutos: TFDQuery
    Connection = FDConnection1
    Left = 608
    Top = 408
  end
  object QyLKPVasilhames: TFDQuery
    Connection = FDConnection1
    Left = 608
    Top = 352
  end
  object QyLKPCategoria: TFDQuery
    Connection = FDConnection1
    Left = 592
    Top = 280
  end
  object QyLKPDepartamento: TFDQuery
    Connection = FDConnection1
    Left = 296
    Top = 344
  end
  object QyConfigSistema: TFDQuery
    AfterOpen = QyConfigSistemaAfterOpen
    Connection = FDConnection1
    Left = 48
    Top = 192
  end
  object QyLKPTributacao: TFDQuery
    Connection = FDConnection1
    Left = 440
    Top = 312
  end
  object QySQLCRUD: TFDQuery
    Connection = FDConnection1
    Left = 464
    Top = 40
  end
  object QyLKPEstados: TFDQuery
    AfterOpen = QyLKPEstadosAfterOpen
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM ESTADO'
      'ORDER BY SIGLA')
    Left = 640
    Top = 120
  end
  object QyLKPMunicipios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM MUNICIPIO ORDER BY ID_ESTADO')
    Left = 712
    Top = 136
  end
  object dsLKPEstados: TDataSource
    DataSet = tbmLKPEstados
    Left = 624
    Top = 200
  end
  object dsLKPMunicipios: TDataSource
    DataSet = tbmLKPMunicipios
    Left = 720
    Top = 192
  end
  object QyDetGrupoContato: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT CONTATOGRUPOCONTATO.ID,GRUPOCONTATO.NOME, CONTATOGRUPOCON' +
        'TATO.ID_CONTATO, CONTATOGRUPOCONTATO.ID_GRUPOCONTATO '
      'FROM CONTATOGRUPOCONTATO'
      'INNER JOIN CONTATO ON CONTATO.ID=CONTATOGRUPOCONTATO.ID_CONTATO'
      
        'INNER JOIN GRUPOCONTATO ON GRUPOCONTATO.ID = CONTATOGRUPOCONTATO' +
        '.ID_GRUPOCONTATO'
      'WHERE CONTATO.ID=:pContato')
    Left = 736
    Top = 280
    ParamData = <
      item
        Name = 'PCONTATO'
        ParamType = ptInput
      end>
  end
  object QyLKPGrupoContato: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM GRUPOCONTATO')
    Left = 920
    Top = 384
  end
  object QyLKPClientes: TFDQuery
    Connection = FDConnection1
    Left = 688
    Top = 304
  end
  object QyPedidos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM VENDA')
    Left = 784
    Top = 16
    object QyPedidosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      OnGetText = QyPedidosTIPOGetText
      Size = 1
    end
    object QyPedidosID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyPedidosID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      OnGetText = QyPedidosIDGetText
    end
    object QyPedidosEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object QyPedidosDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
      Origin = 'DATAENTREGA'
    end
    object QyPedidosID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
      Required = True
    end
    object QyPedidosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object QyPedidosID_CONDICAOPAGAMENTO: TIntegerField
      FieldName = 'ID_CONDICAOPAGAMENTO'
      Origin = 'ID_CONDICAOPAGAMENTO'
      Required = True
    end
    object QyPedidosID_FORMAPAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAPAGAMENTO'
      Origin = 'ID_FORMAPAGAMENTO'
      Required = True
    end
    object QyPedidosPROTOCOLONFE: TStringField
      FieldName = 'PROTOCOLONFE'
      Origin = 'PROTOCOLONFE'
    end
    object QyPedidosXMLNFE: TBlobField
      FieldName = 'XMLNFE'
      Origin = 'XMLNFE'
    end
    object QyPedidosRECIBOCANCELAMENTO: TDateTimeField
      FieldName = 'RECIBOCANCELAMENTO'
      Origin = 'RECIBOCANCELAMENTO'
    end
    object QyPedidosPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'PROTOCOLOCANCELAMENTO'
      Origin = 'PROTOCOLOCANCELAMENTO'
      Size = 11
    end
    object QyPedidosXMLCANCELAMENTO: TBlobField
      FieldName = 'XMLCANCELAMENTO'
      Origin = 'XMLCANCELAMENTO'
    end
    object QyPedidosNUMEROCOO: TStringField
      FieldName = 'NUMEROCOO'
      Origin = 'NUMEROCOO'
      Size = 11
    end
    object QyPedidosNUMEROECF: TStringField
      FieldName = 'NUMEROECF'
      Origin = 'NUMEROECF'
      Size = 11
    end
    object QyPedidosNUMEROLOJA: TStringField
      FieldName = 'NUMEROLOJA'
      Origin = 'NUMEROLOJA'
      Size = 11
    end
    object QyPedidosNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'NUMEROSERIE'
      Size = 11
    end
    object QyPedidosOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object QyPedidosSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object QyPedidosDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object QyPedidosPERC_DESCONTO: TBCDField
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object QyPedidosSEGURO: TBCDField
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 5
      Size = 2
    end
    object QyPedidosTIPOFRETE: TSmallintField
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
    end
    object QyPedidosVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORII: TBCDField
      FieldName = 'VALORII'
      Origin = 'VALORII'
      Precision = 15
      Size = 2
    end
    object QyPedidosTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORENTRADA: TBCDField
      FieldName = 'VALORENTRADA'
      Origin = 'VALORENTRADA'
      Precision = 15
      Size = 2
    end
    object QyPedidosCHAVENFE: TStringField
      FieldName = 'CHAVENFE'
      Origin = 'CHAVENFE'
      Size = 44
    end
    object QyPedidosBASEICMS: TBCDField
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORICMS: TBCDField
      FieldName = 'VALORICMS'
      Origin = 'VALORICMS'
      Precision = 15
      Size = 2
    end
    object QyPedidosBASEICMSST: TBCDField
      FieldName = 'BASEICMSST'
      Origin = 'BASEICMSST'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORICMSST: TBCDField
      FieldName = 'VALORICMSST'
      Origin = 'VALORICMSST'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORIPI: TBCDField
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORPIS: TBCDField
      FieldName = 'VALORPIS'
      Origin = 'VALORPIS'
      Precision = 15
      Size = 2
    end
    object QyPedidosVALORCOFINS: TBCDField
      FieldName = 'VALORCOFINS'
      Origin = 'VALORCOFINS'
      Precision = 15
      Size = 2
    end
    object QyPedidosOUTROS: TBCDField
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object QyPedidosMODELO_NFE: TStringField
      FieldName = 'MODELO_NFE'
      Origin = 'MODELO_NFE'
      Size = 2
    end
    object QyPedidosSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Origin = 'SERIE_NFE'
      Size = 3
    end
    object QyPedidosPRAZOENTREGA: TIntegerField
      FieldName = 'PRAZOENTREGA'
      Origin = 'PRAZOENTREGA'
    end
    object QyPedidosID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
      Origin = 'ID_VEICULO'
    end
    object QyPedidosID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
      Origin = 'ID_MECANICO'
    end
    object QyPedidosDHRECBTO: TDateTimeField
      FieldName = 'DHRECBTO'
      Origin = 'DHRECBTO'
    end
    object QyPedidosID_USUARIO_AUDITORIA: TIntegerField
      FieldName = 'ID_USUARIO_AUDITORIA'
      Origin = 'ID_USUARIO_AUDITORIA'
    end
    object QyPedidosMOTIVO_BLOQUEIO: TStringField
      FieldName = 'MOTIVO_BLOQUEIO'
      Origin = 'MOTIVO_BLOQUEIO'
      Size = 500
    end
    object QyPedidosID_TABELAPRECO: TIntegerField
      FieldName = 'ID_TABELAPRECO'
      Origin = 'ID_TABELAPRECO'
    end
    object QyPedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 60
    end
    object QyPedidosPERC_MONTAGEM: TBCDField
      FieldName = 'PERC_MONTAGEM'
      Origin = 'PERC_MONTAGEM'
      Precision = 5
      Size = 2
    end
    object QyPedidosPED_ECO: TStringField
      FieldName = 'PED_ECO'
      Origin = 'PED_ECO'
    end
    object QyPedidosID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object QyPedidosDIGEST: TStringField
      FieldName = 'DIGEST'
      Origin = 'DIGEST'
      Size = 30
    end
    object QyPedidosCAUT: TStringField
      FieldName = 'CAUT'
      Origin = 'CAUT'
    end
    object QyPedidosTOTALSERVICO: TBCDField
      FieldName = 'TOTALSERVICO'
      Origin = 'TOTALSERVICO'
      Precision = 15
      Size = 2
    end
    object QyPedidosFINALIDADENFE: TIntegerField
      FieldName = 'FINALIDADENFE'
      Origin = 'FINALIDADENFE'
    end
  end
  object dsPedido: TDataSource
    DataSet = QyPedidos
    Left = 784
    Top = 72
  end
  object QyLKPCondicaoPagto: TFDQuery
    AfterScroll = QyLKPCondicaoPagtoAfterScroll
    Connection = FDConnection1
    Left = 928
    Top = 240
  end
  object QyLKPFormaPagto: TFDQuery
    Connection = FDConnection1
    Left = 864
    Top = 176
  end
  object QyLKPUsuario: TFDQuery
    Connection = FDConnection1
    Left = 920
    Top = 312
  end
  object QyLKPUnidades: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT ID, CODIGO FROM UNIDADE')
    Left = 824
    Top = 368
  end
  object QyLKPProdutos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT ID, GTIN, DESCRICAO FROM PRODUTO ORDER BY DESCRICAO')
    Left = 848
    Top = 312
  end
  object QyProdutoBusca: TFDQuery
    Connection = FDConnection1
    Left = 200
    Top = 284
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr200
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = ACBrNFeDANFeRL1
    Left = 40
    Top = 264
  end
  object ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS
    Sistema = 'Kronos'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    PosPrinter = ACBrPosPrinter1
    Left = 104
    Top = 320
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 280
    Top = 344
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    Sistema = 'Kronos'
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    Left = 120
    Top = 280
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 104
    Top = 176
  end
  object ACBrNCMs1: TACBrNCMs
    ProxyPort = '8080'
    UrlConsulta = 'http://www4.receita.fazenda.gov.br/simulador/PesquisarNCM.jsp?'
    Left = 400
    Top = 352
  end
  object QyVenda: TFDQuery
    Connection = FDConnection1
    Left = 440
    Top = 112
  end
  object QyCliente: TFDQuery
    Connection = FDConnection1
    Left = 568
    Top = 56
  end
  object QyEmissorNFe: TFDQuery
    Connection = FDConnection1
    Left = 568
    Top = 8
  end
  object QySN: TFDQuery
    Connection = FDConnection1
    Left = 664
    Top = 56
  end
  object QyFaturaNFe: TFDQuery
    Connection = FDConnection1
    Left = 720
    Top = 64
  end
  object QyItemNFe: TFDQuery
    Connection = FDConnection1
    Left = 746
    Top = 76
  end
  object QyTabelaICMS: TFDQuery
    Connection = FDConnection1
    Left = 528
    Top = 392
  end
  object Qysql: TFDQuery
    Connection = FDConnection1
    Left = 848
    Top = 56
  end
  object QyAux: TFDQuery
    Connection = FDConnection1
    Left = 792
    Top = 240
  end
  object QySEQ: TFDQuery
    Connection = FDConnection1
    Left = 472
    Top = 48
  end
  object QyLKPFornecedores: TFDQuery
    Connection = FDConnection1
    Left = 696
    Top = 376
  end
  object QyListaRelatorios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM RELATORIO WHERE ID_PERFIL = 1')
    Left = 384
    Top = 184
  end
  object QyLKPRotas: TFDQuery
    Connection = FDConnection1
    Left = 472
    Top = 144
  end
  object QyLKPCidades: TFDQuery
    Connection = FDConnection1
    Left = 488
    Top = 192
  end
  object QyNFEntrada: TFDQuery
    Connection = FDConnection1
    Left = 256
    Top = 176
  end
  object QyNFEntradaItems: TFDQuery
    Connection = FDConnection1
    Left = 248
    Top = 256
  end
  object QyLkpContaCorrente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM CONTACORRENTE')
    Left = 544
    Top = 168
  end
  object QyHistorioUsuario: TFDQuery
    Connection = FDConnection1
    Left = 360
    Top = 280
  end
  object QyLkpNaturezaCR: TFDQuery
    Connection = FDConnection1
    Left = 344
    Top = 224
  end
  object QyLkpNaturezaCP: TFDQuery
    Connection = FDConnection1
    Left = 440
    Top = 248
  end
  object QyMenus: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 72
  end
  object QyConfDicionario: TFDQuery
    BeforeInsert = QyConfDicionarioBeforeInsert
    Connection = FDConnection1
    Left = 232
    Top = 72
  end
  object QyIncremento: TFDQuery
    Connection = FDConnection1
    Left = 104
    Top = 56
  end
  object QyListaFiliais: TFDQuery
    Connection = FDConnection1
    Left = 304
    Top = 160
  end
  object QyListaFormaPagtoCompleta: TFDQuery
    Connection = FDConnection1
    Left = 400
    Top = 24
  end
  object FDSchemaAdapter1: TFDSchemaAdapter
    Left = 124
    Top = 138
  end
  object QyLkpPerfisUsuarios: TFDQuery
    Connection = FDConnection1
    Left = 368
    Top = 312
  end
  object ACBrETQ1: TACBrETQ
    Porta = 'LPT1'
    Ativo = False
    Left = 32
    Top = 312
  end
  object QyLkpCFOP: TFDQuery
    Connection = FDConnection1
    Left = 480
    Top = 112
  end
  object FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter
    FileName = 'C:\kronos\mun.json'
    DataDef.Fields = <>
    Left = 144
    Top = 336
  end
  object tbmLkpCidades: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 512
    Top = 296
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = QyLKPCidades
    Left = 64
    Top = 384
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 176
    Top = 392
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    Left = 288
    Top = 392
  end
  object tbmCFOP: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 416
    Top = 408
  end
  object tbmLKPEstados: TFDMemTable
    AfterOpen = tbmLKPEstadosAfterOpen
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 560
    Top = 120
  end
  object tbmLKPMunicipios: TFDMemTable
    IndexFieldNames = 'ID_ESTADO'
    MasterSource = dsLKPEstados
    MasterFields = 'ID'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 792
    Top = 128
  end
  object QyTerminal: TFDQuery
    Connection = FDConnection1
    Left = 208
    Top = 136
  end
end
