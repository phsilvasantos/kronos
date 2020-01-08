unit udmAcesso;

interface

uses
  System.SysUtils, dialogs, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client,
  Aurelius.Drivers.Interfaces,
  Aurelius.Drivers.FireDac, System.MaskUtils,
  Aurelius.Schema.MySQL,
  Aurelius.sql.MySQL,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet , Vcl.Forms, Winapi.Windows,
  ACBrPosPrinter, ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrBase, ACBrDFe, ACBrNFe, ACBrNFeDANFeRLClass, ACBrMail,
  ACBrSocket, ACBrNCMs, pcnConversao , pcnConversaoNFe, ACBrDFeSSL, ACBrUtil, md5,
  ACBrETQ, Vcl.StdCtrls, Vcl.ExtCtrls, System.IniFiles, FireDAC.Stan.StorageBin,
  FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.JSON
  ,json, FireDAC.Comp.BatchMove.DataSet
  ;

 //type tpn_natureza = (tpnReceita,tpnDespesas);
type
  TdmAcesso = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    QyLista: TFDQuery;
    QyUsuarioLogin: TFDQuery;
    QyFiliais: TFDQuery;
    QyGrupoUsuario: TFDQuery;
    dsUsuarioLogin: TDataSource;
    cdsCadastro: TFDQuery;
    QyLKPMarcas: TFDQuery;
    QyLKPGrupoProduto: TFDQuery;
    QyLKPTipoProdutos: TFDQuery;
    QyLKPVasilhames: TFDQuery;
    QyLKPCategoria: TFDQuery;
    QyLKPDepartamento: TFDQuery;
    QyConfigSistema: TFDQuery;
    QyLKPTributacao: TFDQuery;
    QySQLCRUD: TFDQuery;
    QyLKPEstados: TFDQuery;
    QyLKPMunicipios: TFDQuery;
    dsLKPEstados: TDataSource;
    dsLKPMunicipios: TDataSource;
    QyDetGrupoContato: TFDQuery;
    QyLKPGrupoContato: TFDQuery;
    QyLKPClientes: TFDQuery;
    QyPedidos: TFDQuery;
    dsPedido: TDataSource;
    QyLKPCondicaoPagto: TFDQuery;
    QyLKPFormaPagto: TFDQuery;
    QyLKPUsuario: TFDQuery;
    QyLKPUnidades: TFDQuery;
    QyLKPProdutos: TFDQuery;
    QyProdutoBusca: TFDQuery;
    QyPedidosTIPO: TStringField;
    QyPedidosID_FILIAL: TIntegerField;
    QyPedidosID: TFDAutoIncField;
    QyPedidosEMISSAO: TDateTimeField;
    QyPedidosDATAENTREGA: TDateField;
    QyPedidosID_CONTATO: TIntegerField;
    QyPedidosID_USUARIO: TIntegerField;
    QyPedidosID_CONDICAOPAGAMENTO: TIntegerField;
    QyPedidosID_FORMAPAGAMENTO: TIntegerField;
    QyPedidosPROTOCOLONFE: TStringField;
    QyPedidosXMLNFE: TBlobField;
    QyPedidosRECIBOCANCELAMENTO: TDateTimeField;
    QyPedidosPROTOCOLOCANCELAMENTO: TStringField;
    QyPedidosXMLCANCELAMENTO: TBlobField;
    QyPedidosNUMEROCOO: TStringField;
    QyPedidosNUMEROECF: TStringField;
    QyPedidosNUMEROLOJA: TStringField;
    QyPedidosNUMEROSERIE: TStringField;
    QyPedidosOBSERVACAO: TStringField;
    QyPedidosSUBTOTAL: TBCDField;
    QyPedidosDESCONTO: TBCDField;
    QyPedidosPERC_DESCONTO: TBCDField;
    QyPedidosSEGURO: TBCDField;
    QyPedidosTIPOFRETE: TSmallintField;
    QyPedidosVALORFRETE: TBCDField;
    QyPedidosVALORII: TBCDField;
    QyPedidosTOTAL: TBCDField;
    QyPedidosVALORENTRADA: TBCDField;
    QyPedidosCHAVENFE: TStringField;
    QyPedidosBASEICMS: TBCDField;
    QyPedidosVALORICMS: TBCDField;
    QyPedidosBASEICMSST: TBCDField;
    QyPedidosVALORICMSST: TBCDField;
    QyPedidosVALORIPI: TBCDField;
    QyPedidosVALORPIS: TBCDField;
    QyPedidosVALORCOFINS: TBCDField;
    QyPedidosOUTROS: TBCDField;
    QyPedidosMODELO_NFE: TStringField;
    QyPedidosSERIE_NFE: TStringField;
    QyPedidosPRAZOENTREGA: TIntegerField;
    QyPedidosID_VEICULO: TIntegerField;
    QyPedidosID_MECANICO: TIntegerField;
    QyPedidosDHRECBTO: TDateTimeField;
    QyPedidosID_USUARIO_AUDITORIA: TIntegerField;
    QyPedidosMOTIVO_BLOQUEIO: TStringField;
    QyPedidosID_TABELAPRECO: TIntegerField;
    QyPedidosNOME_CLIENTE: TStringField;
    QyPedidosPERC_MONTAGEM: TBCDField;
    QyPedidosPED_ECO: TStringField;
    QyPedidosID_CFOP: TIntegerField;
    QyPedidosDIGEST: TStringField;
    QyPedidosCAUT: TStringField;
    QyPedidosTOTALSERVICO: TBCDField;
    QyPedidosFINALIDADENFE: TIntegerField;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrPosPrinter1: TACBrPosPrinter;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrMail1: TACBrMail;
    ACBrNCMs1: TACBrNCMs;
    QyVenda: TFDQuery;
    QyCliente: TFDQuery;
    QyEmissorNFe: TFDQuery;
    QySN: TFDQuery;
    QyFaturaNFe: TFDQuery;
    QyItemNFe: TFDQuery;
    QyTabelaICMS: TFDQuery;
    Qysql: TFDQuery;
    QyAux: TFDQuery;
    QySEQ: TFDQuery;
    QyLKPFornecedores: TFDQuery;
    QyListaRelatorios: TFDQuery;
    QyLKPRotas: TFDQuery;
    QyLKPCidades: TFDQuery;
    QyNFEntrada: TFDQuery;
    QyNFEntradaItems: TFDQuery;
    QyLkpContaCorrente: TFDQuery;
    QyHistorioUsuario: TFDQuery;
    QyLkpNaturezaCR: TFDQuery;
    QyLkpNaturezaCP: TFDQuery;
    QyMenus: TFDQuery;
    QyConfDicionario: TFDQuery;
    QyIncremento: TFDQuery;
    QyListaFiliais: TFDQuery;
    QyListaFormaPagtoCompleta: TFDQuery;
    FDSchemaAdapter1: TFDSchemaAdapter;
    QyLkpPerfisUsuarios: TFDQuery;
    ACBrETQ1: TACBrETQ;
    QyLkpCFOP: TFDQuery;
    FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter;
    tbmLkpCidades: TFDMemTable;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;
    FDBatchMove1: TFDBatchMove;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    tbmCFOP: TFDMemTable;
    tbmLKPEstados: TFDMemTable;
    tbmLKPMunicipios: TFDMemTable;
    QyTerminal: TFDQuery;
    QySequencial: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure QyListaEstoqueBeforeInsert(DataSet: TDataSet);
    procedure QyPedidosTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QyPedidosIDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QyLKPCondicaoPagtoAfterScroll(DataSet: TDataSet);
    procedure QyListaAfterOpen(DataSet: TDataSet);
    procedure QyConfigSistemaAfterOpen(DataSet: TDataSet);
    procedure QyLKPEstadosAfterOpen(DataSet: TDataSet);
    procedure FDConnection1Error(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure QyConfDicionarioBeforeInsert(DataSet: TDataSet);
    procedure tbmLKPEstadosAfterOpen(DataSet: TDataSet);
  private
    FConnection : IDBConnection;
    procedure carregaQueries;
    function EstornaLancamento(vID_venda : Integer): Boolean;
  public
    property Connection : IDBConnection read FConnection;
    procedure inicializaNovoRegistro(tabela:string; const id : Integer = -1);

  end;

    //Procedure e funcoes globais
    //Funcoes*******************************************************************
    function FsPastaNotaFiscal : string;
    function fsPastaImporta: string;
    function findUnidadeOrInsert(codigo : string; descricao: string) : Integer;

    function findContatoOrInsert(pFilial : Integer; pNome,
      pApelido: string; pDocumento, pInscEstadual, pEndereco, pNumero, pCompl, pBairro,
      pCEP: string; pMunicipio : Integer; pTelefone: string; pUsuario: integer): Integer;

   function RemoveCaracter(Str: string; const caracter : Char = '.'): string;

   function findUnidade(codigo: string): Integer;

   function findCompra(chave : string; filial: Integer ) : Boolean;

   function findProdutoOrInsert(pCodProduto, pDescricao, pNcm, pCodUnidade: string; pPreco : Double; idContato: Integer; const pgtin : string = '') : integer;
   function findDepartamentoProduto(idProduto: Integer) : Integer;
   function cadastrarTributacaoProduto(idFilial, idTributacao,idProduto: Integer): Integer;
   function SaldoConta (idConta: Integer; vrValor: double) : Boolean;
   function titulopago(id: Integer; const tipo : char = 'C') : Boolean;
   function nextId(nomeTabela: string) : Integer;
   function numFiliais : Integer;
   function produtoExiste(gtin: string; const idFilial: integer = 0) : boolean;

   //fim das funcoes************************************************************

  //Inicio das procedures*******************************************************
  procedure lista(pSql: string; pOrderBy: string; const pWhere : string = '';
  const innerJoin: string = '';
  const pInicial : integer = 0; const pFinal : integer = 20); overload;

  procedure lista2(pSql: string; pOrderBy: string; const pWhere : string = '';
  const innerJoin: string = '';
  const pInicial : integer = 0; const pFinal : integer = 20; const pQueryName: string = ''); overload;

  procedure novoContatoGrupocontato(idFilial, idContato, idGrupocontato: Integer);
  procedure openDetGrupoContatos(idContato: Integer);
  procedure removerRegistro(id: Integer; tabela:string);
  procedure bloquearRegistro(id: Integer; tabela:string);
  procedure estornoPedido(idVenda: Integer; const  nomeUsuario: string = ''; const valor: Currency = 0);
  procedure GeraLancamento(VrEntrada, VrTotal: Double ; Tipo: Char; ID_PEDIDO: Integer;
  DataEmissao: TDateTime; ID_CONTATO, ID_CONDICAOPAGAMENTO, ID_FORMAPAGAMENTO: Integer;dataEntrada: TDateTime; const DataFixa: integer = 0 ; const Obs : string = '');

  procedure exportaProdutoPDVDJ(const idProd: Integer=0; const porGrupo: Boolean = false);
  procedure afterLogin;
  procedure exportaContatoPDVDJ(const idContato: Integer = 0);
  procedure proc_UpdateTitulo(idFilial, idLancamento, idConta : Integer; vrMulta, vrJuros,vrDesconto, vrPago: Double; dtBaixa : TDateTime; sSituacao, tipoLancamento: string);

  procedure certNumSerie;
  procedure certValidade;
  procedure certVencto;
  procedure certCNPJ;
  procedure certRazaoSocial;
  procedure nfStatusServico;

  procedure addHistorico(idUsuario : Integer; texto: string; const idPedido: Integer = 0);
  procedure exportarPDVDJ(idPedido: Integer);
  // fim dos procedures

  //referente a NFes
   procedure updateVendaTipo(idPedido: integer; tipo: string);
   procedure openDicionario(nomeTabela:string);
   procedure inicializaNFe(const cupom : Boolean = False);
   function transmitirNFeSaida(pID_VENDA, NumeroNFE,Estabelecimento : Integer ; Visualiza : Boolean; const NFCe: Boolean = false ) : Boolean;
   function transmitirNFeEntrada(pIdCompra, pNumNfe, pFilial : Integer; pVisualiza : Boolean  ) : Boolean;
   function cancelarNFe(pIdPedido: Integer; pNumChave: string; pNumProtocolo: string; pNumCnpj: string; pDhEvento: TDateTime; pCodUF: string; pJustificativa: string): Boolean;
   function updateSenhaUsuario(idUsuario: Integer;login: string; novaSenha: string) : Boolean ;
   //NFe

  function DatasetToJson: TJsonArray;

var
  dmAcesso: TdmAcesso;


implementation

uses
  krnVarGlobais, Vcl.Controls,  UfrmDadosAdicionais, Funcoes, PMensagem, krnConst;

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}
function DatasetToJson: TJsonArray;
var
  i: integer;
  ObjRegistro : TJSONObject;
begin
  with dmAcesso do
  begin
    with Qysql do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM UNIDADE');
      Open();
      Result := TJSONArray.Create;

      while not Eof do
      begin
        ObjRegistro := TJSONObject.Create;
        for i := 0 to FieldCount - 1 do
        begin
          ObjRegistro.AddPair(Fields[i].FieldName, dmAcesso.Qysql.Fields[i].AsString);
        end;
        Result.AddElement(ObjRegistro);
        Next;
      end;
    end;
  end;
end;
function produtoExiste(gtin: string; const idFilial : integer = 0) : boolean;
begin
  with dmAcesso.QyAux do
  begin
    Close;
    if idFilial=0 then
      Open('SELECT GTIN FROM PRODUTO WHERE GTIN = '+ QuotedStr(trim(gtin)))
    else
      Open('SELECT GTIN FROM PRODUTO WHERE GTIN = '+ QuotedStr(trim(gtin))+
      'and ID_FILIAL = ' + IntToStr(idFilial));
    result := not IsEmpty;
    close;
  end;
end;
function numFiliais : Integer;
begin
  with dmacesso.QyAux do
  begin
    Close;
    Open('SELECT COUNT(*) NUM FROM FILIAL');
    if IsEmpty then
      Result :=0
    else
      Result:=FieldByName('NUM').AsInteger;
    Close;
  end;
end;
function nextId(nomeTabela: string) : Integer;
begin
  with dmAcesso.QyIncremento do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT AUTO_INCREMENT FROM information_schema.TABLES ');
    sql.Add('WHERE TABLE_SCHEMA=:pDatabase and TABLE_NAME=:pNomeTabela');
    ParamByName('pNomeTabela').AsString := nomeTabela;
    ParamByName('pDatabase').AsString := dmAcesso.FDConnection1.Params[0];
    open;
  end;
end;
procedure openDicionario(nomeTabela:string);
begin
  with dmAcesso.QyConfDicionario do
  begin
    Close;
    SQL.Clear;
    sql.Add('SELECT * FROM DICIONARIO WHERE TABELA=:pTabela');
    ParamByName('pTabela').AsString := nomeTabela;
    open;
  end;
end;
function updateSenhaUsuario(idUsuario: Integer; login: string;  novaSenha: string) : Boolean;
begin
  with dmAcesso.Qysql do
  begin
    Close;
    SQL.Clear;
    sql.Add('UPDATE USUARIO SET SENHA=:pSenha where ID =:pId');
    ParamByName('pId').AsInteger := idUsuario;
    ParamByName('pSenha').AsString := MD5String(IntToStr(idUsuario)+ Trim(login)+ novaSenha);
    try
      ExecSQL;
      Result := True;
    except on E: Exception do
      Result := False;
    end;
  end;
end;
procedure updateVendaTipo(idPedido: integer; tipo: string);
begin
  with dmAcesso.Qysql do
  begin
    Close;
    SQL.Clear;
    SQL.Add('update VENDA SET TIPO =:pTipo where ID=:pid');
    ParamByName('pid').AsInteger := idPedido;
    ParamByName('pTipo').AsString := tipo;
    ExecSQL;
  end;
end;
procedure exportarPDVDJ(idPedido: Integer);
begin
  with dmAcesso do
  begin

  end;
end;

function cancelarNFe(pIdPedido: Integer;pNumChave: string;
 pNumProtocolo: string; pNumCnpj: string; pDhEvento: TDateTime; pCodUF: string; pJustificativa: string): Boolean;
begin
  with dmAcesso do
  begin
    ACBrNFe1.EventoNFe.Evento.Clear;
    with ACBrNFe1.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe := pNumChave;
      infEvento.CNPJ   := CNPJEstabelecimento;
      infEvento.dhEvento := Now;// cdsCadastro.FieldByName('DHRECBTO').AsDateTime;
      infEvento.tpEvento := teCancelamento;
      infEvento.detEvento.xJust := 'Cliente desistiu da compra';
      InfEvento.cOrgao :=  UFtoCUF(pCodUF);
      infEvento.detEvento.nProt := pNumProtocolo;
    end;
    ACBrNFe1.EnviarEvento(1);
    if ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135 then
    begin
      with QySQL do
      begin
        Close;
        SQL.Clear;
        sql.Add('UPDATE VENDA SET PROTOCOLOCANCELAMENTO=:p1, ');
        SQL.Add('RECIBOCANCELAMENTO=:p2, TIPO=:p3');
        sql.Add('WHERE ID=:pID');
        ParamByName('pID').AsInteger := pIdPedido;
        ParamByName('p1').AsString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
        ParamByName('p2').AsDateTime := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
        ParamByName('p3').AsString := ConstPedidoNFeCancelada;
        ExecSQL;
        Result := True;
      end;
    end
    else
      Result := False;
  end;
end;


procedure addHistorico(idUsuario : Integer; texto: string; const idPedido: Integer = 0);
begin
  with dmAcesso.QyHistorioUsuario do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO HISTORICO_USUARIO (ID_USUARIO, TEXTO, ID_VENDA) VALUES (:pID_USUARIO, :pTEXTO, :pIDVENDA)');
    ParamByName('pID_USUARIO').AsInteger := idUsuario;
    ParamByName('pIDVENDA').AsInteger := idPedido;
    ParamByName('pTEXTO').AsString := texto;
    ExecSQL;
  end;
end;

function titulopago(id: Integer; const tipo : char = 'C') : Boolean;
// Added by Janilson 21/03/2019 09:31:47
// Verifica se houve algum titulo a pagar pago de uma determinada compra
// Retorna true se existe contas pagas
begin
  with dmAcesso do
  begin
    with QyAux do
    begin
      Close;
      SQL.Clear;
      sql.Add('SELECT ID FROM LANCAMENTO ');
      if tipo='C' then //COMPRA
        sql.Add('WHERE ID_COMPRA =:pId ')
      else //VENDA
        SQL.Add('WHERE ID_VENDA =:pId ');

      sql.Add('AND SITUACAO = "LQ" OR SITUACAO = "BX" ');
      ParamByName('pId').AsInteger := id;
      open;
      Result := not IsEmpty;
    end;
  end;
end;
function SaldoConta (idConta: Integer; vrValor: double) : Boolean;
begin
  with DmAcesso do
  begin
    with QySQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * FROM CONTACORRENTE WHERE id =:id');
      ParamByName('id').AsInteger := idConta;
      Open;
      Result:=FieldByName('SALDO').AsFloat > VrValor;
    end;
  end;
end;
procedure proc_UpdateTitulo(idFilial, idLancamento, idConta : Integer; vrMulta, vrJuros,vrDesconto, vrPago: Double; dtBaixa : TDateTime; sSituacao, tipoLancamento: string);
begin
with DmAcesso do
  begin
    with QySQLCRUD do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE LANCAMENTO SET ');
      SQL.Add('JUROS=:pJUROS, ');
      SQL.Add('MULTA=:pMULTA, ');
      SQL.Add('DESCONTO=:pDESCONTO, ');
      SQL.Add('VALORPAGO=:pVALORPAGO, ');
      SQL.Add('ID_CONTACORRENTE=:pConta, ');

      if sSituacao = 'AB' then //CASO SEJA UM ESTORNO
        SQL.Add('BAIXA=NULL, ')
      else
        SQL.Add('BAIXA=:pBAIXA, ');

      SQL.Add('SITUACAO=:pSITUACAO ');
      SQL.Add('WHERE ID=:pID and ID_FILIAL=:pID_FILIAL');
      ParamByName('pID').AsInteger := idLancamento;
      ParamByName('pID_FILIAL').AsInteger := idFilial;
      ParamByName('pMULTA').AsFloat := vrMulta;
      ParamByName('pJUROS').AsFloat := vrJuros;
      ParamByName('pDESCONTO').AsFloat := vrDesconto;
      ParamByName('pVALORPAGO').AsFloat := vrPago;
      ParamByName('pConta').AsInteger := idConta;

      if sSituacao <> 'AB' then
        ParamByName('pBAIXA').AsDateTime := dtBaixa;
      ParamByName('pSITUACAO').AsString := sSituacao;
      try
        if tipoLancamento = 'C' then //contas a receber
        begin
          ExecSQL;
        end
        else    //CONTAS A PAGAR
        begin
          if sSituacao = 'AB' then //estorno não precisa de verificacao
            ExecSQL
          else
          begin
            if DmAcesso.QyConfigSistema.FieldByName('FINANCA_SALDONEGATIVOCONTA').AsInteger = 0 then //Nao permite saldo negativo
            begin
              if not SaldoConta(idConta,vrPago) then
              begin
                AlertaInfo('Conta corrente sem saldo suficiente para pagamento do título');
                Exit;
              end
              else
                ExecSQL;
            end
            else
              ExecSQL;
          end;
        end;
        if (sSituacao = 'LQ') or (sSituacao = 'BX') then
          alertainfo('Baixado com sucesso.')
        else
          alertainfo('Estornado com sucesso.');
      except
        alertaerror('Erro ao baixar título');
      end;
    end;
  end;
end;

procedure nfStatusServico;
begin
  inicializaNFe;
  DmAcesso.ACBrNFe1.Configuracoes.WebServices.Visualizar := True;
  DmAcesso.ACBrNFe1.WebServices.StatusServico.Executar;
  DmAcesso.ACBrNFe1.Configuracoes.WebServices.Visualizar := False;
end;
procedure certNumSerie;
begin
  AlertaInfo( PChar( dmAcesso.ACBrNFe1.SSL.CertNumeroSerie ));
end;
procedure certValidade;
begin
  AlertaInfo( PChar(FormatDateBr(dmAcesso.ACBrNFe1.SSL.CertDataVenc)));
end;
procedure certVencto;
begin
    AlertaInfo( PChar(FormatDateBr(dmAcesso.ACBrNFe1.SSL.CertDataVenc)));
end;
procedure certCNPJ;
begin
    AlertaInfo(PChar( FormatMaskText ('##.###.###\/####-##;0;_', dmAcesso.ACBrNFe1.SSL.CertCNPJ)));
end;
procedure certRazaoSocial;
begin
  AlertaInfo( PChar( dmAcesso.ACBrNFe1.SSL.CertRazaoSocial ));
end;


function findDepartamentoProduto(idProduto: Integer) : Integer;
begin
  if dmAcesso.QyLKPProdutos.Locate('ID',idProduto,[loCaseInsensitive]) then
    Result := dmAcesso.QyLKPProdutos.FieldByName('ID_DEPARTAMENTO').AsInteger
  else
    Result := 1;
end;

function cadastrarTributacaoProduto(idFilial, idTributacao,idProduto: Integer): Integer;
var
  cmd : TFDQuery;
begin
  cmd := TFDQuery.Create(nil);
  cmd.Connection := dmAcesso.FDConnection1;

  try
    cmd.Close;
    cmd.SQL.Clear;
    cmd.SQL.Add('SELECT * FROM TRIBUTACAO_PRODUTO ');
    cmd.SQL.Add('WHERE ID_PRODUTO=:pIdProduto and ID_FILIAL=:pFilial');
    cmd.ParamByName('pFilial').AsInteger := idFilial;
    cmd.ParamByName('pIdProduto').AsInteger := idProduto;
    cmd.Open();

    if cmd.IsEmpty then
    begin
      cmd.Insert;
      cmd.FieldByName('ID_FILIAL').AsInteger := idFilial;
      cmd.FieldByName('ID_PRODUTO').AsInteger := idProduto;
      cmd.FieldByName('ID_TRIBUTACAO').AsInteger := idTributacao;
      cmd.Post;
    end;
  finally
    Result := cmd.FieldByName('ID_TRIBUTACAO').AsInteger;
    FreeAndNil(cmd);
  end;
end;
function findUnidadeOrInsert(codigo : string; descricao: string): integer;
begin
  with dmAcesso do
  begin
    with QyAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM UNIDADE WHERE CODIGO=:pCod');
      ParamByName('pCod').AsString := codigo;
      Open();

      if IsEmpty then
      begin
         Insert;
         FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
         FieldByName('CODIGO').AsString := codigo;
         FieldByName('NOME').AsString := descricao;
         FieldByName('BLOQUEADO').AsInteger := 0;
         Post;
         Result := FieldByName('ID').AsInteger;
      end
      else
        Result := FieldByName('ID').AsInteger;
    end;
  end;
end;

function findProdutoOrInsert(pCodProduto, pDescricao, pNcm, pCodUnidade: string; pPreco : Double; idContato: Integer; const pgtin : string = '') : integer;
var
  iTributacao: integer;
begin
{ TODO -oJanilson -c :  13/03/2019 10:53:45 }
  with dmAcesso.QySQLCRUD do
  begin
    //primeira busca: fazer uma pesquisa na tabela de produto_fornecedor, onde esta vinculado o codigo do fornecedor
    //para o produto da pesquisa.
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PRODUTO_FORNECEDOR WHERE ID_CONTATO=:pIdContato and CODIGO_EXTERNO=:pCodigo');
    ParamByName('pIdContato').AsInteger := idContato;
    ParamByName('pCodigo').AsString := pCodProduto;
    Open();

    if not IsEmpty then // achou
    begin
      Result := FieldByName('ID_PRODUTO').AsInteger;
    end
    else //cadastrar e retornar o codigo do produto (ID)
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID, GTIN FROM PRODUTO WHERE GTIN=:pCodigo');
      if (Trim(pgtin) <> 'SEM GTIN')  then
        ParamByName('pCodigo').AsString := pgtin
      else
        ParamByName('pCodigo').AsString := RemoveZerosEsquerda(pCodProduto);
      Open();

      if not IsEmpty then
      begin
        Result := FieldByName('ID').AsInteger
      end
      else
      begin
        //cadastrar novo produto e retornar o ID

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM PRODUTO WHERE ID=-1');
        Open();

        Insert;
        FieldByName('ID_FILIAL').AsInteger := Estabelecimento;

        if Trim(pgtin)<> 'SEM GTIN' then
          FieldByName('GTIN').AsString := TiraAcentos(pgtin)
        else
        begin
          FieldByName('GTIN').AsString := copy(TiraAcentos(pCodProduto),1,13);
        end;


        FieldByName('CODIGO_INTERNO').AsString := RemoveZerosEsquerda(TiraAcentos(pCodProduto));
        FieldByName('DESCRICAO').AsString := pDescricao;
        FieldByName('DESCRICAO_TECNICA').AsString := '';
        FieldByName('ENDERECO').AsString := '';
        FieldByName('NCM').AsString := pNcm;
        FieldByName('ID_UNIDADE').AsInteger := findUnidadeOrInsert(pCodUnidade,pCodUnidade);
        FieldByName('ID_TIPOPRODUTO').AsInteger := 5;
        FieldByName('ID_DEPARTAMENTO').AsInteger := 1;
        FieldByName('ID_GRUPOPRODUTO').AsInteger := 1;
        FieldByName('ID_MARCA').AsInteger := 1;
        FieldByName('ID_VASILHAME').AsInteger := 1;
        FieldByName('ID_TRIBUTACAO').AsInteger := 1; //EXISTE UMA TABELA DE TRIBUTACAO_PRODUTO
        FieldByName('ID_CATEGORIA').AsInteger := 1;
        FieldByName('PRECO_COMPRA').AsFloat := 0;
        FieldByName('DIF_ICMS').AsFloat := 0;
        FieldByName('PERC_FRETE').AsFloat := 0;
        FieldByName('ALIQ_IPI').AsFloat := 0;
        FieldByName('ALIQ_ICMS').AsFloat := 0;
        FieldByName('LUCRO').AsFloat := 0;
        FieldByName('PRECO').AsFloat := pPreco;
        FieldByName('PRECO_COMPRA').AsFloat := pPreco;
        FieldByName('DESCONTO').AsFloat := 0;
        FieldByName('ESTOQUE_QTD').AsFloat := 0;
        FieldByName('ESTOQUE_MIN').AsFloat := 0;
        FieldByName('ESTOQUE_MAX').AsFloat := 0;
        FieldByName('ESTOQUE_EMPENHO').AsFloat := 0;
        FieldByName('PESOLIQUIDO').AsFloat := 0;
        FieldByName('PESOBRUTO').AsFloat := 0;
        FieldByName('PCOMISSAO').AsFloat := 0;
        FieldByName('EXPORTA_PDV').AsInteger := 0;
        FieldByName('MODELO_EQUIPAMENTO').AsString := '';
        FieldByName('ICMS_PDV').AsFloat := 0;
        FieldByName('ID_CFOP').AsInteger := 5102;
        FieldByName('COD_SIT_TRIB').AsInteger := 400;
        FieldByName('ID_USUARIO_CAD').AsInteger := UsuarioLogado;

        try
          Post;
        except on E: Exception do
          ShowMessage('Verifique se produto já existe e a ref do fornecedor foi informada.');
        end;


        if DmAcesso.QyConfigSistema.FieldByName('NFE_WEBSERVICE_REGIMETRIBUTARIO').AsInteger = 1 then
          iTributacao:=2
        else
          iTributacao:=1;

        dmAcesso.QyListaFiliais.First;

        while not dmAcesso.QyListaFiliais.Eof do
        begin
          cadastrarTributacaoProduto(dmAcesso.QyListaFiliais.FieldByName('ID').AsInteger,iTributacao,FieldByName('ID').AsInteger);
          dmAcesso.QyListaFiliais.Next;
        end;
        dmAcesso.QyLKPProdutos.Refresh;
        Result := FieldByName('ID').AsInteger;
      end;
    end;
  end;
end;
function findCompra(chave : string; filial: Integer ) : Boolean;
begin
  with dmAcesso.QyAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT CHAVENFE FROM COMPRA WHERE CHAVENFE=:pCHAVENFE');
    sql.Add(' and ID_FILIAL =:pFilial ');
    ParamByName('pFilial').AsInteger := filial;
    ParamByName('pCHAVENFE').AsString := chave;
    Open;
    Result:= not IsEmpty
  end;
end;

function findUnidade(codigo: string): Integer;
begin
  with dmAcesso do
  begin
    QyLKPUnidades.Refresh;
    QyLKPUnidades.Locate('','',[loCaseInsensitive]);
  end;
end;
function RemoveCaracter(Str: string; const caracter : Char = '.'): string;
begin
  Result := StringReplace(Str,caracter,'',[rfReplaceAll]);
end;
function findContatoOrInsert(pFilial : Integer; pNome,
  pApelido: string; pDocumento, pInscEstadual, pEndereco, pNumero, pCompl, pBairro,
  pCEP: string; pMunicipio: Integer; pTelefone: string; pUsuario: integer): Integer;
begin
  with dmAcesso do
  begin
    with QySQLCRUD do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM CONTATO WHERE DOCUMENTO =:pDocumento');
      ParamByName('pDocumento').AsString := pDocumento;
      Open;

      if not IsEmpty then
      begin
        Result := FieldByName('ID').AsInteger;
      end
      else
      begin

        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM CONTATO WHERE ID=-1');
        Open;

        Insert;
        FieldByName('ID_FILIAL').AsInteger  := Estabelecimento;
        FieldByName('NOME').AsString        := UpperCase(TiraAcentos(pNome));
        FieldByName('APELIDO').AsString     := UpperCase(TiraAcentos(pApelido));

        if Length(pDocumento) > 11 then
          FieldByName('PESSOA').AsInteger := 2
        else
          FieldByName('PESSOA').AsInteger := 1;


        FieldByName('DOCUMENTO').AsString         := OnlyNumber(pDocumento);
        FieldByName('INSC_ESTADUAL').AsString     := OnlyNumber(pInscEstadual);
        FieldByName('INSC_ESTADUAL_ST').AsString  := '';
        FieldByName('INSC_MUNICIPAL').AsString    := '';
        FieldByName('CNAE').AsString              := '';
        FieldByName('INSC_SUFRAMA').AsString      := '';
        FieldByName('RG').AsString                := '';
        FieldByName('ENDERECO').AsString          := pEndereco;
        FieldByName('NUMERO').AsString            := pNumero;
        FieldByName('COMPLEMENTO').AsString       := pCompl;
        FieldByName('BAIRRO').AsString            := pBairro;
        FieldByName('CEP').AsString               := OnlyNumber(pCEP);

        QyAux.Close;
        QyAux.SQL.Clear;
        QyAux.SQL.Add('SELECT ID, ID_ESTADO FROM MUNICIPIO WHERE ID_IBGE=:pID_IBGE');
        QyAux.ParamByName('pID_IBGE').AsInteger := pMunicipio;
        QyAux.Open;

        FieldByName('ID_MUNICIPIO').AsInteger := QyAux.FieldByName('ID').AsInteger;
        FieldByName('ID_ESTADO').AsInteger    := QyAux.FieldByName('ID_ESTADO').AsInteger;

        FieldByName('TELEFONE').AsString      := pTelefone;
        FieldByName('FAX').AsString           := '';
        FieldByName('CELULAR').AsString       := '';
        FieldByName('EMAIL').AsString         := '';
        FieldByName('BLOQUEADO').AsInteger    := 0;
        try
          Post;
          Result := QySQLCRUD.FieldByName('ID').AsInteger;
          with QyAux do
          begin
            Close;
            SQL.Clear;
            SQL.Add('INSERT INTO CONTATOGRUPOCONTATO (ID_FILIAL,ID_GRUPOCONTATO, ID_CONTATO) ');
            SQL.Add('VALUES (:pID_FILIAL,:pID_GRUPOCONTATO, :pID_CONTATO) ');
            ParamByName('pID_GRUPOCONTATO').AsInteger := 2;
            ParamByName('pID_CONTATO').AsInteger := QySQLCRUD.FieldByName('ID').AsInteger;
            ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
            ExecSQL;
          end;
        except on e: Exception do
          begin
            ShowMessage(e.Message);
            Result := 0;
          end;
        end;
      end;

    end;
  end;
end;
function fsPastaImporta: string;
begin
  result := FsPastaApp +'Importa\';
end;


procedure exportaContatoPDVDJ(const idContato: Integer);
var
  Linha, Pessoa, IE_RG : string;
  Lista : TStringList;
  Cont : Integer;
begin

  Cont := 0;
  with dmAcesso.QySQL do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT C.ID, C.NOME, C.APELIDO, C.PESSOA, ');
    SQL.Add('C.DOCUMENTO, C.INSC_ESTADUAL, C.RG,  C.TELEFONE, C.CELULAR, ');
    SQL.Add('C.EMAIL, C.ENDERECO, C.NUMERO, C.COMPLEMENTO, C.CEP, ');
    SQL.Add('C.BAIRRO, M.NOME CIDADE, E.SIGLA UF ');
    SQL.Add('FROM CONTATO C ');
    SQL.Add('INNER JOIN MUNICIPIO M ON M.ID = C.ID_MUNICIPIO ');
    SQL.Add('INNER JOIN ESTADO E ON E.ID = M.ID_ESTADO ');
    SQL.Add('INNER JOIN CONTATOGRUPOCONTATO CGC ON CGC.ID_CONTATO= C.ID ');
    SQL.Add('INNER JOIN GRUPOCONTATO GC ON GC.ID = CGC.ID_GRUPOCONTATO ');
    SQL.Add('WHERE GC.ID =1 AND C.BLOQUEADO = 0');

    if idContato > 0 then
    begin
      SQL.Add(' AND C.ID =:pIdContato');
      ParamByName('pIdContato').AsInteger := idContato;
    end;

    Open;

    Application.CreateForm(TFrmMensagem, FrmMensagem);
    FrmMensagem.PShow;
    FrmMensagem.PProgresso(0);
    FrmMensagem.PProgressoMax(RecordCount);

    Lista := TStringList.Create;

    while not eof do begin
      FrmMensagem.PIncrementaProgresso;
      FrmMensagem.PMensagem(UpperCase(FieldByName('NOME').AsString));

      if FieldByName('PESSOA').AsInteger = 1 then begin
        Pessoa:= 'F';
        IE_RG:= FieldByName('RG').AsString;
      end
      else
      begin
        Pessoa:= 'J';
        IE_RG:= FieldByName('INSC_ESTADUAL').AsString;
      end;


      Linha:= PreencheString(IntToStr(FieldByName('ID').AsInteger),20,False) +
           Pessoa                       +
           PreencheString(FieldByName('NOME').AsString,50,False)   +
           PreencheString(FieldByName('APELIDO').AsString,30,False) +
           FormatDateTime('ddmmyyyy',Date) +
           FormatDateTime('ddmmyyyy',Date) +
           FormatDateTime('ddmmyyyyhhnn',Date)+
           FormatDateTime('ddmmyyyyhhnn',Date)  +
           PreencheString(FieldByName('TELEFONE').AsString,14,False) +
           PreencheString(FieldByName('CELULAR').AsString,14,False);

      Linha:= Linha +
           PreencheString(FieldByName('EMAIL').AsString,50,False)          +
           PreencheString(FieldByName('ENDERECO').AsString,50,False)       +
           PreencheString(trim(FieldByName('NUMERO').AsString),6,True)     +
           PreencheString(FieldByName('COMPLEMENTO').AsString,30,False)    +
           PreencheString(FieldByName('BAIRRO').AsString,30,False)         +
           PreencheString(FieldByName('CIDADE').AsString,30,False)         +
           PreencheString(FieldByName('UF').AsString,2,False)              +
           PreencheString(FieldByName('CEP').AsString,9,False)             +
           PreencheString('',80,False)                                     +
           PreencheString(IE_RG,20,False)                                  +
           PreencheString(FieldByName('DOCUMENTO').AsString,20,False)      +
           PreencheString('',65,False)                                     +
           PreencheString('',80,False)                                     +
           IntToStr(9)                                                     +
           PreencheString(IntToStr(0),10,True)                             +
           '                '                                              + {Senha}
           PreencheString('0',6,False)                                     +
           PreencheString('SEM CLASSE',30,False)                           +
           PreencheString(IntToStr(0),6,False)                             +
           PreencheString('SEM CONVENIO',30,False)                         +
           PreencheString(IntToStr(0),6,True)                              +
           PreencheString(IntToStr(0),6,True);
           Lista.Add(Linha);
      Inc(Cont);
      Next;
    end;

  end;

  Lista.SaveToFile(FsPastaApp + 'Exporta\CLIENTE.TXT' );
  FreeAndNil(Lista);
  FreeAndNil(FrmMensagem);
  if Cont > 0 then
    AlertaInfo( PChar( IntToStr(Cont)+ ' CLIENTES gerado com sucesso.'))
  else
    AlertaError('Nenhum CLIENTE exportado.');
end;


procedure afterLogin;
begin
// chamar procedure somente depois do login
// Modified by Janilson 08/03/2019 10:15:05

  with dmAcesso do
  begin

    //carregamento do produto com estoque
    if not QyLKPProdutos.Active then
    begin
      QyLKPProdutos.Close;
      QyLKPProdutos.sql.clear;
      QyLKPProdutos.sql.add('SELECT PRODUTO.ID, PRODUTO.DESCRICAO, PRODUTO.GTIN, PRODUTO.ICMS_PDV, PRODUTO.NCM, ');
      QyLKPProdutos.sql.add('UNIDADE.CODIGO AS CODIGO_UNIDADE, PRODUTO.ST_ECF, PRODUTO.ID_DEPARTAMENTO ');
      QyLKPProdutos.sql.add(', COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD');
      QyLKPProdutos.sql.add(' FROM PRODUTO ');
      QyLKPProdutos.sql.add('INNER JOIN UNIDADE ON UNIDADE.ID=PRODUTO.ID_UNIDADE');
      QyLKPProdutos.sql.add('LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO=PRODUTO.ID AND ESTOQUE.ID_FILIAL=:pFilial ');
      QyLKPProdutos.parambyName('pFilial').asinteger := Estabelecimento;
      QyLKPProdutos.sql.add('ORDER BY PRODUTO.DESCRICAO');
    end
    else
    begin
      QyLKPProdutos.Refresh;
    end;

    //carregamento das config. do sistema da filial logada
    QyConfigSistema.Close;
    QyConfigSistema.Open('SELECT * FROM CONFIGURACAO_SISTEMA WHERE ID_FILIAL='+IntToStr(Estabelecimento));

    QySequencial.Close;
    QySequencial.Open('SELECT * FROM SEQUENCIAL WHERE (ID_FILIAL='+IntToStr(Estabelecimento) + ' AND TABELA="notafiscal")');


    //carregamento do relatorios do perfil logado
    QyListaRelatorios.Close;
    QyListaRelatorios.Open('SELECT * FROM RELATORIO WHERE BLOQUEADO = 0 AND ID_PERFIL = ' + IntToStr(PerfilUsuario));

  end;
end;

procedure exportaProdutoPDVDJ(const idProd: Integer; const porGrupo: Boolean);
var
  Lista : TStringList;
  Linha : string;
  Cont : Integer;
  cb : string;
  lNcm : string;
begin
  cb:= '';
  Cont := 0;
  lNcm := '';
  with dmAcesso do
  begin
    with QySQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM VW_EXPORTA_PRODUTO');

      if (idProd = 0) then
      begin
        SQL.Add('WHERE ID IN ');

        if porGrupo then //ncm por grupo
        begin
          SQL.Add('(SELECT P.ID FROM PRODUTO P');
          SQL.Add('INNER JOIN GRUPOPRODUTO ON GRUPOPRODUTO.ID=P.ID_GRUPOPRODUTO');
          SQL.Add('INNER JOIN NCM N ON N.NCM = GRUPOPRODUTO.NCM)');
        end
        else
        begin
          SQL.Add('(SELECT P.ID FROM PRODUTO P ');
          SQL.Add('INNER JOIN NCM N ON N.NCM = P.NCM) ');
        end;
      end
      else
      begin
        SQL.Add('WHERE ID =:pIdProduto ');
        ParamByName('pIdProduto').AsInteger := idProd;
      end;


      Open;
      Application.CreateForm(TFrmMensagem, FrmMensagem);
      FrmMensagem.PShow;
      FrmMensagem.PProgresso(0);
      FrmMensagem.PProgressoMax(RecordCount);

      Lista := TStringList.Create;

      while not Eof do
      begin
        if porGrupo then
          lNcm := FieldByName('NCM_GRUPO').AsString
        else
          lNcm := FieldByName('NCM').AsString;


        if (lNcm = '') and (not porGrupo) then
        begin
          FreeAndNil(FrmMensagem);
          raise Exception.Create('Produto: ' + FieldByName('DESCRICAO').AsString + ' sem NCM');
        end;

        if (lNcm = '') and (porGrupo) then
        begin
          FreeAndNil(FrmMensagem);
          raise Exception.Create('O grupo do Produto: ' + FieldByName('DESCRICAO').AsString + ' sem NCM');
        end;

        Inc(cont);
        FrmMensagem.PIncrementaProgresso;
        FrmMensagem.PMensagem(UpperCase(FieldByName('DESCRICAO').AsString));

        if FieldByName('PESAVEL').AsInteger = 1 then
        begin
          cb := '2'+FormatFloat('000000',StrToInt(Copy(FieldByName('GTIN').AsString,2,6)));
        end
        else
          cb := FieldByName('GTIN').AsString;

        Linha:= PreencheString(
             trim(IntToStr(FieldByName('ID').AsInteger)),20,False) +//-------------codigo do produto
             PreencheString(CB,20,False)        +//--------------------------------codigo de barras
             PreencheString(FieldByName('DESCRICAO').AsString,40,False)+//---------descricao do produto
             PreencheString('',20,False)      + //---------------------------------complemento do produto
             PreencheString(FieldByName('CODIGO').AsString,4,False)+//-------------Unidade de medido "UND", "CX" etc
             PreencheString(IntToStr(trunc(RoundABNT(FieldByName('PRECO').AsFloat * 1000,2))),12,True)+//preco de venda
             PreencheString(IntToStr(trunc(FieldByName('DESCONTO').AsFloat * 1000)),6,True)+//desconto promocional
             FieldByName('ST_ECF').AsString              +//------------------------Situacao tributario: I, N, F, T, S, Q
             PreencheString(IntToStr(trunc(FieldByName('ICMS_PDV').AsFloat * 100)),4,True) +//Aliquota ICMS
             PreencheString('',65,False)              +//--------------------------Observações referente ao produto
             'N'               + //------------------------------------------------Calcula qtd
             'N'            + // --------------------------------------------------PRODUTO FRACIONADO EX: 1,5
             'N'              + //-------------------------------------------------BLOQUEADO A QTD DIGITADA ?
             'N'                 + //----------------------------------------------ARREDONDA ? USA O ECF PARA ARREDONDAR
             'N'          + //-----------------------------------------------------PRODUCAO PROPRIA
             PreencheString(FieldByName('ID_GRUPOPRODUTO').AsString,6,False)+//----codigo do grupo
             PreencheString(FieldByName('GRUPO').AsString,30,False)+//-------------descricao do grupo
             PreencheString(FieldByName('ID_DEPARTAMENTO').AsString,6,False)+//----Codigo departamento
             PreencheString(FieldByName('DEPARTAMENTO').AsString,30,False)+//------Descricao departamento
             PreencheString(FieldByName('ID_MARCA').AsString,6,False)+//-----------codigo da marca
             PreencheString(FieldByName('MARCA').AsString,30,False)+//-------------Descriçao da marca
             PreencheString(IntToStr(FieldByName('ID_VASILHAME').AsInteger),6,False)+//Codigo vasilhame
             PreencheString(FieldByName('VASILHAME').AsString,30,False)+//---------Descricao vasilhame
             PreencheString(IntToStr(0),6,True)+ // codigo da animacao
             PreencheString(IntToStr(0),6,True)+ //flag
             PreencheString(lNcm,20,False)+//ncm
             PreencheString(IntToStr(0),6,True)+ //cod tipo descricao adicional:se <> 0 pergunta a descricao no pdv
             PreencheString('',20,False) + //contabil
             PreencheString('',20,False) + //ext ipi
             PreencheString('',20,False) + //gtin tributavel
             PreencheString(IntToStr(0),6,True) + //icms 40
             PreencheString(IntToStr(0),6,True)+ //ipi
             PreencheString(IntToStr(0),6,True)+ //issqn
             PreencheString(IntToStr(0),6,True)+ //ii
             PreencheString(IntToStr(0),6,True)+ //pis     7
             PreencheString(IntToStr(0),6,True)+ //pis_st
             PreencheString(IntToStr(0),6,True)+ //cofins   7
             PreencheString(IntToStr(0),6,True)+ //cofins_st
             //'N' + //kit nao informa se for N
              StringReplace(FormatFloat('0.000#.###', RoundABNT(FieldByName('ESTOQUE_QTD').AsFloat,2)),',','.',[rfReplaceAll])
             ;
        Lista.Add(Linha);
        Next;
      end;
    end;
    Lista.SaveToFile( FsPastaApp+ 'Exporta\PRODUTO.TXT' );
    FreeAndNil(Lista);
    FreeAndNil(FrmMensagem);
    if Cont > 0 then
      AlertaInfo( PChar( inttostr(cont) + ' PRODUTOS exportado com sucesso.'))
    else
      AlertaError('Nenhum PRODUTO exportado.');

  end;
end;

function FsPastaNotaFiscal : string;
begin
  result := DmAcesso.QyConfigSistema.FieldByName('NFE_PASTAXML').AsString +'\';
end;
function TdmAcesso.EstornaLancamento(vID_venda : Integer): Boolean;
begin
  with DmAcesso do
  begin
    with QyAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM LANCAMENTO WHERE ID_VENDA=:pID_VENDA');
      ParamByName('pID_VENDA').AsInteger := vID_venda;
      ExecSQL;
      Close;
    end;
  end;
end;

procedure TdmAcesso.FDConnection1Error(ASender, AInitiator: TObject;
  var AException: Exception);
var
  oExc: EFDDBEngineException;
begin
  if AException is EFDDBEngineException then
  begin
    oExc := EFDDBEngineException(AException);
    case oExc.Kind of
      ekOther:  oExc.Message := 'Servidor não encontrado.';
      ekNoDataFound: oExc.Message := 'Dados não encontrado.';
      ekTooManyRows: oExc.Message := 'Muito registro relacionados';
      ekRecordLocked: oExc.Message := 'Servidor ocupado. Tente mais tarde.';
      ekUKViolated:oExc.Message := 'Violação de chave única.' ;
      ekFKViolated: oExc.Message := 'Violação de chave estrangeira.';
      ekObjNotExists: oExc.Message := 'Objeto não existe.';
      ekUserPwdInvalid: oExc.Message := 'Usuario e ou senha inválidos';
      ekUserPwdExpired: oExc.Message := 'Usuário e senha expirado.';
      ekUserPwdWillExpire: oExc.Message := 'Usuário e Senha vai expira.';
      ekCmdAborted: oExc.Message := 'Comando abortado.';
      ekServerGone: oExc.Message := 'Servidor fora do ar.';
      ekServerOutput: oExc.Message := 'Servidor fora do ar.';
      ekArrExecMalfunc: oExc.Message := 'Servidor com mal funcionamento.';
      ekInvalidParams: oExc.Message := 'Parametro inválido.';
    end;
  end;
end;


procedure GeraLancamento(VrEntrada, VrTotal: Double ; Tipo: Char; ID_PEDIDO: Integer;
DataEmissao: TDateTime; ID_CONTATO, ID_CONDICAOPAGAMENTO, ID_FORMAPAGAMENTO: Integer;dataEntrada: TDateTime; const DataFixa: integer = 0 ; const Obs : string = '');
var
  ValorParcela, ValorResultante, ValorUltimaParcela : Double;
  Numero_Parcela, ViAux: Integer;
  Avista: Integer;
  tipo_pagto : string;
  ordemParcela : Integer;

begin
  ordemParcela := 1;
  Avista := 0;
//******************************************************************************
//Data: 27/01/2019
//Autor: Janilson Varela
//Descrição: Gerar lancamento a receber ou a pagar
//Parametros: VrEntrada = Caso o cliente pague uma entrada padrao = 0,00
//            VrTotal = Valor do titulo ou pedido
//            Tipo = Tipo de lancamento C=Receber ou D=Pagar
//            ID_VENDA = ID_VENDA
//            Data = Data de Emissão do Titulo
//******************************************************************************
  ValorParcela       := 0;
  ValorResultante    := 0;
  Numero_Parcela     := 0;
  ValorUltimaParcela := 0;
  ViAux              := 0;
  if VrEntrada> 0 then
    VrTotal := VrTotal - VrEntrada;

  with DmAcesso do
  begin
    // setando variaveis
    //obs: so pra garante que o numero de parcela é a correta
    with QyAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM FORMAPAGAMENTO WHERE ID=:ParamID');
      ParamByName('ParamID').AsInteger := ID_FORMAPAGAMENTO;
      Open;
      if not IsEmpty then
      begin
        Numero_Parcela := FieldByName('NUMERO_PARCELA').AsInteger;
        Avista := FieldByName('AVISTA').AsInteger;
        tipo_pagto :=       Trim(QyAux.FieldByName('TIPO_PAGAMENTO').AsString);

      end
      else
        Numero_Parcela := 1;
    end;

    with QySQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM DETALHE_FORMAPAGAMENTO WHERE ID_FORMAPAGAMENTO =:ParamID_FORMAPAGAMENTO ');
      SQL.Add('ORDER BY ORDEM ');
      ParamByName('ParamID_FORMAPAGAMENTO').AsInteger := ID_FORMAPAGAMENTO;
      Open;

      if Numero_Parcela > 1 then
      begin
        ValorParcela := RoundABNT(VrTotal/ Numero_Parcela,2);
        ValorResultante := ValorParcela * (Numero_Parcela-1);
        ValorUltimaParcela:= VrTotal - ValorResultante;
      end
      else
      begin
        ValorParcela:= VrTotal;
      end;

      QyAux.Close;
      QyAux.SQL.Clear;
      QyAux.SQL.Add('SELECT * FROM LANCAMENTO WHERE ID=-1');
      QyAux.Open;

      //lancamento da entrada caso haja
      if VrEntrada> 0 then
      begin
        QyAux.Append;
        QyAux.FieldByName('ID_FILIAL').AsInteger            := Estabelecimento;
        QyAux.FieldByName('ID_CONTATO').AsInteger           := ID_CONTATO;
        if Tipo = 'C' then
         QyAux.FieldByName('ID_VENDA').AsInteger            := ID_PEDIDO
        else
          QyAux.FieldByName('ID_COMPRA').AsInteger          := ID_PEDIDO;

        QyAux.FieldByName('EMISSAO').AsDateTime             := dataEntrada;
        QyAux.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger := QyConfigSistema.FieldByName('DEFAULT_VENDA_CONDPAGTO').AsInteger; //QyVenda.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger;
        QyAux.FieldByName('ID_CONTACORRENTE').AsInteger     := QyConfigSistema.FieldByName('DEFAULT_VENDA_CONTACORRENTE').AsInteger;
        if tipo = 'C' then
          QyAux.FieldByName('ID_NATUREZA').AsInteger          := QyConfigSistema.FieldByName('DEFAULT_VENDA_NATUREZA').AsInteger
        else
          QyAux.FieldByName('ID_NATUREZA').AsInteger          := QyConfigSistema.FieldByName('DEFAULT_COMPRA_NATUREZA').AsInteger;
        QyAux.FieldByName('BLOQUEADO').AsInteger            := 0;
        QyAux.FieldByName('DOCUMENTO').AsString             := IntToStr(ID_PEDIDO);
        QyAux.FieldByName('TIPO_LANCAMENTO').AsString       := Tipo;
        QyAux.FieldByName('SITUACAO').AsString              := 'LQ';
        QyAux.FieldByName('ORIGEM').AsString                := 'AU';
        QyAux.FieldByName('VALOR').AsFloat                  := VrEntrada;
        QyAux.FieldByName('VALORPAGO').AsFloat              := VrEntrada;
        QyAux.FieldByName('BAIXA').AsDateTime               := dataEntrada;
        QyAux.FieldByName('PARCELA').AsInteger              := 0;
        QyAux.FieldByName('PERC_COMISSAO').AsFloat          := UsuarioComissao;
        if Tipo = 'C' then
          QyAux.FieldByName('COMISSAO').AsFloat             := UsuarioComissao * VrEntrada ;
        QyAux.FieldByName('VENCIMENTO').AsDateTime          := dataEntrada;
        QyAux.FieldByName('DESCRICAO').AsString             := 'Entrada';
        qyaux.FieldByName('ENTRADA').AsString               := 'S';
        if obs <> '' then
          qyAux.FieldByName('DESCRICAO').AsString := obs;
        QyAux.Post;
      end;


      while not Eof do
      begin
        Inc(ViAux);
        QyAux.Append;
        QyAux.FieldByName('ID_FILIAL').AsInteger            := Estabelecimento;
        QyAux.FieldByName('ID_CONTATO').AsInteger           := ID_CONTATO;

        if Tipo  = 'C' then
          QyAux.FieldByName('ID_VENDA').AsInteger           := ID_PEDIDO
        else
          QyAux.FieldByName('ID_COMPRA').AsInteger          := ID_PEDIDO;

        QyAux.FieldByName('EMISSAO').AsDateTime             := DataEmissao;
        QyAux.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger := ID_CONDICAOPAGAMENTO;
        QyAux.FieldByName('ID_CONTACORRENTE').AsInteger     := QyConfigSistema.FieldByName('DEFAULT_VENDA_CONTACORRENTE').AsInteger;
        if Tipo = 'C' then
          QyAux.FieldByName('ID_NATUREZA').AsInteger        := QyConfigSistema.FieldByName('DEFAULT_VENDA_NATUREZA').AsInteger
        else
          QyAux.FieldByName('ID_NATUREZA').AsInteger        := QyConfigSistema.FieldByName('DEFAULT_COMPRA_NATUREZA').AsInteger;

        QyAux.FieldByName('BLOQUEADO').AsInteger            := 0;
        QyAux.FieldByName('DOCUMENTO').AsString             := IntToStr(ID_PEDIDO);
        QyAux.FieldByName('TIPO_LANCAMENTO').AsString       := Tipo;
        QyAux.FieldByName('SITUACAO').AsString              := 'AB';
        QyAux.FieldByName('ORIGEM').AsString                := 'AU';
        QyAux.FieldByName('VALORPAGO').AsFloat              := 0;
        QyAux.FieldByName('PARCELA').AsInteger              := ordemParcela;
        QyAux.FieldByName('PERC_COMISSAO').AsFloat          := UsuarioComissao;
        if obs <> '' then
          qyAux.FieldByName('DESCRICAO').AsString := obs;

        if Numero_Parcela > 1 then
        begin
          if (ViAux = Numero_Parcela) and (ValorUltimaParcela > 0) then
          begin
            QyAux.FieldByName('VALOR').AsFloat    :=ValorUltimaParcela;
          end
          else
          begin
            QyAux.FieldByName('VALOR').AsFloat    :=ValorParcela;
          end;
          QyAux.FieldByName('COMISSAO').AsFloat   := UsuarioComissao * VrTotal;
        end
        else
        begin
          QyAux.FieldByName('VALOR').AsFloat := ValorParcela;
          QyAux.FieldByName('COMISSAO').AsFloat   := UsuarioComissao * QyAux.FieldByName('VALOR').AsFloat;
        end;

        if FieldByName('TIPO_INTERVALO').AsString = 'DIA' then
        begin
          QyAux.FieldByName('VENCIMENTO').AsDateTime := DataEmissao + FieldByName('INTERVALO').AsInteger;
        end
        else
        if FieldByName('TIPO_INTERVALO').AsString = 'MES' then
        begin

          if DmAcesso.QyConfigSistema.FieldByName('VENDA_INFO_DIA_VENCIMENTO').AsInteger = 0 then
            QyAux.FieldByName('VENCIMENTO').AsDateTime := AddMonth(DataEmissao, FieldByName('INTERVALO').AsInteger)
          else
            QyAux.FieldByName('VENCIMENTO').AsDateTime := AddMonth(DataEmissao, FieldByName('INTERVALO').AsInteger,DataFixa);

        end
        else
        if FieldByName('TIPO_INTERVALO').AsString = 'QZN' then
        begin
          QyAux.FieldByName('VENCIMENTO').AsDateTime := DataEmissao + (FieldByName('INTERVALO').AsInteger);
        end
        else
        begin
          QyAux.FieldByName('VENCIMENTO').AsDateTime := AddMonth(DataEmissao, (FieldByName('INTERVALO').AsInteger*12));
        end;

        if (Avista = 1) then
        begin
          QyAux.FieldByName('SITUACAO').AsString              := 'LQ';
          QyAux.FieldByName('BAIXA').AsDateTime               := DataEmissao;
          qyAux.FieldByName('VALORPAGO').AsFloat := QyAux.FieldByName('VALOR').AsFloat;
        end;
        qyAux.Post;
        Inc(ordemParcela);
        Next;
      end;
    end;
  end;
end;

function TransmitirNFeEntrada(pIdCompra, pNumNfe, pFilial : Integer; pVisualiza : Boolean ) : Boolean;
var
  vItem: Integer;
  Ok: Boolean;
  VrIcms, VrBcIcms, VrIpi: Currency;
  VrIcmsSt, VrBcIcmsSt: Currency;
  vrPis, vrCofins: Currency;
begin
  vrPis := 0;
  VrIcms := 0;
  VrBcIcms := 0;
  VrIpi := 0;
  vrCofins := 0;
  VrIcmsSt := 0;
  VrBcIcmsSt :=0;
  with DmAcesso do
  begin
    begin
      with QyNFEntrada do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM COMPRA WHERE ID=:pID_COMPRA');
        ParamByName('pID_COMPRA').AsInteger := pIdCompra;
        Open;
      end;

      InicializaNFe;
      //************************************************************
      // Data: 17-07-2012
      // Autor: Janilson Varela
      // Descrição: Carrega os principais dados do cliente para emissao da nfe
      //************************************************************
      with QyCliente DO
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT M.NOME NOME_MUNICIPIO, M.ID_IBGE IBGE_MUNICIPIO, ');
        SQL.Add('E.ID_IBGE IBGE_ESTADO, E.SIGLA UF, ');
        SQL.Add('P.ID_IBGE IBGE_PAIS, P.NOME NOME_PAIS, ');
        SQL.Add('C.* ');
        SQL.Add('FROM CONTATO C ');
        SQL.Add('INNER JOIN MUNICIPIO M ON M.ID = C.ID_MUNICIPIO ');
        SQL.Add('INNER JOIN ESTADO E ON E.ID = M.ID_ESTADO ');
        SQL.Add('INNER JOIN PAIS P ON P.ID = E.ID_PAIS ');
        SQL.Add('WHERE C.ID=:pID_CONTATO');
        ParamByName('pID_CONTATO').AsInteger := QyNFEntrada.FieldByName('ID_CONTATO').AsInteger;
        Open;
      end;

      //************************************************************
      // Data: 17-07-2012
      // Autor: Janilson Varela
      // Descrição: Carrega dados necessarios da filial para emissao
      //************************************************************

      with QyEmissorNFe do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT F.DOCUMENTO, F.INSC_ESTADUAL, F.INSC_MUNICIPAL, ');
        SQL.Add('F.CNAE, F.INSC_ESTADUAL_ST, F.NOME, F.FANTASIA, ');
        SQL.Add('F.TELEFONE, F.CEP, F.ENDERECO, F.NUMERO, F.COMPLEMENTO, ');
        SQL.Add('F.BAIRRO, M.ID_IBGE IBGE_MUNICIPIO , M.NOME NOME_MUNICIPIO, ');
        SQL.Add('E.SIGLA UF, ');
        SQL.Add('P.ID_IBGE IBGE_PAIS, P.NOME NOME_PAIS ');
        SQL.Add('FROM FILIAL F ');
        SQL.Add('INNER JOIN MUNICIPIO M ON M.ID=F.ID_MUNICIPIO ');
        SQL.Add('INNER JOIN ESTADO E ON E.ID = M.ID_ESTADO ');
        SQL.Add('INNER JOIN PAIS P ON P.ID = E.ID_PAIS ');
        SQL.Add('WHERE F.ID =:pID_FILIAL');
        ParamByName('pID_FILIAL').AsInteger := pFilial;
        Open;
      end;
      Application.CreateForm(TfrmDadosAdicionais,frmDadosAdicionais);
      frmDadosAdicionais.Tag :=  QyNFEntrada.FieldByName('ID').AsInteger;
      frmDadosAdicionais.edtdescricaoCFOP.Text      := 'COMPRA';
      frmDadosAdicionais.edtCFOP.Text               := '1102';


      if QyCliente.FieldByName('UF').AsString <> QyEmissorNFe.FieldByName('UF').AsString then
        frmDadosAdicionais.edtCFOP.Text :=  '2' + copy(frmDadosAdicionais.edtCFOP.Text,2,4)
      else
        frmDadosAdicionais.edtCFOP.Text               := '1102';

      frmDadosAdicionais.mmoDadosAdicionais.Text    := QyConfigSistema.FieldByName('NFE_DADOSADICIONAIS').AsString;
      frmDadosAdicionais.cbbTIPODOCUMENTO.ItemIndex := 0;

      with QySEQ do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM SEQUENCIAL WHERE ID_FILIAL=:pID_FILIAL AND TABELA=:pTABELA');
        ParamByName('pID_FILIAL').AsInteger := pfilial;
        ParamByName('pTABELA').AsString     := 'notafiscal';
        Open;
      end;
      frmDadosAdicionais.edtNumeroNFe.Text := QySEQ.FieldByName('ID').AsString;
      if ACBrNFe1.DANFE <> nil then
      begin
        if  QyConfigSistema.FieldByName('NFE_DANFE').AsInteger = 1 then
          frmDadosAdicionais.cbbTIPOIMPRESSAO.ItemIndex := 0
        else
           frmDadosAdicionais.cbbTIPOIMPRESSAO.ItemIndex := 1;

        ACBrNFe1.DANFE.Logo       := QyConfigSistema.FieldByName('NFE_LOGOMARCA').AsString
      end;

      frmDadosAdicionais.ShowModal;


      pNumNfe := StrToInt(frmDadosAdicionais.edtNumeroNFe.Text);
      if frmDadosAdicionais.ModalResult <> mrOk then
        Exit;

      if frmDadosAdicionais.cbbTIPOIMPRESSAO.ItemIndex = 0 then
        ACBrNFe1.DANFE.TipoDANFE := tiRetrato
      else
        ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;

      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.NotasFiscais.Add.NFe  do
      begin
        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Identificacao da NFe
        //************************************************************

        Ide.cNF       := pNumNfe;
        Ide.natOp     := TiraAcentos(Copy(frmDadosAdicionais.edtdescricaoCFOP.Text,1,60));

        Ide.indPag    := ipNenhum;
        Ide.modelo    := QyConfigSistema.FieldByName('NFE_MODELO').AsInteger;
        Ide.serie     := QyConfigSistema.FieldByName('NFE_SERIE').AsInteger;
        Ide.nNF       := pNumNfe;
        Ide.dEmi      := frmDadosAdicionais.dtpDTEmissao.Date;
        Ide.dSaiEnt   := frmDadosAdicionais.dtpDTSaida.Date;
        Ide.hSaiEnt   := frmDadosAdicionais.dtpHora.Time;

        if frmDadosAdicionais.cbbTIPODOCUMENTO.ItemIndex = 1 then
          Ide.tpNF      := tnSaida
        else
          Ide.tpNF      := tnEntrada;

        case QyConfigSistema.FieldByName('NFE_FORMAEMISSAO').AsInteger of
          1: Ide.tpEmis    := teNormal;
          2: Ide.tpEmis    := teContingencia;
          3: Ide.tpEmis    := teSCAN;
          4: Ide.tpEmis    := teDPEC;
          5: Ide.tpEmis    := teFSDA;
        end;

        if QyConfigSistema.FieldByName('NFE_WEBSERVICE_AMBIENTE').AsInteger = 0 then
          Ide.tpAmb     :=  taProducao
        else
          Ide.tpAmb     :=  taHomologacao;

        Ide.verProc   := '1.0'; //Versão do seu sistema

        Ide.cUF       := UFtoCUF(QyEmissorNFe.FieldByName('UF').AsString);

        if Trim(QyCliente.FieldByName('UF').AsString) <> Trim(QyEmissorNFe.FieldByName('UF').AsString) then
          Ide.idDest := doInterestadual
        else
          Ide.idDest := doInterna;


        Ide.cMunFG    := QyEmissorNFe.FieldByName('IBGE_MUNICIPIO').AsInteger;

        case frmDadosAdicionais.cbbFINALIDADE.ItemIndex of
          0: Ide.finNFe    := fnNormal;
          1: Ide.finNFe    := fnComplementar;
          2: Ide.finNFe    := fnAjuste;
          3: Ide.finNFe    := fnDevolucao;
        end;


        if (Trim(frmDadosAdicionais.edtNumeroECF.Text) <> '') and (Trim(frmDadosAdicionais.edtNumeroCOO.Text) <> '') then
        begin
          with Ide.NFref.Add.RefECF do
          begin
            modelo :=TpcnECFModRef(frmDadosAdicionais.cbbModeloECF.ItemIndex+1);
            nECF := Trim(frmDadosAdicionais.edtNumeroECF.Text);
            nCOO := Trim(frmDadosAdicionais.edtNumeroCOO.Text);
          end;
        end;

        if Trim(frmDadosAdicionais.edtChave.Text) <> '' then
        begin
          with Ide.NFref.Add do
          begin
            refNFe := frmDadosAdicionais.edtChave.Text;
          end;
        end;
        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Identificação do Emitente
        //************************************************************

        Emit.CNPJCPF           := QyEmissorNFe.FieldByName('DOCUMENTO').AsString;
        Emit.IE                := QyEmissorNFe.FieldByName('INSC_ESTADUAL').AsString;
        Emit.xNome             := QyEmissorNFe.FieldByName('NOME').AsString;
        Emit.xFant             := QyEmissorNFe.FieldByName('FANTASIA').AsString;

        //ENDEREÇO
        Emit.EnderEmit.fone    := QyEmissorNFe.FieldByName('TELEFONE').AsString;;
        Emit.EnderEmit.CEP     := QyEmissorNFe.FieldByName('CEP').AsInteger;
        Emit.EnderEmit.xLgr    := QyEmissorNFe.FieldByName('ENDERECO').AsString;
        Emit.EnderEmit.nro     := QyEmissorNFe.FieldByName('NUMERO').AsString;
        Emit.EnderEmit.xCpl    := QyEmissorNFe.FieldByName('COMPLEMENTO').AsString;
        Emit.EnderEmit.xBairro := QyEmissorNFe.FieldByName('BAIRRO').AsString;
        Emit.EnderEmit.cMun    := QyEmissorNFe.FieldByName('IBGE_MUNICIPIO').AsInteger;
        Emit.EnderEmit.xMun    := QyEmissorNFe.FieldByName('NOME_MUNICIPIO').AsString;
        Emit.EnderEmit.UF      := QyEmissorNFe.FieldByName('UF').AsString;
        Emit.enderEmit.cPais   := QyEmissorNFe.FieldByName('IBGE_PAIS').AsInteger;
        Emit.enderEmit.xPais   := QyEmissorNFe.FieldByName('NOME_PAIS').AsString;
        Emit.IEST              := QyEmissorNFe.FieldByName('INSC_ESTADUAL_ST').AsString;
        Emit.IM                := QyEmissorNFe.FieldByName('INSC_MUNICIPAL').AsString;
        Emit.CNAE              := QyEmissorNFe.FieldByName('CNAE').AsString;

        case QyConfigSistema.FieldByName('NFE_WEBSERVICE_REGIMETRIBUTARIO').AsInteger of
          1: Emit.CRT               :=  crtSimplesNacional;
          2: Emit.CRT               :=  crtSimplesExcessoReceita;
          3: Emit.CRT               :=  crtRegimeNormal;
        end;



        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Dados do Destinatario da NF-e
        //************************************************************

        Dest.CNPJCPF           := QyCliente.FieldByName('DOCUMENTO').AsString;

        if Length(Dest.CNPJCPF) >=  11 then //cnpj
        begin
          if Trim(QyCliente.FieldByName('INSC_ESTADUAL').AsString) = 'ISENTO' then
            Dest.indIEDest := inIsento
          else if Trim(QyCliente.FieldByName('INSC_ESTADUAL').AsString) = 'NC' then begin
            Dest.indIEDest := inNaoContribuinte;
            Ide.indFinal := cfConsumidorFinal;
          end
          else
          begin
            if QyCliente.FieldByName('INSC_ESTADUAL').AsString = '' then
            begin
              Dest.indIEDest := inNaoContribuinte;
              Ide.indFinal := cfConsumidorFinal;
            end
            else
            begin
              Dest.IE                := QyCliente.FieldByName('INSC_ESTADUAL').AsString;
              Dest.indIEDest := inContribuinte;
              Ide.indFinal := cfNao;
            end;
          end;
        end
        else
        begin
          Dest.indIEDest := inNaoContribuinte;
          Ide.indFinal := cfConsumidorFinal;
        end;

        Dest.xNome             := TiraAcentos(QyCliente.FieldByName('NOME').AsString);
        Dest.Email             := QyCliente.FieldByName('EMAIL').AsString;
        Dest.EnderDest.Fone    := QyCliente.FieldByName('TELEFONE').AsString;
        Dest.EnderDest.CEP     := QyCliente.FieldByName('CEP').AsInteger;
        Dest.EnderDest.xLgr    := TiraAcentos(QyCliente.FieldByName('ENDERECO').AsString);
        Dest.EnderDest.nro     := QyCliente.FieldByName('NUMERO').AsString;
        Dest.EnderDest.xCpl    := TiraAcentos(QyCliente.FieldByName('COMPLEMENTO').AsString);
        Dest.EnderDest.xBairro := QyCliente.FieldByName('BAIRRO').AsString;
        Dest.EnderDest.cMun    := QyCliente.FieldByName('IBGE_MUNICIPIO').AsInteger;
        Dest.EnderDest.xMun    := QyCliente.FieldByName('NOME_MUNICIPIO').AsString;
        Dest.EnderDest.UF      := QyCliente.FieldByName('UF').AsString;
        Dest.EnderDest.cPais   := QyCliente.FieldByName('IBGE_PAIS').AsInteger;
        Dest.EnderDest.xPais   := QyCliente.FieldByName('NOME_PAIS').AsString;

        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Item da NF-e
        //************************************************************
        with QyNFEntradaItems DO
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT P.DESCRICAO, G.NCM AS GNCM, P.GTIN, P.ID AS CODIGO_INTERNO, P.NCM, U.CODIGO COD_UNIDADE, DV.ID_PRODUTO, DV.ID_CFOP, ');
          SQL.Add('DV.QUANTIDADE, DV.PRECO, DV.SUBTOTAL, DV.DESCONTO, DV.VALOR_FRETE, ');
          SQL.Add('DV.TOTAL, DV.CSTICMS, DV.ALIQ_ICMS, DV.VALOR_ICMS, DV.CSTIPI, DV.ALIQ_IPI, DV.VALOR_IPI, ');
          SQL.Add('DV.CSTPIS, DV.ALIQ_PIS, DV.VALOR_PIS, DV.CSTCOFINS, DV.ALIQ_COFINS, DV.VALOR_COFINS, ');
          SQL.Add('DV.VALOR_OUTROS, DV.VALOR_SEGURO, DV.INFOADICIONAL, DV.BASE_ICMS,T.* ');
          SQL.Add('FROM DETALHE_COMPRA DV ');
          SQL.Add('INNER JOIN PRODUTO P ON P.ID = DV.ID_PRODUTO ');
          SQL.Add('INNER JOIN UNIDADE U ON U.ID = P.ID_UNIDADE ');
          SQL.Add('INNER JOIN GRUPOPRODUTO G ON G.ID = P.ID_GRUPOPRODUTO ');


          sql.Add('INNER JOIN TRIBUTACAO_PRODUTO TP ON TP.ID_PRODUTO =P.ID AND TP.ID_FILIAL =:pID_FILIAL');
          SQL.Add('INNER JOIN TRIBUTACAO T ON T.ID = TP.ID_TRIBUTACAO');
          ParamByName('pID_FILIAL').AsInteger := Estabelecimento;



          SQL.Add('WHERE DV.ID_COMPRA=:pID_COMPRA');
          ParamByName('pID_COMPRA').AsInteger := QyVENDA.FieldByName('ID').AsInteger;
          Open;
        end;

        vItem := 1;
        while not QyNFEntradaItems.Eof do
        begin
          with Det.Add do
          begin
            Prod.nItem    := vItem; // Número sequencial, para cada item deve ser incrementado
            Prod.cProd     := QyNFEntradaItems.FieldByName('CODIGO_INTERNO').AsString;

            if ACBrNFe1.Configuracoes.Geral.VersaoDF = ve400 then
            begin
              if QyConfigSistema.FieldByName('NFE_CEAN').AsInteger = 1 then
              begin
                Prod.cEAN     := trim(QyNFEntradaItems.FieldByName('GTIN').AsString);
                Prod.cEANTrib := trim(QyNFEntradaItems.FieldByName('GTIN').AsString);

                if (Length(trim(QyNFEntradaItems.FieldByName('GTIN').AsString)) <8)  or
                 ( Length(trim(QyNFEntradaItems.FieldByName('GTIN').AsString)) > 14) then
                begin
                  raise Exception.Create('Tamanho do GTIN/EAN Invalido.' + #13+
                  'Codigo: '+ Prod.cProd + #13+
                  'Produto: ' +Prod.xProd
                   );
                end;
              end
              else
              begin
                Prod.cEAN     :=  'SEM GTIN';
                Prod.cEANTrib := 'SEM GTIN';
              end;
            end;
            Prod.xProd    := TiraAcentos(QyNFEntradaItems.FieldByName('DESCRICAO').AsString);

            if QyConfigSistema.FieldByName('NFE_NCMGRUPO').AsInteger = 0 then
            begin
              if QyNFEntradaItems.FieldByName('NCM').AsString = '' then
                Prod.NCM := '11'
              else
                Prod.NCM      := QyNFEntradaItems.FieldByName('NCM').AsString;
            end
            else
            begin
              if QyNFEntradaItems.FieldByName('GNCM').AsString = '' then
                Prod.NCM := '11'
              else
                Prod.NCM      := QyNFEntradaItems.FieldByName('GNCM').AsString;
            end;

            Prod.EXTIPI   := '';

            if Trim(frmDadosAdicionais.edtCFOP.Text) <> '' then
              Prod.CFOP := Trim(frmDadosAdicionais.edtCFOP.Text)
            else
              Prod.CFOP     := QyNFEntradaItems.FieldByName('ID_CFOP').AsString;

            Prod.uCom     := QyNFEntradaItems.FieldByName('COD_UNIDADE').AsString;
            Prod.qCom     := QyNFEntradaItems.FieldByName('QUANTIDADE').AsCurrency;
            Prod.vUnCom   := QyNFEntradaItems.FieldByName('PRECO').AsFloat;
            Prod.vProd    := QyNFEntradaItems.FieldByName('SUBTOTAL').AsFloat;


            Prod.uTrib     := QyNFEntradaItems.FieldByName('COD_UNIDADE').AsString;;
            Prod.qTrib     := QyNFEntradaItems.FieldByName('QUANTIDADE').AsCurrency;
            Prod.vUnTrib   := QyNFEntradaItems.FieldByName('PRECO').AsFloat;

            Prod.vFrete    := QyNFEntradaItems.FieldByName('VALOR_FRETE').AsFloat;;
            Prod.vSeg      := QyNFEntradaItems.FieldByName('VALOR_SEGURO').AsFloat;;
            Prod.vDesc     := QyNFEntradaItems.FieldByName('DESCONTO').AsFloat;

            Prod.IndTot    := itSomaTotalNFe;

            if Trim(QyNFEntradaItems.FieldByName('INFOADICIONAL').AsString) <> '' then
              infAdProd:= TiraAcentos(Trim(QyNFEntradaItems.FieldByName('INFOADICIONAL').AsString));

            with Imposto do
            begin
              with ICMS do
              begin
                if QyNFEntradaItems.FieldByName('CRT').AsInteger = 1 then //SIMPLES NACIONAL
                begin
                  if QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 101 then
                  begin
                    orig  := TpcnOrigemMercadoria(QyNFEntradaItems.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyNFEntradaItems.FieldByName('CSOSN').AsInteger));
                    pCredSN := QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency;
                    vCredICMSSN:=((QyNFEntradaItems.FieldByName('TOTAL').AsFloat*
                    QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency)/100);
                  end
                  else
                  if (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 102) or
                  (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 103)or
                  (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 300)or
                  (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 400)
                  then
                  begin
                    orig  := TpcnOrigemMercadoria(QyNFEntradaItems.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000', QyNFEntradaItems.FieldByName('CSOSN').AsInteger));
                  end
                  else
                  if (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 201) then
                  begin
                    orig  := TpcnOrigemMercadoria(QyNFEntradaItems.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyNFEntradaItems.FieldByName('CSOSN').AsInteger));
                    modBCST := StrTomodBCST(OK,QyNFEntradaItems.FieldByName('MODBCST').AsString);
                    pMVAST   := QyNFEntradaItems.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency;
                    pICMSST   := QyNFEntradaItems.FieldByName('PICMSST').AsCurrency;

                    pCredSN:= QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency;
                    vCredICMSSN :=((QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency) *
                    QyNFEntradaItems.FieldByName('TOTAL').AsFloat/100);

                    VrICMS:=
                    ((QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency) *
                    QyNFEntradaItems.FieldByName('TOTAL').AsFloat/100);

                    vBCST := QyNFEntradaItems.FieldByName('TOTAL').AsFloat+
                      (QyNFEntradaItems.FieldByName('TOTAL').AsFloat*QyNFEntradaItems.FieldByName('PMVAST').AsCurrency/100 );

                    vBCST :=  vBCST- (vBCST*QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency/100 );

                    vICMSST := (vBCST*QyNFEntradaItems.FieldByName('PICMSST').AsCurrency/100)-vCredICMSSN;

                    VrICMSST:=VrICMSST+vICMSST;
                    VrBCICMSST :=VrBCICMSST+ vBCST;

                  end
                  else
                  if (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 202) then
                  begin

                    Application.MessageBox('Contacte o administrador do sistema.',NOME_SISTEMA,MB_ICONINFORMATION);
                    Exit;

                  end
                  else
                  if (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 500) then
                  begin
                    orig  := TpcnOrigemMercadoria(QyNFEntradaItems.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyNFEntradaItems.FieldByName('CSOSN').AsInteger));
                    vBCSTRet:=0;  //coloca input para captura o valor infomando a descricao do produto no inputbox
                    vICMSSTRet:=0;
                  end
                  else
                  if (QyNFEntradaItems.FieldByName('CSOSN').AsInteger = 900) then
                  begin
                    orig  := TpcnOrigemMercadoria(QyNFEntradaItems.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyNFEntradaItems.FieldByName('CSOSN').AsInteger));
                    modBCST := StrTomodBCST(OK,QyNFEntradaItems.FieldByName('MODBCST').AsString);
                    pMVAST   := QyNFEntradaItems.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency;
                    pICMSST   := QyNFEntradaItems.FieldByName('PICMSST').AsCurrency;

                    pCredSN:= QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency;
                    vCredICMSSN :=((QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency) *
                    QyNFEntradaItems.FieldByName('TOTAL').AsFloat/100);

                    VrICMS:=
                    ((QyNFEntradaItems.FieldByName('PCREDSN').AsCurrency) *
                    QyNFEntradaItems.FieldByName('TOTAL').AsFloat/100);

                    vBCST := QyNFEntradaItems.FieldByName('TOTAL').AsFloat+(QyNFEntradaItems.FieldByName('TOTAL').AsFloat*QyNFEntradaItems.FieldByName('PMVAST').AsCurrency/100 );
                    vBCST :=  vBCST- (vBCST*QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency/100 );
                    vICMSST := (vBCST*QyNFEntradaItems.FieldByName('PICMSST').AsCurrency/100)-vCredICMSSN;

                    VrICMSST:=VrICMSST+vICMSST;
                    VrBCICMSST :=VrBCICMSST+ vBCST;

                  end
                end
                else  // Regime Tributario Normal
                begin
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 0 then
                  begin
                    //OK
                    orig     := StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST      := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    modBC    := StrTomodBC(OK,QyNFEntradaItems.FieldByName('MODBC').AsString);
                    vBC      := QyNFEntradaItems.FieldByName('BASE_ICMS').AsCurrency;
                    pICMS    := QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsFloat;
                    vICMS    := QyNFEntradaItems.FieldByName('VALOR_ICMS').AsFloat;

                  end
                  else
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 10 then
                  begin
                    //OK
                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyNFEntradaItems.FieldByName('MODBC').AsString);
                    vBC:=QyNFEntradaItems.FieldByName('BASE_ICMS').AsFloat;
                    pICMS:= QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsFloat;
                    vICMS := QyNFEntradaItems.FieldByName('VALOR_ICMS').AsFloat;


                    modBCST:= StrTomodBCST(OK,QyNFEntradaItems.FieldByName('MODBCST').AsString);
                    pMVAST   := QyNFEntradaItems.FieldByName('PMVAST').AsFloat;
                    pRedBCST := QyNFEntradaItems.FieldByName('PREDBCST').AsFloat;
                    vBCST := vBC +
                    ((vBC * QyNFEntradaItems.FieldByName('PMVAST').AsFloat)/100);
                    vBCST := vBCST

                    - ((vBCST * QyNFEntradaItems.FieldByName('PREDBCST').AsFloat) /100);

                    pICMSST   := QyNFEntradaItems.FieldByName('PICMSST').AsFloat;
                    vICMSST := ((vBCST*QyNFEntradaItems.FieldByName('PICMSST').AsFloat)/100)-vICMS;

                  end
                  else
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 20 then
                  begin
                    //OK
                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyNFEntradaItems.FieldByName('MODBC').AsString);

                    pICMS:= QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsFloat;
                    pRedBC := QyNFEntradaItems.FieldByName('PREDBC').AsFloat;
                    vBC := QyNFEntradaItems.FieldByName('BASE_ICMS').AsFloat;
                    vICMS := (vBC*QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsFloat)/100;
                  end
                  else
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 30 then
                  begin
                    Application.MessageBox('Contacte o administrador do sistema.',NOME_SISTEMA,MB_ICONINFORMATION);
                    Exit;
                  end
                  else
                  if (QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 40) or
                  (QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 41) or
                  (QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 50)
                  then
                  begin

                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    motDesICMS:= StrTomotDesICMS(ok,QyNFEntradaItems.FieldByName('MOTDESICMS').AsString);

                  end
                  else
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 51 then
                  begin
                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyNFEntradaItems.FieldByName('MODBC').AsString);

                    pICMS:= QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsCurrency;

                    pRedBC := QyNFEntradaItems.FieldByName('PREDBC').AsCurrency;
                    vBC := QyNFEntradaItems.FieldByName('BASE_ICMS').AsFloat -
                    ((QyNFEntradaItems.FieldByName('BASE_ICMS').AsFloat * QyNFEntradaItems.FieldByName('PREDBC').AsCurrency) /100);

                    vICMS := (vBC*pICMS)/100;
                    VrIcms:= VrIcms + vICMS;

                  end
                  else
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 60 then
                  begin
                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    vBCSTRet:=0;
                    vICMSSTRet:=0;
                  end
                  else
                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 70 then
                  begin
                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyNFEntradaItems.FieldByName('MODBC').AsString);
                    vBC:=QyNFEntradaItems.FieldByName('TOTAL').AsFloat;
                    pICMS:= QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsCurrency;
                    vICMS := QyNFEntradaItems.FieldByName('VALOR_ICMS').AsCurrency;

                    modBCST:= StrTomodBCST(OK,QyNFEntradaItems.FieldByName('MODBCST').AsString);
                    pMVAST   := QyNFEntradaItems.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency;
                    vBCST := QyNFEntradaItems.FieldByName('TOTAL').AsFloat +
                    ((QyNFEntradaItems.FieldByName('TOTAL').AsFloat * QyNFEntradaItems.FieldByName('PMVAST').AsCurrency)/100)
                    - ((QyNFEntradaItems.FieldByName('TOTAL').AsFloat * QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency) /100);

                    pICMSST   := QyNFEntradaItems.FieldByName('PICMSST').AsCurrency;
                    vICMSST := (vBCST*QyNFEntradaItems.FieldByName('PICMSST').AsCurrency)/100;
                  end
                  else

                  if QyNFEntradaItems.FieldByName('CSTICMS').AsInteger = 90 then
                  begin
                    orig:= StrToOrig(OK,QyNFEntradaItems.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyNFEntradaItems.FieldByName('MODBC').AsString);
                    pRedBC:= QyNFEntradaItems.FieldByName('PREDBC').AsCurrency;
                    vBC:=QyNFEntradaItems.FieldByName('TOTAL').AsFloat-
                    (QyNFEntradaItems.FieldByName('TOTAL').AsFloat *QyNFEntradaItems.FieldByName('PREDBC').AsCurrency )/100;

                    pICMS:= QyNFEntradaItems.FieldByName('ALIQ_ICMS').AsCurrency;
                    vICMS := (vBC * pICMS)/100;

                    modBCST:= StrTomodBCST(OK,QyNFEntradaItems.FieldByName('MODBCST').AsString);
                    pMVAST   := QyNFEntradaItems.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency;
                    vBCST := vBC +
                    ((vBC * QyNFEntradaItems.FieldByName('PMVAST').AsCurrency)/100)
                    - ((vBC * QyNFEntradaItems.FieldByName('PREDBCST').AsCurrency) /100);

                    pICMSST   := QyNFEntradaItems.FieldByName('PICMSST').AsCurrency;
                    vICMSST := (vBCST*QyNFEntradaItems.FieldByName('PICMSST').AsCurrency)/100;
                  end
                  else
                  begin
                    Application.MessageBox('CST ICMS Inválida.',NOME_SISTEMA, MB_ICONINFORMATION);
                    Exit;

                  end;
                end;
              end;

              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 50 then
              with IPI do
              begin
                CST      := ipi50 ;
                clEnq    := '';
                CNPJProd := '';
                cSelo    := '';
                qSelo    := 0;
                cEnq     := '999';

                vBC    := QyNFEntradaItems.FieldByName('TOTAL').AsFloat;
                qUnid  := 0;
                vUnid  := 0;
                pIPI   := QyNFEntradaItems.FieldByName('ALIQ_IPI').AsFloat;;
                vIPI   := QyNFEntradaItems.FieldByName('VALOR_IPI').AsFloat;
                VrIPI:= VrIPI +QyNFEntradaItems.FieldByName('VALOR_IPI').AsFloat;

              end;
              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 51 then
              with IPI do
              begin
                CST := ipi51;
              end;
              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 52 then
              with IPI do
              begin
                CST := ipi52;
              end;
              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 53 then
              with IPI do
              begin
                CST := ipi53;
              end;
              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 54 then
              with IPI do
              begin
                CST := ipi54;
              end;
              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 55 then
              with IPI do
              begin
                CST := ipi55;
              end;
              if QyNFEntradaItems.FieldByName('CSTIPI').AsInteger = 99 then
              with IPI do
              begin
                CST := ipi99;
              end;

              with PIS do
              begin
                CST:= StrToCSTPIS(OK,FormatFloat('00',QyNFEntradaItems.FieldByName('CSTPIS').AsInteger) );
                if (QyNFEntradaItems.FieldByName('CSTPIS').AsInteger = 1) or
                 (QyNFEntradaItems.FieldByName('CSTPIS').AsInteger = 2) or
                 (QyNFEntradaItems.FieldByName('CSTPIS').AsInteger = 3) or
                 (QyNFEntradaItems.FieldByName('CSTPIS').AsInteger = 99)then
                begin
                  pPIS  := QyNFEntradaItems.FieldByName('ALIQ_PIS').AsFloat;
                  vBC   :=QyNFEntradaItems.FieldByName('TOTAL').AsFloat;
                  vPIS  := QyNFEntradaItems.FieldByName('VALOR_PIS').AsFloat;
                  vrPis :=vrPis+ vPIS;
                end;
              end;

              with COFINS do
              begin
                CST:= StrToCSTCOFINS(OK, FormatFloat('00',QyNFEntradaItems.FieldByName('CSTCOFINS').AsInteger) );
                if (QyNFEntradaItems.FieldByName('CSTCOFINS').AsInteger = 1) or
                 (QyNFEntradaItems.FieldByName('CSTCOFINS').AsInteger = 2) or
                 (QyNFEntradaItems.FieldByName('CSTCOFINS').AsInteger = 3) or
                 (QyNFEntradaItems.FieldByName('CSTCOFINS').AsInteger = 99)

                then
                begin
                  vBC       := QyNFEntradaItems.FieldByName('TOTAL').AsFloat;
                  pCOFINS   := QyNFEntradaItems.FieldByName('ALIQ_COFINS').AsFloat;
                  vCOFINS   := QyNFEntradaItems.FieldByName('VALOR_COFINS').AsFloat;
                  VrCOFINS  := VrCOFINS + vCOFINS;
                end;
              end;
            end;
          end;
          inc(vItem);
          QyNFEntradaItems.Next;
        end;

        Total.ICMSTot.vBC     := QyVENDA.FieldByName('BASEICMS').AsFloat;
        Total.ICMSTot.vICMS   := QyVENDA.FieldByName('VALORICMS').AsFloat;
        Total.ICMSTot.vBCST   := QyVENDA.FieldByName('BASEICMSST').AsFloat;
        Total.ICMSTot.vST     := QyVENDA.FieldByName('VALORICMSST').AsFloat;
        Total.ICMSTot.vProd   := QyVENDA.FieldByName('SUBTOTAL').AsFloat;
        Total.ICMSTot.vFrete  := QyVENDA.FieldByName('VALORFRETE').AsFloat;
        Total.ICMSTot.vSeg    := QyVENDA.FieldByName('SEGURO').AsFloat;
        Total.ICMSTot.vDesc   := QyVENDA.FieldByName('DESCONTO').AsFloat;
        Total.ICMSTot.vII     := QyVENDA.FieldByName('VALORII').AsFloat;
        Total.ICMSTot.vIPI    := QyVENDA.FieldByName('VALORIPI').AsFloat;
        Total.ICMSTot.vPIS    := QyVENDA.FieldByName('VALORPIS').AsFloat;
        Total.ICMSTot.vCOFINS := QyVENDA.FieldByName('VALORCOFINS').AsFloat;
        Total.ICMSTot.vOutro  := QyVENDA.FieldByName('OUTROS').AsFloat;
        Total.ICMSTot.vNF     := QyVENDA.FieldByName('TOTAL').AsFloat;

        Total.ISSQNtot.vServ   := 0;
        Total.ISSQNTot.vBC     := 0;
        Total.ISSQNTot.vISS    := 0;
        Total.ISSQNTot.vPIS    := 0;
        Total.ISSQNTot.vCOFINS := 0;

        Total.retTrib.vRetPIS    := 0;
        Total.retTrib.vRetCOFINS := 0;
        Total.retTrib.vRetCSLL   := 0;
        Total.retTrib.vBCIRRF    := 0;
        Total.retTrib.vIRRF      := 0;
        Total.retTrib.vBCRetPrev := 0;
        Total.retTrib.vRetPrev   := 0;

        case QyVENDA.FieldByName('TIPOFRETE').AsInteger of
          0: Transp.modFrete := mfContaEmitente;
          1: Transp.modFrete := mfContaDestinatario;
          2: Transp.modFrete := mfContaTerceiros;
          9: Transp.modFrete := mfSemFrete;
        end;

        if Trim(frmDadosAdicionais.edtPlaca.Text) <> 'NI' then
        begin
          Transp.veicTransp.UF    := frmDadosAdicionais.cbbEstadoPlaca.Text;
          Transp.veicTransp.RNTC  := frmDadosAdicionais.edtRNTC.Text;
          Transp.veicTransp.placa := frmDadosAdicionais.edtPlaca.Text;
        end;

        with Transp.Vol.Add do
        begin
          qVol  := frmDadosAdicionais.edtQuantidade.AsInteger;
          esp   := frmDadosAdicionais.edtEspecie.Text;
          marca := frmDadosAdicionais.edtMarca.Text;
          nVol  := frmDadosAdicionais.edtNumeracao.Text;
          pesoL := frmDadosAdicionais.edtClcPLiquido.Value;
          pesoB := frmDadosAdicionais.edtClcPBruto.Value;

         //Lacres do volume. Pode ser adicionado vários
         //Lacres.Add.nLacre := '';
        end;

        if Trim(frmDadosAdicionais.edtRazao.Text) <> '' then
        begin
          with Transp do
          begin
            Transporta.CNPJCPF  := frmDadosAdicionais.edtCNPJ.Text;
            Transporta.xNome    := frmDadosAdicionais.edtRazao.Text;
            Transporta.IE       := frmDadosAdicionais.edtIE.Text;
            Transporta.xEnder   := frmDadosAdicionais.edtEndereco.Text;
            Transporta.xMun     := frmDadosAdicionais.edtCidade.Text;
            Transporta.UF       := frmDadosAdicionais.cbbEstado.Text;
          end;
        end;


         with pag.Add do
         begin
            tPag := fpSemPagamento;
         end;
        InfAdic.infCpl     :=  Trim(frmDadosAdicionais.mmoDadosAdicionais.Text);
      end;


      if not pVisualiza then
      begin
        ACBrNFe1.Enviar(0, false);
      end
      else
      begin
        ACBrNFe1.NotasFiscais.GravarXML(QyConfigSistema.FieldByName('NFE_PASTAXML').AsString + '\-Nfe.xml');
        ACBrNFe1.NotasFiscais.LoadFromFile(QyConfigSistema.FieldByName('NFE_PASTAXML').AsString + '\-Nfe.xml');
        ACBrNFe1.NotasFiscais.Imprimir;
        Exit;
      end;

      if ACBrNFe1.WebServices.Retorno.cStat = 100 then
      begin
        QyNFEntrada.Edit;
        QyNFEntrada.FieldByName('PROTOCOLONFE').AsString    := ACBrNFe1.WebServices.Retorno.Protocolo;
        QyNFEntrada.FieldByName('CHAVENFE').AsString        := ACBrNFe1.WebServices.Retorno.ChaveNFe;
        QyNFEntrada.FieldByName('SITUACAO').AsString        := 'NE';
        QyNFEntrada.FieldByName('MODELO_NFE').AsString      := QyConfigSistema.FieldByName('NFE_MODELO').AsString;
        QyNFEntrada.FieldByName('SERIE_NFE').AsString       := QyConfigSistema.FieldByName('NFE_SERIE').AsString;
        QyNFEntrada.FieldByName('FINALIDADENFE').AsInteger  := frmDadosAdicionais.cbbFINALIDADE.ItemIndex+1;

        try
          TBlobField(QyNFEntrada.FieldByName('XMLNFE')).LoadFromFile(QyConfigSistema.FieldByName('NFE_PASTAXML').AsString +'\' + CNPJEstabelecimento + '\' + FormatDateTime('YYYYMM',NOW) + '\'  + ACBrNFe1.WebServices.Retorno.ChaveNFe +'-nfe.xml');
        except
        end;
        QyNFEntrada.Post;
        QyNFEntrada.ApplyUpdates;

        QySQL.Close;
        QySQL.SQL.Clear;
        QySQL.SQL.Add('SELECT * FROM SEQUENCIAL WHERE TABELA = "notafiscal" ');
        QySQL.SQL.Add('AND ID_FILIAL=:pID_FILIAL');
        QySQL.ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
        QySQL.Open;
        QySQL.Edit;
        QySQL.FieldByName('ID').AsInteger := pNumNfe +1;
        QySQL.Post;
        ACBrNFe1.NotasFiscais.Imprimir;
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end;
  end
end;

function TransmitirNFeSaida(pID_VENDA, NumeroNFE,Estabelecimento : Integer ; Visualiza : Boolean; const NFCe: Boolean = false ) : Boolean;
var
 ViItem: Integer;
 OK: Boolean;
 VrICMS, VrBCICMS, VrIPI: Currency;
 VrICMSST, VrBCICMSST, vr1, vr2: Currency;
 VrPis, VrCOFINS: Currency;
 vID_VENDA: Integer;
 pDESCONTO : Extended;
 vDESCONTO : Extended;
 Vteste: Extended;
 vsNS : string;
 vrFCPUFDest :Extended;
 vrICMSUFDest :Extended;
 vrICMSUFRemet :Extended;
 vraux : Currency;
 teste : Double;
 vsaux : TStringBuilder;
 vrSN, vrSoma : Extended;
 statusNFe: Integer;
label tentar;

begin
  statusNFe:=0;
  vrSN := 0;
  vraux:=0;
  vrFCPUFDest := 0;
  vrICMSUFDest := 0;
  vrICMSUFRemet := 0;
  vsNS := '';
  VrPis := 0;
  VrCOFINS:=0;
  Vteste:=0;
  pDESCONTO:= 0;
  vDESCONTO := 0;
  vID_VENDA:=0;
  VrICMS := 0;
  VrBCICMSST := 0;
  VrICMSST := 0;
  vr1:= 0;
  vr2:=0;

  with DmAcesso do
  begin
    begin
      with QyVENDA do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM VENDA WHERE ID=:pID_VENDA');
        ParamByName('pID_VENDA').AsInteger := pID_VENDA;
        Open;
      end;

       InicializaNFe;

      //************************************************************
      // Data: 17-07-2012
      // Autor: Janilson Varela
      // Descrição: Carrega os principais dados do cliente para emissao da nfe
      //************************************************************
      with QyCliente DO
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT M.NOME NOME_MUNICIPIO, M.ID_IBGE IBGE_MUNICIPIO, ');
        SQL.Add('E.ID_IBGE IBGE_ESTADO, E.SIGLA UF, ');
        SQL.Add('P.ID_IBGE IBGE_PAIS, P.NOME NOME_PAIS, ');
        SQL.Add('C.* ');
        SQL.Add('FROM CONTATO C ');
        SQL.Add('INNER JOIN MUNICIPIO M ON M.ID = C.ID_MUNICIPIO ');
        SQL.Add('INNER JOIN ESTADO E ON E.ID = M.ID_ESTADO ');
        SQL.Add('INNER JOIN PAIS P ON P.ID = E.ID_PAIS ');
        SQL.Add('WHERE C.ID=:pID_CONTATO');
        ParamByName('pID_CONTATO').AsInteger := QyVENDA.FieldByName('ID_CONTATO').AsInteger;
        Open;
      end;

      vID_VENDA :=QyVENDA.FieldByName('ID_CONTATO').AsInteger;
      //************************************************************
      // Data: 17-07-2012
      // Autor: Janilson Varela
      // Descrição: Carrega dados necessarios da filial para emissao da nfe
      //************************************************************

      with QyEmissorNFe do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT F.DOCUMENTO, F.INSC_ESTADUAL, F.INSC_MUNICIPAL, ');
        SQL.Add('F.CNAE, F.INSC_ESTADUAL_ST, F.NOME, F.FANTASIA, ');
        SQL.Add('F.TELEFONE, F.CEP, F.ENDERECO, F.NUMERO, F.COMPLEMENTO, ');
        SQL.Add('F.BAIRRO, M.ID_IBGE IBGE_MUNICIPIO , M.NOME NOME_MUNICIPIO, ');
        SQL.Add('E.SIGLA UF, ');
        SQL.Add('P.ID_IBGE IBGE_PAIS, P.NOME NOME_PAIS ');
        SQL.Add('FROM FILIAL F ');
        SQL.Add('INNER JOIN MUNICIPIO M ON M.ID=F.ID_MUNICIPIO ');
        SQL.Add('INNER JOIN ESTADO E ON E.ID = M.ID_ESTADO ');
        SQL.Add('INNER JOIN PAIS P ON P.ID = E.ID_PAIS ');
        SQL.Add('WHERE F.ID =:pID_FILIAL');
        ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
        Open;
      end;
      Application.CreateForm(TfrmDadosAdicionais,frmDadosAdicionais);
      frmDadosAdicionais.Tag := QyVENDA.FieldByName('ID').AsInteger;

      if Visualiza then begin
        frmDadosAdicionais.Caption := 'PRÉ-VISUALIZAR NOTA FISCAL';
        frmDadosAdicionais.mmoDadosAdicionais.Lines.Add('Pré-visualização de nota fiscal');
        frmDadosAdicionais.mmoDadosAdicionais.Lines.Add('Sem valor fiscal');
      end
      else
      begin
        frmDadosAdicionais.Caption := 'Pedido: ' + IntToStr(pID_VENDA) + '  Cliente: ' + QyCliente.FieldByName('NOME').AsString;

      end;

      if QyConfigSistema.FieldByName('NFE_INFO_CFOP').AsInteger = 1 then
      begin
        frmDadosAdicionais.edtCFOP.Enabled := False;
        frmDadosAdicionais.btnCFOP.Enabled := False;
      end
      else
      begin
        frmDadosAdicionais.edtCFOP.Enabled := True;
        frmDadosAdicionais.btnCFOP.Enabled := True;
      end;

      frmDadosAdicionais.mmoDadosAdicionais.Text :=  QyConfigSistema.FieldByName('NFE_DADOSADICIONAIS').AsString;

      if (Trim(QyVENDA.FieldByName('OBSERVACAO').AsString) <> '') then
      begin
        frmDadosAdicionais.mmoDadosAdicionais.Text :=
          frmDadosAdicionais.mmoDadosAdicionais.Text + ' ' +
          Trim(QyVENDA.FieldByName('OBSERVACAO').AsString);
      end;

      frmDadosAdicionais.cbbTIPODOCUMENTO.ItemIndex := 1;


      with QySEQ do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM SEQUENCIAL WHERE ID_FILIAL=:pID_FILIAL AND TABELA=:pTABELA');
        ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
        ParamByName('pTABELA').AsString := 'notafiscal';
        Open;

        if IsEmpty then
        begin
          Edit;
          FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
          FieldByName('ID').AsInteger := 1;
          FieldByName('TABELA').AsString := 'notafiscal';
          Post;
          ApplyUpdates;
          frmDadosAdicionais.edtNumeroNFe.Text:='1';
        end

        else
        begin
          frmDadosAdicionais.edtNumeroNFe.Text := QySEQ.FieldByName('ID').AsString;
        end;
      end;

      if ACBrNFe1.DANFE <> nil then
      begin
        if  QyConfigSistema.FieldByName('NFE_DANFE').AsInteger = 1 then
          frmDadosAdicionais.cbbTIPOIMPRESSAO.ItemIndex := 0
        else
           frmDadosAdicionais.cbbTIPOIMPRESSAO.ItemIndex := 1;

        ACBrNFe1.DANFE.Logo       := QyConfigSistema.FieldByName('NFE_LOGOMARCA').AsString
      end;


      if QyConfigSistema.FieldByName('NFE_EXIBEIMPOSTOSNDA').AsInteger = 1 then
      begin
        if not QySN.IsEmpty then
        begin
          if QySN.FieldByName('ALIQUOTA_SN').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_SN',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('ALIQUOTA_SN').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_SN', FormatFloat('R$ #,##0.00',QySN.FieldByName('ALIQUOTA_SN').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_SN', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;

          if QySN.FieldByName('VL_IRPJ').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_IRPJ',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('VL_IRPJ').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_IRPJ', FormatFloat('R$ #,##0.00',QySN.FieldByName('VL_IRPJ').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_IRPJ', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;

          if QySN.FieldByName('VL_CSLL').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_CSLL',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('VL_CSLL').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_CSLL', FormatFloat('R$ #,##0.00',QySN.FieldByName('VL_CSLL').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_CSLL', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;

          if QySN.FieldByName('VL_COFINS').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_COFINS',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('VL_COFINS').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_COFINS', FormatFloat('R$ #,##0.00',QySN.FieldByName('VL_COFINS').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_COFINS', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;

          if QySN.FieldByName('VL_PIS').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_PIS',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('VL_PIS').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_PIS', FormatFloat('R$ #,##0.00',QySN.FieldByName('VL_PIS').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_PIS', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;

          if QySN.FieldByName('VL_CPP').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_CPP',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('VL_CPP').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_CPP', FormatFloat('R$ #,##0.00',QySN.FieldByName('VL_CPP').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_CPP', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;

          if QySN.FieldByName('VL_ICMS').AsFloat >0 then
          begin
            if Pos('#ALIQUOTA_ICMS',frmDadosAdicionais.mmoDadosAdicionais.Text)>0 then
            begin
              vrSN := (QyVENDA.FieldByName('TOTAL').AsFloat * (QySN.FieldByName('VL_ICMS').AsFloat/100));
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#ALIQUOTA_ICMS', FormatFloat('R$ #,##0.00',QySN.FieldByName('VL_ICMS').AsFloat ), [rfReplaceAll]);
              frmDadosAdicionais.mmoDadosAdicionais.Text:=StringReplace(frmDadosAdicionais.mmoDadosAdicionais.Text,'#VALOR_ICMS', FormatFloat('R$ #,##0.00',vrSN ), [rfReplaceAll]);
            end;
          end;
        end;
      end;

      frmDadosAdicionais.edtCFOP.Text := QyConfigSistema.FieldByName('DEFAULT_VENDA_CFOP').AsString;

      if QyCliente.FieldByName('UF').AsString <> QyEmissorNFe.FieldByName('UF').AsString then
        frmDadosAdicionais.edtCFOP.Text :=  StringReplace(frmDadosAdicionais.edtCFOP.Text,Copy(frmDadosAdicionais.edtCFOP.Text,1,1),'6',[rfReplaceAll]);



      frmDadosAdicionais.edtdescricaoCFOP.Text := Copy(QyConfigSistema.FieldByName('DEFAULT_VENDA_CFOP_DESCRICAO').AsString,1,60);
      frmDadosAdicionais.edtEspecie.Text := QyConfigSistema.FieldByName('NFE_ENVIO_ESPECIE').AsString;
      frmDadosAdicionais.edtMarca.Text :=QyConfigSistema.FieldByName('NFE_ENVIO_MARCA').AsString;

//      with QySQL do
//      begin
//        Close;
//        sql.Clear;
//        SQL.Add('SELECT SUM(QUANTIDADE*PESOLIQUIDO) AS TPL, SUM(QUANTIDADE*PESOBRUTO) AS TPB FROM DETALHE_VENDA ');
//        SQL.Add('INNER JOIN PRODUTO ON PRODUTO.ID=DETALHE_VENDA.ID_PRODUTO ');
//        sql.Add('WHERE DETALHE_VENDA.ID_VENDA =:pPedido ');
//        ParamByName('pPedido').AsInteger := pID_VENDA;
//        Open;
//        if not IsEmpty then
//        begin
//          frmDadosAdicionais.edtClcPBruto.Value := FieldByName('TPB').AsFloat;
//          frmDadosAdicionais.edtClcPLiquido.Value := FieldByName('TPL').AsFloat;
//        end;
//        QySQL.Close;
//      end;

      if ( Trim(QyVENDA.FieldByName('PED_ECO').AsString) <> '') then
      begin

        if (trim(frmDadosAdicionais.mmoDadosAdicionais.Text) = '') then
          frmDadosAdicionais.mmoDadosAdicionais.Text := frmDadosAdicionais.mmoDadosAdicionais.Text + 'Nº ' +
            QyVENDA.FieldByName('PED_ECO').AsString
        else
          frmDadosAdicionais.mmoDadosAdicionais.Text := frmDadosAdicionais.mmoDadosAdicionais.Text + #13 + 'Nº ' +
            QyVENDA.FieldByName('PED_ECO').AsString
      end;

      frmDadosAdicionais.ShowModal;

      NumeroNFe := StrToInt(frmDadosAdicionais.edtNumeroNFe.Text);
      if frmDadosAdicionais.ModalResult <> mrOk then
      begin
        Result := False;
       exit;
      end;

//      if frmDadosAdicionais.edtRazao.Text <> '' then
//        frmDadosAdicionais.qyTransportador.ApplyUpdates;

      if frmDadosAdicionais.cbbTIPOIMPRESSAO.ItemIndex = 0 then
        ACBrNFe1.DANFE.TipoDANFE := tiRetrato
      else
        ACBrNFe1.DANFE.TipoDANFE := tiPaisagem;

      ACBrNFe1.NotasFiscais.Clear;
      with ACBrNFe1.NotasFiscais.Add.NFe  do
      begin
        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Identificacao da NFe
        //************************************************************

        Ide.cNF       := NumeroNFe+1;
        Ide.natOp     := TiraAcentos(Copy(frmDadosAdicionais.edtdescricaoCFOP.Text,1,60));
        Ide.indFinal  := cfNao;
        Ide.indPres   := pcNao;

        //fatura/duplicata
        QyFaturaNFe.Close;
        QyFaturaNFe.SQL.Clear;
        QyFaturaNFe.SQL.Add('SELECT CP.TIPO_PAGAMENTO, ID_VENDA , VENCIMENTO, VALOR, DOCUMENTO, PARCELA FROM LANCAMENTO ');
        QyFaturaNFe.SQL.Add('INNER JOIN CONDICAOPAGAMENTO CP ON CP.ID=LANCAMENTO.ID_CONDICAOPAGAMENTO');
        QyFaturaNFe.SQL.Add('WHERE ID_VENDA=:pID_VENDA AND LANCAMENTO.PARCELA>0');
        QyFaturaNFe.ParamByName('pID_VENDA').AsInteger:= QyVENDA.FieldByName('ID').AsInteger;
        QyFaturaNFe.SQL.Add('ORDER BY PARCELA ');
        QyFaturaNFe.Open;


        if frmDadosAdicionais.cbbFINALIDADE.ItemIndex = 3 then //devolucao
          Ide.indPag    := ipNenhum
        else
        begin
          if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'AV') then
            Ide.indPag    := ipVista
          else
            Ide.indPag    := ipPrazo;
        end;

        Ide.modelo    := QyConfigSistema.FieldByName('NFE_MODELO').AsInteger;
        Ide.serie     := QyConfigSistema.FieldByName('NFE_SERIE').AsInteger;
        Ide.nNF       := NumeroNFe;
        Ide.dEmi      := frmDadosAdicionais.dtpDTEmissao.Date;
        Ide.dSaiEnt   := frmDadosAdicionais.dtpDTSaida.DateTime;

        if frmDadosAdicionais.cbbTIPODOCUMENTO.ItemIndex = 1 then
          Ide.tpNF      := tnSaida
        else if frmDadosAdicionais.cbbTIPODOCUMENTO.ItemIndex = 0 then
          Ide.tpNF      := tnEntrada;


        case QyConfigSistema.FieldByName('NFE_FORMAEMISSAO').AsInteger of
          1: Ide.tpEmis    := teNormal;
          2: Ide.tpEmis    := teContingencia;
          3: Ide.tpEmis    := teSCAN;
          4: Ide.tpEmis    := teDPEC;
          5: Ide.tpEmis    := teFSDA;
        end;

        if QyConfigSistema.FieldByName('NFE_WEBSERVICE_AMBIENTE').AsInteger = 0 then
          Ide.tpAmb     :=  taProducao
        else
        begin
          Ide.tpAmb     :=  taHomologacao;
        end;

        Ide.verProc   := 'Kronos-2019'; //Versão do seu sistema

        Ide.cUF       := UFtoCUF(QyEmissorNFe.FieldByName('UF').AsString);
        if Trim(QyCliente.FieldByName('UF').AsString) <> Trim(QyEmissorNFe.FieldByName('UF').AsString) then
          Ide.idDest := doInterestadual
        else
          Ide.idDest := doInterna;


        Ide.cMunFG    := QyEmissorNFe.FieldByName('IBGE_MUNICIPIO').AsInteger;

        case frmDadosAdicionais.cbbFINALIDADE.ItemIndex of
          0: Ide.finNFe    := fnNormal;
          1: Ide.finNFe    := fnComplementar;
          2: Ide.finNFe    := fnAjuste;
          3: Ide.finNFe    := fnDevolucao;
        end;


        if (Trim(frmDadosAdicionais.edtNumeroECF.Text) <> '') and
        (Trim(frmDadosAdicionais.edtNumeroCOO.Text) <> '') then
        begin
          with Ide.NFref.Add.RefECF do
          begin
            modelo :=TpcnECFModRef(frmDadosAdicionais.cbbModeloECF.ItemIndex+1);
            nECF := Trim(frmDadosAdicionais.edtNumeroECF.Text);
            nCOO := Trim(frmDadosAdicionais.edtNumeroCOO.Text);
          end;
        end;

        if Trim(frmDadosAdicionais.edtChave.Text) <> '' then
        begin
          with Ide.NFref.Add do
          begin
            refNFe := frmDadosAdicionais.edtChave.Text;
          end;
        end;

        if Trim(frmDadosAdicionais.edtChaveCTe.Text) <> '' then
        begin
          with Ide.NFref.Add do
          begin

            refCTe := frmDadosAdicionais.edtChaveCTe.Text;
          end;
        end;

        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Identificação do Emitente
        //************************************************************

        Emit.CNPJCPF           := QyEmissorNFe.FieldByName('DOCUMENTO').AsString;

        if QyEmissorNFe.FieldByName('INSC_ESTADUAL').AsString = '' then
        begin
          Application.MessageBox('Informe a Insc. Estadual do Emitente da NF-e',NOME_SISTEMA,16);
          Exit;
        end
        else
        begin
          Emit.IE              := QyEmissorNFe.FieldByName('INSC_ESTADUAL').AsString;
        end;


        Emit.xNome             := QyEmissorNFe.FieldByName('NOME').AsString;
        Emit.xFant             := QyEmissorNFe.FieldByName('FANTASIA').AsString;

        //ENDEREÇO
        Emit.EnderEmit.fone    := QyEmissorNFe.FieldByName('TELEFONE').AsString;;
        Emit.EnderEmit.CEP     := QyEmissorNFe.FieldByName('CEP').AsInteger;
        Emit.EnderEmit.xLgr    := QyEmissorNFe.FieldByName('ENDERECO').AsString;
        Emit.EnderEmit.nro     := QyEmissorNFe.FieldByName('NUMERO').AsString;
        Emit.EnderEmit.xCpl    := QyEmissorNFe.FieldByName('COMPLEMENTO').AsString;
        Emit.EnderEmit.xBairro := QyEmissorNFe.FieldByName('BAIRRO').AsString;
        Emit.EnderEmit.cMun    := QyEmissorNFe.FieldByName('IBGE_MUNICIPIO').AsInteger;
        Emit.EnderEmit.xMun    := QyEmissorNFe.FieldByName('NOME_MUNICIPIO').AsString;
        Emit.EnderEmit.UF      := QyEmissorNFe.FieldByName('UF').AsString;
        Emit.enderEmit.cPais   := QyEmissorNFe.FieldByName('IBGE_PAIS').AsInteger;
        Emit.enderEmit.xPais   := QyEmissorNFe.FieldByName('NOME_PAIS').AsString;
        Emit.IEST              := QyEmissorNFe.FieldByName('INSC_ESTADUAL_ST').AsString;
        Emit.IM                := QyEmissorNFe.FieldByName('INSC_MUNICIPAL').AsString;
        Emit.CNAE              := QyEmissorNFe.FieldByName('CNAE').AsString;

        case QyConfigSistema.FieldByName('NFE_WEBSERVICE_REGIMETRIBUTARIO').AsInteger of
          1: Emit.CRT               :=  crtSimplesNacional;
          2: Emit.CRT               :=  crtSimplesExcessoReceita;
          3: Emit.CRT               :=  crtRegimeNormal;
        end;

        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Dados do Destinatario da NF-e
        // 29140433846
        //************************************************************

        Dest.CNPJCPF           := QyCliente.FieldByName('DOCUMENTO').AsString;
        if Length(Dest.CNPJCPF) >=  11 then //cnpj
        begin
          if Trim(QyCliente.FieldByName('INSC_ESTADUAL').AsString) = 'ISENTO' then
            Dest.indIEDest := inIsento
          else if Trim(QyCliente.FieldByName('INSC_ESTADUAL').AsString) = 'NC' then begin
            Dest.indIEDest := inNaoContribuinte;
            Ide.indFinal := cfConsumidorFinal;
          end
          else
          begin
            if QyCliente.FieldByName('INSC_ESTADUAL').AsString = '' then
            begin
              Dest.indIEDest := inNaoContribuinte;
              Ide.indFinal := cfConsumidorFinal;
            end
            else
            begin
              Dest.IE                := QyCliente.FieldByName('INSC_ESTADUAL').AsString;
              Dest.indIEDest := inContribuinte;
              Ide.indFinal := cfNao;
            end;
          end;
        end
        else
        begin
          Dest.indIEDest := inNaoContribuinte;
          Ide.indFinal := cfConsumidorFinal;
        end;


        Dest.xNome             := TiraAcentos(QyCliente.FieldByName('NOME').AsString);
        Dest.Email             := QyCliente.FieldByName('EMAIL').AsString;
        Dest.EnderDest.Fone    := QyCliente.FieldByName('TELEFONE').AsString;

        if QyCliente.FieldByName('CEP').AsString = '' then
        begin
          Application.MessageBox('CEP do cliente não informado', NOME_SISTEMA,16);
          Exit;
        end
        else
        begin
          if Length(QyCliente.FieldByName('CEP').AsString) < 8 then
            raise Exception.Create('CEP Invalido ou não informado. Ajuste no cadastro do cliente.')
          else
            Dest.EnderDest.CEP     := QyCliente.FieldByName('CEP').AsInteger;
        end;

        if trim(TiraAcentos(QyCliente.FieldByName('ENDERECO').AsString)) = '' then
          raise Exception.Create('Informe endereço do cliente.');

        if trim(QyCliente.FieldByName('NUMERO').AsString) = '' then
          raise Exception.Create('Informe o número do endereço ou SN caso não exista.');

        if trim(QyCliente.FieldByName('BAIRRO').AsString) = '' then
          raise Exception.Create('Informe bairro do endereço do cliente.');


        Dest.EnderDest.xLgr    := TiraAcentos(QyCliente.FieldByName('ENDERECO').AsString);
        Dest.EnderDest.nro     := QyCliente.FieldByName('NUMERO').AsString;
        Dest.EnderDest.xCpl    := TiraAcentos(QyCliente.FieldByName('COMPLEMENTO').AsString);
        Dest.EnderDest.xBairro := QyCliente.FieldByName('BAIRRO').AsString;
        Dest.EnderDest.cMun    := QyCliente.FieldByName('IBGE_MUNICIPIO').AsInteger;
        Dest.EnderDest.xMun    := QyCliente.FieldByName('NOME_MUNICIPIO').AsString;
        Dest.EnderDest.UF      := QyCliente.FieldByName('UF').AsString;
        Dest.EnderDest.cPais   := QyCliente.FieldByName('IBGE_PAIS').AsInteger;
        Dest.EnderDest.xPais   := QyCliente.FieldByName('NOME_PAIS').AsString;

        if frmDadosAdicionais.chkLocalEntrega.Checked then
        begin
          with Entrega do
          begin
            if (Trim(frmDadosAdicionais.lbledtEECPFCNPJ.Text) <> '')
              and (Trim(frmDadosAdicionais.lbledtLEEndereco.Text) <> '')
              and (trim(frmDadosAdicionais.lbledtEENumero.Text) <> '')
              and (Trim(frmDadosAdicionais.lbledtEEBairro.Text) <> '' )
            then
            begin
              CNPJCPF   := frmDadosAdicionais.lbledtEECPFCNPJ.Text;
              xLgr      := frmDadosAdicionais.lbledtLEEndereco.Text;
              nro       := frmDadosAdicionais.lbledtEENumero.Text;
              xCpl      := frmDadosAdicionais.lbledtEEComplemento.Text;
              xBairro   := frmDadosAdicionais.lbledtEEBairro.Text;
             // cMun      := frmDadosAdicionais.cdsMunicipio.FieldByName('ID_IBGE').AsInteger;
              xMun      := frmDadosAdicionais.dblkcbbEEID_MUNICIPIO.Text;
              UF        := frmDadosAdicionais.dblkcbbEEID_ESTADO.Text;
            end;
          end;
        end;


        if frmDadosAdicionais.chkLocalRetirada.Checked then
        begin
          with Retirada do begin
            if (Trim(frmDadosAdicionais.lbledtLRCPFCNPJ.Text) <> '')
              and (Trim(frmDadosAdicionais.lbledtLRENDERECO.Text) <> '')
              and (trim(frmDadosAdicionais.lbledtLRNUMERO.Text) <> '')
              and (Trim(frmDadosAdicionais.lbledtLRBAIRRO.Text) <> '' )
            then begin
              CNPJCPF   := frmDadosAdicionais.lbledtLRCPFCNPJ.Text;
              xLgr      := frmDadosAdicionais.lbledtLRENDERECO.Text;
              nro       := frmDadosAdicionais.lbledtLRNUMERO.Text;
              xCpl      := frmDadosAdicionais.lbledtLRCOMPLEMENTO.Text;
              xBairro   := frmDadosAdicionais.lbledtLRBAIRRO.Text;
              //cMun      := frmDadosAdicionais.cdsMunicipioLR.FieldByName('ID_IBGE').AsInteger;
              xMun      := frmDadosAdicionais.dblkcbbLRID_MUNICIPIO.Text;
              UF        := frmDadosAdicionais.dblkcbbLRID_ESTADO.Text;
            end;
          end;
        end;

        with autXML.Add do
        begin
          CNPJCPF := '13937073000156';
        end;

        //************************************************************
        // Data: 17-07-2012
        // Autor: Janilson Varela
        // Descrição: Item da NF-e
        //************************************************************
        with QyItemNFe DO
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT P.ID, P.DESCRICAO,  P.GTIN,  P.CODIGO_INTERNO, P.NCM, P.DESCRICAO_TECNICA, ');
          SQL.Add('GP.NCM NCMGRUPO, U.CODIGO COD_UNIDADE, DV.ID_PRODUTO, DV.ID_CFOP, DV.ITEM,');
          sql.Add('case DV.AREA WHEN DV.AREA IS NULL THEN DV.QUANTIDADE ');
          sql.Add('WHEN DV.AREA >= 0.00 THEN DV.QUANTIDADE ELSE DV.AREA END AS QUANTIDADE,');
          SQL.Add('DV.PRECO, DV.SUBTOTAL, DV.DESCONTO, DV.VALOR_FRETE, MARCA.NOME AS NOME_MARCA, ');
          SQL.Add('DV.TOTAL, DV.CSTICMS, DV.ALIQ_ICMS, DV.VALOR_ICMS, DV.CSTIPI, DV.ALIQ_IPI, DV.VALOR_IPI, ');
          SQL.Add('DV.CSTPIS, DV.ALIQ_PIS, DV.VALOR_PIS, DV.CSTCOFINS, DV.ALIQ_COFINS, DV.VALOR_COFINS, ');
          SQL.Add('DV.VALOR_OUTROS, DV.VALOR_SEGURO, DV.INFOADICIONAL, DV.BASE_ICMS,T.* ');
          SQL.Add('FROM DETALHE_VENDA DV ');
          SQL.Add('INNER JOIN PRODUTO P ON P.ID = DV.ID_PRODUTO');
          SQL.Add('INNER JOIN GRUPOPRODUTO GP ON GP.ID= P.ID_GRUPOPRODUTO');
          SQL.Add('INNER JOIN UNIDADE U ON U.ID = P.ID_UNIDADE ');
          sql.Add('LEFT JOIN MARCA ON MARCA.ID = P.ID_MARCA ');

          SQL.Add('INNER JOIN TRIBUTACAO_PRODUTO TP ON TP.ID_PRODUTO=P.ID AND TP.ID_FILIAL=:pID_FILIAL');
          SQL.Add('INNER JOIN TRIBUTACAO T ON T.ID = TP.ID_TRIBUTACAO ');

          SQL.Add('WHERE DV.ID_VENDA=:pID_VENDA');
          SQL.Add(' AND DV.ID_FILIAL=:pID_FILIAL');
          SQL.Add(' AND DV.ITEM_SERVICO = "N" ');
          ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
          ParamByName('pID_VENDA').AsInteger  := QyVENDA.FieldByName('ID').AsInteger;

          if QyConfigSistema.FieldByName('VENDA_ORDEM_ITEM').AsInteger = 0 then
            SQL.Add('ORDER BY P.DESCRICAO')
          else
            SQL.Add('ORDER BY DV.ITEM');

          Open;
        end;

        ViItem := 1;
        while not QyItemNFe.Eof do
        begin
          with Det.Add do
          begin
            Prod.nItem    := ViItem;
//            Prod.cProd    := QyVenda_detalhe.FieldByName('CODIGO_INTERNO').AsString;
            Prod.cProd    := QyItemNFe.FieldByName('ID').AsString;
            Prod.xProd    := TiraAcentos(QyItemNFe.FieldByName('DESCRICAO').AsString);

            if ACBrNFe1.Configuracoes.Geral.VersaoDF = ve400 then
            begin
              if QyConfigSistema.FieldByName('NFE_CEAN').AsInteger = 1 then
              begin
                Prod.cEAN     := trim(QyItemNFe.FieldByName('GTIN').AsString);
                Prod.cEANTrib := trim(QyItemNFe.FieldByName('GTIN').AsString);

                if (Length(trim(QyItemNFe.FieldByName('GTIN').AsString)) <8)  or
                 ( Length(trim(QyItemNFe.FieldByName('GTIN').AsString)) > 14) then
                begin
                  raise Exception.Create('Tamanho do GTIN/EAN Invalido.' + #13+
                  'Codigo: '+ Prod.cProd + #13+
                  'Produto: ' +Prod.xProd
                   );
                end;
              end
              else
              begin
                Prod.cEAN     :=  'SEM GTIN';
                Prod.cEANTrib := 'SEM GTIN';
              end;
            end;

            if ACBrNFe1.Configuracoes.Geral.VersaoDF = ve310 then
            begin
              if QyConfigSistema.FieldByName('NFE_CEAN').AsInteger = 1 then
              begin
                if (trim(QyItemNFe.FieldByName('GTIN').AsString) <> '' ) and
                ( Length(trim(QyItemNFe.FieldByName('GTIN').AsString))>=8 ) and
                ( Length(trim(QyItemNFe.FieldByName('GTIN').AsString))<=4 )
                then
                begin
                  Prod.cEAN     := trim(QyItemNFe.FieldByName('GTIN').AsString);
                  Prod.cEANTrib := trim(QyItemNFe.FieldByName('GTIN').AsString);
                end
                else
                begin
                  Prod.cEAN     := '';
                  Prod.cEANTrib := '';
                end;
              end
              else
              begin
                Prod.cEAN     := '';
                Prod.cEANTrib := '';
              end;
            end;


            Prod.EXTIPI   := '';
            Prod.uCom     := QyItemNFe.FieldByName('COD_UNIDADE').AsString;

            Prod.vProd    := QyItemNFe.FieldByName('TOTAL').AsFloat;

            Prod.uTrib    := QyItemNFe.FieldByName('COD_UNIDADE').AsString;
            Prod.qCom     := QyItemNFe.FieldByName('QUANTIDADE').AsFloat;
            Prod.qTrib    := QyItemNFe.FieldByName('QUANTIDADE').AsCurrency;

            Prod.vFrete   := QyItemNFe.FieldByName('VALOR_FRETE').AsFloat;
            Prod.vSeg     := QyItemNFe.FieldByName('VALOR_SEGURO').AsFloat;

            Prod.IndTot   := itSomaTotalNFe;

//            Prod.CEST := '';
            if QyConfigSistema.FieldByName('NFE_NCMGRUPO').AsInteger = 1 then  // ncm por grupo
            begin
              if QyItemNFe.FieldByName('NCMGRUPO').AsString = '' then
                Prod.NCM  := '11'
              else
                Prod.NCM  := QyItemNFe.FieldByName('NCMGRUPO').AsString;
            end
            else
            begin
              if QyItemNFe.FieldByName('NCM').AsString = '' then
                Prod.NCM  := '11'
              else
                Prod.NCM  := QyItemNFe.FieldByName('NCM').AsString;
            end;

            if QyConfigSistema.FieldByName('NFE_CEST').AsInteger = 1 then  // Utiliza CEST?
            begin
            //  prod.CEST := getCest(Prod.NCM);
            end;

            if (Trim(frmDadosAdicionais.edtCFOP.Text) <> '') and (frmDadosAdicionais.edtCFOP.Enabled)  then
              Prod.CFOP   := Trim(frmDadosAdicionais.edtCFOP.Text)
            else
              Prod.CFOP   := QyItemNFe.FieldByName('ID_CFOP').AsString;


            if QyVENDA.FieldByName('DESCONTO').AsFloat > 0 then
            begin
              pDESCONTO := QyVENDA.FieldByName('DESCONTO').AsFloat /
                QyVENDA.FieldByName('SUBTOTAL').AsFloat;

              vDESCONTO :=  QyItemNFe.FieldByName('TOTAL').AsFloat *pDESCONTO;
              Prod.vUnCom   := QyItemNFe.FieldByName('TOTAL').AsFloat /QyItemNFe.FieldByName('QUANTIDADE').AsFloat;

            end
            else
            begin
              if QyItemNFe.FieldByName('DESCONTO').AsFloat > 0 then
                 Prod.vUnCom := QyItemNFe.FieldByName('TOTAL').AsFloat /QyItemNFe.FieldByName('QUANTIDADE').AsFloat
              else
                Prod.vUnCom   := QyItemNFe.FieldByName('PRECO').AsFloat;
            end;
            Prod.vDesc    := vDESCONTO;
            Prod.vUnTrib  := Prod.vUnCom; //NAO RETIRAR DAQUI

            if Trim(QyItemNFe.FieldByName('INFOADICIONAL').AsString) <> '' then
            begin
              infAdProd:= TiraAcentos(Trim(QyItemNFe.FieldByName('INFOADICIONAL').AsString));
            end
            else
            begin
              if Trim(QyItemNFe.FieldByName('DESCRICAO_TECNICA').AsString) <> '' then
                infAdProd:= TiraAcentos(Trim(QyItemNFe.FieldByName('DESCRICAO_TECNICA').AsString));
            end;

            with Imposto do
            begin
              with ICMS do
              begin
                if QyItemNFe.FieldByName('CRT').AsInteger = 1 then //SIMPLES NACIONAL
                begin
                  if QyItemNFe.FieldByName('CSOSN').AsInteger = 101 then
                  begin
                    orig  := TpcnOrigemMercadoria(QyItemNFe.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyItemNFe.FieldByName('CSOSN').AsInteger));
                    pCredSN := QyItemNFe.FieldByName('PCREDSN').AsCurrency;
                    vCredICMSSN:=((QyItemNFe.FieldByName('TOTAL').AsFloat*
                    QyItemNFe.FieldByName('PCREDSN').AsCurrency)/100);

                    if (Ide.indFinal = cfConsumidorFinal) and  (Ide.idDest = doInterestadual) then
                    begin

                      with QyTabelaICMS do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('SELECT * FROM TABELAICMS WHERE UF=:p');
                        ParamByName('p').AsString := Dest.EnderDest.UF;
                        open;
                      end;
                      with ICMSUFDest do
                      begin
                        vBCUFDest       := QyItemNFe.FieldByName('TOTAL').AsFloat;
                        pFCPUFDest      := QyTabelaICMS.FieldByName('PFCPUFDEST').AsFloat;  //1; //perc. combate a fome no estado de destino
                        pICMSUFDest     := QyTabelaICMS.FieldByName('ICMSINTERNO').AsFloat;//7; //aliq icms praticado no estado de destino
                        pICMSInter      := QyTabelaICMS.FieldByName('ICMSDESTINO').AsFloat;//12;

                        vraux := (pICMSUFDest -pICMSInter)/100;

                        pICMSInterPart  := QyTabelaICMS.FieldByName('PFCPUFPARTILHA').AsFloat;
                        vFCPUFDest      := RoundABNT((pFCPUFDest/100) * QyItemNFe.FieldByName('TOTAL').AsFloat,2); //valor    pFCPUFDest *  QyItemNFe.FieldByName('TOTAL').AsFloat

                        vrFCPUFDest := vrFCPUFDest + vFCPUFDest;
                        vrICMSUFDest := 0;
                        vrICMSUFRemet := 0;
                      end;
                    end;
                  end
                  else
                  if (QyItemNFe.FieldByName('CSOSN').AsInteger = 102) or
                  (QyItemNFe.FieldByName('CSOSN').AsInteger = 103)or
                  (QyItemNFe.FieldByName('CSOSN').AsInteger = 300)or
                  (QyItemNFe.FieldByName('CSOSN').AsInteger = 400)
                  then
                  begin
                    orig  := TpcnOrigemMercadoria(QyItemNFe.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000', QyItemNFe.FieldByName('CSOSN').AsInteger));

                    if (Ide.indFinal = cfConsumidorFinal) and (QyItemNFe.FieldByName('CSOSN').AsInteger = 102) and
                    (Ide.idDest = doInterestadual) then
                    begin

                      with QyTabelaICMS do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('SELECT * FROM TABELAICMS WHERE UF=:p');
                        ParamByName('p').AsString := Dest.EnderDest.UF;
                        open;
                      end;
                      with ICMSUFDest do
                      begin
                        vBCUFDest       := QyItemNFe.FieldByName('TOTAL').AsFloat;
                        pFCPUFDest      := QyTabelaICMS.FieldByName('PFCPUFDEST').AsFloat;  //1; //perc. combate a fome no estado de destino
                        pICMSUFDest     := QyTabelaICMS.FieldByName('ICMSINTERNO').AsFloat;//7; //aliq icms praticado no estado de destino
                        pICMSInter      := QyTabelaICMS.FieldByName('ICMSDESTINO').AsFloat;//12;
                        vBCFCPUFDest := vBCUFDest;
                        vraux := (pICMSUFDest -pICMSInter)/100;

                        pICMSInterPart  := QyTabelaICMS.FieldByName('PFCPUFPARTILHA').AsFloat;
                        vFCPUFDest      := RoundABNT((pFCPUFDest/100) * QyItemNFe.FieldByName('TOTAL').AsFloat,2); //valor    pFCPUFDest *  QyItemNFe.FieldByName('TOTAL').AsFloat

                        vrFCPUFDest := vrFCPUFDest + vFCPUFDest;

                        vICMSUFDest := vraux*pICMSInterPart;
                        vrICMSUFDest :=vrICMSUFDest+ vICMSUFDest;
                        vrICMSUFRemet := 0;
                        vICMSUFRemet := 0;
                      end;
                       {
                      with ICMSUFDest do
                      begin

                        vBCUFDest       := QyItemNFe.FieldByName('TOTAL').AsFloat;
                        pFCPUFDest      := QyTabelaICMS.FieldByName('PFCPUFDEST').AsFloat;  //1; //perc. combate a fome no estado de destino
                        pICMSUFDest     := QyTabelaICMS.FieldByName('ICMSINTERNO').AsFloat;//7; //aliq icms praticado no estado de destino
                        pICMSInter      := QyTabelaICMS.FieldByName('ICMSDESTINO').AsFloat;//12;

                        vraux := (pICMSUFDest -pICMSInter)/100;

                        pICMSInterPart  := QyTabelaICMS.FieldByName('PFCPUFPARTILHA').AsFloat;;
                        vFCPUFDest      := RoundNum((pFCPUFDest/100) * QyItemNFe.FieldByName('TOTAL').AsFloat,2); //valor    pFCPUFDest *  QyItemNFe.FieldByName('TOTAL').AsFloat

                        vrFCPUFDest := vrFCPUFDest + vFCPUFDest;
                        vrICMSUFDest := 0;
                        vrICMSUFRemet := 0;
                      end

                      }
                    end;
                  end
                  else
                  if (QyItemNFe.FieldByName('CSOSN').AsInteger = 201) then
                  begin
                    orig  := TpcnOrigemMercadoria(QyItemNFe.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyItemNFe.FieldByName('CSOSN').AsInteger));
                    modBCST := StrTomodBCST(OK,QyItemNFe.FieldByName('MODBCST').AsString);
                    pMVAST   := QyItemNFe.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyItemNFe.FieldByName('PREDBCST').AsCurrency;
                    pICMSST   := QyItemNFe.FieldByName('PICMSST').AsCurrency;

                    pCredSN:= QyItemNFe.FieldByName('PCREDSN').AsCurrency;
                    vCredICMSSN :=((QyItemNFe.FieldByName('PCREDSN').AsCurrency) *
                    QyItemNFe.FieldByName('TOTAL').AsFloat/100);

                    VrICMS:=
                      ((QyItemNFe.FieldByName('PCREDSN').AsCurrency) *
                        QyItemNFe.FieldByName('TOTAL').AsFloat/100);

                    VrICMS := 0;


                    //aplicando o pvast (acrescimo)
                    vBCST := QyItemNFe.FieldByName('TOTAL').AsFloat+
                      (QyItemNFe.FieldByName('TOTAL').AsFloat *
                        QyItemNFe.FieldByName('PMVAST').AsCurrency/100 );

                    //percentual de reducao se houver
                    vBCST :=  vBCST- (vBCST  *QyItemNFe.FieldByName('PREDBCST').AsCurrency/100 );

                    vr2 :=  (vBCST * pICMSST)/100;
                    vr1 := (QyItemNFe.FieldByName('TOTAL').AsFloat * pICMSST)/100;

                    vICMSST := (vr2-vr1);

                    VrICMSST:=VrICMSST+vICMSST;
                    VrBCICMSST :=VrBCICMSST+ vBCST;

                  end
                  else
                  if (QyItemNFe.FieldByName('CSOSN').AsInteger = 202) then
                  begin
                    Application.MessageBox('Contacte o administrador do sistema.',NOME_SISTEMA,MB_ICONINFORMATION);
                    Exit;

                  end
                  else
                  if (QyItemNFe.FieldByName('CSOSN').AsInteger = 500) then
                  begin
                    orig  := TpcnOrigemMercadoria(QyItemNFe.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyItemNFe.FieldByName('CSOSN').AsInteger));
                    vBCSTRet:=0;  //coloca input para captura o valor infomando a descricao do produto no inputbox
                    vICMSSTRet:=0;
                  end
                  else
                  if (QyItemNFe.FieldByName('CSOSN').AsInteger = 900) then
                  begin
                    orig  := TpcnOrigemMercadoria(QyItemNFe.FieldByName('ORIG').AsInteger);
                    CSOSN :=StrToCSOSNIcms(OK,FormatFloat('000',QyItemNFe.FieldByName('CSOSN').AsInteger));
                    modBCST := StrTomodBCST(OK,QyItemNFe.FieldByName('MODBCST').AsString);
                    pMVAST   := QyItemNFe.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyItemNFe.FieldByName('PREDBCST').AsCurrency;
                    pICMSST   := QyItemNFe.FieldByName('PICMSST').AsCurrency;

                    pCredSN:= QyItemNFe.FieldByName('PCREDSN').AsCurrency;
                    vCredICMSSN :=((QyItemNFe.FieldByName('PCREDSN').AsCurrency) *
                    QyItemNFe.FieldByName('TOTAL').AsFloat/100);

                    VrICMS:=
                    ((QyItemNFe.FieldByName('PCREDSN').AsCurrency) *
                    QyItemNFe.FieldByName('TOTAL').AsFloat/100);

                    vBCST := QyItemNFe.FieldByName('TOTAL').AsFloat+(QyItemNFe.FieldByName('TOTAL').AsFloat*QyItemNFe.FieldByName('PMVAST').AsCurrency/100 );
                    vBCST :=  vBCST- (vBCST*QyItemNFe.FieldByName('PREDBCST').AsCurrency/100 );

                    if vBCST<0 then
                      vBCST := 0;

                    vICMSST :=  (vBCST*QyItemNFe.FieldByName('PICMSST').AsCurrency/100)-vCredICMSSN;

                    if vICMSST<0 then
                      vICMSST := 0;

                    VrICMSST:=VrICMSST+vICMSST;
                    VrBCICMSST :=VrBCICMSST+ vBCST;

                  end
                end
                else  // Regime Tributario Normal
                begin
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 0 then
                  begin
                    //OK
                    orig     := StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST      := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBC    := StrTomodBC(OK,QyItemNFe.FieldByName('MODBC').AsString);

                    if (Ide.indFinal = cfConsumidorFinal) and (QyItemNFe.FieldByName('CSTICMS').AsInteger = 0) and
                    (Ide.idDest = doInterestadual) then
                    begin
                      with QyTabelaICMS do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('SELECT * FROM TABELAICMS WHERE UF=:p');
                        ParamByName('p').AsString := Dest.EnderDest.UF;
                        open;
                      end;

                      Imposto.ICMS.vBC  :=QyItemNFe.FieldByName('TOTAL').AsFloat;
                      Imposto.ICMS.pICMS    := QyTabelaICMS.FieldByName('ICMSDESTINO').AsFloat;
                      Imposto.ICMS.vICMS    := (pICMS/100) *  QyItemNFe.FieldByName('TOTAL').AsFloat;

                      VrBCICMS  := VrBCICMS +Imposto.ICMS.vBC ;
                      VrICMS := VrICMS + Imposto.ICMS.vICMS;

                      with ICMSUFDest do
                      begin
                        vBCUFDest       := QyItemNFe.FieldByName('TOTAL').AsFloat;
                        pFCPUFDest      := QyTabelaICMS.FieldByName('PFCPUFDEST').AsFloat;  //1; //perc. combate a fome no estado de destino
                        pICMSUFDest     := QyTabelaICMS.FieldByName('ICMSINTERNO').AsFloat;//7; //aliq icms praticado no estado de destino
                        pICMSInter      := QyTabelaICMS.FieldByName('ICMSDESTINO').AsFloat;//12;
                        vBCFCPUFDest := vBCUFDest;
                        vraux := (pICMSUFDest -pICMSInter)/100;

                        pICMSInterPart  := QyTabelaICMS.FieldByName('PFCPUFPARTILHA').AsFloat;
                        vFCPUFDest      := RoundABNT((pFCPUFDest/100) * QyItemNFe.FieldByName('TOTAL').AsFloat,2); //valor    pFCPUFDest *  QyItemNFe.FieldByName('TOTAL').AsFloat

                        vrFCPUFDest := vrFCPUFDest + vFCPUFDest;

                        vICMSUFDest := vraux*pICMSInterPart;
                        vrICMSUFDest :=vrICMSUFDest+ vICMSUFDest;
                        vrICMSUFRemet := 0;
                        vICMSUFRemet := 0;
                      end;

                    end
                    else
                    begin
                      vBC  :=QyItemNFe.FieldByName('TOTAL').AsFloat;
                      pICMS    := QyItemNFe.FieldByName('ALIQ_ICMS').AsFloat;
                      vICMS    := QyItemNFe.FieldByName('VALOR_ICMS').AsFloat;
                      VrBCICMS  := VrBCICMS + vBC;
                      VrICMS := VrICMS + vICMS;
                    end;
                  end
                  else
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 10 then
                  begin
                    //OK
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyItemNFe.FieldByName('MODBC').AsString);
                    vBC:=QyItemNFe.FieldByName('BASE_ICMS').AsFloat;
                    pICMS:= QyItemNFe.FieldByName('ALIQ_ICMS').AsFloat;
                    vICMS := QyItemNFe.FieldByName('VALOR_ICMS').AsFloat;
                    modBCST:= StrTomodBCST(OK,QyItemNFe.FieldByName('MODBCST').AsString);
                    pMVAST   := QyItemNFe.FieldByName('PMVAST').AsFloat;
                    pRedBCST := QyItemNFe.FieldByName('PREDBCST').AsFloat;
                    pICMSST   := QyItemNFe.FieldByName('PICMSST').AsFloat;

                    vBCST := vBC +
                    ((vBC * pMVAST)/100);


                    vBCST := vBCST - ((vBCST * pRedBCST) /100);

                    vICMSST := vICMS-((vBCST*pICMSST)/100);

                   VrICMSST := VrICMSST + vICMSST;
                   VrBCICMSST := VrBCICMSST +  vBCST;
                   VrICMS := vricms + vICMS;
                   VrBCICMS :=VrBCICMS +  vBC;
                  end
                  else
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 20 then
                  begin
                    //OK
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyItemNFe.FieldByName('MODBC').AsString);

                    pICMS:= QyItemNFe.FieldByName('PICMS').AsFloat;
                    pRedBC := QyItemNFe.FieldByName('PREDBC').AsFloat;
                    vBC := QyItemNFe.FieldByName('TOTAL').AsFloat;

                    if pRedBC > 0 then
                      vBC := vBC  - (pRedBC * vBC / 100);


                    vICMS := (vBC*pICMS)/100;

                    VrBCICMS  := VrBCICMS + vBC;
                    VrICMS := VrICMS + vICMS;
                  end
                  else
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 30 then
                  begin
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBCST := StrTomodBCST(OK,QyItemNFe.FieldByName('MODBCST').AsString);

                    pMVAST   := QyItemNFe.FieldByName('PMVAST').AsFloat;
                    pRedBCST := QyItemNFe.FieldByName('PREDBCST').AsFloat;
                    pICMSST   := QyItemNFe.FieldByName('PICMSST').AsFloat;
                    vBCST := QyItemNFe.FieldByName('TOTAL').AsFloat;


                    if pmvast > 0  then
                      vBCST := vBCST + ((vBCST * pMVAST)/100);

                    if predbcst>0 then
                      vBCST := vBCST - ((vBCST * pRedBCST) /100);

                    vICMSST := vbcst * picmsst / 100;
                    VrICMSST := VrICMSST+ vICMSST;
                    VrBCICMSST :=  VrBCICMSST + vBCST;
                  end
                  else
                  if (QyItemNFe.FieldByName('CSTICMS').AsInteger = 40) or
                  (QyItemNFe.FieldByName('CSTICMS').AsInteger = 41) or
                  (QyItemNFe.FieldByName('CSTICMS').AsInteger = 50)
                  then
                  begin

                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    motDesICMS:= StrTomotDesICMS(ok,QyItemNFe.FieldByName('MOTDESICMS').AsString);

                  end
                  else
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 51 then
                  begin
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyItemNFe.FieldByName('MODBC').AsString);

                    pICMS:= QyItemNFe.FieldByName('ALIQ_ICMS').AsCurrency;

                    pRedBC := QyItemNFe.FieldByName('PREDBC').AsCurrency;
                    vBC := QyItemNFe.FieldByName('BASE_ICMS').AsFloat -
                    ((QyItemNFe.FieldByName('BASE_ICMS').AsFloat * QyItemNFe.FieldByName('PREDBC').AsCurrency) /100);

                    vICMS := (vBC*pICMS)/100;
                    VrICMS:= VrICMS + vICMS;

                  end
                  else
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 60 then
                  begin
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    vBCSTRet:=0;

                    vICMSSTRet:=0;


                    if (Ide.indFinal = cfConsumidorFinal) and (QyItemNFe.FieldByName('CSTICMS').AsInteger = 60) and
                    (Ide.idDest = doInterestadual) then
                    begin
                      with QyTabelaICMS do
                      begin
                        close;
                        sql.Clear;
                        sql.Add('SELECT * FROM TABELAICMS WHERE UF=:p');
                        ParamByName('p').AsString := Dest.EnderDest.UF;
                        open;
                      end;

                      with ICMSUFDest do
                      begin

                        vBCUFDest       := QyItemNFe.FieldByName('TOTAL').AsFloat;
                        pFCPUFDest      := QyTabelaICMS.FieldByName('PFCPUFDEST').AsFloat;  //1; //perc. combate a fome no estado de destino
                        pICMSUFDest     := QyTabelaICMS.FieldByName('ICMSINTERNO').AsFloat;//7; //aliq icms praticado no estado de destino
                        pICMSInter      := QyTabelaICMS.FieldByName('ICMSDESTINO').AsFloat;//12;
                        vraux := (pICMSUFDest -pICMSInter)/100;

                        pICMSInterPart  := 60;
                        vFCPUFDest      := RoundABNT((pFCPUFDest/100) * QyItemNFe.FieldByName('TOTAL').AsFloat,2); //valor    pFCPUFDest *  QyItemNFe.FieldByName('TOTAL').AsFloat

                      vrFCPUFDest := vrFCPUFDest + vFCPUFDest;
                      vrICMSUFDest := 0;//vrICMSUFDest + RoundNum((QyItemNFe.FieldByName('TOTAL').AsFloat * vraux) * 0.4,2);
                      vrICMSUFRemet := 0;//vrICMSUFRemet + RoundNum((QyItemNFe.FieldByName('TOTAL').AsFloat * vraux) * 0.6 ,2);
                      end;
                    end;
                  end
                  else
                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 70 then
                  begin
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyItemNFe.FieldByName('MODBC').AsString);
                    vBC:=QyItemNFe.FieldByName('TOTAL').AsFloat;
                    pICMS:= QyItemNFe.FieldByName('ALIQ_ICMS').AsCurrency;
                    vICMS := QyItemNFe.FieldByName('VALOR_ICMS').AsCurrency;

                    modBCST:= StrTomodBCST(OK,QyItemNFe.FieldByName('MODBCST').AsString);
                    pMVAST   := QyItemNFe.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyItemNFe.FieldByName('PREDBCST').AsCurrency;
                    vBCST := QyItemNFe.FieldByName('TOTAL').AsFloat +
                    ((QyItemNFe.FieldByName('TOTAL').AsFloat * QyItemNFe.FieldByName('PMVAST').AsCurrency)/100)
                    - ((QyItemNFe.FieldByName('TOTAL').AsFloat * QyItemNFe.FieldByName('PREDBCST').AsCurrency) /100);

                    pICMSST   := QyItemNFe.FieldByName('PICMSST').AsCurrency;
                    vICMSST := (vBCST*QyItemNFe.FieldByName('PICMSST').AsCurrency)/100;
                  end
                  else

                  if QyItemNFe.FieldByName('CSTICMS').AsInteger = 90 then
                  begin
                    orig:= StrToOrig(OK,QyItemNFe.FieldByName('ORIG').AsString);
                    CST := StrToCSTICMS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTICMS').AsInteger));
                    modBC := StrTomodBC(OK,QyItemNFe.FieldByName('MODBC').AsString);
                    pRedBC:= QyItemNFe.FieldByName('PREDBC').AsCurrency;
                    vBC:=QyItemNFe.FieldByName('TOTAL').AsFloat-
                    (QyItemNFe.FieldByName('TOTAL').AsFloat *QyItemNFe.FieldByName('PREDBC').AsCurrency )/100;

                    pICMS:= QyItemNFe.FieldByName('ALIQ_ICMS').AsCurrency;
                    vICMS := (vBC * pICMS)/100;

                    modBCST:= StrTomodBCST(OK,QyItemNFe.FieldByName('MODBCST').AsString);
                    pMVAST   := QyItemNFe.FieldByName('PMVAST').AsCurrency;
                    pRedBCST := QyItemNFe.FieldByName('PREDBCST').AsCurrency;
                    vBCST := vBC +
                    ((vBC * QyItemNFe.FieldByName('PMVAST').AsCurrency)/100)
                    - ((vBC * QyItemNFe.FieldByName('PREDBCST').AsCurrency) /100);

                    pICMSST   := QyItemNFe.FieldByName('PICMSST').AsCurrency;
                    vICMSST := (vBCST*QyItemNFe.FieldByName('PICMSST').AsCurrency)/100;
                  end
                  else
                  begin
                    Application.MessageBox('CST ICMS Inválida.',NOME_SISTEMA, MB_ICONINFORMATION);
                    Exit;
                  end;
                end;
              end;

              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 50 then
              with IPI do
              begin
                CST      := ipi50 ;
                clEnq    := '';
                CNPJProd := '';
                cSelo    := '';
                qSelo    := 0;
                cEnq     := '999';

                vBC    := QyItemNFe.FieldByName('TOTAL').AsFloat;
                qUnid  := 0;
                vUnid  := 0;
                pIPI   := QyItemNFe.FieldByName('ALIQ_IPI').AsFloat;;
                vIPI   := QyItemNFe.FieldByName('VALOR_IPI').AsFloat;
                VrIPI:= VrIPI +QyItemNFe.FieldByName('VALOR_IPI').AsFloat;

              end;
              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 51 then
              with IPI do
              begin
                CST := ipi51;
              end;

              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 52 then
              with IPI do
              begin
                CST := ipi52;
              end;

              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 53 then
              with IPI do
              begin
                CST := ipi53;
              end;

              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 54 then
              with IPI do
              begin
                CST := ipi54;
              end;

              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 55 then
              with IPI do
              begin
                CST := ipi55;
              end;

              if QyItemNFe.FieldByName('CSTIPI').AsInteger = 99 then
              with IPI do
              begin
                CST := ipi99;
              end;

              with PIS do
              begin

                if (QyItemNFe.FieldByName('CSTPIS').AsInteger = 4) or
                (QyItemNFe.FieldByName('CSTPIS').AsInteger = 6) or
                (QyItemNFe.FieldByName('CSTPIS').AsInteger = 7) or
                (QyItemNFe.FieldByName('CSTPIS').AsInteger = 8) or
                (QyItemNFe.FieldByName('CSTPIS').AsInteger = 9)
                 then
                 begin
                   CST:= StrToCSTPIS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTPIS').AsInteger));

                 end;

                 if (QyItemNFe.FieldByName('CSTPIS').AsInteger = 1) or
                 (QyItemNFe.FieldByName('CSTPIS').AsInteger = 2) or
                 (QyItemNFe.FieldByName('CSTPIS').AsInteger = 3) or
                 (QyItemNFe.FieldByName('CSTPIS').AsInteger = 99)then
                 begin
                  CST:= StrToCSTPIS(OK,FormatFloat('00',QyItemNFe.FieldByName('CSTPIS').AsInteger) );
                  pPIS:= QyItemNFe.FieldByName('ALIQ_PIS').AsFloat;
                  if QyItemNFe.FieldByName('ALIQ_PIS').AsFloat > 0 then
                    vBC:=  RoundABNT(QyItemNFe.FieldByName('VALOR_PIS').AsFloat / (QyItemNFe.FieldByName('ALIQ_PIS').AsFloat/100),2)
                  else
                    vBC := 0;

                  vPIS := QyItemNFe.FieldByName('VALOR_PIS').AsFloat;
                  VrPis :=VrPis+ vPIS;

                 end;
              end;

              with COFINS do
              begin
                if (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 4) or
                (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 6) or
                (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 7) or
                (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 8) or
                (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 9)
                 then
                 begin

                   CST := StrToCSTCOFINS(OK, FormatFloat('00',QyItemNFe.FieldByName('CSTCOFINS').AsInteger) );

                 end;
                 if (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 1) or
                 (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 2) or
                 (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 3) or
                 (QyItemNFe.FieldByName('CSTCOFINS').AsInteger = 99)

                 then
                 begin
                  CST:= StrToCSTCOFINS(OK, FormatFloat('00',QyItemNFe.FieldByName('CSTCOFINS').AsInteger) );
                  if QyItemNFe.FieldByName('ALIQ_COFINS').AsFloat > 0 then
                    vBC:=  RoundABNT(QyItemNFe.FieldByName('VALOR_COFINS').AsFloat / (QyItemNFe.FieldByName('ALIQ_COFINS').AsFloat/100) ,2)
                  else
                    vBC :=0;
                  pCOFINS := QyItemNFe.FieldByName('ALIQ_COFINS').AsFloat;
                  vCOFINS := QyItemNFe.FieldByName('VALOR_COFINS').AsFloat;
                  VrCOFINS := VrCOFINS + vCOFINS;
                 end;

              end;
            end;
          end;
          inc(Viitem);
          QyItemNFe.Next;
        end;


        Total.ICMSTot.vBC     := VrBCICMS;
        Total.ICMSTot.vICMS   := VrICMS;
        Total.ICMSTot.vBCST   := VrBCICMSST;
        Total.ICMSTot.vST     := VrICMSST;

        if vrFCPUFDest > 0 then
          Total.ICMSTot.vFCPUFDest := vrFCPUFDest;

        if vrICMSUFDest > 0 then
          Total.ICMSTot.vICMSUFDest := vrICMSUFDest;

        if vrICMSUFRemet > 0 then
          Total.ICMSTot.vICMSUFRemet := vrICMSUFRemet;
//
//        if vrICMSUFDest>0 then
//        Total.ICMSTot.vFCP :=vrICMSUFDest;



        Total.ICMSTot.vProd   := QyVENDA.FieldByName('SUBTOTAL').AsFloat;
        Total.ICMSTot.vFrete  := QyVENDA.FieldByName('VALORFRETE').AsFloat;
        Total.ICMSTot.vSeg    := QyVENDA.FieldByName('SEGURO').AsFloat;;
        Total.ICMSTot.vDesc   := QyVENDA.FieldByName('DESCONTO').AsFloat;
        Total.ICMSTot.vII     := QyVENDA.FieldByName('VALORII').AsFloat;;
        Total.ICMSTot.vIPI    := VrIPI;
        Total.ICMSTot.vPIS    := VrPis;//QyVENDA.FieldByName('VALORPIS').AsFloat;;
        Total.ICMSTot.vCOFINS := VrCOFINS;//QyVENDA.FieldByName('VALORCOFINS').AsFloat;;
        Total.ICMSTot.vOutro  := QyVENDA.FieldByName('OUTROS').AsFloat;
        Total.ICMSTot.vNF     := QyVENDA.FieldByName('TOTAL').AsFloat+VrIPI+VrICMSST;

        Total.ISSQNtot.vServ   := 0;
        Total.ISSQNTot.vBC     := 0;
        Total.ISSQNTot.vISS    := 0;
        Total.ISSQNTot.vPIS    := 0;
        Total.ISSQNTot.vCOFINS := 0;

        Total.retTrib.vRetPIS    := 0;
        Total.retTrib.vRetCOFINS := 0;
        Total.retTrib.vRetCSLL   := 0;
        Total.retTrib.vBCIRRF    := 0;
        Total.retTrib.vIRRF      := 0;
        Total.retTrib.vBCRetPrev := 0;
        Total.retTrib.vRetPrev   := 0;

        case QyVENDA.FieldByName('TIPOFRETE').AsInteger of
          0: Transp.modFrete := mfContaEmitente;
          1: Transp.modFrete := mfContaDestinatario;
          2: Transp.modFrete := mfContaTerceiros;
          9: Transp.modFrete := mfSemFrete;
        end;

        if Trim(frmDadosAdicionais.cbbEstadoPlaca.Text) <> 'NI' then
        begin
          Transp.veicTransp.UF    := frmDadosAdicionais.cbbEstadoPlaca.Text;
          Transp.veicTransp.RNTC  := frmDadosAdicionais.edtRNTC.Text;
          Transp.veicTransp.placa := frmDadosAdicionais.edtPlaca.Text;

        end;

        with Transp.Vol.Add do
        begin
          qVol  := frmDadosAdicionais.edtQuantidade.AsInteger;
          esp   := frmDadosAdicionais.edtEspecie.Text;
          marca := frmDadosAdicionais.edtMarca.Text;
          nVol  := frmDadosAdicionais.edtNumeracao.Text;
          pesoL := frmDadosAdicionais.edtClcPLiquido.Value;
          pesoB := frmDadosAdicionais.edtClcPBruto.Value;

         //Lacres do volume. Pode ser adicionado vários
         //Lacres.Add.nLacre := '';
        end;


        if Trim(frmDadosAdicionais.edtRazao.Text) <> '' then
        begin
          with Transp do
          begin
            Transporta.CNPJCPF  := frmDadosAdicionais.edtCNPJ.Text;
            Transporta.xNome    := frmDadosAdicionais.edtRazao.Text;
            Transporta.IE       := frmDadosAdicionais.edtIE.Text;
            Transporta.xEnder   := frmDadosAdicionais.edtEndereco.Text;
            Transporta.xMun     := frmDadosAdicionais.edtCidade.Text;
            Transporta.UF       := frmDadosAdicionais.cbbEstado.Text;
          end;
        end;

        if (ACBrNFe1.Configuracoes.Geral.VersaoDF = ve310) or
        (ACBrNFe1.Configuracoes.Geral.VersaoDF = ve200) or
        (ACBrNFe1.Configuracoes.Geral.VersaoDF = ve300)
        then
        begin

          if Ide.indPag =  ipPrazo then
          begin
            QyFaturaNFe.Close;
            QyFaturaNFe.SQL.Clear;
            QyFaturaNFe.SQL.Add('SELECT ID_VENDA , VENCIMENTO, VALOR, DOCUMENTO, PARCELA  FROM LANCAMENTO ');
            QyFaturaNFe.SQL.Add('WHERE ID_VENDA=:pID_VENDA');
            QyFaturaNFe.ParamByName('pID_VENDA').AsInteger:= QyVENDA.FieldByName('ID').AsInteger;
            QyFaturaNFe.SQL.Add('ORDER BY PARCELA ');
            QyFaturaNFe.Open;

            vrsoma := 0;
            ViItem:=0;
            QyFaturaNFe.First;

            while not QyFaturaNFe.Eof do
            begin
              Inc(ViItem);
              with Cobr.Dup.Add do
              begin
                nDup  := inttostr(NumeroNFe) + '-' + IntToStr(ViItem) ;
                dVenc := QyFaturaNFe.FieldByName('VENCIMENTO').AsDateTime;
                vDup  := QyFaturaNFe.FieldByName('VALOR').AsCurrency;
              end;
              //vrsoma := vrsoma +QyFaturaNFe.FieldByName('VALOR').AsCurrency;
              QyFaturaNFe.Next;
            end;

          end;
        end

        else  //versao ve400
        begin
          //DUPLICATA

          if frmDadosAdicionais.cbbFINALIDADE.ItemIndex = 3 then //devolucao
          begin
            with pag.Add do //PAGAMENTOS apenas para NFC-e
            begin
              tPag := fpSemPagamento;
            end;
          end
          else
          begin
            QyFaturaNFe.Close;
            QyFaturaNFe.SQL.Clear;
            QyFaturaNFe.SQL.Add('SELECT CP.*,V.CAUT, L.VALOR , L.VENCIMENTO  FROM VENDA V ');
            QyFaturaNFe.SQL.Add('INNER JOIN LANCAMENTO L ON L.ID_VENDA = V.ID');
            QyFaturaNFe.SQL.Add('INNER JOIN CONDICAOPAGAMENTO CP ON CP.ID = L.ID_CONDICAOPAGAMENTO');
            QyFaturaNFe.SQL.Add('WHERE V.ID=:pID_VENDA');
            QyFaturaNFe.SQL.Add('ORDER BY CP.TIPO_PAGAMENTO, L.VENCIMENTO,L.VALOR');
            QyFaturaNFe.ParamByName('pID_VENDA').AsInteger:= QyVENDA.FieldByName('ID').AsInteger;
            QyFaturaNFe.Open;


            if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'DM') or
            (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'CH') or
            (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'BO') OR
            (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'FT') or
            (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'DUP')

            then
            begin
              Cobr.Fat.nFat  := QyVENDA.FieldByName('ID').AsString;
              Cobr.Fat.vOrig := QyVENDA.FieldByName('TOTAL').AsCurrency;
//              Cobr.Fat.vDesc := 1;
              Cobr.Fat.vLiq  := QyVENDA.FieldByName('TOTAL').AsCurrency;

            end;
            ViItem:=0;


            while not QyFaturaNFe.Eof do
            begin
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'CC') then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCartaoCredito;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;

                  tpIntegra := tiPagNaoIntegrado;
                  cAut := Trim( QyFaturaNFe.FieldByName('CAUT').AsString );
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'CD')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCartaoDebito;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                  tpIntegra := tiPagNaoIntegrado;
                  cAut :=Trim( QyFaturaNFe.FieldByName('CAUT').AsString );
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'AV')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpDinheiro;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              // subir codigo e adicionar grupo fatura
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'DM')  then
              begin
                Inc(ViItem);
                with Cobr.Dup.Add do
                begin
                  nDup  := inttostr(NumeroNFe) + '-' + IntToStr(ViItem) ;
                  dVenc := QyFaturaNFe.FieldByName('VENCIMENTO').AsDateTime;
                  vDup  := QyFaturaNFe.FieldByName('VALOR').AsCurrency;
                end;
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpDuplicataMercantil;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'DUP')  then
              begin
                Inc(ViItem);
                with Cobr.Dup.Add do
                begin
                  nDup  :=  FormatFloat('000', ViItem );
                  dVenc := QyFaturaNFe.FieldByName('VENCIMENTO').AsDateTime;
                  vDup  := QyFaturaNFe.FieldByName('VALOR').AsCurrency;
                end;
                with pag.Add do
                begin
                  tPag := fpDuplicataMercantil;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end


              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'BO')  then
              begin
                Inc(ViItem);
                with Cobr.Dup.Add do
                begin
                  nDup  :=  FormatFloat('000', ViItem );   // entra em vigor em 03/09/2018
                  //nDup  :=inttostr(NumeroNFe) + '-' + IntToStr(ViItem) ; // prazo maximo 03/09/2018
                  dVenc := QyFaturaNFe.FieldByName('VENCIMENTO').AsDateTime;
                  vDup  := QyFaturaNFe.FieldByName('VALOR').AsCurrency;
                end;
                with pag.Add do
                begin
                  tPag := fpBoletoBancario;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'CH')  then
              begin
                Inc(ViItem);
                with Cobr.Dup.Add do
                begin
                  nDup  := inttostr(NumeroNFe) + '-' + IntToStr(ViItem) ;
                  dVenc := QyFaturaNFe.FieldByName('VENCIMENTO').AsDateTime;
                  vDup  := QyFaturaNFe.FieldByName('VALOR').AsCurrency;
                end;
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCheque;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'VA')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpValeAlimentacao;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end

              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'VR')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpValeRefeicao;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'VP')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpValePresente;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'VC')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpValeCombustivel;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end


              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'SP')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpSemPagamento;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              if (QyFaturaNFe.FieldByName('TIPO_PAGAMENTO').AsString = 'CL')  then
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpCreditoLoja;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end
              else
              begin
                with pag.Add do //PAGAMENTOS apenas para NFC-e
                begin
                  tPag := fpOutro;
                  vPag := QyFaturaNFe.FieldByName('VALOR').AsFloat;
                end;
              end;
              QyFaturaNFe.Next;
            end;
          end;

          if QyConfigSistema.FindField('NFE_RESPTEC_CNPJ') <> nil then
          begin
            with infRespTec do
            begin
              CNPJ     := QyConfigSistema.FieldByName('NFE_RESPTEC_CNPJ').AsString;
              xContato := QyConfigSistema.FieldByName('NFE_RESPTEC_CONTATO').AsString;
              email    :=QyConfigSistema.FieldByName('NFE_RESPTEC_EMAIL').AsString;
              fone     :=QyConfigSistema.FieldByName('NFE_RESPTEC_FONE').AsString;
            end;
          end;
          InfAdic.infCpl     :=  Trim(frmDadosAdicionais.mmoDadosAdicionais.Text);

//          vsNS := FsretornaNSProduto(QyVENDA.FieldByName('ID').AsInteger);
//
//          if vsns <> '' then
//            InfAdic.infCpl := InfAdic.infCpl + #13 + 'Numeros de Series: ' +  vsns;
        end;
      end; //TERMINA


      if not Visualiza then
      begin
        ACBrNFe1.NotasFiscais.GerarNFe;

        QyVENDA.Edit;
        QyVENDA.FieldByName('CHAVENFE').AsString      :=  OnlyNumber(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.Id);
        QyVENDA.Post;
        ACBrNFe1.Enviar(0,false);
      end
      else
      begin
        ACBrNFe1.NotasFiscais.GravarXML(QyConfigSistema.FieldByName('NFE_PASTAXML').AsString + '\-Nfe.xml');
        ACBrNFe1.NotasFiscais.LoadFromFile(QyConfigSistema.FieldByName('NFE_PASTAXML').AsString + '\-Nfe.xml');
        ACBrNFe1.NotasFiscais.Imprimir;
        Exit;
      end;

//      if config.ReadInteger('SISTEMA','uninfe',0)=0 then  //acbr
//        statusnfe:= ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat;

     // if  (statusNFe=1) or (statusnfe =100) then
      if ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat = 100 then
      begin
        with QySQL do
        begin
          Close;
          Sql.Clear;
          SQL.Add('UPDATE SEQUENCIAL SET ID=ID+1 WHERE TABELA = "NOTAFISCAL"');
          sql.Add('AND ID_FILIAL=:pFILIAL');
          ParamByName('pFILIAL').AsInteger  := Estabelecimento;
          execsql;
        end;

        with QySQL do
        begin
          Close;
          sql.Clear;
          sql.Add('UPDATE DETALHE_VENDA SET ID_CFOP=:p where ID_VENDA=:id');
          ParamByName('id').AsInteger :=  pID_VENDA;
          ParamByName('p').AsInteger := StrToInt(frmDadosAdicionais.edtCFOP.Text);
          ExecSQL;
        end;

        QyVENDA.Edit;
        QyVENDA.FieldByName('FINALIDADENFE').AsInteger := frmDadosAdicionais.cbbFINALIDADE.ItemIndex+1;
        QyVENDA.FieldByName('PROTOCOLONFE').AsString  := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.nProt;//ACBrNFe1.WebServices.Retorno.Protocolo;
        QyVENDA.FieldByName('CHAVENFE').AsString      := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;//ACBrNFe1.WebServices.Retorno.ChaveNFe;
        QyVENDA.FieldByName('TIPO').AsString          := ConstPedidoNFe;

        QyVENDA.FieldByName('DHRECBTO').AsDateTime    := ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;
        //QyVENDA.FieldByName('DIGEST').AsString      :=  ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal;
        QYVENDA.FieldByName('ID_CFOP').AsInteger := StrToInt(frmDadosAdicionais.edtCFOP.Text);

        try
          TBlobField(QyVENDA.FieldByName('XMLNFE')).LoadFromFile(QyConfigSistema.FieldByName('NFE_PASTAXML').AsString +'\' + CNPJEstabelecimento + '\' + FormatDateTime('YYYYMM',NOW) + '\'  + ACBrNFe1.WebServices.Retorno.ChaveNFe +'-Nfe.xml');
        except
        end;

        QyVENDA.Post;
        ACBrNFe1.NotasFiscais.Imprimir;
        FreeAndNil(frmDadosAdicionais);
        Result := True;
      end
      else
      begin
        AlertaError('Erro no retorno da SEFAZ. Contacte o Administrador do sistema.');
        FreeAndNil(frmDadosAdicionais);
        Result := False;
      end;
    end;
  end
end;
procedure InicializaNFe(const cupom : Boolean = False);
var
 ok : Boolean;
begin
  with DmAcesso do
  begin
//    with QyConfigSistema do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT * FROM CONFIGURACAO_SISTEMA WHERE ID_FILIAL=:pID_FILIAL');
//      ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
//      Open;
//    end;

     ACBrNFe1.Configuracoes.Certificados.NumeroSerie :='';
     ACBrNFe1.Configuracoes.Certificados.ArquivoPFX := '';
     ACBrNFe1.Configuracoes.Certificados.Senha := '';
    if QyConfigSistema.FieldByName('NFE_NUMEROSERIECERTIFICADO').AsString <> '' then
      ACBrNFe1.Configuracoes.Certificados.NumeroSerie := QyConfigSistema.FieldByName('NFE_NUMEROSERIECERTIFICADO').AsString;

      if QyConfigSistema.FindField('NFE_ARQUIVOPFX') <> nil then
        if Trim(QyConfigSistema.FieldByName('NFE_ARQUIVOPFX').AsString) <> '' then
          ACBrNFe1.Configuracoes.Certificados.ArquivoPFX :=  QyConfigSistema.FieldByName('NFE_ARQUIVOPFX').AsString;

      if QyConfigSistema.FindField('NFE_SENHA') <> nil then
        if trim(QyConfigSistema.FieldByName('NFE_SENHA').AsString) <> '' then
          ACBrNFe1.Configuracoes.Certificados.Senha := QyConfigSistema.FieldByName('NFE_SENHA').AsString;


    ACBrNFe1.Configuracoes.Arquivos.SepararPorCNPJ := True;
    ACBrNFe1.Configuracoes.Arquivos.SepararPorMes := True;

    ACBrNFe1.Configuracoes.Arquivos.Salvar:=True;

    ACBrNFe1.Configuracoes.Arquivos.PathNFe := QyConfigSistema.FieldByName('NFE_PASTAXML').AsString;
    ACBrNFe1.Configuracoes.Arquivos.PathSalvar := QyConfigSistema.FieldByName('NFE_PASTAXML').AsString; //+ '\' + FormatDateTime('yyyyMM', Date);

    ACBrNFe1.Configuracoes.Geral.Salvar       := True;
    ACBrNFe1.Configuracoes.WebServices.UF          := QyConfigSistema.FieldByName('NFE_WEBSERVICE_UF').AsString;

    if QyConfigSistema.FieldByName('NFE_WEBSERVICE_AMBIENTE').AsInteger = 0 then
      ACBrNFe1.Configuracoes.WebServices.Ambiente   := taProducao
    else
      ACBrNFe1.Configuracoes.WebServices.Ambiente   := taHomologacao;


    ACBrNFe1.Configuracoes.WebServices.Visualizar := QyConfigSistema.FieldByName('NFE_WEBSERVICE_VISUALIZA').AsInteger=1;

    ACBrNFe1.DANFE := ACBrNFeDANFeRL1;
//    ACBrNFe1.DANFE.ImprimeNomeFantasia:=Config.ReadBool('NF','imprimeNomeFantasia', false);
//    ACBrNFeDANFeRL1.ExibeEAN   :=Config.ReadBool('NF','imprimeEAN', false);
    ACBrNFeDANFeRL1.PathPDF := QyConfigSistema.FieldByName('NFE_PASTAXML').AsString;

    ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
    ACBrNFe1.Configuracoes.Geral.VersaoDF := StrToVersaoDF(ok,QyConfigSistema.FieldByName('NFE_VERSAO_DF').AsString);

   // ACBrNFe1.Configuracoes.WebServices.TimeOut := Config.ReadInteger('NF','timeOut',10000);


    //nfe
    if (ACBrNFe1.Configuracoes.Geral.VersaoDF = ve310) or
    (ACBrNFe1.Configuracoes.Geral.VersaoDF = ve200) or
    (ACBrNFe1.Configuracoes.Geral.VersaoDF = ve300)
    then
    begin
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryCapicom;
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpIndy;
      ACBrNFe1.Configuracoes.Geral.SSLLib := libCapicomDelphiSoap;
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:= xsMsXmlCapicom;
    end
    else //ve400
    begin
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryCapicom;
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpWinINet;
      ACBrNFe1.Configuracoes.Geral.SSLLib := libCapicom;
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:= xsMsXmlCapicom;
    end;

//    if Config.ReadInteger('NF','ValidarDigest',0) = 0 then
//    begin
//      ACBrNFe1.Configuracoes.Geral.ValidarDigest := False;
//    end
//    else
//    begin
//      ACBrNFe1.Configuracoes.Geral.ValidarDigest := True;
//    end;

    if cupom then
    begin
      ACBrPosPrinter1.Desativar;
      ACBrPosPrinter1.Porta := QyConfigSistema.FieldByName('PORTACOM').AsString;
//      ACBrPosPrinter1.EspacoEntreLinhas:= Config.ReadInteger('IMPRESSAO','el',0);
//      ACBrPosPrinter1.LinhasEntreCupons:= Config.ReadInteger('IMPRESSAO','lc',7);
//      ACBrPosPrinter1.ColunasFonteNormal :=Config.ReadInteger('IMPRESSAO','cf',42);

      case QyConfigSistema.FieldByName('TIPO_IMPRESSORA').AsInteger of
        0: ACBrPosPrinter1.Modelo := ppTexto;
        1: ACBrPosPrinter1.Modelo := ppEscPosEpson;
        2: ACBrPosPrinter1.Modelo := ppEscBematech;
        3: ACBrPosPrinter1.Modelo := ppEscDaruma;
        4: ACBrPosPrinter1.Modelo := ppEscVox;
        5: ACBrPosPrinter1.Modelo := ppEscDiebold;
      end;

//      if Config.ReadInteger('IMPRESSAO','tipoImpressora',0) = 0 then //bobina
//      begin
//        ACBrNFe1.DANFE := ACBrNFeDANFeESCPOS1;
//        ACBrNFeDANFeESCPOS1.ImprimeNomeFantasia := Config.ReadBool('IMPRESSAO','nomeFantasia',False);
//      end
//      else //jato de tinta
//      begin
//        ACBrNFe1.DANFE := ACBrNFeDANFCeFortes1;
//        ACBrNFeDANFCeFortes1.ImprimeNomeFantasia:= Config.ReadBool('IMPRESSAO','nomeFantasia',False);
//
//        if Config.ReadString('IMPRESSAO','logomarca','') <> '' then
//        begin
//          ACBrNFeDANFCeFortes1.Logo :=Config.ReadString('IMPRESSAO','logomarca','');
//          if Config.ReadString('IMPRESSAO','poslogomarca','E') = 'E' then
//            ACBrNFeDANFCeFortes1.ImprimeLogoLateral:=True
//          else
//            ACBrNFeDANFCeFortes1.ImprimeLogoLateral:=False;
//        end
//        else
//        begin
//          ACBrNFeDANFCeFortes1.Logo:='';
//          ACBrNFeDANFCeFortes1.ImprimeLogoLateral:=False;
//        end;
//      end;
      //nfce
      ACBrNFe1.Configuracoes.Geral.SSLCryptLib := cryWinCrypt;
      ACBrNFe1.Configuracoes.Geral.SSLHttpLib := httpWinHttp;
      ACBrNFe1.Configuracoes.Geral.SSLLib := libWinCrypt;
      ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:= xsMsXml;


      with ACBrNFe1.Configuracoes.Geral do
      begin
        FormaEmissao     := teNormal;
        ModeloDF         := moNFCe;
        VersaoDF         := ve400;
        VersaoQRCode     := veqr200;
        IdCSC            := QyConfigSistema.FieldByName('IDTOKEN').AsString;
        CSC              := QyConfigSistema.FieldByName('TOKEN').AsString;
      end;
    end;
  end;
end;

//procedure AlertaError(Mensagem : PWideChar);
//begin
//  Application.MessageBox(Mensagem, NOME_SISTEMA,MB_ICONERROR);
//end;
//procedure AlertaInfo(Mensagem : PWideChar);
//begin
//  Application.MessageBox( PChar( Mensagem), NOME_SISTEMA,MB_ICONINFORMATION);
//end;
//procedure imprimirEspelhoPedido(id: Integer);
//begin
//  try
//    Application.CreateForm(TrptEspelhoVenda,rptEspelhoVenda);
//    rptEspelhoVenda.qyAux.Close;
//    rptEspelhoVenda.qyAux.SQL.Clear;
//    rptEspelhoVenda.qyAux.SQL.Add('SELECT DISTINCT DV.ID_FILIAL,DV.ITEM ');
//    rptEspelhoVenda.qyAux.SQL.Add(',DV.ID_VENDA ,DV.ID_PRODUTO , P.GTIN ,P.DESCRICAO AS NOME_PRODUTO, ');
//    rptEspelhoVenda.qyAux.SQL.Add('P.DESCRICAO_TECNICA ,U.CODIGO AS UNIDADE, ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.ID_CFOP , ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.QUANTIDADE , ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.PRECO , ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.SUBTOTAL ,DV.DESCONTO ,DV.TOTAL , ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.ALIQ_ICMS ,DV.VALOR_ICMS ,DV.ALIQ_IPI , ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.VALOR_IPI ,DV.VALOR_COMISSAO ,DV.INFOADICIONAL, ');
//    rptEspelhoVenda.qyAux.SQL.Add('DV.ALTURA ,DV.LARGURA ,DV.AREA ,DV.ACRESCIMO ');
//    rptEspelhoVenda.qyAux.SQL.Add('FROM DETALHE_VENDA DV ');
//    rptEspelhoVenda.qyAux.SQL.Add('LEFT JOIN PRODUTO P ON P.ID = DV.ID_PRODUTO ');
//    rptEspelhoVenda.qyAux.SQL.Add('LEFT JOIN UNIDADE U ON U.ID = DV.ID_UNIDADE ');
//    rptEspelhoVenda.qyAux.SQL.Add('WHERE  DV.ITEM_SERVICO="N" ');
//    rptEspelhoVenda.qyAux.SQL.Add('AND DV.ID_VENDA=:pID_PEDIDO ');
//
//    if dmAcesso.QyConfigSistema.FieldByName('VENDA_ORDEM_ITEM').AsInteger = 1 then
//      rptEspelhoVenda.qyAux.SQL.Add('ORDER BY DV.ID')
//    else
//      rptEspelhoVenda.qyAux.SQL.Add('ORDER BY P.DESCRICAO');
//
//
//    rptEspelhoVenda.qyAux.ParamByName('pID_PEDIDO').AsInteger := id;
//    rptEspelhoVenda.qyAux.open;
//
//    rptEspelhoVenda.qyCliente.Close;
//    rptEspelhoVenda.qyCliente.ParamByName('pID_PEDIDO').AsInteger := id;
//    rptEspelhoVenda.qyCliente.Open;
//
//    if dmAcesso.QyConfigSistema.FieldByName('VENDA_ASSINATURA_ESPELHO').AsInteger = 1 then
//      rptEspelhoVenda.bndAssinatura.Visible:= True;
//
//    if dmAcesso.QyConfigSistema.FieldByName('VENDA_EXIBE_FATURA').AsInteger = 1 then
//    begin
//      rptEspelhoVenda.rlbFatura.Visible := True;
//      rptEspelhoVenda.qyFatura.Close;
//      rptEspelhoVenda.qyFatura.ParamByName('pID_PEDIDO').AsInteger := id;
//      rptEspelhoVenda.qyFatura.Open;
//    end;
//
//    rptEspelhoVenda.RLReport1.PreviewModal;
//  finally
//    //          FreeAndNil(rptEspelhoVenda);
//    //          if (Config.ReadInteger('ConfigLocal','exportaPDV',0) = 1) and
//    //          (DmAcesso.QyConfigSistema.FieldByName('NFC_MENSAGEM_ENVIO').AsInteger = 0) then
//    //            if alertaPergunta('Deseja emitir cupom fiscal') = IDYES then
//    //               CupomFiscal;
//  end;
//end;

procedure estornoPedido(idVenda: Integer; const  nomeUsuario: string = ''; const valor: Currency = 0);
begin
  with dmAcesso.QySQLCRUD do
  begin
    Close;
    SQL.Clear;
    sql.Add('UPDATE VENDA SET TIPO = "O"');
//    if Trim(nomeUsuario)<> '' then
//      sql.Add(', MOTIVO_BLOQUEIO = '+QuotedStr('Estornado por: '+ UpperCase(nomeUsuario) + ' - em: ' + FormatDateTimeBr(Now,'dd/MM/yyyy hh:mm:ss')
//      + ' - Valor: ' + FormatFloat('R$ #,##0.00',valor)
//              ));
    sql.Add(' WHERE ID=:pID');
    ParamByName('pID').AsInteger := idVenda;
    try
      ExecSQL;
      addHistorico(UsuarioLogado, 'Pedido: '+ IntToStr(idVenda) +   ' foi estornado por: '+ UpperCase(nomeUsuario) + ' - em: ' + FormatDateTimeBr(Now,'dd/MM/yyyy hh:mm:ss')
      + ' - Valor: ' + FormatFloat('R$ #,##0.00',valor),idVenda);
      AlertaInfo('Pre-Venda estornada com sucesso.');
    except

    end;
  end;
end;

procedure openDetGrupoContatos(idContato: Integer);
begin
  with dmAcesso do
  begin
    with QyDetGrupoContato do
    begin
      Close;
      ParamByName('pContato').AsInteger := idContato;
      Open();
    end;
  end;
end;
procedure novoContatoGrupocontato(idFilial, idContato, idGrupocontato: Integer);
begin
  with dmAcesso do
  begin
    with QySQLCRUD do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO CONTATOGRUPOCONTATO (ID_FILIAL, ID_GRUPOCONTATO, ID_CONTATO)');
      SQL.Add(' VALUES (:pFilial, :pGrupocontato, :pContato) ');
      ParamByName('pFilial').AsInteger := idFilial;
      ParamByName('pGrupocontato').AsInteger := idGrupocontato;
      ParamByName('pContato').AsInteger := idContato;
      try
        ExecSQL;
      except on E: Exception do
        ShowMessage('Erro ao cadastro contatogrupocontato: '+e.Message);
      end;

    end;
  end;
end;
procedure TdmAcesso.carregaQueries;
var
  showMsg : Boolean;
begin
  showMsg := false;
  try
    Application.CreateForm(TFrmMensagem, FrmMensagem);
    FrmMensagem.PShow;
    FrmMensagem.PProgresso(0);
    FrmMensagem.PProgressoMax(0);
    FrmMensagem.PrgBrMensagem.Visible:=False;
    FrmMensagem.PMensagem('Carregando tabelas. Aguarde...');


    with dmAcesso.QyUsuarioLogin do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM USUARIO ORDER BY ID_PERFIL');
      if showMsg then
      FrmMensagem.PMensagem('Usuarios...');
      Open();
    end;

    with QyGrupoUsuario do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM PERFIL');
      if showMsg then
      FrmMensagem.PMensagem('Perfis de usuários...');
      Open();
    end;


    QyLKPUnidades.Close;
    if showMsg then
      FrmMensagem.PMensagem('Unidades...');
    QyLKPUnidades.Open('SELECT * FROM UNIDADE ORDER BY CODIGO');


    QyLkpPerfisUsuarios.Close;
    if showMsg then
      FrmMensagem.PMensagem('Perfis de usuários...');
    QyLkpPerfisUsuarios.Open('SELECT * FROM PERFIL ORDER BY NOME');

    QyLKPMarcas.Close;
    if showMsg then
      FrmMensagem.PMensagem('Marcas...');
    QyLKPMarcas.Open('SELECT * FROM MARCA ORDER BY NOME');

    QyLKPCategoria.Close;
    if showMsg then
      FrmMensagem.PMensagem('Categorias...');
    QyLKPCategoria.Open('SELECT * FROM CATEGORIA ORDER BY NOME');

    QyLKPDepartamento.Close;
    if showMsg then
      FrmMensagem.PMensagem('Departamentos...');
    QyLKPDepartamento.Open('SELECT * FROM DEPARTAMENTO ORDER BY NOME');

    QyLKPVasilhames.Close;
    if showMsg then
      FrmMensagem.PMensagem('Vasilhames....');
    QyLKPVasilhames.Open('SELECT * FROM VASILHAME ORDER BY NOME');

    QyLKPGrupoProduto.Close;
    if showMsg then
      FrmMensagem.PMensagem('Grupo de produtos...');
    QyLKPGrupoProduto.Open('SELECT * FROM GRUPOPRODUTO ORDER BY NOME');

    QyLKPTipoProdutos.Close;
    if showMsg then
      FrmMensagem.PMensagem('Tipos de produtos...');
    QyLKPTipoProdutos.Open('SELECT * FROM TIPOPRODUTO ORDER BY CODIGO');



    if not FileExists(FsTemp+'estados.json') then
    begin
      QyLKPEstados.Close;
      if showMsg then
        FrmMensagem.PMensagem('Estados e Municípios...');
      QyLKPEstados.Open('SELECT * FROM ESTADO ORDER BY SIGLA');

      FDBatchMoveDataSetReader1.DataSet := QyLKPEstados;
      FDBatchMoveDataSetWriter1.DataSet := tbmLKPEstados;

      FDBatchMove1.Reader := FDBatchMoveDataSetReader1;
      FDBatchMove1.Writer := FDBatchMoveDataSetWriter1;
      FDBatchMove1.Execute;
      tbmLKPEstados.SaveToFile(FsTemp+'estados.json');
    end
    else
    begin
      tbmLKPEstados.LoadFromFile(FsTemp+'estados.json');
      tbmLKPEstados.Open;
    end;



    QyLkpContaCorrente.Close;
    if showMsg then
      FrmMensagem.PMensagem('Contas Corrente...');
    QyLkpContaCorrente.Open('SELECT * FROM CONTACORRENTE ORDER BY NOME');


    QyLKPTributacao.Close;
    if showMsg then
      FrmMensagem.PMensagem('Tributações...');
    QyLKPTributacao.Open('SELECT * FROM TRIBUTACAO ORDER BY NOME');

    QyLKPGrupoContato.Close;
    if showMsg then
      FrmMensagem.PMensagem('Grupo de contatos...');
    QyLKPGrupoContato.Open('SELECT * FROM GRUPOCONTATO ORDER BY NOME');

    QyLKPUsuario.Close;
    if showMsg then
      FrmMensagem.PMensagem('Vendedores...');
    QyLKPUsuario.Open('SELECT * FROM USUARIO WHERE BLOQUEADO=0 AND VENDEDOR=1 ORDER BY NOME');


    QyLKPCondicaoPagto.Close;
    if showMsg then
      FrmMensagem.PMensagem('Condições de pagamentos...');
    QyLKPCondicaoPagto.Open('SELECT * FROM CONDICAOPAGAMENTO WHERE BLOQUEADO=0');



    QyListaFormaPagtoCompleta.Close;
    if showMsg then
      FrmMensagem.PMensagem('Formas de pagamentos...');
    QyListaFormaPagtoCompleta.Open('SELECT * FROM FORMAPAGAMENTO WHERE BLOQUEADO=0');



//    if not FileExists(FsPastaApp+'\cidades.json') then
//    begin
      QyLKPCidades.Close;
      QyLKPCidades.Open('select MUNICIPIO.ID, CONCAT(MUNICIPIO.NOME," / ", ESTADO.SIGLA) AS NOME, ESTADO.SIGLA, MUNICIPIO.ID_IBGE, MUNICIPIO.NOME AS NOME_CIDADE FROM MUNICIPIO INNER JOIN ESTADO ON ESTADO.ID=MUNICIPIO.ID_ESTADO');
//      FDBatchMove1.Execute;
//      tbmLkpCidades.SaveToFile(FsPastaApp+'\cidades.json');
//    end
//    else
//    begin
//      tbmLkpCidades.LoadFromFile(FsPastaApp+'cidades.json');
//    end;


    QyListaFiliais.Close;
    if showMsg then
      FrmMensagem.PMensagem('Filiais...');
    QyListaFiliais.Open('select ID, NOME, FANTASIA FROM FILIAL' );


    QyLKPRotas.Close;
    if showMsg then
      FrmMensagem.PMensagem('Rotas...');
    QyLKPRotas.Open('SELECT * FROM ROTA');


    QyLkpNaturezaCR.Close;
    QyLkpNaturezaCP.Close;
    if showMsg then
      FrmMensagem.PMensagem('Naturezas...');
    QyLkpNaturezaCR.open('SELECT ID, NOME FROM NATUREZA where ID_NATUREZA <> 0 and TIPO = 0');
    QyLkpNaturezaCP.open('SELECT ID, NOME FROM NATUREZA where ID_NATUREZA <> 0 and TIPO = 1');

    //Lista de CLientes
    QyLKPClientes.Close;
    QyLKPClientes.SQL.Clear;
    QyLKPClientes.SQL.Add('SELECT CONTATO.ID, CONTATO.NOME, CONTATO.DOCUMENTO, CONTATO.EMAIL FROM CONTATO ');
    QyLKPClientes.SQL.Add('INNER JOIN CONTATOGRUPOCONTATO ON CONTATOGRUPOCONTATO.ID_CONTATO = CONTATO.ID ');
    QyLKPClientes.SQL.Add('INNER JOIN GRUPOCONTATO ON GRUPOCONTATO.ID = CONTATOGRUPOCONTATO.ID_GRUPOCONTATO ');
    QyLKPClientes.SQL.Add('WHERE GRUPOCONTATO.ID = 1 ORDER BY CONTATO.NOME');
    if showMsg then
      FrmMensagem.PMensagem('Clientes...');
    QyLKPClientes.Open;


    //Lista de fornecedores
    QyLKPFornecedores.Close;
    QyLKPFornecedores.SQL.Clear;
    QyLKPFornecedores.SQL.Add('SELECT CONTATO.ID, CONTATO.NOME, CONTATO.DOCUMENTO, CONTATO.EMAIL FROM CONTATO ');
    QyLKPFornecedores.SQL.Add('INNER JOIN CONTATOGRUPOCONTATO ON CONTATOGRUPOCONTATO.ID_CONTATO = CONTATO.ID ');
    QyLKPFornecedores.SQL.Add('INNER JOIN GRUPOCONTATO ON GRUPOCONTATO.ID = CONTATOGRUPOCONTATO.ID_GRUPOCONTATO ');
    QyLKPFornecedores.SQL.Add('WHERE GRUPOCONTATO.ID = 2 ORDER BY CONTATO.NOME');
    if showMsg then
      FrmMensagem.PMensagem('Fornecedores...');
    QyLKPFornecedores.Open;


    ///Tabela do simples nacional
    QySN.Close;
    QySN.SQL.Clear;
    QySN.SQL.Add('SELECT * FROM TABELASN WHERE ');
    QySN.SQL.Add('(SELECT COALESCE(SUM(TOTAL),0) FROM VENDA WHERE TIPO = "N" AND YEAR(EMISSAO) =:pAno ) ');
    QySN.SQL.Add('>= VL_INICIAL AND (SELECT COALESCE(SUM(TOTAL),0) FROM VENDA WHERE TIPO = "N" ');
    QySN.SQL.Add('AND YEAR(EMISSAO) =:pAno) <= VL_FINAL ');
    QySN.ParamByName('pAno').AsInteger := CurrentYear-1;
    if showMsg then
      FrmMensagem.PMensagem('Tabela do simples nacional...');
    QySN.Open;




//    if not FileExists(FsTemp+'cfop.json') then
//    begin
    with QyLkpCFOP do
    begin
      Close;
      Open('SELECT * FROM CFOP ORDER BY ID');
//      FDBatchMoveDataSetReader1.DataSet := QyLkpCFOP;
//      FDBatchMoveDataSetWriter1.DataSet:= tbmCFOP;
//      FDBatchMove1.Execute;
//      tbmCFOP.SaveToFile(FsTemp+'cfop.json');

    end;
//    end
//    else
//    begin
//      tbmCFOP.LoadFromFile(FsTemp+'cfop.json');
//    end;




    FreeAndNil(FrmMensagem);
  except on E: Exception do
    begin
//      FreeAndNil(FrmMensagem);
      AlertaError(PChar(e.Message));
    end;

  end;
end;

procedure TdmAcesso.DataModuleCreate(Sender: TObject);
begin
  try
    if not FileExists(ExtractFilePath(Application.ExeName)+'\server.ini') then
    begin
      AlertaError('Arquivo Server.ini não existe. Configure o arquivo.');
      Application.Terminate;
    end;

//    if FileExists(ExtractFilePath(Application.ExeName)+'\config.ini') then
//    begin
//       config := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
//
//    end;


    FDConnection1.Params.LoadFromFile(ExtractFilePath(Application.ExeName)+'\server.ini');
    Application.CreateForm(TFrmMensagem, FrmMensagem);
    FrmMensagem.PShow;
    FrmMensagem.PProgresso(0);
    FrmMensagem.PProgressoMax(0);
    FrmMensagem.PrgBrMensagem.Visible:=False;
    FrmMensagem.PMensagem('Conectando ao servidor...');
    FrmMensagem.PMensagem('Servidor: '+FDConnection1.Params[3]);

    FDConnection1.Connected := true;
    FreeAndNil(FrmMensagem);
   // FConnection:= TFireDacConnectionAdapter.Create(FDConnection1,'MySQL',False);

    with QyTerminal do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM TERMINAL WHERE NUMERO_SERIE =:pVOL');
      ParamByName('pVOL').AsString := NumSerie();
      Open();
      if IsEmpty then
      begin
        ShowMessage('Terminal não esta liberado. Contacte o adminstrador.');
        Application.Terminate;
      end
      else
      begin
        carregaQueries;
      end;
    end;


  except on E: Exception do
  begin
    FreeAndNil(FrmMensagem);
    ShowMessage(e.Message  );
  end;
  end;



end;



procedure TdmAcesso.inicializaNovoRegistro(tabela: string; const id : Integer);
begin
  cdsCadastro.Close;
  cdsCadastro.SQL.Clear;
  cdsCadastro.SQL.Add('SELECT * FROM ' + tabela +' WHERE ID=:pID');
  cdsCadastro.ParamByName('pID').AsInteger := id;
  cdsCadastro.Open();
end;

procedure lista2(pSql: string; pOrderBy: string; const pWhere : string = '';
const innerJoin: string = '';
const pInicial : integer = 0; const pFinal : integer = 20; const pQueryName: string = ''); overload;
begin
  with dmAcesso.QyProdutoBusca do
  begin
    dmAcesso.QyProdutoBusca.Close;
    dmAcesso.QyProdutoBusca.SQL.Clear;
    dmAcesso.QyProdutoBusca.SQL.Add(pSql);

    if innerJoin<> '' then
      dmAcesso.QyProdutoBusca.SQL.Add(innerJoin);

    if pWhere<> '' then
      dmAcesso.QyProdutoBusca.SQL.Add(pWhere);

    if pOrderBy<> '' then
      dmAcesso.QyProdutoBusca.SQL.Add(' ORDER BY '+pOrderBy);

     dmAcesso.QyProdutoBusca.SQL.Add(' LIMIT ' + inttostr(pInicial) + ',' + inttostr(pfinal));
    dmAcesso.QyProdutoBusca.Open();
  end;
end;
procedure lista(pSql: string;pOrderBy: string;
const pWhere : string;
const innerJoin: string;
const pInicial, pFinal: integer); overload;
begin
  with dmAcesso.QyLista do
  begin
    close;
    SQL.Clear;
    SQL.Add(psql);

    if trim(innerJoin) <> '' then
      sql.Add(innerJoin);

    if trim( pWhere ) <> '' then
      sql.Add(' ' + pWhere);

    if trim(pOrderBy) <> '' then
      SQL.Add(' ORDER BY '+pOrderBy);

    SQL.Add(' LIMIT ' + inttostr(pInicial) + ',' + inttostr(pfinal));
    open;
  end;

end;

procedure TdmAcesso.QyConfDicionarioBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TdmAcesso.QyConfigSistemaAfterOpen(DataSet: TDataSet);
begin
  InicializaNFe;
  //configuracao da conta de email
  with ACBrMail1 do
  begin
    Host := DmAcesso.QyConfigSistema.FieldByName('NFE_SMTP_SERVER').AsString;
    Port := DmAcesso.QyConfigSistema.FieldByName('NFE_SMTP_PORTA').AsString;
    Username := DmAcesso.QyConfigSistema.FieldByName('NFE_SMTP_USUARIO').AsString;
    Password := DmAcesso.QyConfigSistema.FieldByName('NFE_SMTP_SENHA').AsString;
    From := DmAcesso.QyConfigSistema.FieldByName('NFE_SMTP_USUARIO').AsString ;
    SetSSL := true;
    SetTLS := false;
    ReadingConfirmation := False;
    UseThread := False;
    FromName := NomeEstabelecimento;
  end;
end;

procedure TdmAcesso.QyListaAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to QyLista.FieldCount - 1 do
  begin
    if (DataSet.Fields[i] is TFloatField)  then
      TFloatField(DataSet.Fields[i]).DisplayFormat := '#,##0.00';

    if (DataSet.Fields[i] is TBCDField)  then
      TBCDField(DataSet.Fields[i]).DisplayFormat := '#,##0.00';

    if (DataSet.Fields[i] is TFMTBCDField)  then
      TFMTBCDField(DataSet.Fields[i]).DisplayFormat := '#,##0.00';
  end;
end;

procedure TdmAcesso.QyListaEstoqueBeforeInsert(DataSet: TDataSet);
begin
  if DataSet.RecordCount > 0 then
    Abort;
end;

procedure TdmAcesso.QyLKPCondicaoPagtoAfterScroll(DataSet: TDataSet);
begin
 QyLKPFormaPagto.Close;
  QyLKPFormaPagto.SQL.Clear;
  QyLKPFormaPagto.SQL.Add('SELECT * FROM FORMAPAGAMENTO ');
  QyLKPFormaPagto.SQL.Add('INNER JOIN REF_CONDICAO_PRAZO ON REF_CONDICAO_PRAZO.ID_FORMAPAGAMENTO = FORMAPAGAMENTO.ID ');
  QyLKPFormaPagto.SQL.Add('WHERE REF_CONDICAO_PRAZO.ID_CONDICAOPAGAMENTO =:ParamID_CONDICAOPAGAMENTO');
  QyLKPFormaPagto.ParamByName('ParamID_CONDICAOPAGAMENTO').AsInteger := QyLKPCondicaoPagto.FieldByName('ID').AsInteger;
  QyLKPFormaPagto.Open();
end;

procedure TdmAcesso.QyLKPEstadosAfterOpen(DataSet: TDataSet);
begin

  if not FileExists(FsTemp+'municipios.json') then
  begin
    QyLKPMunicipios.Close;
    QyLKPMunicipios.Open('SELECT ID, ID_ESTADO, NOME FROM MUNICIPIO ORDER BY NOME');

    FDBatchMoveDataSetReader1.DataSet := QyLKPMunicipios;
    FDBatchMoveDataSetWriter1.DataSet := tbmLKPMunicipios;

    FDBatchMove1.Reader := FDBatchMoveDataSetReader1;
    FDBatchMove1.Writer := FDBatchMoveDataSetWriter1;
    FDBatchMove1.Execute;
    tbmLKPMunicipios.SaveToFile(FsTemp+'municipios.json');
  end
  else
  begin
    tbmLKPMunicipios.LoadFromFile(FsTemp+'municipios.json');
    tbmLKPMunicipios.Open;
  end;


end;

procedure TdmAcesso.QyPedidosIDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsInteger < 0 then
    Text := ''
  else
    Text := Sender.AsString;
end;

procedure TdmAcesso.QyPedidosTIPOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'O' then
    text := 'Orçamento'

  else if Sender.AsString = 'V' then
    text := 'Pre-Venda'

  else if Sender.AsString = 'B' then
    text := 'Bloqueada'

  else if Sender.AsString = 'P' then
    text := 'Pendencia'

  else if Sender.AsString = 'F' then
    text := 'Cupom Fiscal'

  else if Sender.AsString = 'C' then
    text := 'NFe Cancel.'

  else if Sender.AsString = 'N' then
    text := 'NFe'

  else if Sender.AsString = 'D' then
    text := 'NFe Devol.'

  else if Sender.AsString = 'X' then
    text := 'Excluida'

  else if Sender.AsString = 'E' then
    text := 'Editando...'

  else if Sender.AsString = 'Y' then
    text := 'Carteira'

  else if Sender.AsString = 'T' then
    text := 'Transferencia'

  else if Sender.AsString = 'K' then
    text := 'NFCe'

  else if Sender.AsString = 'L' then
    text := 'NFCe Cancel.'
  else
    text := '';
end;

procedure TdmAcesso.tbmLKPEstadosAfterOpen(DataSet: TDataSet);
begin
  if FileExists(FsTemp+'municipios.json') then
  begin
    tbmLKPMunicipios.LoadFromFile(FsTemp+'municipios.json');
    tbmLKPMunicipios.Open;
  end;
end;

procedure removerRegistro(id: Integer; tabela:string);
begin
  with dmAcesso.QySQLCRUD do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM ' +tabela + ' WHERE ID=' +IntToStr(id));
    try
      ExecSQL;
    except on E: Exception do
      if Pos('Cannot delete or update a parent row',e.Message)<>0 then
      begin
        ShowMessage('Impossível remover registro');
      end;
    end;
  end;
end;

procedure bloquearRegistro(id: Integer; tabela:string);
begin
  with dmAcesso.QySQLCRUD do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE ' +tabela + ' SET BLOQUEADO=1 WHERE ID=' +IntToStr(id));
    try
      ExecSQL;
    except on E: Exception do
      ShowMessage(E.Message);
    end;
  end;
end;

end.
