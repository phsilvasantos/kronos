unit krnProcedures;

interface

uses udmAcesso,urptEspelhoVenda, Vcl.Forms, System.SysUtils;

procedure imprimirEspelhoPedido(id: Integer);

implementation
procedure imprimirEspelhoPedido(id: Integer);
begin
  try
    Application.CreateForm(TrptEspelhoVenda,rptEspelhoVenda);
    rptEspelhoVenda.qyAux.Close;
    rptEspelhoVenda.qyAux.SQL.Clear;
    rptEspelhoVenda.qyAux.SQL.Add('SELECT DISTINCT DV.ID_FILIAL,DV.ITEM ');
    rptEspelhoVenda.qyAux.SQL.Add(',DV.ID_VENDA ,DV.ID_PRODUTO , P.GTIN ,P.DESCRICAO AS NOME_PRODUTO, ');
    rptEspelhoVenda.qyAux.SQL.Add('P.DESCRICAO_TECNICA ,U.CODIGO AS UNIDADE, ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.ID_CFOP , ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.QUANTIDADE , ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.PRECO , ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.SUBTOTAL ,DV.DESCONTO ,DV.TOTAL , ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.ALIQ_ICMS ,DV.VALOR_ICMS ,DV.ALIQ_IPI , ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.VALOR_IPI ,DV.VALOR_COMISSAO ,DV.INFOADICIONAL, ');
    rptEspelhoVenda.qyAux.SQL.Add('DV.ALTURA ,DV.LARGURA ,DV.AREA ,DV.ACRESCIMO ');
    rptEspelhoVenda.qyAux.SQL.Add('FROM DETALHE_VENDA DV ');
    rptEspelhoVenda.qyAux.SQL.Add('LEFT JOIN PRODUTO P ON P.ID = DV.ID_PRODUTO ');
    rptEspelhoVenda.qyAux.SQL.Add('LEFT JOIN UNIDADE U ON U.ID = DV.ID_UNIDADE ');
    rptEspelhoVenda.qyAux.SQL.Add('WHERE  DV.ITEM_SERVICO="N" ');
    rptEspelhoVenda.qyAux.SQL.Add('AND DV.ID_VENDA=:pID_PEDIDO ');

    if dmAcesso.QyConfigSistema.FieldByName('VENDA_ORDEM_ITEM').AsInteger = 1 then
      rptEspelhoVenda.qyAux.SQL.Add('ORDER BY DV.ID')
    else
      rptEspelhoVenda.qyAux.SQL.Add('ORDER BY P.DESCRICAO');


    rptEspelhoVenda.qyAux.ParamByName('pID_PEDIDO').AsInteger := id;
    rptEspelhoVenda.qyAux.open;

    rptEspelhoVenda.qyCliente.Close;
    rptEspelhoVenda.qyCliente.SQL.Clear;
    rptEspelhoVenda.qyCliente.SQL.Add('SELECT  V.TIPO,V.ID AS ID_PEDIDO,V.EMISSAO ,V.SUBTOTAL ,V.DESCONTO , V.PERC_MONTAGEM,  V.TOTAL  , V.DATAENTREGA, ');
    rptEspelhoVenda.qyCliente.SQL.Add('V.VALORENTRADA ,V.VALORICMS ,V.VALORIPI ,CP.NOME AS NOME_CONDICAOPAGTO, ');
    rptEspelhoVenda.qyCliente.SQL.Add('FP.NOME AS NOME_FORMAPAGTO,C.ID ,C.NOME,C.DOCUMENTO ,C.INSC_ESTADUAL , ');
    rptEspelhoVenda.qyCliente.SQL.Add('C.INSC_MUNICIPAL ,C.ENDERECO ,C.NUMERO ,C.COMPLEMENTO ,C.CEP ,C.TELEFONE_COM , C.TELEFONE_RES, ');
    rptEspelhoVenda.qyCliente.SQL.Add('C.BAIRRO ,C.CELULAR ,C.CIDADE ,C.UF ,V.PRAZOENTREGA ,U.NOME AS NOME_USUARIO,V.OBSERVACAO, V.VALORFRETE ');
    rptEspelhoVenda.qyCliente.SQL.Add('FROM ((((VENDA V JOIN VW_CLIENTE_LOGRADOURO C ON((C.ID = V.ID_CONTATO))) ');
    rptEspelhoVenda.qyCliente.SQL.Add('JOIN USUARIO U ON((U.ID = V.ID_USUARIO))) JOIN CONDICAOPAGAMENTO CP ON((CP.ID = V.ID_CONDICAOPAGAMENTO))) ');
    rptEspelhoVenda.qyCliente.SQL.Add(' JOIN FORMAPAGAMENTO FP ON((FP.ID = V.ID_FORMAPAGAMENTO))) ');
    rptEspelhoVenda.qyCliente.SQL.Add('WHERE V.ID=:pID_PEDIDO ');
    rptEspelhoVenda.qyCliente.ParamByName('pID_PEDIDO').AsInteger := id;
    rptEspelhoVenda.qyCliente.Open;






    if dmAcesso.QyConfigSistema.FieldByName('VENDA_ASSINATURA_ESPELHO').AsInteger = 1 then
      rptEspelhoVenda.bndAssinatura.Visible:= True;

    if dmAcesso.QyConfigSistema.FieldByName('VENDA_EXIBE_FATURA').AsInteger = 1 then
    begin
      rptEspelhoVenda.rlbFatura.Visible := True;
      rptEspelhoVenda.qyFatura.Close;
      rptEspelhoVenda.qyFatura.ParamByName('pID_PEDIDO').AsInteger := id;
      rptEspelhoVenda.qyFatura.Open;
    end;

    rptEspelhoVenda.RLReport1.PreviewModal;
  finally
    FreeAndNil(rptEspelhoVenda);
    //          if (Config.ReadInteger('ConfigLocal','exportaPDV',0) = 1) and
    //          (DmAcesso.QyConfigSistema.FieldByName('NFC_MENSAGEM_ENVIO').AsInteger = 0) then
    //            if alertaPergunta('Deseja emitir cupom fiscal') = IDYES then
    //               CupomFiscal;
  end;
end;


end.
