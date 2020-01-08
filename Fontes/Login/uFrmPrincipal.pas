unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExButtons, JvBitBtn, Vcl.Menus, JvExControls,
  JvDBLookup, JvgGroupBox, JvMarkupLabel, Vcl.ExtCtrls, JvBaseDlg, JvLoginForm;

type
  TFrmPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    btnNext: TBitBtn;
    BtnPrior: TBitBtn;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    pmFinanceiro: TPopupMenu;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    dsFilial: TDataSource;
    pmConfiguracoes: TPopupMenu;
    Sistema1: TMenuItem;
    Estabelecimento1: TMenuItem;
    Usurios1: TMenuItem;
    Alterarsenha1: TMenuItem;
    gbxEmpresas: TJvgGroupBox;
    Label1: TLabel;
    cbbFilial: TJvDBLookupCombo;
    JvgGroupBox1: TJvgGroupBox;
    btnProdutos: TJvBitBtn;
    btnContatos: TJvBitBtn;
    BtnOrcamentos: TJvBitBtn;
    btnFinanceiro: TJvBitBtn;
    BtnRecebimento: TJvBitBtn;
    BtnConfiguracoes: TJvBitBtn;
    btnEstoque: TJvBitBtn;
    N1: TMenuItem;
    Formasdepagamentos1: TMenuItem;
    Condiesdepagamentos1: TMenuItem;
    Panel1: TPanel;
    lblUsuarioLogado: TJvMarkupLabel;
    Programador1: TMenuItem;
    JvLoginDialog1: TJvLoginDialog;
    Importaes1: TMenuItem;
    procedure btnNextClick(Sender: TObject);
    procedure BtnPriorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnContatosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOrcamentosClick(Sender: TObject);
    procedure BtnRecebimentoClick(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbbFilialKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbFilialCloseUp(Sender: TObject);
    procedure Estabelecimento1Click(Sender: TObject);
    procedure Sistema1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Alterarsenha1Click(Sender: TObject);
    procedure btnEstoqueClick(Sender: TObject);
    procedure Condiesdepagamentos1Click(Sender: TObject);
    procedure Formasdepagamentos1Click(Sender: TObject);
    procedure Programador1Click(Sender: TObject);
    procedure JvLoginDialog1GetPassword(Sender: TObject; const UserName: string;
      var Password: string);
  private
      paginate : integer;
   pagAtual: integer;

   procedure updateFilialcbb;

   procedure modifyFilial;
   procedure carregarAcesso;
  public
    { Public declarations }
  end;
//  procedure StatusServico ; stdcall; external 'krnNFe.dll' name 'StatusServico';
// procedure chamaMDFe(idFilial: Integer); stdcall; external 'MDFe.dll' name 'chamaForm';
var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uFrmLista, uFrmListaProduto, uFrmListaContatos, ufrmLogin, krnVarGlobais, uFrmListaPedidos, UFrmListaCompras, uFrmListaContasReceber, udmAcesso, uFrmListaEstabelecimentos, Funcoes, uFrmConfiguracaoSistema, ufrmCadastroPerfil, uFrmAlterarSenha, uFrmListaEstoque, uFrmListaCondicaoPagamentos, uFrmListaFormapagamentos, uFrmFormularioTeste;

procedure TFrmPrincipal.Alterarsenha1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmAlterarSenha,FrmAlterarSenha);
    FrmAlterarSenha.edtUsuario.Text := UsuarioLogadoNome;
    FrmAlterarSenha.ShowModal;
  finally
    if FrmAlterarSenha.ModalResult = mrOk then
    begin
      if updateSenhaUsuario(UsuarioLogado, UsuarioLogadoNome,
       Trim(FrmAlterarSenha.edtSenha.Text)) then
        AlertaInfo('Senha alterada.')
      else
        AlertaError('Erro ao alterada senha.');
    end;

    FreeAndNil(FrmAlterarSenha);
  end;

end;

procedure TFrmPrincipal.btnContatosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaContatos, FrmListaContatos);
    FrmListaContatos.ListaField := 'CONTATO.ID, CONTATO.NOME, CONTATO.APELIDO, '+
    'CONTATO.DOCUMENTO, CONTATO.TELEFONE, CONTATO.CELULAR, CONTATO.INSC_ESTADUAL, CONTATO.BLOQUEADO ';

    FrmListaContatos.FieldOrderBy := 'CONTATO.NOME';
    FrmListaContatos.Tabela := 'CONTATO';
    FrmListaContatos.ShowModal;
  finally
    freeandnil(FrmListaContatos);
  end;
end;

procedure TFrmPrincipal.btnNextClick(Sender: TObject);
begin
  inc(pagAtual,10);

  BtnPrior.Enabled := true;
end;

procedure TFrmPrincipal.BtnOrcamentosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaPedidos, FrmListaPedidos);
    FrmListaPedidos.ListaField := 'CASE FINALIDADENFE '
    +'when 0 THEN "Não Fiscal" '
    +'when 1 then "NFe Normal"'
    +'when 2 then "NFe Compl."'
    +'when 3 then "NFe Ajuste"'
    +'when 4 then "NFe Devol."'
    +'else'
    +'"Não Fiscal"'
    +'end as FINALIDADENFE, '
    +'FMT_TIPOVENDA(VENDA.TIPO) AS TIPO, '
    +'VENDA.XMLNFE, VENDA.BLOQUEADO, '
    +'VENDA.PROTOCOLOCANCELAMENTO,'
    +'VENDA.RECIBOCANCELAMENTO,'
    +'VENDA.ID, VENDA.EMISSAO,'
    +'CONTATO.DOCUMENTO AS CPFCNPJ,'
    +'TRIM(LEADING "0" FROM SUBSTR(VENDA.CHAVENFE,26,9)) AS NUMERO_NOTA,'
    +'VENDA.ID_CONTATO,CONTATO.NOME, VENDA.SUBTOTAL, VENDA.DESCONTO, VENDA.TOTAL, '
    +'VENDA.CHAVENFE, VENDA.PROTOCOLONFE'; //todos os campos
    FrmListaPedidos.InnerJoin := ' INNER JOIN CONTATO ON CONTATO.ID = VENDA.ID_CONTATO ';
    FrmListaPedidos.Where := 'WHERE VENDA.ID_FILIAL = ' + IntToStr(Estabelecimento);
    FrmListaPedidos.FieldOrderBy := 'VENDA.ID DESC';
    FrmListaPedidos.Tabela := 'VENDA';
    FrmListaPedidos.Caption := 'Lista de Pedidos';
    FrmListaPedidos.ShowModal;
  finally
    freeandnil(FrmListaPedidos);
  end;
end;

procedure TFrmPrincipal.BtnPriorClick(Sender: TObject);
begin
  if pagAtual <= 0 then
  begin
    pagAtual := 0;
    BtnPrior.Enabled := false;
  end
  else
    dec(pagAtual,10);

end;

procedure TFrmPrincipal.Formasdepagamentos1Click(Sender: TObject);
begin
 try
    Application.CreateForm(TFrmListaFormapagamentos,FrmListaFormapagamentos);

    with FrmListaFormapagamentos do
    begin
      ListaField := 'ID, NOME, TIPO_PAGAMENTO, NUMERO_PARCELA';
      InnerJoin:= '';
      Where:= '';
      FieldOrderBy := 'NOME';
      Tabela:='FORMAPAGAMENTO';
      Caption := 'Lista de Forma de Pagamento';
    end;
    FrmListaFormapagamentos.ShowModal;
  finally
    FreeAndNil(FrmListaFormapagamentos);

  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Action = caHide then
    Application.Terminate;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  paginate := 10;
  pagAtual :=0;

  try
     Application.CreateForm(TFrmLogin, FrmLogin);
     FrmLogin.ShowModal;
  except

  end;



end;

procedure TFrmPrincipal.FormShow(Sender: TObject);

begin
  dsFilial.DataSet.Locate('ID', Estabelecimento, [loCaseInsensitive]);
  cbbFilial.KeyValue :=dsFilial.DataSet.FieldByName('ID').AsInteger;
  carregarAcesso;
  lblUsuarioLogado.Text := 'Usuário: '+ UsuarioLogadoNomeCompleto;
  lblUsuarioLogado.ShowHint := True;
  lblUsuarioLogado.Hint := 'Login: ' + UsuarioLogadoNome;
end;

procedure TFrmPrincipal.JvLoginDialog1GetPassword(Sender: TObject;
  const UserName: string; var Password: string);
begin
 if (UserName='janilson') and (Password='@180579#') then
  begin
    try
      Application.CreateForm(TFrmFormularioTeste,FrmFormularioTeste);
      FrmFormularioTeste.ShowModal;
    finally
      FreeAndNil(FrmFormularioTeste);
    end;
  end;
end;

procedure TFrmPrincipal.btnEstoqueClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaEstoque, FrmListaEstoque);
    FrmListaEstoque.ListaField := 'PRODUTO.ID, PRODUTO.GTIN, UNIDADE.CODIGO as UND, PRODUTO.DESCRICAO,' +
    ' MARCA.NOME AS MARCA, PRODUTO.NCM, PRODUTO.PRECO, COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD, '+
    'PRODUTO.BLOQUEADO'; //todos os campos
    FrmListaEstoque.InnerJoin :=
    ' INNER JOIN UNIDADE ON UNIDADE.ID=PRODUTO.ID_UNIDADE '
    + ' INNER JOIN MARCA ON MARCA.ID=PRODUTO.ID_MARCA '
    + ' LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = ' + IntToStr(Estabelecimento)

    ;
    FrmListaEstoque.Where := ' WHERE PRODUTO.BLOQUEADO = 0 ';
    FrmListaEstoque.FieldOrderBy := 'DESCRICAO';
    FrmListaEstoque.Tabela := 'PRODUTO';
    FrmListaEstoque.Caption := 'Lista de consulta de estoque';
    FrmListaEstoque.ShowModal;
  finally
    freeandnil(FrmListaEstoque);
  end;
end;

procedure TFrmPrincipal.modifyFilial;
begin
  Estabelecimento := cbbFilial.KeyValue;

  dmAcesso.QyFiliais.Locate('ID',Estabelecimento,[loCaseInsensitive]);
  dmAcesso.QyConfigSistema.Close;
  dmAcesso.QyConfigSistema.Open('SELECT * FROM CONFIGURACAO_SISTEMA WHERE ID_FILIAL='+IntToStr(Estabelecimento));
  //updateFilialcbb;
  CarregarAcesso;

end;

procedure TFrmPrincipal.Programador1Click(Sender: TObject);
var
  vAux: string;
begin
  JvLoginDialog1.Active:=True;
  JvLoginDialog1.Login;
  JvLoginDialog1.Active:=false;
end;

procedure TFrmPrincipal.Sistema1Click(Sender: TObject);
begin
  if UsuarioGerente=1 then
  begin
    try
      Application.CreateForm(TFrmConfiguracaoSistema,FrmConfiguracaoSistema);
      dmAcesso.QyConfigSistema.Edit;

      FrmConfiguracaoSistema.ShowModal;
    finally
      FreeAndNil(FrmConfiguracaoSistema);
    end;
  end
  else
  begin
    AlertaInfo('Somente o gerente tem acesso.');
  end;
end;

procedure TFrmPrincipal.updateFilialcbb;
var
  i: Integer;
begin

  for I := 0  to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TJvBitBtn then
      (self.Components[i] as TJvBitBtn).Enabled :=True;
  end;

  if (Estabelecimento = 4) and (UsuarioGerente = 0) then
  begin
    for I := 0  to Self.ComponentCount - 1 do
    begin
      if Self.Components[i] is TJvBitBtn then
        if (self.Components[i] as TJvBitBtn).Tag = 0 then
          (self.Components[i] as TJvBitBtn).Enabled :=False;
    end;
  end;
end;

procedure TFrmPrincipal.Usurios1Click(Sender: TObject);
begin
  if UsuarioGerente=1 then
  begin
    try
      Application.CreateForm(TfrmCadastroPerfil, frmCadastroPerfil);
      frmCadastroPerfil.QyCadastroPerfil.Open();
      frmCadastroPerfil.ShowModal;
    finally
      FreeAndNil(frmCadastroPerfil);
    end;
  end
  else
  begin
    AlertaInfo('Somente o gerente tem acesso.');
  end;
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaProduto, FrmListaProduto);
    FrmListaProduto.ListaField := 'PRODUTO.ID, PRODUTO.GTIN, UNIDADE.CODIGO as UND, PRODUTO.DESCRICAO,' +
    ' MARCA.NOME AS MARCA, PRODUTO.NCM, PRODUTO.PRECO, COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD, '+
    'PRODUTO.BLOQUEADO'; //todos os campos
    FrmListaProduto.InnerJoin :=
    ' INNER JOIN UNIDADE ON UNIDADE.ID=PRODUTO.ID_UNIDADE '
    + ' INNER JOIN MARCA ON MARCA.ID=PRODUTO.ID_MARCA '
    + ' LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = ' + IntToStr(Estabelecimento)
    ;


    FrmListaProduto.Where := 'WHERE PRODUTO.BLOQUEADO=0';

    FrmListaProduto.FieldOrderBy := 'DESCRICAO';
    FrmListaProduto.Tabela := 'PRODUTO';
    FrmListaProduto.Caption := 'Lista de produtos';
    FrmListaProduto.ShowModal;
  finally
    freeandnil(FrmListaProduto);
  end;
end;


procedure TFrmPrincipal.BtnRecebimentoClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaCompras,FrmListaCompras);
    FrmListaCompras.ListaField := 'FMT_FINALIDADENFE(COMPRA.FINALIDADENFE) as FINALIDADENFE , '
    +'FMT_SITUACAOCOMPRA(COMPRA.SITUACAO) AS SITUACAO,'
    +'COMPRA.ID, COMPRA.EMISSAO,CONTATO.NOME,TRIM(LEADING "0" FROM SUBSTR(COMPRA.CHAVENFE,26,9)) AS NUMERO_NOTA,'
    +'COMPRA.ID_CONTATO, COMPRA.TOTAL, COMPRA.CHAVENFE, COMPRA.PROTOCOLONFE ';
    FrmListaCompras.InnerJoin := ' INNER JOIN CONTATO ON CONTATO.ID = COMPRA.ID_CONTATO ';
    FrmListaCompras.Where := ' WHERE COMPRA.ID_FILIAL = ' + IntToStr(Estabelecimento);
    FrmListaCompras.FieldOrderBy := 'COMPRA.ID DESC';

    FrmListaCompras.Tabela := 'COMPRA';
    FrmListaCompras.Caption := 'Lista de compras';
    FrmListaCompras.ShowModal;
  finally
    FreeAndNil(FrmListaCompras);
  end;
end;

procedure TFrmPrincipal.carregarAcesso;
begin
  btnProdutos.Enabled := dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([btnProdutos.Hint,0]), [loCaseInsensitive]);
  btnContatos.Enabled := dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([btnContatos.Hint,0]), [loCaseInsensitive]);
  BtnOrcamentos.Enabled := dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([BtnOrcamentos.Hint,0]), [loCaseInsensitive]);
  BtnRecebimento.Enabled := dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([BtnRecebimento.Hint,0]), [loCaseInsensitive]);
  ContasaReceber1.Enabled :=dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([ContasaReceber1.Hint,0]), [loCaseInsensitive]);
  ContasaPagar1.Enabled :=dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([ContasaPagar1.Hint,0]), [loCaseInsensitive]);
  Formasdepagamentos1.Enabled :=dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([Formasdepagamentos1.Hint,0]), [loCaseInsensitive]);
  Condiesdepagamentos1.Enabled :=dmAcesso.QyMenus.Locate('NAME;BLOQUEADO',VarArrayOf([Condiesdepagamentos1.Hint,0]), [loCaseInsensitive]);

end;

procedure TFrmPrincipal.cbbFilialCloseUp(Sender: TObject);
begin
  modifyFilial;
end;

procedure TFrmPrincipal.cbbFilialKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  modifyFilial;
end;

procedure TFrmPrincipal.Condiesdepagamentos1Click(Sender: TObject);
begin
 try
    Application.CreateForm(TFrmListaCondicaoPagamentos,FrmListaCondicaoPagamentos);

    with FrmListaCondicaoPagamentos do
    begin
      ListaField := 'ID, NOME, TIPO_PAGAMENTO, BLOQUEADO';
      InnerJoin:= '';
      Where:= '';
      FieldOrderBy := 'NOME';
      Tabela:='CONDICAOPAGAMENTO';
      Caption := 'Lista de Condição de Pagamento';
    end;
    FrmListaCondicaoPagamentos.ShowModal;
  finally
    FreeAndNil(FrmListaCondicaoPagamentos);

  end;
end;

procedure TFrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
{ TODO -oJanilson -c :  08/03/2019 13:40:58 }

  try
    Application.CreateForm(TFrmListaContasReceber,FrmListaContasReceber);

    with FrmListaContasReceber do
    begin
      ListaField := 'LANCAMENTO.ID, LANCAMENTO.DOCUMENTO, LANCAMENTO.PARCELA, LANCAMENTO.ID_CONTATO, CONTATO.NOME AS NOME_CONTATO , ' +
                    'LANCAMENTO.ID_CONDICAOPAGAMENTO, CONDICAOPAGAMENTO.NOME AS NOME_CONDICAO, LANCAMENTO.EMISSAO, '+
                    'LANCAMENTO.VENCIMENTO, LANCAMENTO.BAIXA, LANCAMENTO.VALOR, LANCAMENTO.ID_COMPRA,'+
                    'LANCAMENTO.VALORPAGO,LANCAMENTO.ID_CONTACORRENTE, '+
                    'FMT_SITLANCAMENTO(LANCAMENTO.SITUACAO) AS SITUACAO, LANCAMENTO.ORIGEM, '+
                    'LANCAMENTO.TIPO_LANCAMENTO, LANCAMENTO.ID_VENDA, LANCAMENTO.ID_COMPRA ';
      InnerJoin:= 'INNER JOIN CONTATO ON CONTATO.ID=LANCAMENTO.ID_CONTATO '
                                     +'INNER JOIN CONDICAOPAGAMENTO ON CONDICAOPAGAMENTO.ID=LANCAMENTO.ID_CONDICAOPAGAMENTO ';
      Where:= ' WHERE LANCAMENTO.TIPO_LANCAMENTO = "D" AND LANCAMENTO.ID_FILIAL = ' + IntToStr(Estabelecimento);
      FieldOrderBy := 'LANCAMENTO.VENCIMENTO ';
      Tabela:='LANCAMENTO';
      TPLANCAMENTO:= 'CP';//Contas a pagar
      Caption := 'Lista de contas a pagar';
    end;
    FrmListaContasReceber.ShowModal;
  finally
    FreeAndNil(FrmListaContasReceber);

  end;
end;

procedure TFrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaContasReceber,FrmListaContasReceber);

    with FrmListaContasReceber do
    begin
      ListaField := 'LANCAMENTO.ID, LANCAMENTO.DOCUMENTO, LANCAMENTO.PARCELA, LANCAMENTO.ID_CONTATO, CONTATO.NOME AS NOME_CONTATO,' +
                    'LANCAMENTO.ID_CONDICAOPAGAMENTO, CONDICAOPAGAMENTO.NOME AS NOME_CONDICAO, LANCAMENTO.EMISSAO, '+
                    'LANCAMENTO.VENCIMENTO, LANCAMENTO.BAIXA, LANCAMENTO.VALOR, LANCAMENTO.ID_VENDA, '+
                    'LANCAMENTO.VALORPAGO,LANCAMENTO.ID_CONTACORRENTE, '+
                    'FMT_SITLANCAMENTO(LANCAMENTO.SITUACAO) AS SITUACAO, LANCAMENTO.ORIGEM, '+
                    'LANCAMENTO.TIPO_LANCAMENTO, LANCAMENTO.ID_VENDA, LANCAMENTO.ID_COMPRA ';
      InnerJoin:= 'INNER JOIN CONTATO ON CONTATO.ID=LANCAMENTO.ID_CONTATO '
                                     +'INNER JOIN CONDICAOPAGAMENTO ON CONDICAOPAGAMENTO.ID=LANCAMENTO.ID_CONDICAOPAGAMENTO ';
      Where:= ' WHERE LANCAMENTO.TIPO_LANCAMENTO = "C" AND LANCAMENTO.ID_FILIAL = ' + IntToStr(Estabelecimento);
      FieldOrderBy := 'LANCAMENTO.VENCIMENTO ';
      Tabela:='LANCAMENTO';
      TPLANCAMENTO:= 'CR';//Contas a Receber
      Caption := 'Lista de contas a receber';
    end;


    FrmListaContasReceber.ShowModal;
  finally
    FreeAndNil(FrmListaContasReceber);

  end;
end;

procedure TFrmPrincipal.Estabelecimento1Click(Sender: TObject);
begin
  if UsuarioGerente=1 then
  begin
  try
    Application.CreateForm(TFrmListaEstabelecimentos, FrmListaEstabelecimentos);
    FrmListaEstabelecimentos.ListaField := 'FILIAL.ID, FILIAL.NOME, FILIAL.FANTASIA, '+
    'FMT_CPFCNPJ(FILIAL.DOCUMENTO) AS DOCUMENTO, FMT_TELEFONE(FILIAL.TELEFONE) AS TELEFONE, FMT_TELEFONE(FILIAL.CELULAR) AS CELULAR, FILIAL.INSC_ESTADUAL, FILIAL.BLOQUEADO ';
    FrmListaEstabelecimentos.FieldOrderBy := 'FILIAL.NOME';
    FrmListaEstabelecimentos.Tabela := 'FILIAL';
    FrmListaEstabelecimentos.ShowModal;
  finally
    freeandnil(FrmListaEstabelecimentos);
  end;
  end
  else
  begin
    AlertaInfo('Somente o gerente tem acesso.');
  end;
end;

end.
