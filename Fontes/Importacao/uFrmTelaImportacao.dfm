object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Tela de importacao de dados'
  ClientHeight = 418
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 704
    Height = 418
    ActivePage = tsVendas
    Align = alClient
    TabOrder = 0
    object tsVendas: TTabSheet
      Caption = 'Vendas'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 696
        Height = 37
        Align = alTop
        TabOrder = 0
        object btnImportaVendas: TBitBtn
          Left = 8
          Top = 6
          Width = 153
          Height = 25
          Caption = 'Importar Vendas'
          Enabled = False
          TabOrder = 0
          OnClick = btnImportaVendasClick
        end
        object btn1: TBitBtn
          Left = 167
          Top = 6
          Width = 153
          Height = 25
          Caption = 'Open'
          TabOrder = 1
          OnClick = btn1Click
        end
        object Edit1: TEdit
          Left = 336
          Top = 10
          Width = 121
          Height = 21
          TabOrder = 2
        end
      end
      object dbgrd1: TDBGrid
        Left = 0
        Top = 37
        Width = 696
        Height = 236
        Align = alTop
        DataSource = dsVendasLocal
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 273
        Width = 696
        Height = 117
        Align = alClient
        DataSource = dsVendasAmazon
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object conAmazon: TFDConnection
    Params.Strings = (
      'Database=dbdados'
      'User_Name=varela'
      'Password=CI5458OM'
      'Server=rjpc.c3fzd8vzopkd.us-east-2.rds.amazonaws.com'
      'DriverID=MySQL'
      'Port=3306'
      'Pooled=False'
      'UseSSL=False'
      'SSL_ca='
      'SSL_capath='
      'SSL_cert='
      'SSL_cipher='
      'SSL_key=')
    Connected = True
    LoginPrompt = False
    Left = 596
    Top = 336
  end
  object conLocal: TFDConnection
    Params.Strings = (
      'Database=dbdados'
      'User_Name=root'
      'Password=psmaster'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 564
    Top = 80
  end
  object QyVendasLocal: TFDQuery
    Connection = conLocal
    SQL.Strings = (
      'SELECT VENDA.*, CONTATO.DOCUMENTO FROM VENDA'
      'INNER JOIN CONTATO ON CONTATO.ID=VENDA.ID_CONTATO'
      'WHERE VENDA.ID>=:pID'
      'ORDER BY VENDA.ID')
    Left = 460
    Top = 80
    ParamData = <
      item
        Name = 'PID'
        ParamType = ptInput
      end>
    object QyVendasLocalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object QyVendasLocalID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object QyVendasLocalID: TFDAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QyVendasLocalEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object QyVendasLocalDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object QyVendasLocalID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
    end
    object QyVendasLocalID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object QyVendasLocalID_CONDICAOPAGAMENTO: TIntegerField
      FieldName = 'ID_CONDICAOPAGAMENTO'
    end
    object QyVendasLocalID_FORMAPAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAPAGAMENTO'
    end
    object QyVendasLocalPROTOCOLONFE: TStringField
      FieldName = 'PROTOCOLONFE'
    end
    object QyVendasLocalXMLNFE: TBlobField
      FieldName = 'XMLNFE'
    end
    object QyVendasLocalRECIBOCANCELAMENTO: TDateTimeField
      FieldName = 'RECIBOCANCELAMENTO'
    end
    object QyVendasLocalPROTOCOLOCANCELAMENTO: TStringField
      FieldName = 'PROTOCOLOCANCELAMENTO'
      Size = 11
    end
    object QyVendasLocalXMLCANCELAMENTO: TBlobField
      FieldName = 'XMLCANCELAMENTO'
    end
    object QyVendasLocalNUMEROCOO: TStringField
      FieldName = 'NUMEROCOO'
      Size = 11
    end
    object QyVendasLocalNUMEROECF: TStringField
      FieldName = 'NUMEROECF'
      Size = 11
    end
    object QyVendasLocalNUMEROLOJA: TStringField
      FieldName = 'NUMEROLOJA'
      Size = 11
    end
    object QyVendasLocalNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Size = 11
    end
    object QyVendasLocalOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 500
    end
    object QyVendasLocalSUBTOTAL: TBCDField
      FieldName = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalPERC_DESCONTO: TBCDField
      FieldName = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalSEGURO: TBCDField
      FieldName = 'SEGURO'
      Precision = 5
      Size = 2
    end
    object QyVendasLocalTIPOFRETE: TSmallintField
      FieldName = 'TIPOFRETE'
    end
    object QyVendasLocalVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORII: TBCDField
      FieldName = 'VALORII'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalTOTAL: TBCDField
      FieldName = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORENTRADA: TBCDField
      FieldName = 'VALORENTRADA'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalCHAVENFE: TStringField
      FieldName = 'CHAVENFE'
      Size = 44
    end
    object QyVendasLocalBASEICMS: TBCDField
      FieldName = 'BASEICMS'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORICMS: TBCDField
      FieldName = 'VALORICMS'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalBASEICMSST: TBCDField
      FieldName = 'BASEICMSST'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORICMSST: TBCDField
      FieldName = 'VALORICMSST'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORIPI: TBCDField
      FieldName = 'VALORIPI'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORPIS: TBCDField
      FieldName = 'VALORPIS'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalVALORCOFINS: TBCDField
      FieldName = 'VALORCOFINS'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalOUTROS: TBCDField
      FieldName = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalMODELO_NFE: TStringField
      FieldName = 'MODELO_NFE'
      Size = 2
    end
    object QyVendasLocalSERIE_NFE: TStringField
      FieldName = 'SERIE_NFE'
      Size = 3
    end
    object QyVendasLocalPRAZOENTREGA: TIntegerField
      FieldName = 'PRAZOENTREGA'
    end
    object QyVendasLocalID_VEICULO: TIntegerField
      FieldName = 'ID_VEICULO'
    end
    object QyVendasLocalID_MECANICO: TIntegerField
      FieldName = 'ID_MECANICO'
    end
    object QyVendasLocalDHRECBTO: TDateTimeField
      FieldName = 'DHRECBTO'
    end
    object QyVendasLocalID_USUARIO_AUDITORIA: TIntegerField
      FieldName = 'ID_USUARIO_AUDITORIA'
    end
    object QyVendasLocalMOTIVO_BLOQUEIO: TStringField
      FieldName = 'MOTIVO_BLOQUEIO'
      Size = 500
    end
    object QyVendasLocalID_TABELAPRECO: TIntegerField
      FieldName = 'ID_TABELAPRECO'
    end
    object QyVendasLocalNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object QyVendasLocalPERC_MONTAGEM: TBCDField
      FieldName = 'PERC_MONTAGEM'
      Precision = 5
      Size = 2
    end
    object QyVendasLocalPED_ECO: TStringField
      FieldName = 'PED_ECO'
    end
    object QyVendasLocalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object QyVendasLocalDIGEST: TStringField
      FieldName = 'DIGEST'
      Size = 30
    end
    object QyVendasLocalCAUT: TStringField
      FieldName = 'CAUT'
    end
    object QyVendasLocalTOTALSERVICO: TBCDField
      FieldName = 'TOTALSERVICO'
      Precision = 15
      Size = 2
    end
    object QyVendasLocalFINALIDADENFE: TIntegerField
      FieldName = 'FINALIDADENFE'
    end
    object QyVendasLocalDOCUMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
  end
  object QyVendasAmazon: TFDQuery
    Active = True
    Connection = conAmazon
    SQL.Strings = (
      'SELECT * FROM VENDA')
    Left = 476
    Top = 344
    object QyVendasAmazonTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object QyVendasAmazonID_FILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyVendasAmazonID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyVendasAmazonEMISSAO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object QyVendasAmazonDATAENTREGA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATAENTREGA'
      Origin = 'DATAENTREGA'
    end
    object QyVendasAmazonID_CONTATO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
    end
    object QyVendasAmazonID_USUARIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
    end
    object QyVendasAmazonID_CONDICAOPAGAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CONDICAOPAGAMENTO'
      Origin = 'ID_CONDICAOPAGAMENTO'
    end
    object QyVendasAmazonID_FORMAPAGAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FORMAPAGAMENTO'
      Origin = 'ID_FORMAPAGAMENTO'
    end
    object QyVendasAmazonPROTOCOLONFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLONFE'
      Origin = 'PROTOCOLONFE'
    end
    object QyVendasAmazonXMLNFE: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'XMLNFE'
      Origin = 'XMLNFE'
    end
    object QyVendasAmazonRECIBOCANCELAMENTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'RECIBOCANCELAMENTO'
      Origin = 'RECIBOCANCELAMENTO'
    end
    object QyVendasAmazonPROTOCOLOCANCELAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTOCOLOCANCELAMENTO'
      Origin = 'PROTOCOLOCANCELAMENTO'
    end
    object QyVendasAmazonXMLCANCELAMENTO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'XMLCANCELAMENTO'
      Origin = 'XMLCANCELAMENTO'
    end
    object QyVendasAmazonNUMEROCOO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROCOO'
      Origin = 'NUMEROCOO'
      Size = 11
    end
    object QyVendasAmazonNUMEROECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROECF'
      Origin = 'NUMEROECF'
      Size = 11
    end
    object QyVendasAmazonNUMEROLOJA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROLOJA'
      Origin = 'NUMEROLOJA'
      Size = 11
    end
    object QyVendasAmazonNUMEROSERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMEROSERIE'
      Origin = 'NUMEROSERIE'
      Size = 11
    end
    object QyVendasAmazonOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 500
    end
    object QyVendasAmazonSUBTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonPERC_DESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonSEGURO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SEGURO'
      Origin = 'SEGURO'
      Precision = 5
      Size = 2
    end
    object QyVendasAmazonTIPOFRETE: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOFRETE'
      Origin = 'TIPOFRETE'
    end
    object QyVendasAmazonVALORFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORFRETE'
      Origin = 'VALORFRETE'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORII: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORII'
      Origin = 'VALORII'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORENTRADA'
      Origin = 'VALORENTRADA'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonCHAVENFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVENFE'
      Origin = 'CHAVENFE'
      Size = 44
    end
    object QyVendasAmazonBASEICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASEICMS'
      Origin = 'BASEICMS'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORICMS'
      Origin = 'VALORICMS'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonBASEICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASEICMSST'
      Origin = 'BASEICMSST'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORICMSST'
      Origin = 'VALORICMSST'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORIPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORIPI'
      Origin = 'VALORIPI'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORPIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPIS'
      Origin = 'VALORPIS'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonVALORCOFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCOFINS'
      Origin = 'VALORCOFINS'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonOUTROS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OUTROS'
      Origin = 'OUTROS'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonMODELO_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO_NFE'
      Origin = 'MODELO_NFE'
      Size = 2
    end
    object QyVendasAmazonSERIE_NFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE_NFE'
      Origin = 'SERIE_NFE'
      Size = 3
    end
    object QyVendasAmazonPRAZOENTREGA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRAZOENTREGA'
      Origin = 'PRAZOENTREGA'
    end
    object QyVendasAmazonID_VEICULO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_VEICULO'
      Origin = 'ID_VEICULO'
    end
    object QyVendasAmazonID_MECANICO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MECANICO'
      Origin = 'ID_MECANICO'
    end
    object QyVendasAmazonDHRECBTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DHRECBTO'
      Origin = 'DHRECBTO'
    end
    object QyVendasAmazonID_USUARIO_AUDITORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_USUARIO_AUDITORIA'
      Origin = 'ID_USUARIO_AUDITORIA'
    end
    object QyVendasAmazonMOTIVO_BLOQUEIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO_BLOQUEIO'
      Origin = 'MOTIVO_BLOQUEIO'
      Size = 500
    end
    object QyVendasAmazonID_TABELAPRECO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TABELAPRECO'
      Origin = 'ID_TABELAPRECO'
    end
    object QyVendasAmazonNOME_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 60
    end
    object QyVendasAmazonPERC_MONTAGEM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_MONTAGEM'
      Origin = 'PERC_MONTAGEM'
      Precision = 5
      Size = 2
    end
    object QyVendasAmazonPED_ECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_ECO'
      Origin = 'PED_ECO'
    end
    object QyVendasAmazonID_CFOP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object QyVendasAmazonDIGEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIGEST'
      Origin = 'DIGEST'
      Size = 30
    end
    object QyVendasAmazonCAUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAUT'
      Origin = 'CAUT'
    end
    object QyVendasAmazonTOTALSERVICO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTALSERVICO'
      Origin = 'TOTALSERVICO'
      Precision = 15
      Size = 2
    end
    object QyVendasAmazonFINALIDADENFE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FINALIDADENFE'
      Origin = 'FINALIDADENFE'
    end
    object QyVendasAmazonID_IMPORT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_IMPORT'
      Origin = 'ID_IMPORT'
    end
  end
  object dsVendasLocal: TDataSource
    DataSet = QyVendasLocal
    Left = 300
    Top = 144
  end
  object dsVendasAmazon: TDataSource
    DataSet = QyVendasAmazon
    Left = 284
    Top = 328
  end
  object QyContatoAmazon: TFDQuery
    Connection = conAmazon
    SQL.Strings = (
      'SELECT * FROM CONTATO')
    Left = 148
    Top = 320
  end
  object QyItemLocal: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = dsVendasLocal
    MasterFields = 'ID'
    Connection = conLocal
    SQL.Strings = (
      
        'SELECT DETALHE_VENDA.*, PRODUTO.GTIN AS GTIN_PROD FROM DETALHE_V' +
        'ENDA'
      'INNER JOIN PRODUTO ON PRODUTO.ID=DETALHE_VENDA.ID_PRODUTO')
    Left = 468
    Top = 152
    object QyItemLocalID_FILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyItemLocalID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyItemLocalID_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
    end
    object QyItemLocalITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QyItemLocalGTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'GTIN'
    end
    object QyItemLocalID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QyItemLocalID_DEPARTAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ID_DEPARTAMENTO'
    end
    object QyItemLocalID_UNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object QyItemLocalID_CFOP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object QyItemLocalQUANTIDADE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 21
      Size = 4
    end
    object QyItemLocalPRECO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 22
      Size = 6
    end
    object QyItemLocalSUBTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 16
      Size = 2
    end
    object QyItemLocalDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 16
      Size = 2
    end
    object QyItemLocalACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 16
      Size = 2
    end
    object QyItemLocalTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 16
      Size = 2
    end
    object QyItemLocalCRT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object QyItemLocalCSTICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
    end
    object QyItemLocalBASE_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 16
      Size = 2
    end
    object QyItemLocalCSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
    end
    object QyItemLocalALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 5
      Size = 2
    end
    object QyItemLocalVALOR_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 16
      Size = 2
    end
    object QyItemLocalCSTIPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
    end
    object QyItemLocalALIQ_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 5
      Size = 2
    end
    object QyItemLocalVALOR_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 16
      Size = 2
    end
    object QyItemLocalCSTPIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
    end
    object QyItemLocalALIQ_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Precision = 5
      Size = 2
    end
    object QyItemLocalVALOR_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 16
      Size = 2
    end
    object QyItemLocalCSTCOFINS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
    end
    object QyItemLocalALIQ_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      Precision = 5
      Size = 2
    end
    object QyItemLocalVALOR_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 16
      Size = 2
    end
    object QyItemLocalVALOR_OUTROS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_OUTROS'
      Origin = 'VALOR_OUTROS'
      Precision = 16
      Size = 2
    end
    object QyItemLocalVALOR_SEGURO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 16
      Size = 2
    end
    object QyItemLocalVALOR_FRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 16
      Size = 2
    end
    object QyItemLocalINFOADICIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      Size = 500
    end
    object QyItemLocalID_GRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_GRADE'
      Origin = 'ID_GRADE'
    end
    object QyItemLocalID_SUBGRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SUBGRADE'
      Origin = 'ID_SUBGRADE'
    end
    object QyItemLocalID_COR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_COR'
      Origin = 'ID_COR'
    end
    object QyItemLocalSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QyItemLocalALIQ_MVAST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_MVAST'
      Origin = 'ALIQ_MVAST'
      Precision = 5
      Size = 2
    end
    object QyItemLocalALIQ_REDBCST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_REDBCST'
      Origin = 'ALIQ_REDBCST'
      Precision = 5
      Size = 2
    end
    object QyItemLocalALIQ_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMSST'
      Origin = 'ALIQ_ICMSST'
      Precision = 5
      Size = 2
    end
    object QyItemLocalVALOR_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMSST'
      Origin = 'VALOR_ICMSST'
      Precision = 16
      Size = 2
    end
    object QyItemLocalBASE_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMSST'
      Origin = 'BASE_ICMSST'
      Precision = 16
      Size = 2
    end
    object QyItemLocalALIQ_REDBC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_REDBC'
      Origin = 'ALIQ_REDBC'
      Precision = 5
      Size = 2
    end
    object QyItemLocalITEM_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO'
      Origin = 'ITEM_SERVICO'
      Size = 1
    end
    object QyItemLocalVALOR_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object QyItemLocalALTURA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALTURA'
      Origin = 'ALTURA'
      Precision = 4
      Size = 3
    end
    object QyItemLocalLARGURA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LARGURA'
      Origin = 'LARGURA'
      Precision = 4
      Size = 3
    end
    object QyItemLocalAREA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'AREA'
      Origin = 'AREA'
      Precision = 15
      Size = 2
    end
    object QyItemLocalDESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 60
    end
    object QyItemLocalNS_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NS_PRODUTO'
      Origin = 'NS_PRODUTO'
    end
    object QyItemLocalGTIN_PROD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN_PROD'
      Origin = 'GTIN'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object QyItemAmazon: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = dsVendasAmazon
    MasterFields = 'ID'
    Connection = conAmazon
    SQL.Strings = (
      'SELECT * FROM DETALHE_VENDA')
    Left = 356
    Top = 272
    object QyItemAmazonID_FILIAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyItemAmazonID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyItemAmazonID_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
    end
    object QyItemAmazonITEM: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM'
      Origin = 'ITEM'
    end
    object QyItemAmazonGTIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GTIN'
      Origin = 'GTIN'
    end
    object QyItemAmazonID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QyItemAmazonID_DEPARTAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ID_DEPARTAMENTO'
    end
    object QyItemAmazonID_UNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_UNIDADE'
      Origin = 'ID_UNIDADE'
    end
    object QyItemAmazonID_CFOP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CFOP'
      Origin = 'ID_CFOP'
    end
    object QyItemAmazonQUANTIDADE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Precision = 21
      Size = 4
    end
    object QyItemAmazonPRECO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 22
      Size = 6
    end
    object QyItemAmazonSUBTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonCRT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CRT'
      Origin = 'CRT'
    end
    object QyItemAmazonCSTICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTICMS'
      Origin = 'CSTICMS'
    end
    object QyItemAmazonBASE_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMS'
      Origin = 'BASE_ICMS'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonCSOSN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
    end
    object QyItemAmazonALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonVALOR_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMS'
      Origin = 'VALOR_ICMS'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonCSTIPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTIPI'
      Origin = 'CSTIPI'
    end
    object QyItemAmazonALIQ_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonVALOR_IPI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IPI'
      Origin = 'VALOR_IPI'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonCSTPIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTPIS'
      Origin = 'CSTPIS'
    end
    object QyItemAmazonALIQ_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_PIS'
      Origin = 'ALIQ_PIS'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonVALOR_PIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PIS'
      Origin = 'VALOR_PIS'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonCSTCOFINS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CSTCOFINS'
      Origin = 'CSTCOFINS'
    end
    object QyItemAmazonALIQ_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_COFINS'
      Origin = 'ALIQ_COFINS'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonVALOR_COFINS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COFINS'
      Origin = 'VALOR_COFINS'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonVALOR_OUTROS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_OUTROS'
      Origin = 'VALOR_OUTROS'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonVALOR_SEGURO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_SEGURO'
      Origin = 'VALOR_SEGURO'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonVALOR_FRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_FRETE'
      Origin = 'VALOR_FRETE'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonINFOADICIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INFOADICIONAL'
      Origin = 'INFOADICIONAL'
      Size = 500
    end
    object QyItemAmazonID_GRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_GRADE'
      Origin = 'ID_GRADE'
    end
    object QyItemAmazonID_SUBGRADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SUBGRADE'
      Origin = 'ID_SUBGRADE'
    end
    object QyItemAmazonID_COR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_COR'
      Origin = 'ID_COR'
    end
    object QyItemAmazonSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QyItemAmazonALIQ_MVAST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_MVAST'
      Origin = 'ALIQ_MVAST'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonALIQ_REDBCST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_REDBCST'
      Origin = 'ALIQ_REDBCST'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonALIQ_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMSST'
      Origin = 'ALIQ_ICMSST'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonVALOR_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_ICMSST'
      Origin = 'VALOR_ICMSST'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonBASE_ICMSST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BASE_ICMSST'
      Origin = 'BASE_ICMSST'
      Precision = 16
      Size = 2
    end
    object QyItemAmazonALIQ_REDBC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_REDBC'
      Origin = 'ALIQ_REDBC'
      Precision = 5
      Size = 2
    end
    object QyItemAmazonITEM_SERVICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_SERVICO'
      Origin = 'ITEM_SERVICO'
      Size = 1
    end
    object QyItemAmazonVALOR_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMISSAO'
      Origin = 'VALOR_COMISSAO'
      Precision = 15
      Size = 2
    end
    object QyItemAmazonALTURA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALTURA'
      Origin = 'ALTURA'
      Precision = 4
      Size = 3
    end
    object QyItemAmazonLARGURA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LARGURA'
      Origin = 'LARGURA'
      Precision = 4
      Size = 3
    end
    object QyItemAmazonAREA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'AREA'
      Origin = 'AREA'
      Precision = 15
      Size = 2
    end
    object QyItemAmazonDESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 60
    end
    object QyItemAmazonNS_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NS_PRODUTO'
      Origin = 'NS_PRODUTO'
    end
  end
  object QyProdutosAmazon: TFDQuery
    Connection = conAmazon
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 180
    Top = 200
  end
end
