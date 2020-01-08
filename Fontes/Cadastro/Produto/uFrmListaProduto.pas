unit uFrmListaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, JvComponentBase, JvEnterTab, Vcl.Menus, JvExControls,
  JvMarkupLabel, json, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.BatchMove, FireDAC.Comp.BatchMove.DataSet,
  FireDAC.Stan.StorageJSON, FireDAC.Comp.BatchMove.JSON,
  FireDAC.Comp.BatchMove.Text, FireDAC.Stan.StorageBin;

type
  TFrmListaProduto = class(TFrmLista)
    btnArquivos: TJvBitBtn;
    pmArquivos: TPopupMenu;
    Exportar1: TMenuItem;
    Exportartodososprodutos1: TMenuItem;
    Exportarprodutopelogrupo1: TMenuItem;
    Centralderelatrios1: TMenuItem;
    pmContext: TPopupMenu;
    Exportarprodutoselecionado2: TMenuItem;
    ExportarprodutoselecionadoNCMGrupo1: TMenuItem;
    Button1: TButton;
    DataSource1: TDataSource;
    FDBatchMove1: TFDBatchMove;
    QyCidades: TFDQuery;
    FDMemTable1: TFDMemTable;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;

    DBGrid1: TDBGrid;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    FDBatchMoveTextWriter1: TFDBatchMoveTextWriter;
    mmo1: TMemo;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    btn1: TButton;
    btnOpen: TButton;
    procedure JvBitBtn5Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dbgrdConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Exportartodososprodutos1Click(Sender: TObject);
    procedure Centralderelatrios1Click(Sender: TObject);
    procedure Exportarprodutopelogrupo1Click(Sender: TObject);
    procedure Exportarsomenteprodutospesvel1Click(Sender: TObject);
    procedure Exportarprodutoselecionado2Click(Sender: TObject);
    procedure ExportarprodutoselecionadoNCMGrupo1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaProduto: TFrmListaProduto;

implementation

uses
  uFrmCadastroProduto, udmAcesso, krnVarGlobais, urptRelatorio, Funcoes, uFrmCentralRelatorios;

{$R *.dfm}

procedure TFrmListaProduto.btn1Click(Sender: TObject);
begin
  inherited;
  FDMemTable1.SaveToFile('C:\kronos\cidades.json');
end;

procedure TFrmListaProduto.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
  begin
    try
      dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
      Application.CreateForm(TFrmCadastroProduto, FrmCadastroProduto);
      dmAcesso.cdsCadastro.Edit;

      if dmAcesso.cdsCadastro.FindField('ID_USUARIO_UP') <> nil then
        dmAcesso.cdsCadastro.FieldByName('ID_USUARIO_UP').AsInteger := UsuarioLogado;


      FrmCadastroProduto.QyListaEstoque.Close;
      FrmCadastroProduto.QyListaEstoque.Open('SELECT * FROM ESTOQUE WHERE ID_PRODUTO='
      + IntToStr(dsConsulta.DataSet.FieldByName('ID').AsInteger)
      + ' AND ID_FILIAL='+IntToStr(Estabelecimento));

      if FrmCadastroProduto.QyListaEstoque.RecordCount=0 then
      begin
        FrmCadastroProduto.QyListaEstoque.Insert;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ID_DEPARTAMENTO').AsInteger := 1;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ID_PRODUTO').AsInteger := dsConsulta.DataSet.FieldByName('ID').AsInteger;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ESTOQUE_QTD').AsFloat := 0;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ESTOQUE_MIN').AsFloat := 0;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ESTOQUE_MAX').AsFloat := 0;
        FrmCadastroProduto.QyListaEstoque.FieldByName('ESTOQUE_EMPENHO').AsFloat := 0;
        FrmCadastroProduto.QyListaEstoque.Post;
      end;


      FrmCadastroProduto.QyCadastroTributacaoProduto.Close;
      FrmCadastroProduto.QyCadastroTributacaoProduto.SQL.Clear;
      FrmCadastroProduto.QyCadastroTributacaoProduto.SQL.Add('SELECT * FROM TRIBUTACAO_PRODUTO WHERE ');
      FrmCadastroProduto.QyCadastroTributacaoProduto.SQL.Add('ID_FILIAL=:pFilial AND ');
      FrmCadastroProduto.QyCadastroTributacaoProduto.SQL.Add('ID_PRODUTO=:pProduto');
      FrmCadastroProduto.QyCadastroTributacaoProduto.ParamByName('pFilial').AsInteger := Estabelecimento;
      FrmCadastroProduto.QyCadastroTributacaoProduto.ParamByName('pProduto').AsInteger := dsConsulta.DataSet.FieldByName('ID').AsInteger;
      FrmCadastroProduto.QyCadastroTributacaoProduto.Open();

      dmAcesso.QyLKPTributacao.Close;
      dmAcesso.QyLKPTributacao.Open('SELECT * FROM TRIBUTACAO ORDER BY NOME');

      /// Tributacao do nfce por filial
      ///  Data: 15/08/19
      ///  Por: Janilson

//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.Close;
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.SQL.Clear;
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.SQL.Add('SELECT * FROM TRIBUTACAO_PRODUTO_NFCE WHERE ');
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.SQL.Add('ID_FILIAL =:pFilial and ');
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.SQL.Add('ID_PRODUTO =:pProduto');
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.ParamByName('pFilial').AsInteger := Estabelecimento;
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.ParamByName('pProduto').AsInteger :=dsConsulta.DataSet.FieldByName('ID').AsInteger;
//      FrmCadastroProduto.QyProduto_Tributacao_NFCe.Open();



//     if FrmCadastroProduto.QyProduto_Tributacao_NFCe.RecordCount = 0 then
//      begin
//        with FrmCadastroProduto.QyProduto_Tributacao_NFCe do
//        begin
//          Insert;
//          FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
//          FieldByName('COD_SIT_TRIB').AsInteger := 400;
//          FieldByName('ID_CFOP').AsInteger := 5102;
//          FieldByName('IAT').AsString := 'A';
//          FieldByName('IPPT').AsString := 'T';
//          FieldByName('ST_ECF').AsString := 'N';
//          FieldByName('ICMS_PDV').AsFloat := 0;
//          FieldByName('PESAVEL').AsBoolean := False;
//          FieldByName('EXPORTA_PDV').AsBoolean := False;
//          Post;
//        end;
//      end;

      FrmCadastroProduto.tsProdutoFornecedor.TabVisible := True;
      FrmCadastroProduto.QyProdutoFornecedor.Open('SELECT * FROM PRODUTO_FORNECEDOR WHERE ID_PRODUTO = '
      + IntToStr(dsConsulta.DataSet.FieldByName('ID').AsInteger)
      + ' AND ID_FILIAL='+IntToStr(Estabelecimento));

      //FrmCadastroProduto.cbbFornecedor.KeyValue := FrmCadastroProduto.dsFornecedores.DataSet.FieldByName('ID').AsInteger;


      FrmCadastroProduto.edtPRECO_COMPRA.Enabled := UsuarioPermiteEditarPreco = 1;
      FrmCadastroProduto.edtPRECO.Enabled := UsuarioPermiteEditarPreco = 1;
      FrmCadastroProduto.dbgrdEstoque.Enabled := UsuarioPermiteEditarEstoque=1;
      FrmCadastroProduto.Tag := 1;

      //carrega o historio de vendas

      with FrmCadastroProduto.QyHistoricoVenda do
      begin
        Close;
        SQL.Clear;
        sql.Add('SELECT VENDA.EMISSAO, D.ID_VENDA, C.NOME, FMT_CHAVENFE(VENDA.CHAVENFE) AS NOTA,  D.ID_PRODUTO, D.QUANTIDADE FROM DETALHE_VENDA D ');
        sql.Add('INNER JOIN VENDA ON VENDA.ID = D.ID_VENDA ');
        sql.Add('INNER JOIN CONTATO C ON C.ID = VENDA.ID_CONTATO ');
        sql.Add('WHERE D.ID_PRODUTO =:IdProduto ');
        sql.Add('AND D.ID_FILIAL =:IdFilial ');
        sql.Add('AND VENDA.TIPO IN ("N","V","K","F") ');
        sql.Add('order by VENDA.EMISSAO DESC');
        ParamByName('IdProduto').AsInteger := dsConsulta.DataSet.FieldByName('ID').AsInteger;
        ParamByName('IdFilial').AsInteger := Estabelecimento;
        Open();

      end;


      FrmCadastroProduto.ShowModal;
    finally
      dsConsulta.DataSet.Refresh;
      FreeAndNil(FrmCadastroProduto);
    end;
  end;
end;

procedure TFrmListaProduto.btnNovoClick(Sender: TObject);
begin

  inherited;
  try

    dmAcesso.cdsCadastro.CachedUpdates := True;
    dmAcesso.inicializaNovoRegistro(Self.Tabela);
    Application.CreateForm(TFrmCadastroProduto, FrmCadastroProduto);
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('DESCRICAO').Required := False;
    FrmCadastroProduto.dsCadastro.DataSet.Insert;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_UNIDADE').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_PRODUTO_UNIDADE').AsInteger;

    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_MARCA').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_PRODUTO_MARCA').AsInteger;

    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_DEPARTAMENTO').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_PRODUTO_DEPARTAMENTO').AsInteger;


    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_GRUPOPRODUTO').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_PRODUTO_GRUPOPRODUTO').AsInteger;



    if  FrmCadastroProduto.dsCadastro.DataSet.FindField('ID_USUARIO_CAD') <> nil then
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_USUARIO_CAD').AsInteger := UsuarioLogado;

    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_TIPOPRODUTO').AsInteger := 5;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_VASILHAME').AsInteger := dmAcesso.QyLKPVasilhames.FieldByName('ID').AsInteger;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_CATEGORIA').AsInteger := dmAcesso.QyLKPCategoria.FieldByName('ID').AsInteger;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ESTADO').AsString := 'N';
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('IAT').AsString := 'A';
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('IPPT').AsString := 'T';
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ST_ECF').AsString := 'T';
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('PESAVEL').AsInteger := 0;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('EXPORTA_PDV').AsInteger := 0;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_TRIBUTACAO').AsInteger := 1;//dmAcesso.QyLKPTributacao.FieldByName('ID').AsInteger;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('PRECO').AsFloat := 0;
    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('PRECO_COMPRA').AsFloat := 0;

    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('COD_SIT_TRIB').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_PRODUTO_COD_SIT_TRIB').AsInteger;

    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('ID_CFOP').AsInteger :=
        dmAcesso.QyConfigSistema.FieldByName('DEFAULT_PRODUTO_ID_CFOP').AsInteger;

    FrmCadastroProduto.dsCadastro.DataSet.FieldByName('BLOQUEADO').AsInteger :=0;
    FrmCadastroProduto.dsCadastro.DataSet.Post;
    FrmCadastroProduto.dsCadastro.DataSet.Edit;

    FrmCadastroProduto.QyListaEstoque.Close;
    FrmCadastroProduto.QyListaEstoque.Open;//('SELECT * FROM ESTOQUE WHERE ID_PRODUTO=:ID');

    FrmCadastroProduto.QyListaEstoque.Insert;
    FrmCadastroProduto.QyListaEstoque.FieldByName('ID_FILIAL').AsInteger:= Estabelecimento;
    FrmCadastroProduto.QyListaEstoque.Post;

//    FrmCadastroProduto.QyProduto_Tributacao_NFCe.Close;
//    FrmCadastroProduto.QyProduto_Tributacao_NFCe.Open;//('SELECT * FROM TRIBUTACAO_PRODUTO_NFCE WHERE ID_PRODUTO=:ID');
//
//    with FrmCadastroProduto.QyProduto_Tributacao_NFCe do
//    begin
//      insert;
//      FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
//      FieldByName('COD_SIT_TRIB').AsInteger := 400;
//      FieldByName('ID_CFOP').AsInteger := 5102;
//      FieldByName('IAT').AsString := 'A';
//      FieldByName('IPPT').AsString := 'T';
//      FieldByName('ST_ECF').AsString := 'N';
//      FieldByName('ICMS_PDV').AsFloat := 0;
//      FieldByName('PESAVEL').AsBoolean := False;
//      FieldByName('EXPORTA_PDV').AsBoolean := False;
//      Post;
//    end;




    FrmCadastroProduto.QyProdutoFornecedor.Open();

    FrmCadastroProduto.QyCadastroTributacaoProduto.Close;
    FrmCadastroProduto.QyCadastroTributacaoProduto.SQL.Clear;
    FrmCadastroProduto.QyCadastroTributacaoProduto.SQL.Add('SELECT * FROM TRIBUTACAO_PRODUTO WHERE ID_PRODUTO=:ID');
//    FrmCadastroProduto.QyCadastroTributacaoProduto.ParamByName('pFilial').AsInteger := Estabelecimento;
    FrmCadastroProduto.QyCadastroTributacaoProduto.Open();
    FrmCadastroProduto.QyCadastroTributacaoProduto.Insert;
    FrmCadastroProduto.QyCadastroTributacaoProduto.FieldByName('ID_TRIBUTACAO').AsInteger := 2;


    FrmCadastroProduto.ShowModal;
  finally
    dsConsulta.DataSet.Refresh;
    FreeAndNil(FrmCadastroProduto);
  end;

end;

procedure TFrmListaProduto.btnOpenClick(Sender: TObject);
begin
  inherited;
  FDMemTable1.LoadFromFile('C:\kronos\cidades.json');
end;

procedure TFrmListaProduto.Button1Click(Sender: TObject);
var
  texto: string;
  resultado : TJSONArray;
begin
  inherited;

  QyCidades.Open();
  FDBatchMove1.Execute;

 // mmo1.Lines.LoadFromFile('c:\kronos\cidades.txt');

//  FDMemTable1.LoadFromFile('c:\kronos\cidades.json');
  FDMemTable1.Active := True;


//
// Memo1.Text := DatasetToJson.Format;
// Memo1.Lines.SaveToFile('c:\kronos\municipios.json');

end;

procedure TFrmListaProduto.Centralderelatrios1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmCentralRelatorios,FrmCentralRelatorios);
    FrmCentralRelatorios.Hint := 'PRODUTO';
    FrmCentralRelatorios.ShowModal;
  finally
    FreeAndNil(FrmCentralRelatorios);
  end;
end;

procedure TFrmListaProduto.dbgrdConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Assigned(dsConsulta.DataSet.FindField('ESTOQUE_QTD')) then
  begin
    if (Column.Field.FieldName = 'ESTOQUE_QTD') then
    begin

      if dsConsulta.DataSet.FieldByName('ESTOQUE_QTD').AsFloat <=0 then
      begin
        dbgrdConsulta.Canvas.Font.Color := clRed;
        dbgrdConsulta.Canvas.FillRect(Rect);//pinta a célula
        dbgrdConsulta.DefaultDrawColumnCell(Rect,DataCol,Column,State);

      end;
    end;
  end;


end;

procedure TFrmListaProduto.Exportarprodutopelogrupo1Click(Sender: TObject);
begin
  inherited;
{ TODO -oJanilson -c :  10/03/2019 10:54:04 }
  exportaProdutoPDVDJ(0,True);
end;

procedure TFrmListaProduto.Exportarprodutoselecionado2Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount >0 then
    exportaProdutoPDVDJ(dsConsulta.DataSet.FieldByName('ID').AsInteger);
end;

procedure TFrmListaProduto.ExportarprodutoselecionadoNCMGrupo1Click(
  Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount >0 then
    exportaProdutoPDVDJ(dsConsulta.DataSet.FieldByName('ID').AsInteger,True);
end;

procedure TFrmListaProduto.Exportarsomenteprodutospesvel1Click(Sender: TObject);
begin
  inherited;
{ TODO -oJanilson -c :  10/03/2019 10:54:19 }
end;

procedure TFrmListaProduto.Exportartodososprodutos1Click(Sender: TObject);
begin
  inherited;
  exportaProdutoPDVDJ;
end;

procedure TFrmListaProduto.FormCreate(Sender: TObject);
begin
  inherited;
//  paginate := 30;
end;

procedure TFrmListaProduto.JvBitBtn5Click(Sender: TObject);
begin
  if trim(edtBusca.Text) <> '' then
    self.Where := ' WHERE PRODUTO.BLOQUEADO=0 AND PRODUTO.GTIN LIKE '
    + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
    + ' OR PRODUTO.DESCRICAO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR PRODUTO.GTIN LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
  else
    self.Where :='WHERE PRODUTO.BLOQUEADO=0';
  inherited;

end;

end.
