unit uFrmCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Imaging.pngimage,
  JvXPCore, JvXPButtons, JvExControls, JvDBLookup, Data.DB, Vcl.ComCtrls,
  Vcl.Buttons, JvExButtons, JvBitBtn, Vcl.ExtCtrls, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, JvDBCheckBox, JvgGroupBox, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvComponentBase, JvEnterTab, Vcl.Menus;

type
  TFrmCadastroProduto = class(TFrmCadastro)
    tsNFCe: TTabSheet;
    dsListaUnidade: TDataSource;
    dsListaDepartamento: TDataSource;
    dsListaVasilhame: TDataSource;
    dsListaTipoProduto: TDataSource;
    dsListaCategoria: TDataSource;
    dsGrupoProduto: TDataSource;
    dsListaMarcas: TDataSource;
    dsListaTributaao: TDataSource;
    Panel1: TPanel;
    Label9: TLabel;
    edtDESCRICAO: TDBEdit;
    edtNCM: TDBEdit;
    lbl6: TLabel;
    btnPesquisaNCM: TJvXPButton;
    clkID_MARCA: TDBLookupComboBox;
    lbl11: TLabel;
    btnPesquisaMarca: TJvXPButton;
    clkID_TIPOPRODUTO: TJvDBLookupCombo;
    lbl8: TLabel;
    lblCategoria: TLabel;
    clkID_CATEGORIA: TDBLookupComboBox;
    btnCategoria: TJvXPButton;
    btnPesquisaTributacao: TJvXPButton;
    clkID_TRIBUTACAO: TJvDBLookupCombo;
    lbl84: TLabel;
    lbl24: TLabel;
    edtPRECO_COMPRA: TJvDBCalcEdit;
    lbl12: TLabel;
    edtPRECO: TJvDBCalcEdit;
    clkID_GRUPOPRODUTO: TDBLookupComboBox;
    lbl9: TLabel;
    btnPesquisaGrupo: TJvXPButton;
    cbbESTADO: TJvDBComboBox;
    lbl17: TLabel;
    lbl30: TLabel;
    clkID_VASILHAME: TDBLookupComboBox;
    btnPesquisaVasilhame: TJvXPButton;
    btnPesquisaArmazem: TJvXPButton;
    clkID_DEPARTAMENTO: TDBLookupComboBox;
    lbl10: TLabel;
    lbl7: TLabel;
    clkID_UNIDADE: TDBLookupComboBox;
    btnPesquisaUnidade: TJvXPButton;
    edtGTIN: TDBEdit;
    lbl3: TLabel;
    JvgGroupBox1: TJvgGroupBox;
    dbgrdEstoque: TJvDBGrid;
    dsEstoque: TDataSource;
    ckbBLOQUEADO: TJvDBCheckBox;
    dsCadastroTributacaoProduto: TDataSource;
    tsProdutoFornecedor: TTabSheet;
    pnl11: TPanel;
    Label1: TLabel;
    lbl80: TLabel;
    cbbFornecedor: TJvDBLookupCombo;
    grd1: TJvDBGrid;
    dsProdutoFornecedor: TDataSource;
    dsFornecedores: TDataSource;
    edtCODIGO_EXTERNO: TDBEdit;
    QyProdutoFornecedor: TFDQuery;
    dbnvgr1: TDBNavigator;
    QyProdutoFornecedorNOME_FORNECEDOR: TStringField;
    QyProdutoFornecedorID_FILIAL: TIntegerField;
    QyProdutoFornecedorID: TFDAutoIncField;
    QyProdutoFornecedorID_PRODUTO: TIntegerField;
    QyProdutoFornecedorID_CONTATO: TIntegerField;
    QyProdutoFornecedorCODIGO_EXTERNO: TStringField;
    QyListaEstoque: TFDQuery;
    QyCadastroTributacaoProduto: TFDQuery;
    QyCadastroTributacaoProdutoID_FILIAL: TIntegerField;
    QyCadastroTributacaoProdutoID: TFDAutoIncField;
    QyCadastroTributacaoProdutoID_PRODUTO: TIntegerField;
    QyCadastroTributacaoProdutoID_TRIBUTACAO: TIntegerField;
    QyListaEstoqueID_FILIAL: TIntegerField;
    QyListaEstoqueID: TFDAutoIncField;
    QyListaEstoqueID_DEPARTAMENTO: TIntegerField;
    QyListaEstoqueID_PRODUTO: TIntegerField;
    QyListaEstoqueESTOQUE_QTD: TBCDField;
    QyListaEstoqueESTOQUE_MIN: TBCDField;
    QyListaEstoqueESTOQUE_MAX: TBCDField;
    QyListaEstoqueESTOQUE_EMPENHO: TBCDField;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    ckbPESAVEL: TJvDBCheckBox;
    cbbSIT_ECF: TJvDBComboBox;
    lbl82: TLabel;
    cbbIAT: TJvDBComboBox;
    lbl90: TLabel;
    lbl1: TLabel;
    edtCOD_SIT_TRIB: TJvDBComboBox;
    lblCFOP: TLabel;
    edtID_CFOP: TDBEdit;
    cbbIPPT: TJvDBComboBox;
    lbl91: TLabel;
    lbl103: TLabel;
    edtICMS_PDV: TJvDBCalcEdit;
    ckbEXPORTA_PDV: TJvDBCheckBox;
    JvDBNavigator1: TJvDBNavigator;
    QyProduto_Tributacao_NFCe: TFDQuery;
    dsProduto_Tributacao_NFCe: TDataSource;
    tsHistoricoVendas: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    QyHistoricoVenda: TFDQuery;
    dsHistoricoVendas: TDataSource;
    pmOpe: TPopupMenu;
    ImprimirEspelho1: TMenuItem;
    procedure btnGravarClick(Sender: TObject);
    procedure btnPesquisaNCMClick(Sender: TObject);
    procedure btnPesquisaMarcaClick(Sender: TObject);
    procedure btnPesquisaUnidadeClick(Sender: TObject);
    procedure btnPesquisaArmazemClick(Sender: TObject);
    procedure btnPesquisaVasilhameClick(Sender: TObject);
    procedure btnCategoriaClick(Sender: TObject);
    procedure btnPesquisaGrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QyProdutoFornecedorBeforePost(DataSet: TDataSet);
    procedure QyProdutoFornecedorAfterInsert(DataSet: TDataSet);
    procedure QyCadastroTributacaoProdutoAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QyListaEstoqueAfterInsert(DataSet: TDataSet);
    procedure edtGTINExit(Sender: TObject);
    procedure ImprimirEspelho1Click(Sender: TObject);
  private
    procedure LimparCache(Sender : TObject);
  public
    { Public declarations }
  end;

var
  FrmCadastroProduto: TFrmCadastroProduto;

implementation

uses
  udmAcesso, uFrmTabelaAux, krnVarGlobais, krnProcedures;

{$R *.dfm}

procedure TFrmCadastroProduto.btnCategoriaClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de Categorias';
    FrmTabelaAux.Hint := 'CATEGORIA';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
      begin
        dmAcesso.QyLKPCategoria.Refresh;
        dsCadastro.DataSet.FieldByName('ID_CATEGORIA').AsInteger := FrmTabelaAux.Tag;
      end;
    end;
    FreeAndNil(FrmTabelaAux);
  end;

end;

procedure TFrmCadastroProduto.btnGravarClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  if Trim(edtDESCRICAO.Text) = '' then
  begin
    edtDESCRICAO.SetFocus;
    raise Exception.Create('Informe a descrição do produto.');
  end;

  if Trim(edtGTIN.Text) = '' then
  begin
    edtGTIN.SetFocus;
    raise Exception.Create('Informe o Gtin do produto.');
  end;

//  if dsEstoque.DataSet.RecordCount=0 then
//  begin
//    dbgrdEstoque.SetFocus;
//    raise Exception.Create('Informe o estoque.');
//  end;


  try
    //dsCadastro.DataSet.Post;
//
//
//    if not (QyListaEstoque.State in [dsEdit,dsInsert]) then
//      QyListaEstoque.Edit;
//
//    QyListaEstoque.FieldByName('ID_PRODUTO').AsInteger := dsCadastro.DataSet.FieldByName('ID').AsInteger;
//    QyListaEstoque.Post;
//    QyListaEstoque.ApplyUpdates(-1);




//    if (QyCadastroTributacaoProduto.State in [dsInsert]) then
//    begin
//      QyCadastroTributacaoProdutoID_FILIAL.AsInteger := Estabelecimento;
//     // QyCadastroTributacaoProdutoID_PRODUTO.AsInteger := dsCadastro.DataSet.FieldByName('ID').AsInteger;
//      if not clkID_TRIBUTACAO.KeyValue = null then
//        QyCadastroTributacaoProdutoID_TRIBUTACAO.AsInteger := clkID_TRIBUTACAO.KeyValue
//      else
//        QyCadastroTributacaoProdutoID_TRIBUTACAO.AsInteger := 2;
//
//      try
//        QyCadastroTributacaoProduto.Post;
//      except on E: Exception do
//        ShowMessage('Erro ao salvar tabela tributacao_produto. Informe ao administrador do sistema.');
//      end;
//
//
//    end;




    if self.Tag =0 then   //novo registro
    begin
      for I := 0 to CountEstabelecimento-1 do
      begin
        if (i+1) <> Estabelecimento then
        begin
          QyCadastroTributacaoProduto.Insert;
          QyCadastroTributacaoProdutoID_FILIAL.AsInteger := I+1;

          if clkID_TRIBUTACAO.KeyValue <> null then
            QyCadastroTributacaoProdutoID_TRIBUTACAO.AsInteger := clkID_TRIBUTACAO.KeyValue
          else
            QyCadastroTributacaoProdutoID_TRIBUTACAO.AsInteger := 2;

          try
            QyCadastroTributacaoProduto.Post;
          except on E: Exception do
            ShowMessage('Erro ao salvar tabela tributacao_produto. Informe ao administrador do sistema.');
          end;
        end;
      end;
    end;

    if (QyCadastroTributacaoProduto.State in [dsEdit, dsInsert]) then
    begin
      try
        QyCadastroTributacaoProduto.Post;
      except on E: Exception do
        ShowMessage('Erro ao salvar tabela tributacao_produto. Informe ao administrador do sistema.');
      end;
    end;

    if (QyListaEstoque.State in [dsEdit,dsInsert]) then
      QyListaEstoque.Post;


//    if (QyProduto_Tributacao_NFCe.State in [dsEdit, dsInsert]) then
//      QyProduto_Tributacao_NFCe.Post;


    if (QyProdutoFornecedor.State in [dsEdit, dsInsert]) then
      QyProdutoFornecedor.Post;



    dmAcesso.FDSchemaAdapter1.ApplyUpdates(0);
    dmAcesso.cdsCadastro.CachedUpdates := false;

    Close;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFrmCadastroProduto.btnPesquisaArmazemClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de Departamentos';
    FrmTabelaAux.Hint := 'DEPARTAMENTO';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
      begin
        dmAcesso.QyLKPDepartamento.Refresh;
        dsCadastro.DataSet.FieldByName('ID_DEPARTAMENTO').AsInteger := FrmTabelaAux.Tag;
      end;
    end;
    FreeAndNil(FrmTabelaAux);
  end;
end;

procedure TFrmCadastroProduto.btnPesquisaGrupoClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de Grupos';
    FrmTabelaAux.Hint := 'GRUPOPRODUTO';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
      begin
        dmAcesso.QyLKPGrupoProduto.Refresh;
        dsCadastro.DataSet.FieldByName('ID_GRUPOPRODUTO').AsInteger := FrmTabelaAux.Tag;
      end;
    end;
    FreeAndNil(FrmTabelaAux);
  end;
end;

procedure TFrmCadastroProduto.btnPesquisaMarcaClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de Marcas';
    FrmTabelaAux.Hint := 'MARCA';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
      begin
        dsListaMarcas.DataSet.Refresh;
        dsCadastro.DataSet.FieldByName('ID_MARCA').AsInteger := FrmTabelaAux.Tag;
      end;
    end;
    FreeAndNil(FrmTabelaAux);
  end;
end;

procedure TFrmCadastroProduto.btnPesquisaNCMClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de NCMs';
    FrmTabelaAux.Hint := 'NCM';
    FrmTabelaAux.vrFieldResult:='NCM';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
         dsCadastro.DataSet.FieldByName('NCM').AsString := FrmTabelaAux.rvResult;
    end;
    FreeAndNil(FrmTabelaAux);
  end;
end;

procedure TFrmCadastroProduto.btnPesquisaUnidadeClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de Unidades';
    FrmTabelaAux.Hint := 'UNIDADE';
    FrmTabelaAux.vrFieldResult := 'CODIGO';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
      begin
        dmAcesso.QyLKPUnidades.Refresh;
        dsCadastro.DataSet.FieldByName('ID_UNIDADE').AsInteger := FrmTabelaAux.Tag;
      end;
    end;
    FreeAndNil(FrmTabelaAux);
  end;
end;

procedure TFrmCadastroProduto.btnPesquisaVasilhameClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmTabelaAux, FrmTabelaAux);
    FrmTabelaAux.Caption := 'Lista de Vasilhames';
    FrmTabelaAux.Hint := 'VASILHAME';
    FrmTabelaAux.ShowModal;
  finally
    if FrmTabelaAux.ModalResult = mrOk then
    begin
      if FrmTabelaAux.Tag>0 then
      begin
        dmAcesso.QyLKPVasilhames.Refresh;
        dsCadastro.DataSet.FieldByName('ID_VASILHAME').AsInteger := FrmTabelaAux.Tag;
      end;
    end;
    FreeAndNil(FrmTabelaAux);
  end;
end;

procedure TFrmCadastroProduto.edtGTINExit(Sender: TObject);
begin
  inherited;
  if self.Tag=0 then //novo produto
  begin
    if trim(edtgtin.Text) <> '' then
    begin
      if produtoExiste(trim(edtgtin.Text)) then
      begin
        edtgtin.SetFocus;
        raise Exception.Create('Código já associado a um produto.');
      end;
    end;
  end;
end;

procedure TFrmCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
  dmAcesso.cdsCadastro.CachedUpdates := True;
  dmAcesso.FDSchemaAdapter1.AfterApplyUpdate := LimparCache;
end;

procedure TFrmCadastroProduto.FormShow(Sender: TObject);
begin
  inherited;
//  dmAcesso.QyLKPTributacao.Filter := 'ID_FILIAL = ' + IntToStr(Estabelecimento);
//  dmAcesso.QyLKPTributacao.Filtered := True;
end;

procedure TFrmCadastroProduto.ImprimirEspelho1Click(Sender: TObject);
begin
  inherited;
  if QyHistoricoVenda.RecordCount > 0 then
   imprimirEspelhoPedido(QyHistoricoVenda.FieldByName('ID_VENDA').AsInteger);
end;

procedure TFrmCadastroProduto.LimparCache(Sender: TObject);
begin
  dmAcesso.cdsCadastro.CommitUpdates;
  QyListaEstoque.CommitUpdates;
//  QyProduto_Tributacao_NFCe.CommitUpdates;
  QyProdutoFornecedor.CommitUpdates;

end;

procedure TFrmCadastroProduto.QyCadastroTributacaoProdutoAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
end;

procedure TFrmCadastroProduto.QyListaEstoqueAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
  DataSet.FieldByName('ID_DEPARTAMENTO').AsInteger := 1;
  DataSet.FieldByName('ESTOQUE_QTD').AsFloat := 0;
  DataSet.FieldByName('ESTOQUE_MIN').AsFloat := 0;
  DataSet.FieldByName('ESTOQUE_MAX').AsFloat := 0;
  DataSet.FieldByName('ESTOQUE_EMPENHO').AsFloat := 0;
end;

procedure TFrmCadastroProduto.QyProdutoFornecedorAfterInsert(DataSet: TDataSet);
begin
  inherited;
  cbbFornecedor.KeyValue := dsFornecedores.DataSet.FieldByName('ID').AsInteger;
  DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
end;

procedure TFrmCadastroProduto.QyProdutoFornecedorBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (cbbFornecedor.KeyValue = null)  then
  begin
    cbbFornecedor.SetFocus;
    raise Exception.Create('Informe o fornecedor');
  end;

  if (Trim(edtCODIGO_EXTERNO.Text) = '') then
  begin
    edtCODIGO_EXTERNO.SetFocus;
    raise Exception.Create('Informe o codigo.');
  end;

end;

end.
