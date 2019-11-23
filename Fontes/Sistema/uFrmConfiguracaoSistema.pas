unit uFrmConfiguracaoSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvgPage, Data.DB,
  Vcl.DBCtrls, JvDBControls, JvExStdCtrls, JvGroupBox, Vcl.StdCtrls, JvToolEdit,
  JvBaseEdits, JvXPCore, JvXPButtons, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvExMask, JvSpin, JvDBSpinEdit,
  JvDBCheckBox, Vcl.Mask, JvCombobox, JvDBCombobox, JvExControls, JvDBLookup,
  Vcl.Imaging.pngimage, ACBrBase, ACBrDFe, ACBrNFe, Vcl.FileCtrl, JvgGroupBox;

type
  TFrmConfiguracaoSistema = class(TForm)
    pgcGeral: TPageControl;
    tsVenda: TTabSheet;
    pgcPadrao: TPageControl;
    tsDefault: TTabSheet;
    pgc3: TPageControl;
    tsProdutos: TTabSheet;
    grpConfProdutos: TJvgGroupBox;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl51: TLabel;
    lbl82: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label26: TLabel;
    cbbUnidade: TJvDBLookupCombo;
    cbbMarca: TJvDBLookupCombo;
    cbbDepartamento: TJvDBLookupCombo;
    cbbGrupoProduto: TJvDBLookupCombo;
    JvDBComboBox1: TJvDBComboBox;
    cbbDEFAULT_PRODUTO_PRECO_CASAS: TJvDBComboBox;
    dbedtID_CFOP: TDBEdit;
    dbedtCOD_SIT_TRIB: TDBEdit;
    jvdblkpcmbDEFAULT_PRODUTO_CATEGORIA: TJvDBLookupCombo;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBLookupCombo2: TJvDBLookupCombo;
    JvDBCheckBox4: TJvDBCheckBox;
    JvDBCheckBox5: TJvDBCheckBox;
    JvDBCheckBox6: TJvDBCheckBox;
    JvDBCheckBox7: TJvDBCheckBox;
    tsPadraoContato: TTabSheet;
    JvDBCheckBox8: TJvDBCheckBox;
    tsSistema: TTabSheet;
    JvDBCheckBox10: TJvDBCheckBox;
    JvDBCheckBox11: TJvDBCheckBox;
    JvDBCheckBox12: TJvDBCheckBox;
    JvDBCheckBox13: TJvDBCheckBox;
    grpConfFontGrid: TJvgGroupBox;
    lbl63: TLabel;
    lbl64: TLabel;
    lbl65: TLabel;
    edtSISTEMA_CONSULTA_FONTE_TAMANHO: TJvDBSpinEdit;
    chkFINANCA_EXIBE_TITULO_VENCER: TJvDBCheckBox;
    chkSISTEMA_LISTAGEM_DADOS: TJvDBCheckBox;
    cbbFonte: TJvDBComboBox;
    cbbSISTEMA_CONSULTA_FONTE: TJvDBComboBox;
    tsGeral: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    tsConfiguracaoLocal: TTabSheet;
    btnAbrirConfiguracaoLocal: TBitBtn;
    tsDicionario: TTabSheet;
    pnl2: TPanel;
    edtTabela: TLabeledEdit;
    btn10: TBitBtn;
    grd1: TJvDBGrid;
    tsRelatorios: TTabSheet;
    dbg1: TJvDBGrid;
    pnl7: TPanel;
    btnLimparRelatorio: TButton;
    chk1: TCheckBox;
    tsNFe: TTabSheet;
    pgcNota: TPageControl;
    tsNFeGeral: TTabSheet;
    lbl103: TLabel;
    lbl107: TLabel;
    lbl108: TLabel;
    dbedtDEFAULT_VENDA_CFOP: TDBEdit;
    dbedtNFE_ENVIO_ESPECIE: TDBEdit;
    dbedtNFE_ENVIO_MARCA: TDBEdit;
    chkNFE_INFO_CFOP: TJvDBCheckBox;
    chkNFE_NCMGRUPO: TJvDBCheckBox;
    chkNFE_CEST: TJvDBCheckBox;
    chkNFE_CEAN: TJvDBCheckBox;
    tsNF: TTabSheet;
    tsNFCe: TTabSheet;
    GroupBox1: TJvgGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    cbxModelo: TJvDBComboBox;
    cbxporta: TDBComboBox;
    chkNFC_MENSAGEM_ENVIO: TJvDBCheckBox;
    tsPisCofins: TTabSheet;
    lbl40: TLabel;
    lbl41: TLabel;
    edtNFE_IMPOSTOS_PIS: TJvDBCalcEdit;
    edtNFE_IMPOSTOS_COFINS: TJvDBCalcEdit;
    tsEmail: TTabSheet;
    grpConfEmail: TJvgGroupBox;
    lbl57: TLabel;
    lbl58: TLabel;
    lbl59: TLabel;
    lbl60: TLabel;
    edtNFE_SMTP_SERVER: TDBEdit;
    edtNFE_SMTP_PORTA: TDBEdit;
    edtNFE_SMTP_USUARIO: TDBEdit;
    edtNFE_SMTP_SENHA: TDBEdit;
    btnEnvioEmail: TBitBtn;
    edtCC: TLabeledEdit;
    tsDadosAdicionais1: TTabSheet;
    lbl55: TLabel;
    mmo1: TDBMemo;
    cbbVariaveisSN: TJvDBComboBox;
    btn8: TBitBtn;
    tsTabelaSN: TTabSheet;
    grdSN: TJvDBGrid;
    pnl3: TPanel;
    JvDBCheckBox3: TJvDBCheckBox;
    TabSheet1: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    tsResptecnico: TTabSheet;
    grpRespTec: TJvgGroupBox;
    lbl72: TLabel;
    lbl73: TLabel;
    dbedtNFE_RESPTEC_IDCSRT: TDBEdit;
    dbedtNFE_RESPTEC_HASHCSRT: TDBEdit;
    tsSPEDFiscal: TTabSheet;
    tsExportacao: TTabSheet;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    cbbEXPORTACAO: TJvDBComboBox;
    cbbEXPORTACAO_MODELO: TJvDBComboBox;
    cbbEXPORTACAO_CLIENTE: TJvDBComboBox;
    cbbEXPORTACAO_PRODUTO: TJvDBComboBox;
    cbbEXPORTACAO_VENDA: TJvDBComboBox;
    btn2: TJvXPButton;
    tsBackup: TTabSheet;
    lbl44: TLabel;
    edtGERAL_SISTEMA_LOCAL_BACKUP: TJvDBComboEdit;
    btnBackup: TJvXPButton;
    chkSISTEMA_BACKUPAOSAIR: TJvDBCheckBox;
    tsCV: TTabSheet;
    pgcVendas: TJvgPageControl;
    tsParaovenda: TTabSheet;
    grpPadraoVenda: TGroupBox;
    lbl29: TLabel;
    Label2: TLabel;
    lbl49: TLabel;
    lbl84: TLabel;
    lbl85: TLabel;
    lbl90: TLabel;
    lbl104: TLabel;
    lbl105: TLabel;
    cbbCliente: TJvDBLookupCombo;
    cbbDEFAULT_VENDA_NATUREZA: TJvDBLookupCombo;
    cbb5: TJvDBLookupCombo;
    grp9: TGroupBox;
    lbl30: TLabel;
    lbl31: TLabel;
    cbblkpDEFAULT_VENDA_CONDPAGTO: TJvDBLookupCombo;
    cbblkpDEFAULT_VENDA_FORMAPAGTO: TJvDBLookupCombo;
    cbbVENDA_LIMITE_ANUAL: TJvDBComboBox;
    cbbVENDA_EXIBE_TABELA_BUSCA: TJvDBComboBox;
    cbbVENDA_LIMITE_MENSAL: TJvDBComboBox;
    dbedtDEFAULT_VENDA_CFOP1: TDBEdit;
    dbedtDEFAULT_VENDA_CFOP_DESCRICAO: TDBEdit;
    tsVendaGeral: TTabSheet;
    grp10: TGroupBox;
    Label1: TLabel;
    lbl50: TLabel;
    lbl62: TLabel;
    lbl43: TLabel;
    lbl92: TLabel;
    lbl83: TLabel;
    Label3: TLabel;
    cbbVENDA_MODELO: TJvDBComboBox;
    cbbVENDA_TP_PESQ_PRODUTO: TJvDBComboBox;
    cbbVENDA_TIPO_VENDA: TJvDBComboBox;
    cbbVENDA_COMISSAO: TJvDBComboBox;
    cbb11: TJvDBComboBox;
    cbbVENDA_TIPO_DESCONTO: TJvDBComboBox;
    cbbVENDA_CASAS_QUANTIDADE: TJvDBComboBox;
    tsParametrosVendas: TTabSheet;
    cbbVENDA_FOTO_BUSCA_POS: TJvDBComboBox;
    JvDBCheckBox1: TJvDBCheckBox;
    chkVENDA_DESCONTO_ITEM: TJvDBCheckBox;
    chkVENDA_BUSCA_PRODUTO_AUTO: TJvDBCheckBox;
    chkVENDA_BUSCA_PRODUTO_MAXIMIZADA: TJvDBCheckBox;
    chkVENDA_CHAMATROCO: TJvDBCheckBox;
    chkVENDA_BUSCA_PROD_EXIBE_NSERIE: TJvDBCheckBox;
    chkVENDA_DIMENSAO: TJvDBCheckBox;
    chkSISTEMA_CONTROLA_CAIXA: TJvDBCheckBox;
    chkVENDA_EXIBE_PED_ECOMMERCE: TJvDBCheckBox;
    chkVENDA_EDITA_PRECO: TJvDBCheckBox;
    chkVENDA_INCREMENTA_ITEM: TJvDBCheckBox;
    chkDEFAULT_VENDA_EXIBE_ITENS: TJvDBCheckBox;
    chkVENDA_TELA_MAXIMIZADA: TJvDBCheckBox;
    chkVENDA_FOTO_BUSCA: TJvDBCheckBox;
    chkVENDA_MENSAGEM_NOVOPEDIDO: TJvDBCheckBox;
    chkVENDA_INFO_DIA_VENCIMENTO: TJvDBCheckBox;
    chkVENDA_DETALHE_PRODUTO_BUSCA: TJvDBCheckBox;
    chkVENDA_RECEBIMENTO_SIMPLES: TJvDBCheckBox;
    chkVENDA_EDITAR_PRODUTO: TJvDBCheckBox;
    JvDBCheckBox27: TJvDBCheckBox;
    JvDBCheckBox29: TJvDBCheckBox;
    tsVendaImpressao: TTabSheet;
    lbl45: TLabel;
    lbl56: TLabel;
    lbl46: TLabel;
    lblOrdemItens: TLabel;
    lbl69: TLabel;
    cbbVENDA_MODELO_ESPELHO: TJvDBComboBox;
    edtVENDA_NUMERO_VIA_BOBINA: TDBEdit;
    edtVENDA_PORTA_IMPRESSAO: TDBEdit;
    cbbVENDA_ORDEM_ITEM: TJvDBComboBox;
    dbedtOFICINA_PREVISAO_ENTREGA: TDBEdit;
    JvDBCheckBox14: TJvDBCheckBox;
    JvDBCheckBox15: TJvDBCheckBox;
    JvDBCheckBox16: TJvDBCheckBox;
    JvDBCheckBox18: TJvDBCheckBox;
    JvDBCheckBox19: TJvDBCheckBox;
    JvDBCheckBox17: TJvDBCheckBox;
    JvDBCheckBox26: TJvDBCheckBox;
    grp13: TGroupBox;
    lbl67: TLabel;
    lbl68: TLabel;
    cbbVENDA_ESPELHO_FONTE: TJvDBComboBox;
    edtVENDA_ESPELHO_FONTE_TAMANHO: TJvDBSpinEdit;
    tsVendaMensagens: TTabSheet;
    lbl61: TLabel;
    lbl71: TLabel;
    lbl76: TLabel;
    Label9: TLabel;
    dbmmoVENDA_TERMOGARANTIA: TDBMemo;
    dbmmoVENDA_TERMOENTREGA: TDBMemo;
    dbmmoVENDA_VALIDADEPROPOSTA: TDBMemo;
    dbmmoDEFAULT_VENDA_OBS: TDBMemo;
    tsVendaRecibo: TTabSheet;
    lblModoRecibo: TLabel;
    cbbModoRecibo: TJvDBComboBox;
    JvDBCheckBox20: TJvDBCheckBox;
    tsVendaImposto: TTabSheet;
    JvDBCheckBox21: TJvDBCheckBox;
    tsEnergia: TTabSheet;
    lbl47: TLabel;
    lbl48: TLabel;
    cbbTP_LIGACAO: TJvDBComboBox;
    cbbCOD_GRUPO_TENSA: TJvDBComboBox;
    tsFinancas: TTabSheet;
    Label21: TLabel;
    JvDBComboBox9: TJvDBComboBox;
    JvDBCheckBox22: TJvDBCheckBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    GroupBox4: TGroupBox;
    lbl34: TLabel;
    cblkpDEFAULT_VENDA_CLIENTE: TJvDBLookupCombo;
    tsEstoque: TTabSheet;
    grp12: TGroupBox;
    JvDBCheckBox23: TJvDBCheckBox;
    JvDBCheckBox24: TJvDBCheckBox;
    JvDBCheckBox25: TJvDBCheckBox;
    tsRecebimento: TTabSheet;
    lbl66: TLabel;
    lbl80: TLabel;
    lbl42: TLabel;
    lbl53: TLabel;
    jvdblkpcmb1: TJvDBLookupCombo;
    cbbCSOSN: TJvDBComboBox;
    cbbDEFAULT_COMPRA_CASAPRECO: TJvDBComboBox;
    cbbDEFAULT_COMPRA_CASAQUANTIDADE: TJvDBComboBox;
    tsOrdemServico: TTabSheet;
    pgcOS: TPageControl;
    tsOSPrincipal: TTabSheet;
    dbmmo1: TDBMemo;
    pnl4: TPanel;
    Label5: TLabel;
    lbl95: TLabel;
    lbl96: TLabel;
    lbl102: TLabel;
    cbbOS_FILTROPRODUTO: TJvDBComboBox;
    jvdblkpcmbOS_MECANICO: TJvDBLookupCombo;
    dbedtOS_GARANTIA_DIAS: TDBEdit;
    tsOSTelefones: TTabSheet;
    pnl5: TPanel;
    dbnvgr2: TDBNavigator;
    pnl6: TPanel;
    lbl99: TLabel;
    lbl100: TLabel;
    edtTipo: TJvDBComboBox;
    edtNumero: TDBEdit;
    dbnvgr1: TDBNavigator;
    grd2: TJvDBGrid;
    dsConfiguracaoSistema: TDataSource;
    dsLkpUnidades: TDataSource;
    dslLkpDepartamento: TDataSource;
    dsLkpCategoria: TDataSource;
    dsLkpTipoProduto: TDataSource;
    dsLkpMarca: TDataSource;
    dsLkpGrupoProduto: TDataSource;
    dsLkpVasilhame: TDataSource;
    pnl1: TPanel;
    btn1: TJvXPButton;
    btnOK: TJvXPButton;
    dsLkpCLientes: TDataSource;
    dsLkpNatureza: TDataSource;
    dsLkpContas: TDataSource;
    dsFinLkpClientes: TDataSource;
    dsFinLkpFornecedores: TDataSource;
    dsComLkpNatureza: TDataSource;
    dsConfDicionario: TDataSource;
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    pgcConfNF: TPageControl;
    tsCertificado: TTabSheet;
    tsModeloSerie: TTabSheet;
    tsWebService: TTabSheet;
    tsDanfe: TTabSheet;
    grpCertificado: TJvgGroupBox;
    lbl24: TLabel;
    lbl23: TLabel;
    lbl17: TLabel;
    Label24: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtNFE_LOGOMARCA: TDBEdit;
    btn4: TJvXPButton;
    edtNFE_PASTAXML: TDBEdit;
    btn3: TJvXPButton;
    edtNFE_NUMEROSERIECERTIFICADO: TDBEdit;
    btn5: TJvXPButton;
    dbedtNFE_SCHEMA: TDBEdit;
    JvXPButton1: TJvXPButton;
    dbedtNFE_ARQUIVOPFX: TDBEdit;
    JvXPButton2: TJvXPButton;
    dbedtNFE_SENHA: TDBEdit;
    grpModeloSerie: TJvgGroupBox;
    lbl38: TLabel;
    lbl39: TLabel;
    Label25: TLabel;
    edtNFE_MODELO: TDBEdit;
    edtNFE_SERIE: TDBEdit;
    dbedt1: TDBEdit;
    grpWebService: TJvgGroupBox;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    Label8: TLabel;
    cbbNFE_WEBSERVICE_AMBIENTE: TJvDBComboBox;
    cbbNFE_WEBSERVICE_REGIMETRIBUTARIO: TJvDBComboBox;
    cbb3: TJvDBComboBox;
    chkNFE_WEBSERVICE_VISUALIZA: TJvDBCheckBox;
    cbbNFE_VERSAO_DF: TJvDBComboBox;
    btn9: TBitBtn;
    cbNFE_WEBSERVICE_UF: TJvDBComboBox;
    grpDanfe: TJvgGroupBox;
    lbl37: TLabel;
    lbl88: TLabel;
    lbl89: TLabel;
    cbbNFE_DANFE: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
    cbbDANFE_CASAS_DECIMAIS_QUANTIDADE: TJvDBComboBox;
    JvgGroupBox1: TJvgGroupBox;
    Label13: TLabel;
    dbedtTOKEN: TDBEdit;
    dbedtIDTOKEN: TDBEdit;
    Label12: TLabel;
    Label19: TLabel;
    dbedtNFCeID: TDBEdit;
    gbxDadosRespTec: TJvgGroupBox;
    dbedtNFE_RESPTEC_EMAIL: TDBEdit;
    dbedtNFE_RESPTEC_CNPJ: TDBEdit;
    Label11: TLabel;
    dbedtNFE_RESPTEC_CONTATO: TDBEdit;
    lbl70: TLabel;
    Label10: TLabel;
    pgcSped: TPageControl;
    tsSpedFiscal2: TTabSheet;
    pgcSpedFiscal: TPageControl;
    tsSpedFiscalPerfil: TTabSheet;
    tsSpedFiscalContador: TTabSheet;
    tsSpedFiscalArquivo: TTabSheet;
    grpPerfilSped: TJvgGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    cbbSPED_FISCAL_PERFIL_FISCAL: TJvDBComboBox;
    cbbSPED_FISCAL_ATIVIDADE_FISCAL: TJvDBComboBox;
    cbbSPED_FISCAL_FINALIDADE: TJvDBComboBox;
    cbbSPED_FISCAL_VERSAOSPEDFISCAL: TJvDBComboBox;
    grpDadosContador: TJvgGroupBox;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    Label18: TLabel;
    edtSPED_FISCAL_NOME_CONTADOR: TDBEdit;
    edtSPED_FISCAL_CPFCNPJ_CONTADOR: TDBEdit;
    edtSPED_FISCAL_CNPJ_ESCRITORIO: TDBEdit;
    edtSPED_FISCAL_CRC_CONTADOR: TDBEdit;
    edtSPED_FISCAL_ENDERECO_CONTADOR: TDBEdit;
    edtSPED_FISCAL_NUMERO_CONTADOR: TDBEdit;
    edtSPED_FISCAL_COMPLEMENTO_CONTADOR: TDBEdit;
    edtSPED_FISCAL_BAIRRO_CONTADOR: TDBEdit;
    edtSPED_FISCAL_CODIBGE_MUNICIPIO_CONTADOR: TJvDBLookupCombo;
    edtSPED_FISCAL_TELEFONE_CONTADOR: TDBEdit;
    edtSPED_FISCAL_FAX_CONTADOR: TDBEdit;
    dbedtSPED_FISCAL_EMAIL_CONTADOR: TDBEdit;
    dbedtSPED_FISCAL_CEP_CONTADOR: TDBEdit;
    edtSPED_DIR: TDBEdit;
    btnDirSPED: TJvXPButton;
    lbl97: TLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfiguracaoSistema: TFrmConfiguracaoSistema;

implementation

uses
  udmAcesso, Funcoes;

{$R *.dfm}

procedure TFrmConfiguracaoSistema.btn10Click(Sender: TObject);
begin
  if Trim(edtTabela.Text)='' then
  begin
    AlertaError('Informe o nome da tabela.');
    edtTabela.SetFocus;
  end
  else
  begin
    openDicionario(Trim(edtTabela.Text));
  end;
end;

procedure TFrmConfiguracaoSistema.btn1Click(Sender: TObject);
begin
  dsConfiguracaoSistema.DataSet.Post;
  Close;
end;

procedure TFrmConfiguracaoSistema.btn3Click(Sender: TObject);
begin
  dsConfiguracaoSistema.DataSet.FieldByName('NFE_NUMEROSERIECERTIFICADO').AsString
    := ACBrNFe1.SSL.SelecionarCertificado;
end;

procedure TFrmConfiguracaoSistema.btn4Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtNFE_PASTAXML.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtNFE_PASTAXML.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],1000) then
    edtNFE_PASTAXML.Text := Dir;
end;

procedure TFrmConfiguracaoSistema.btn5Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    dsConfiguracaoSistema.DataSet.Edit;
    dsConfiguracaoSistema.DataSet.FieldByName('NFE_LOGOMARCA').AsString := OpenDialog1.FileName;
  end;
end;

procedure TFrmConfiguracaoSistema.btn9Click(Sender: TObject);
begin
  if dsConfiguracaoSistema.DataSet.State IN [dsEdit, dsInsert] then
    dsConfiguracaoSistema.DataSet.Post;
  nfStatusServico;
end;

procedure TFrmConfiguracaoSistema.btnOKClick(Sender: TObject);
begin
  dsConfiguracaoSistema.DataSet.Cancel;
  Close;
end;

procedure TFrmConfiguracaoSistema.FormShow(Sender: TObject);
begin
  pgcGeral.ActivePage := tsVenda;
  pgcPadrao.ActivePage:= tsDefault;
  pgcNota.ActivePage := tsNFeGeral;
  pgcVendas.ActivePage := tsParaovenda;
  pgcOS.ActivePage:= tsOSPrincipal;
  pgc3.ActivePage := tsProdutos;


end;

procedure TFrmConfiguracaoSistema.JvXPButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(dbedtNFE_SCHEMA.Text) <= 0 then
    Dir := ExtractFileDir(application.ExeName)
  else
    Dir := dbedtNFE_SCHEMA.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],1000) then
    dbedtNFE_SCHEMA.Text := Dir;
end;

end.
