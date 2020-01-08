program Kronos;

uses
  Vcl.Forms,
  System.SysUtils,
  ufrmLogin in 'Fontes\Login\ufrmLogin.pas' {FrmLogin},
  udmAcesso in 'Fontes\DataModule\udmAcesso.pas' {dmAcesso: TDataModule},
  uFrmPrincipal in 'Fontes\Login\uFrmPrincipal.pas' {FrmPrincipal},
  krnVarGlobais in 'Fontes\DataModule\krnVarGlobais.pas',
  MD5 in 'Fontes\DataModule\MD5.pas',
  uFrmCadastro in 'Fontes\Cadastro\Heranca\uFrmCadastro.pas' {FrmCadastro},
  uFrmLista in 'Fontes\Cadastro\Heranca\uFrmLista.pas' {FrmLista},
  uFrmListaContatos in 'Fontes\Cadastro\Contato\uFrmListaContatos.pas' {FrmListaContatos},
  uFrmCadastroProduto in 'Fontes\Cadastro\Produto\uFrmCadastroProduto.pas' {FrmCadastroProduto},
  uFrmListaProduto in 'Fontes\Cadastro\Produto\uFrmListaProduto.pas' {FrmListaProduto},
  uFrmCadastroContato in 'Fontes\Cadastro\Contato\uFrmCadastroContato.pas' {FrmCadastroContato},
  Funcoes in 'Fontes\DataModule\Funcoes.pas',
  uFrmListaPedidos in 'Fontes\PedidoVenda\uFrmListaPedidos.pas' {FrmListaPedidos},
  uFrmPedidoVenda in 'Fontes\PedidoVenda\uFrmPedidoVenda.pas' {FrmPedidoVenda},
  uFrmBuscaProdutos in 'Fontes\PedidoVenda\uFrmBuscaProdutos.pas' {FrmBuscaProdutos},
  uFrmTabelaAux in 'Fontes\Cadastro\Heranca\uFrmTabelaAux.pas' {FrmTabelaAux},
  urptRelatorio in 'Fontes\Relatorios\urptRelatorio.pas' {rptRelatorio},
  urptEspelhoVenda in 'Fontes\PedidoVenda\urptEspelhoVenda.pas' {rptEspelhoVenda},
  UfrmDadosAdicionais in 'Fontes\NFe\UfrmDadosAdicionais.pas',
  UfrmCCe in 'Fontes\NFe\UfrmCCe.pas' {frmCCe},
  UfrmEnvioNFe in 'Fontes\NFe\UfrmEnvioNFe.pas' {frmEnvioNFe},
  PMensagem in 'Fontes\Sistema\PMensagem.pas' {FrmMensagem},
  UFrmListaCompras in 'Fontes\Compra\UFrmListaCompras.pas' {FrmListaCompras},
  uFrmCadastroCompras in 'Fontes\Compra\uFrmCadastroCompras.pas' {FrmCadastroCompra},
  uFrmCentralRelatorios in 'Fontes\Relatorios\uFrmCentralRelatorios.pas' {FrmCentralRelatorios},
  UfrmAutorizacaoGerente in 'Fontes\PedidoVenda\UfrmAutorizacaoGerente.pas',
  krnConst in 'Fontes\DataModule\krnConst.pas',
  uFrmListaContasReceber in 'Fontes\Financa\uFrmListaContasReceber.pas' {FrmListaContasReceber},
  uFrmConsultaContatoReceita in 'Fontes\Cadastro\Contato\uFrmConsultaContatoReceita.pas' {FrmConsultaContatoReceita},
  UfrmFormularioBaixa in 'Fontes\Financa\UfrmFormularioBaixa.pas',
  urptRelatorioPaisagem in 'Fontes\Relatorios\urptRelatorioPaisagem.pas' {rptRelatorioPaisagem},
  uFrmCadastroTitulos in 'Fontes\Financa\uFrmCadastroTitulos.pas' {FrmCadastroTitulos},
  krnProcedures in 'Fontes\DataModule\krnProcedures.pas',
  uFrmListaEstabelecimentos in 'Fontes\Sistema\uFrmListaEstabelecimentos.pas' {FrmListaEstabelecimentos},
  uFrmCadastroEstabelecimento in 'Fontes\Sistema\uFrmCadastroEstabelecimento.pas' {FrmCadastroEstabelecimento},
  uFrmConfiguracaoSistema in 'Fontes\Sistema\uFrmConfiguracaoSistema.pas' {FrmConfiguracaoSistema},
  ufrmCadastroPerfil in 'Fontes\Sistema\ufrmCadastroPerfil.pas' {frmCadastroPerfil},
  ufrmSobre in 'Fontes\Sistema\ufrmSobre.pas' {frmSobre},
  uFrmListaUsuarios in 'Fontes\Sistema\uFrmListaUsuarios.pas' {FrmListaUsuarios},
  uFrmCadastroUsuario in 'Fontes\Sistema\uFrmCadastroUsuario.pas' {FrmCadastroUsuario},
  uFrmAlterarSenha in 'Fontes\Sistema\uFrmAlterarSenha.pas' {FrmAlterarSenha},
  uFrmListaEstoque in 'Fontes\Cadastro\Produto\uFrmListaEstoque.pas' {FrmListaEstoque},
  Vcl.Themes,
  Vcl.Styles,
  System.IniFiles,
  uFrmListaCondicaoPagamentos in 'Fontes\Financa\uFrmListaCondicaoPagamentos.pas' {FrmListaCondicaoPagamentos},
  uFrmCadastroCondicaoPagamento in 'Fontes\Financa\uFrmCadastroCondicaoPagamento.pas' {FrmCadastroCondicaoPagamento},
  uFrmListaFormapagamentos in 'Fontes\Financa\uFrmListaFormapagamentos.pas' {FrmListaFormapagamentos},
  uFrmCadastroFormapagamento in 'Fontes\Financa\uFrmCadastroFormapagamento.pas' {FrmCadastroFormapagamento},
  uFrmFormularioTeste in 'Fontes\Sistema\uFrmFormularioTeste.pas' {FrmFormularioTeste},
  uFrmTelaImportacaoRegistro in 'Fontes\Sistema\uFrmTelaImportacaoRegistro.pas' {FrmTelaImportacaoRegistro},
  uFrmMetasVenda in 'Fontes\PedidoVenda\uFrmMetasVenda.pas' {FrmMetasVenda},
  uFrmHistoricoPedido in 'Fontes\Sistema\uFrmHistoricoPedido.pas' {FrmHistoricoPedido},
  UfrmReciboAvulso in 'Fontes\Financa\UfrmReciboAvulso.pas' {frmReciboAvulso},
  urptReciboAvulso in 'Fontes\Relatorios\urptReciboAvulso.pas' {rptReciboAvulso},
  urptReciboEntrega in 'Fontes\Relatorios\urptReciboEntrega.pas' {rptReciboEntrega};

{$R *.res}

var
 config : TIniFile;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  if FileExists(ExtractFilePath(Application.ExeName)+'\config.ini') then
    config := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');

  TStyleManager.TrySetStyle(config.ReadString('SISTEMA','tema','Windows'));

  Application.CreateForm(TdmAcesso, dmAcesso);
  if dmAcesso.FDConnection1.Connected then
  begin
    Application.CreateForm(TFrmPrincipal, FrmPrincipal);
    Application.Run;
  end;
end.

