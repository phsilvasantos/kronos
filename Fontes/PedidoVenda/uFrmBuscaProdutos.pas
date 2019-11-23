unit uFrmBuscaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmBuscaProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    edtProduto: TLabeledEdit;
    edtQtd: TJvCalcEdit;
    edtPreco: TJvCalcEdit;
    edtDesconto: TJvCalcEdit;
    edtTotal: TJvCalcEdit;
    btnAdicionar: TBitBtn;
    dsProdutoBusca: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    QyProdutoBusca: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtQtdChange(Sender: TObject);
    procedure edtQtdKeyPress(Sender: TObject; var Key: Char);
    procedure QyProdutoBuscaAfterScroll(DataSet: TDataSet);
  private
    procedure carregaListaProduto;
  procedure buscarProduto(pSql: string; pOrderBy: string; const pWhere : string = '';
  const innerJoin: string = '';
  const pInicial : integer = 0; const pFinal : integer = 20; const pQueryName: string = '');
  public
    { Public declarations }
  end;

var
  FrmBuscaProdutos: TFrmBuscaProdutos;

implementation

uses
  udmAcesso, krnVarGlobais, uFrmPedidoVenda, uFrmCadastroCompras, krnConst;

{$R *.dfm}

procedure TFrmBuscaProdutos.btnAdicionarClick(Sender: TObject);
begin
  if Self.Tag = CONST_FORM_PEDIDO then
  begin
    if dsProdutoBusca.DataSet.RecordCount>0 then
    begin
      with FrmPedidoVenda do
      begin
        if dmAcesso.QyPedidos.State in [dsInsert] then
          dmAcesso.QyPedidos.Post;

        dmAcesso.QyLKPTributacao.Locate('ID',dsProdutoBusca.DataSet.FieldByName('ID_TRIBUTACAO').AsInteger,[loCaseInsensitive]);


        QyItemPedido.BeforeInsert := nil;
        QyItemPedido.Append;
        QyItemPedido.FieldByName('ID_FILIAL').AsInteger   := Estabelecimento;
        QyItemPedido.FieldByName('ID_VENDA').AsInteger    := dmAcesso.QyPedidos.FieldByName('ID').AsInteger;
        QyItemPedido.FieldByName('ITEM').AsInteger        := 1;
        QyItemPedido.FieldByName('ID_PRODUTO').AsInteger  := dsProdutoBusca.DataSet.FieldByName('ID').AsInteger;
        QyItemPedido.FieldByName('ID_UNIDADE').AsInteger  := dsProdutoBusca.DataSet.FieldByName('ID_UNIDADE').AsInteger;
        QyItemPedido.FieldByName('ID_DEPARTAMENTO').AsInteger := dsProdutoBusca.DataSet.FieldByName('ID_DEPARTAMENTO').AsInteger;
        QyItemPedido.FieldByName('ID_CFOP').AsInteger   := dmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_CFOP').AsInteger;
        QyItemPedido.FieldByName('QUANTIDADE').AsFloat  := edtQtd.Value;
        QyItemPedido.FieldByName('PRECO').AsFloat       := edtPreco.Value;
        QyItemPedido.FieldByName('SUBTOTAL').AsFloat    := edtQtd.Value * edtPreco.Value;
        QyItemPedido.FieldByName('DESCONTO').AsFloat    := edtDesconto.Value;
        QyItemPedido.FieldByName('TOTAL').AsFloat       := QyItemPedido.FieldByName('SUBTOTAL').AsFloat;


        if dmAcesso.QyLKPTributacao.FieldByName('CRT').AsInteger=3 then //REGIME NORMAL
        begin
          QyItemPedido.FieldByName('CRT').AsInteger       := dmAcesso.QyLKPTributacao.FieldByName('CRT').AsInteger;
          QyItemPedido.FieldByName('CSTICMS').AsInteger   := dmAcesso.QyLKPTributacao.FieldByName('CSTICMS').AsInteger;
          QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat   := dmAcesso.QyLKPTributacao.FieldByName('PICMS').AsFloat;
          QyItemPedido.FieldByName('CSOSN').AsInteger     := 0;
        end
        else
        begin
          QyItemPedido.FieldByName('CRT').AsInteger       := 0;
          QyItemPedido.FieldByName('CSTICMS').AsInteger   := 0;
          QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat   := 0;
          QyItemPedido.FieldByName('CSOSN').AsInteger     := dmAcesso.QyLKPTributacao.FieldByName('CSOSN').AsInteger;
        end;



        QyItemPedido.FieldByName('BASE_ICMS').AsFloat   := QyItemPedido.FieldByName('SUBTOTAL').AsFloat;
        QyItemPedido.FieldByName('VALOR_ICMS').AsFloat  := (QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat / 100)* QyItemPedido.FieldByName('BASE_ICMS').AsFloat;

        QyItemPedido.FieldByName('CSTIPI').AsInteger    := dmAcesso.QyLKPTributacao.FieldByName('CSTIPI').AsInteger;
        QyItemPedido.FieldByName('ALIQ_IPI').AsFloat    := dmAcesso.QyLKPTributacao.FieldByName('PIPI').AsFloat;
        QyItemPedido.FieldByName('VALOR_IPI').AsFloat   := QyItemPedido.FieldByName('BASE_ICMS').AsFloat* (dmAcesso.QyLKPTributacao.FieldByName('PIPI').AsFloat/100);

        QyItemPedido.FieldByName('ALIQ_PIS').AsFloat    := dmAcesso.QyLKPTributacao.FieldByName('PPIS').AsFloat;
        QyItemPedido.FieldByName('VALOR_PIS').AsFloat   :=  QyItemPedido.FieldByName('TOTAL').AsFloat*(dmAcesso.QyLKPTributacao.FieldByName('PPIS').AsFloat/100);

        QyItemPedido.FieldByName('ALIQ_COFINS').AsFloat := dmAcesso.QyLKPTributacao.FieldByName('PCOFINS').AsFloat;
        QyItemPedido.FieldByName('VALOR_COFINS').AsFloat  := QyItemPedido.FieldByName('TOTAL').AsFloat*(dmAcesso.QyLKPTributacao.FieldByName('PCOFINS').AsFloat/100);

        QyItemPedido.FieldByName('VALOR_OUTROS').AsFloat  := 0;
        QyItemPedido.FieldByName('VALOR_SEGURO').AsFloat  := 0;
        QyItemPedido.FieldByName('VALOR_FRETE').AsFloat   := 0;
        QyItemPedido.FieldByName('INFOADICIONAL').AsString:= '';
        QyItemPedido.FieldByName('STATUS').AsString       := 'N';
        QyItemPedido.FieldByName('ITEM_SERVICO').AsString := 'N';
        QyItemPedido.Post;
        edtProduto.Clear;
        carregaListaProduto;
        edtProduto.SetFocus;
        edtQtd.Value:=1;
        QyItemPedido.BeforeInsert := FrmPedidoVenda.QyItemPedidoBeforeInsert;
      end;
    end;
  end
  else
  begin
    if dsProdutoBusca.DataSet.RecordCount>0 then
    begin
      with FrmCadastroCompra do
      begin
        if QyCompra.State in [dsInsert] then
          QyCompra.Post;

        dmAcesso.QyLKPTributacao.Locate('ID',dsProdutoBusca.DataSet.FieldByName('ID_TRIBUTACAO').AsInteger,[loCaseInsensitive]);

        QyItems.BeforeInsert := nil;
        QyItems.Insert;
        QyItems.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
        QyItems.FieldByName('ID_COMPRA').AsInteger := QyCompra.FieldByName('ID').AsInteger;
        QyItems.FieldByName('ITEM').AsInteger := 1;
        QyItems.FieldByName('ID_PRODUTO').AsInteger := dsProdutoBusca.DataSet.FieldByName('ID').AsInteger;;
        QyItems.FieldByName('ID_DEPARTAMENTO').AsInteger := dsProdutoBusca.DataSet.FieldByName('ID_DEPARTAMENTO').AsInteger;;
        QyItems.FieldByName('ID_UNIDADE').AsInteger := dsProdutoBusca.DataSet.FieldByName('ID_UNIDADE').AsInteger;;
        QyItems.FieldByName('ID_CFOP').AsInteger := dmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_CFOP').AsInteger;;
        QyItems.FieldByName('QUANTIDADE').AsFloat := edtQtd.Value;
        QyItems.FieldByName('PRECO').AsFloat := edtPreco.Value;
        QyItems.FieldByName('SUBTOTAL').AsFloat := edtQtd.Value * edtPreco.Value;;
        QyItems.FieldByName('DESCONTO').AsFloat := edtDesconto.Value;
        QyItems.FieldByName('TOTAL').AsFloat := QyItems.FieldByName('SUBTOTAL').AsFloat;

        if dmAcesso.QyLKPTributacao.FieldByName('CRT').AsInteger=3 then //REGIME NORMAL
        begin
          QyItems.FieldByName('CRT').AsInteger    := dmAcesso.QyLKPTributacao.FieldByName('CRT').AsInteger;
          QyItems.FieldByName('CSTICMS').AsString := dmAcesso.QyLKPTributacao.FieldByName('CSTICMS').AsString;
          QyItems.FieldByName('ALIQ_ICMS').AsFloat:= dmAcesso.QyLKPTributacao.FieldByName('PICMS').AsFloat;
        end
        else
        begin
          QyItems.FieldByName('CSOSN').AsInteger := dmAcesso.QyLKPTributacao.FieldByName('CSOSN').AsInteger;
        end;

        QyItems.FieldByName('BASE_ICMS').AsFloat := QyItems.FieldByName('SUBTOTAL').AsFloat;
        QyItems.FieldByName('VALOR_ICMS').AsFloat := 0;
        QyItems.FieldByName('CSTIPI').AsString := '53';
        QyItems.FieldByName('ALIQ_IPI').AsFloat := 0;
        QyItems.FieldByName('VALOR_IPI').AsFloat := 0;
        QyItems.FieldByName('CSTPIS').AsString := '07';
        QyItems.FieldByName('ALIQ_PIS').AsFloat := 0;
        QyItems.FieldByName('VALOR_PIS').AsFloat := 0;
        QyItems.FieldByName('CSTCOFINS').AsString := '07';
        QyItems.FieldByName('ALIQ_COFINS').AsFloat := 0;
        QyItems.FieldByName('VALOR_COFINS').AsFloat := 0;
        QyItems.FieldByName('ALIQ_II').AsFloat := 0;
        QyItems.FieldByName('VALOR_II').AsFloat := 0;
        QyItems.FieldByName('VALOR_OUTROS').AsFloat := 0;
        QyItems.FieldByName('VALOR_SEGURO').AsFloat := 0;
        QyItems.FieldByName('VALOR_FRETE').AsFloat := 0;
        QyItems.FieldByName('INFOADICIONAL').AsString := '';
        QyItems.FieldByName('STATUS').AsString := 'N';
        QyItems.Post;
        edtProduto.Clear;
        carregaListaProduto;
        edtProduto.SetFocus;
        edtQtd.Value:=1;
        QyItems.BeforeInsert := FrmCadastroCompra.QyItemsBeforeInsert;
      end;
    end;
  end;
end;

procedure TFrmBuscaProdutos.carregaListaProduto;
begin
  buscarProduto('SELECT PRODUTO.ID, PRODUTO.GTIN, PRODUTO.DESCRICAO, PRODUTO.PRECO, PRODUTO.PRECO_COMPRA, COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD'
  +',PRODUTO.ID_UNIDADE, PRODUTO.ID_DEPARTAMENTO, PRODUTO.ID_TRIBUTACAO, PRODUTO.PRECO_COMPRA'
  +' FROM PRODUTO',
  'DESCRICAO'
  ,'WHERE BLOQUEADO = 0',
  'LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = ' + IntToStr(Estabelecimento)
  ,0,100,'QyProdutoBusca');
end;

procedure TFrmBuscaProdutos.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13 ) then
  begin
    if Trim(edtProduto.Text) <> '' then
      buscarProduto('SELECT PRODUTO.ID, PRODUTO.GTIN, PRODUTO.DESCRICAO, PRODUTO.PRECO, PRODUTO.PRECO_COMPRA, COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD'
      +',PRODUTO.ID_UNIDADE, PRODUTO.ID_DEPARTAMENTO, PRODUTO.ID_TRIBUTACAO, PRODUTO.PRECO_COMPRA'
      +' FROM PRODUTO'

      ,
      'DESCRICAO',
      'WHERE BLOQUEADO = 0 AND '+
      '(PRODUTO.DESCRICAO LIKE ' + QuotedStr('%'+ Trim(edtProduto.Text +'%'))+')'+
      'OR (PRODUTO.GTIN LIKE' + QuotedStr('%'+ Trim(edtProduto.Text +'%'))+')' ,
      ' LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = ' + IntToStr(Estabelecimento) ,
      0,
      100,
      'QyProdutoBusca')
    else
      buscarProduto('SELECT PRODUTO.ID, PRODUTO.GTIN, PRODUTO.DESCRICAO, PRODUTO.PRECO, PRODUTO.PRECO_COMPRA, COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD'
       +',PRODUTO.ID_UNIDADE, PRODUTO.ID_DEPARTAMENTO, PRODUTO.ID_TRIBUTACAO, PRODUTO.PRECO_COMPRA'
       +' FROM PRODUTO',
      'DESCRICAO','WHERE BLOQUEADO = 0' ,
      'LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = ' + IntToStr(Estabelecimento),0,100,'QyProdutoBusca');
  end;
end;

procedure TFrmBuscaProdutos.edtQtdChange(Sender: TObject);
begin
  edtTotal.Value :=
    (edtPreco.Value * edtQtd.Value)-edtDesconto.Value;
end;

procedure TFrmBuscaProdutos.edtQtdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmBuscaProdutos.FormShow(Sender: TObject);
begin
  carregaListaProduto;


  //desabilita edicao de preco caso o usuario não tenha permissão
//  if (UsuarioGerente=0) then
//    edtPreco.Enabled := False;


    //PRECO DE COMPRA VISIVEL SOMENTE PARA GERENTE
  if UsuarioGerente=1 then
    JvDBGrid1.Columns[3].Visible := True
  else
    JvDBGrid1.Columns[3].Visible := False;

  dsProdutoBusca.DataSet.First;
  edtQtd.Value:=1;

  if SELF.Tag = CONST_FORM_PEDIDO then
    edtPreco.Value := dsProdutoBusca.DataSet.FieldByName('PRECO').AsFloat
  else
    edtPreco.Value := dsProdutoBusca.DataSet.FieldByName('PRECO_COMPRA').AsFloat;

  edtDesconto.Value := 0;
  edtTotal.Value := edtQtd.Value* edtPreco.Value;

end;

procedure TFrmBuscaProdutos.QyProdutoBuscaAfterScroll(DataSet: TDataSet);
begin
  edtQtd.Value :=1;
  if FrmBuscaProdutos.Tag = CONST_FORM_COMPRA then
    edtPreco.Value := DataSet.FieldByName('PRECO_COMPRA').AsFloat
  else
    edtPreco.Value := DataSet.FieldByName('PRECO').AsFloat;

  edtDesconto.Value:=0;
  edtTotal.Value := edtQtd.Value * edtPreco.Value;
end;

procedure TFrmBuscaProdutos.buscarProduto(pSql, pOrderBy: string; const pWhere,
  innerJoin: string; const pInicial, pFinal: integer; const pQueryName: string);
begin

  QyProdutoBusca.Close;
  QyProdutoBusca.SQL.Clear;
  QyProdutoBusca.SQL.Add(pSql);

  if innerJoin<> '' then
    QyProdutoBusca.SQL.Add(innerJoin);

  if pWhere<> '' then
    QyProdutoBusca.SQL.Add(pWhere);

  if pOrderBy<> '' then
    QyProdutoBusca.SQL.Add(' ORDER BY '+pOrderBy);

  QyProdutoBusca.SQL.Add(' LIMIT ' + inttostr(pInicial) + ',' + inttostr(pfinal));
  QyProdutoBusca.Open();

end;

end.
