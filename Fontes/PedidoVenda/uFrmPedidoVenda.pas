unit uFrmPedidoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvBaseEdits, JvDBControls,
  Vcl.DBCtrls, JvExButtons, JvBitBtn, JvExControls, JvDBLookup, Vcl.Buttons,
  Vcl.Mask, JvExMask, JvToolEdit, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  ACBrUtil, Vcl.Menus, JvExExtCtrls, JvExtComponent, JvCaptionPanel
  ;

type
  TFrmPedidoVenda = class(TForm)
    pnlCabec: TJvCaptionPanel;
    pnlDadosPedido: TPanel;
    lblNumeroPedido: TLabel;
    lblDataEmissao: TLabel;
    lblTipo: TLabel;
    edtEMISSAO: TJvDBDateEdit;
    edtID: TDBEdit;
    edtTIPO: TDBEdit;
    pnlDados: TPanel;
    pnlDadosCliente: TPanel;
    lblCondicaoPagamento: TLabel;
    lblFormaPagamento: TLabel;
    lblCliente: TLabel;
    clkID_CONDICAOPAGAMENTO: TJvDBLookupCombo;
    clkID_FORMAPAGAMENTO: TJvDBLookupCombo;
    btnBuscaCliente: TBitBtn;
    clkID_CONTATO: TJvDBLookupCombo;
    pnlBotoesConfirmacao: TPanel;
    pnlOrcamento: TPanel;
    btnGravarOrcamento: TBitBtn;
    pnlOpcoes: TPanel;
    btnOpcoes: TJvBitBtn;
    pnlVenda: TPanel;
    btnGravarVenda: TBitBtn;
    pnlNovo: TPanel;
    btnNovoPedido: TBitBtn;
    pnlRodape: TJvCaptionPanel;
    pnlDadosEntregaFrete: TPanel;
    lblObservacao: TLabel;
    dbmmoOBSERVACAO: TDBMemo;
    pnlTotais: TPanel;
    lblSubTotal: TLabel;
    lblDesconto: TLabel;
    lblTotal: TLabel;
    lblEntrada: TLabel;
    lbl19: TLabel;
    Label1: TLabel;
    edtSubTotal: TJvDBCalcEdit;
    edtPERC_DESCONTO: TJvDBCalcEdit;
    edtTotal: TJvDBCalcEdit;
    cbbtipofrete: TJvDBComboBox;
    edtVALORFRETE: TJvDBCalcEdit;
    pnlItens: TJvCaptionPanel;
    grdItens: TJvDBGrid;
    pnlBotoesItem: TPanel;
    btnAdicionarItem: TBitBtn;
    btnRemoverItem: TBitBtn;
    edtBuscaCodigoBarra: TLabeledEdit;
    dsLKPClientes: TDataSource;
    dsLKPCondicaoPagto: TDataSource;
    dsLKPFormaPagto: TDataSource;
    dsLKPUsuarios: TDataSource;
    cblkVendedor: TJvDBLookupCombo;
    lblVendedor: TLabel;
    dbedtCAUT: TDBEdit;
    lblCAut: TLabel;
    dsItemPedido: TDataSource;
    QyItemPedido: TFDQuery;
    QyItemPedidoID_FILIAL: TIntegerField;
    QyItemPedidoID: TFDAutoIncField;
    QyItemPedidoID_VENDA: TIntegerField;
    QyItemPedidoITEM: TIntegerField;
    QyItemPedidoGTIN: TStringField;
    QyItemPedidoID_PRODUTO: TIntegerField;
    QyItemPedidoID_DEPARTAMENTO: TIntegerField;
    QyItemPedidoID_UNIDADE: TIntegerField;
    QyItemPedidoID_CFOP: TIntegerField;
    QyItemPedidoQUANTIDADE: TFMTBCDField;
    QyItemPedidoPRECO: TFMTBCDField;
    QyItemPedidoSUBTOTAL: TBCDField;
    QyItemPedidoDESCONTO: TBCDField;
    QyItemPedidoACRESCIMO: TBCDField;
    QyItemPedidoTOTAL: TBCDField;
    QyItemPedidoCRT: TIntegerField;
    QyItemPedidoCSTICMS: TIntegerField;
    QyItemPedidoBASE_ICMS: TBCDField;
    QyItemPedidoCSOSN: TIntegerField;
    QyItemPedidoALIQ_ICMS: TBCDField;
    QyItemPedidoVALOR_ICMS: TBCDField;
    QyItemPedidoCSTIPI: TIntegerField;
    QyItemPedidoALIQ_IPI: TBCDField;
    QyItemPedidoVALOR_IPI: TBCDField;
    QyItemPedidoCSTPIS: TIntegerField;
    QyItemPedidoALIQ_PIS: TBCDField;
    QyItemPedidoVALOR_PIS: TBCDField;
    QyItemPedidoCSTCOFINS: TIntegerField;
    QyItemPedidoALIQ_COFINS: TBCDField;
    QyItemPedidoVALOR_COFINS: TBCDField;
    QyItemPedidoVALOR_OUTROS: TBCDField;
    QyItemPedidoVALOR_SEGURO: TBCDField;
    QyItemPedidoVALOR_FRETE: TBCDField;
    QyItemPedidoINFOADICIONAL: TStringField;
    QyItemPedidoID_GRADE: TIntegerField;
    QyItemPedidoID_SUBGRADE: TIntegerField;
    QyItemPedidoID_COR: TIntegerField;
    QyItemPedidoSTATUS: TStringField;
    QyItemPedidoALIQ_MVAST: TBCDField;
    QyItemPedidoALIQ_REDBCST: TBCDField;
    QyItemPedidoALIQ_ICMSST: TBCDField;
    QyItemPedidoVALOR_ICMSST: TBCDField;
    QyItemPedidoBASE_ICMSST: TBCDField;
    QyItemPedidoALIQ_REDBC: TBCDField;
    QyItemPedidoITEM_SERVICO: TStringField;
    QyItemPedidoVALOR_COMISSAO: TBCDField;
    QyItemPedidoALTURA: TBCDField;
    QyItemPedidoLARGURA: TBCDField;
    QyItemPedidoAREA: TBCDField;
    QyItemPedidoDESCRICAO_PRODUTO: TStringField;
    QyItemPedidoNS_PRODUTO: TStringField;
    QyItemPedidoCODIGO_UNIDADE: TStringField;
    QyItemPedidoDESC_PRODUTO: TStringField;
    QyItemPedidoGTIN_PRODUTO: TStringField;
    edtDESCONTO: TJvDBCalcEdit;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    ImprimirPedido1: TMenuItem;
    ExportaPDV1: TMenuItem;
    pmNFCe: TPopupMenu;
    EmitirNFCe1: TMenuItem;
    Cancelar1: TMenuItem;
    InutilizarNumerao1: TMenuItem;
    Reimprimir1: TMenuItem;
    btnNFCe: TJvBitBtn;
    btnEstoqueFiliais: TBitBtn;
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure QyItemPedidoAfterOpen(DataSet: TDataSet);
    procedure QyItemPedidoBeforeInsert(DataSet: TDataSet);
    procedure QyItemPedidoAfterPost(DataSet: TDataSet);
    procedure clkID_CONDICAOPAGAMENTOCloseUp(Sender: TObject);
    procedure clkID_CONDICAOPAGAMENTOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarOrcamentoClick(Sender: TObject);
    procedure btnGravarVendaClick(Sender: TObject);
    procedure btnNovoPedidoClick(Sender: TObject);
    procedure edtPERC_DESCONTOChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure QyItemPedidoQUANTIDADEChange(Sender: TField);
    procedure QyItemPedidoAfterDelete(DataSet: TDataSet);
    procedure edtDESCONTOChange(Sender: TObject);
    procedure edtDESCONTOEnter(Sender: TObject);
    procedure edtDESCONTOExit(Sender: TObject);
    procedure edtPERC_DESCONTOExit(Sender: TObject);
    procedure edtPERC_DESCONTOEnter(Sender: TObject);
    procedure ImprimirPedido1Click(Sender: TObject);
    procedure QyItemPedidoDESCONTOChange(Sender: TField);
    procedure QyItemPedidoDESCONTOValidate(Sender: TField);
    procedure QyItemPedidoPRECOChange(Sender: TField);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExportaPDV1Click(Sender: TObject);
    procedure edtTIPOChange(Sender: TObject);
    procedure btnEstoqueFiliaisClick(Sender: TObject);
  private
    procedure NovoPedido;
    procedure validaPreenchimento;
procedure locProduto(out descricao: string; out gtin: string;
out aliq : Currency; out unid: string; out stECF: string; out ncm : string; out estoque: Currency; idProduto : Integer);

    function icmsPDVProduto(id: Integer) : Currency;

  public
    { Public declarations }
  end;

var
  FrmPedidoVenda: TFrmPedidoVenda;

implementation

uses
  udmAcesso, uFrmBuscaProdutos, krnVarGlobais, urptEspelhoVenda, krnConst, Funcoes, krnProcedures, uFrmListaEstoque;

{$R *.dfm}

procedure TFrmPedidoVenda.btnNovoPedidoClick(Sender: TObject);
begin
  NovoPedido;
end;

procedure TFrmPedidoVenda.btnRemoverItemClick(Sender: TObject);
begin
  if QyItemPedido.RecordCount > 0 then
    if MessageBox(Handle, 'Remover item?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
      QyItemPedido.Delete;
end;

procedure TFrmPedidoVenda.btnAdicionarItemClick(Sender: TObject);
begin
 validaPreenchimento;
  try
    Application.CreateForm(TFrmBuscaProdutos, FrmBuscaProdutos);
    FrmBuscaProdutos.Tag := CONST_FORM_PEDIDO; //dmAcesso.QyPedidos.FieldByName('ID').AsInteger;
    FrmBuscaProdutos.ShowModal;
  finally
    dmAcesso.QyPedidos.Edit;
    if DmAcesso.QyConfigSistema.FieldByName('VENDA_TIPO_DESCONTO').AsInteger = 1 then
      edtPERC_DESCONTOChange(edtPERC_DESCONTO);
    FreeAndNil(FrmBuscaProdutos);
  end;
end;

procedure TFrmPedidoVenda.btnEstoqueFiliaisClick(Sender: TObject);
begin
// nao deu certo, devido a herança
//  try
//    Application.CreateForm(TFrmListaEstoque, FrmListaEstoque);
//    FrmListaEstoque.ListaField := 'PRODUTO.ID, PRODUTO.GTIN, UNIDADE.CODIGO as UND, PRODUTO.DESCRICAO,' +
//    ' MARCA.NOME AS MARCA, PRODUTO.NCM, PRODUTO.PRECO, COALESCE(ESTOQUE.ESTOQUE_QTD,0) AS ESTOQUE_QTD, '+
//    'PRODUTO.BLOQUEADO'; //todos os campos
//    FrmListaEstoque.InnerJoin :=
//    ' INNER JOIN UNIDADE ON UNIDADE.ID=PRODUTO.ID_UNIDADE '
//    + ' INNER JOIN MARCA ON MARCA.ID=PRODUTO.ID_MARCA '
//    + ' LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = ' + IntToStr(Estabelecimento)
//    ;
//    FrmListaEstoque.FieldOrderBy := 'DESCRICAO';
//    FrmListaEstoque.Tabela := 'PRODUTO';
//    FrmListaEstoque.Caption := 'Lista de consulta de estoque';
//    FrmListaEstoque.ShowModal;
//  finally
//    freeandnil(FrmListaEstoque);
//  end;
end;

procedure TFrmPedidoVenda.btnGravarOrcamentoClick(Sender: TObject);
begin
  if QyItemPedido.RecordCount=0 then
    raise Exception.Create('Orçamento sem item.');

  validaPreenchimento;

  try
    dmAcesso.QyPedidos.Edit;
    dmAcesso.QyPedidos.FieldByName('TIPO').AsString := 'O';
    dmAcesso.QyPedidos.Post;
  except// on E: Exception do
  //  ShowMessage(e.Message);
  end;

  if MessageBox(Handle, 'Deseja imprimir Orçamento?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
    imprimirEspelhoPedido(dmAcesso.QyPedidos.FieldByName('ID').AsInteger);

end;

procedure TFrmPedidoVenda.btnGravarVendaClick(Sender: TObject);
begin
  if QyItemPedido.RecordCount=0 then
    raise Exception.Create('Orçamento sem item.');

  if dmAcesso.QyPedidosTIPO.AsString = 'O' then
  begin
    try
      dmAcesso.QyPedidos.Edit;
      dmAcesso.QyPedidos.FieldByName('TIPO').AsString := 'V';
      dmAcesso.QyPedidos.Post;

      imprimirEspelhoPedido(dmAcesso.QyPedidos.FieldByName('ID').AsInteger);
      //NovoPedido;
    except  on E: Exception do
      ShowMessage(e.Message);
    end;
  end;
end;

procedure TFrmPedidoVenda.clkID_CONDICAOPAGAMENTOCloseUp(Sender: TObject);
begin
  clkID_FORMAPAGAMENTO.KeyValue := dsLKPFormaPagto.DataSet.FieldByName('ID').AsInteger;
end;

procedure TFrmPedidoVenda.clkID_CONDICAOPAGAMENTOKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  clkID_FORMAPAGAMENTO.KeyValue := dsLKPFormaPagto.DataSet.FieldByName('ID').AsInteger;
end;

procedure TFrmPedidoVenda.edtDESCONTOChange(Sender: TObject);
var
  Perc, Total,VrDesconto : Double;
begin
  if (dmAcesso.QyPedidos.Active) then
  begin
    if (Sender as TJvDBCalcEdit).Tag=1 then
    begin
      Perc  := 0;
      Total := 0;
      dmAcesso.QyPedidos.Edit;
      if (edtSubTotal.Value >  0) then
      begin
        Total   := edtSubTotal.Value+edtVALORFRETE.Value - edtDesconto.Value;
        Perc := RoundABNT((1 - Total / (edtSubTotal.Value+edtVALORFRETE.Value)) * 100,2);


        if (Perc > UsuarioDesconto) then begin
          ShowMessage('Desconto maior que o permitido.');
          edtDesconto.Value     := 0;
          Exit;
        end
        else
        begin
          if (Perc <= 0) then
          begin
            dmAcesso.QyPedidos.FieldByName('PERC_DESCONTO').AsFloat:=0;
            edtTotal.Value  := edtSubTotal.Value + edtVALORFRETE.Value;
            Total := edtTotal.Value;
          end
          else
          begin
            VrDesconto      := ((edtSubTotal.Value/100)* Perc);
            edtTotal.Value  := Total;
            dmAcesso.QyPedidos.FieldByName('TOTAL').AsFloat := Total;
            dmAcesso.QyPedidos.FieldByName('PERC_DESCONTO').AsFloat := Perc;

          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmPedidoVenda.edtDESCONTOEnter(Sender: TObject);
begin
  edtDESCONTO.Tag := 1;

end;

procedure TFrmPedidoVenda.edtDESCONTOExit(Sender: TObject);
begin
  edtDESCONTO.Tag := 0;
end;

procedure TFrmPedidoVenda.edtPERC_DESCONTOChange(Sender: TObject);
begin
    if (dmAcesso.QyPedidos.Active) then
    begin
      if (Sender as TJvDBCalcEdit).Tag=1 then
      begin
        if (edtPERC_DESCONTO.Value > UsuarioDesconto) then
        begin
          edtPERC_DESCONTO.Value :=0;
          raise Exception.Create('Desconto maior que o permitido. Chame o gerente.');
        end;

        if edtPERC_DESCONTO.Value> 0 then
        begin
          dmAcesso.QyPedidos.FieldByName('DESCONTO').AsFloat :=
          (edtPERC_DESCONTO.Value * edtSubTotal.Value)/100;

          dmAcesso.QyPedidos.FieldByName('TOTAL').AsFloat :=
            dmAcesso.QyPedidos.FieldByName('SUBTOTAL').AsFloat+
              dmAcesso.QyPedidos.FieldByName('VALORFRETE').AsFloat-
                dmAcesso.QyPedidos.FieldByName('DESCONTO').AsFloat;
        end
        else
        begin
          dmAcesso.QyPedidos.FieldByName('DESCONTO').AsFloat :=0;
          dmAcesso.QyPedidos.FieldByName('TOTAL').AsFloat :=
            dmAcesso.QyPedidos.FieldByName('SUBTOTAL').AsFloat+
              dmAcesso.QyPedidos.FieldByName('VALORFRETE').AsFloat;
        end;
      end;
    end;
end;

procedure TFrmPedidoVenda.edtPERC_DESCONTOEnter(Sender: TObject);
begin
  edtPERC_DESCONTO.Tag:=1;
end;

procedure TFrmPedidoVenda.edtPERC_DESCONTOExit(Sender: TObject);
begin
  edtPERC_DESCONTO.Tag:=0;

end;
procedure TFrmPedidoVenda.edtTIPOChange(Sender: TObject);
begin
  if  (Sender as TDBEdit).Text = 'Orçamento' then
  begin
    btnGravarOrcamento.Enabled := True;
    btnGravarVenda.Enabled:= True;
    pnlItens.Enabled:= True;
    pnlDadosPedido.Enabled:= True;
    pnlBotoesItem.Enabled:= True;
    btnAdicionarItem.Enabled:=True;
    btnRemoverItem.Enabled:=True;
    pnlRodape.Enabled:= True;
    pnlDadosCliente.Enabled:= True;
  end
  else
  begin
    btnGravarOrcamento.Enabled := false;
    btnGravarVenda.Enabled:= False;
    pnlItens.Enabled:= false;
    pnlDadosPedido.Enabled:= false;
    pnlBotoesItem.Enabled:= false;
    pnlRodape.Enabled:= false;
    pnlDadosCliente.Enabled:= False;
    btnAdicionarItem.Enabled:=false;
    btnRemoverItem.Enabled:=false;
  end;
end;

function TFrmPedidoVenda.icmsPDVProduto(id: Integer): Currency;
begin
  if dmAcesso.QyLKPProdutos.Locate('ID',id, [loCaseInsensitive]) then
    result := dmAcesso.QyLKPProdutos.FieldByName('ICMS_PDV').AsFloat
  else
    Result := 0;

end;

procedure TFrmPedidoVenda.locProduto(out descricao, gtin: string;
  out aliq: Currency; out unid, stECF, ncm: string; out estoque: Currency;
  idProduto: Integer);
begin
  with dmAcesso do
  begin
    if QyLKPProdutos.Locate('ID',idProduto, [loCaseInsensitive]) then
    begin
      descricao :=QyLKPProdutos.FieldByName('DESCRICAO').AsString;
      gtin      :=QyLKPProdutos.FieldByName('GTIN').AsString;
      aliq      :=QyLKPProdutos.FieldByName('ICMS_PDV').AsFloat;
      unid      :=QyLKPProdutos.FieldByName('CODIGO_UNIDADE').AsString;
      stECF     :=QyLKPProdutos.FieldByName('ST_ECF').AsString;
      estoque   :=QyLKPProdutos.FieldByName('ESTOQUE_QTD').AsFloat;
      ncm       :=QyLKPProdutos.FieldByName('NCM').AsString;
    end
    else
    begin
      descricao :='';
      gtin      :='';
      aliq      :=0;
      unid      :='';
      stECF     :='';
      estoque   :=0;
    end;

  end;
end;
procedure TFrmPedidoVenda.ExportaPDV1Click(Sender: TObject);
var
  Lista : TStringList;
  Linha : string;
  PlanoPagto : string;
  Item : Integer;
  unidadeProduto, descricaoProduto, gtinProduto, stEcfProduto, ncmProduto : string;
  aliqIcmsProduto, estoqueProduto : Currency;
begin
  if LowerCase(edtTIPO.Text)= LowerCase('Pre-Venda') then
  begin
    PlanoPagto  := '';
    Linha       := '';
    Lista       := TStringList.Create;
    Item        := 1;
    dsLKPClientes.DataSet.Locate('ID',clkID_CONTATO.KeyValue,[loCaseInsensitive]);
    with dmAcesso.QyPedidos do
    begin

      PlanoPagto := 'AV';
      Linha:= 'PRE|' +
               IntToStr(FieldByName('ID').AsInteger)          + PIPE + //ok
               FormatDateTime('ddmmyyyyhhnnss',Now)           + PIPE + //ok
               FieldByName('ID_CONTATO').AsString             + PIPE + //ok
               dsLKPClientes.DataSet.FieldByName('NOME').AsString                   + PIPE + //ok
               dsLKPClientes.DataSet.FieldByName('DOCUMENTO').AsString              + PIPE + //ok
               PlanoPagto                                     + PIPE +  //ok
               StringReplace(FormatFloat('0.00#.##',dmAcesso.QyPedidos.FieldByName('SUBTOTAL').AsFloat),',','.',[rfReplaceAll])    + PIPE + //ok
               StringReplace(FormatFloat('0.00#.##',dmAcesso.QyPedidos.FieldByName('DESCONTO').AsFloat),',','.',[rfReplaceAll])    + PIPE +  //ok
               '0.00'                                         + PIPE + //acrescimo
               IntToStr(QyItemPedido.RecordCount)          + PIPE
               +
               ''+ PIPE+ //codgio externo vendedor
               ''+ PIPE+ //obs
               ''+ PIPE+ //rg ou i.e
               ''+ PIPE+ //endereco
               ''+ PIPE+ //numero     versao 154 dj
               ''+ PIPE+ //compl
               ''+ PIPE+ //bairro
               ''+ PIPE+ //cidade
               ''+ PIPE+ //estado
               ''+ PIPE+ //cep
               '9'+ PIPE+ // nivel credito
               ''+ PIPE // email
               ;

      Lista.Add(Linha);


      with QyItemPedido do
      begin
        First;
        while not eof do
        begin
          locProduto(descricaoProduto,gtinProduto,aliqIcmsProduto,unidadeProduto,stEcfProduto,ncmProduto,estoqueProduto,FieldByName('ID_PRODUTO').AsInteger);
          if ncmProduto='' then
            raise Exception.Create('NCM não informado no produto.');
          Linha := 'PIT' + PIPE +
          IntToStr(Item) + PIPE +
          FieldByName('ID_PRODUTO').AsString + PIPE +
          StringReplace(FormatFloat('0.00#.##',FieldByName('QUANTIDADE').AsFloat),',','.',[rfReplaceAll]) + PIPE +

          StringReplace(FormatFloat('0.00#.##', FieldByName('PRECO').AsFloat),',','.',[rfReplaceAll]) + PIPE +
          StringReplace(FormatFloat('0.00#.##',FieldByName('DESCONTO').AsFloat),',','.',[rfReplaceAll]) + PIPE +

          StringReplace(FormatFloat('0.00#.##', FieldByName('ACRESCIMO').AsFloat),',','.',[rfReplaceAll]) + PIPE +
          StringReplace(FormatFloat('0.00#.##', FieldByName('TOTAL').AsFloat),',','.',[rfReplaceAll]) + PIPE +
          gtinProduto + PIPE +
          descricaoProduto + PIPE +
          '' + PIPE+
          unidadeProduto + PIPE +
          stEcfProduto + PIPE +
          StringReplace(FormatFloat('#,##0.00', aliqIcmsProduto),',','.',[rfReplaceAll]) + PIPE +
          'N' + PIPE +
          'N' + PIPE +
          'N' + PIPE +
          'N' + PIPE +
          FormatFloat('#0', estoqueProduto) + PIPE +
          '' + PIPE +
          '' + PIPE +
          '' + PIPE +
          '' + PIPE +
          '' + PIPE +
          '' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          '0' + PIPE +
          ncmProduto +PIPE
          +
          '' + pipe + //kit
          '' + pipe + // prazo 0
          '' + pipe + //cest
          '' + pipe + //controle estoque N
          '' + pipe + //anp
          '' + pipe + //duplca pesagen N
          '' + pipe //margem seguranca
          ;
          inc(Item);
          Lista.Add(Linha);
          Next;
        end;
      end;
    end;


    Lista.SaveToFile( FsPastaApp + 'exporta\' + FormatFloat('00000000',dmAcesso.QyPedidos.FieldByName('ID').AsInteger) + '.djp' );
    Application.MessageBox('Venda exportada com sucesso.',NOME_SISTEMA,MB_ICONINFORMATION);
    FreeAndNil(Lista);

    if MessageBox(Handle, 'Cupom foi impresso?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
    begin
      dmAcesso.QyPedidos.Edit;
      dmAcesso.QyPedidosTIPO.AsString := 'F';
      dmAcesso.QyPedidos.Post;
    end;
  end
  else
    AlertaInfo('Somente exportação para PDV de pedido. Feche o pedido.');
    //updateVendaTipo(dmAcesso.QyPedidos.FieldByName('ID').AsInteger, 'F');

end;
procedure TFrmPedidoVenda.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F2 :
      begin
        if btnAdicionarItem.Enabled then
          btnAdicionarItem.Click;
      end;
    VK_F3 :
      begin
        if btnRemoverItem.Enabled then
          btnRemoverItem.Click;
      end;
    VK_F1 :
      begin
        if btnNovoPedido.Enabled then
          btnNovoPedido.Click;
      end;
    VK_F6 :
      begin
        if btnGravarOrcamento.Enabled then
          btnGravarOrcamento.Click;
      end;
    VK_F7 :
      begin
        if btnGravarVenda.Enabled then
          btnGravarVenda.Click;
      end;
  end;

end;

procedure TFrmPedidoVenda.FormShow(Sender: TObject);
begin

  dmAcesso.QyLKPClientes.Refresh;
  dmAcesso.QyLKPCondicaoPagto.Refresh;
  dmAcesso.QyLKPFormaPagto.Refresh;


  if DmAcesso.QyConfigSistema.FieldByName('VENDA_TIPO_DESCONTO').AsInteger = 1 then
  begin
    edtPERC_DESCONTO.Enabled := True;
    edtDESCONTO.Enabled := False;
  end
  else
  begin
    edtPERC_DESCONTO.Enabled := False;
    edtDESCONTO.Enabled := True;
  end;

  if UsuarioGerente=0 then
  begin
    grdItens.Columns[5].ReadOnly:=True;
    grdItens.Columns[5].Color := clWindow;
  end
  else
  begin
    grdItens.Columns[5].ReadOnly:=false;
    grdItens.Columns[5].Color := clInfoBk;
  end;

end;


procedure TFrmPedidoVenda.ImprimirPedido1Click(Sender: TObject);
begin
  if dsItemPedido.DataSet.RecordCount>0 then
    imprimirEspelhoPedido(dmAcesso.QyPedidos.FieldByName('ID').AsInteger);
end;



procedure TFrmPedidoVenda.NovoPedido;
begin
  try
    dmAcesso.QyPedidos.Close;
    dmAcesso.QyPedidos.SQL.Clear;
    dmAcesso.QyPedidos.Open('SELECT * FROM VENDA WHERE ID=-1');
    dmAcesso.QyPedidos.Insert;
    dmAcesso.QyPedidos.FieldByName('FINALIDADENFE').AsInteger :=0;
    dmAcesso.QyPedidos.FieldByName('TIPO').AsString := 'O';
    dmAcesso.QyPedidos.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
    dmAcesso.QyPedidos.FieldByName('SUBTOTAL').AsFloat := 0;
    dmAcesso.QyPedidos.FieldByName('DESCONTO').AsFloat := 0;
    dmAcesso.QyPedidos.FieldByName('TOTAL').AsFloat := 0;

    dmAcesso.QyPedidos.FieldByName('ID_CONTATO').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_CLIENTE').AsInteger;

    dmAcesso.QyPedidos.FieldByName('TIPOFRETE').AsInteger := 9;

    dmAcesso.QyPedidos.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_CONDPAGTO').AsInteger;

    dmAcesso.QyPedidos.FieldByName('ID_FORMAPAGAMENTO').AsInteger :=
      dmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_FORMAPAGTO').AsInteger;

    dmAcesso.QyPedidos.FieldByName('ID_USUARIO').AsInteger :=UsuarioLogado;
      dmAcesso.QyPedidos.FieldByName('EMISSAO').AsDateTime := Now;

    QyItemPedido.Close;
    QyItemPedido.Open('SELECT * FROM DETALHE_VENDA WHERE ID=-1');
  except on e:Exception do
    ShowMessage(e.Message);

  end;
end;

procedure TFrmPedidoVenda.QyItemPedidoAfterDelete(DataSet: TDataSet);
var
  SubTotal, total: Currency;
begin

  SubTotal:=0;
  total:=0;
  DataSet.First;
  while not DataSet.Eof do
  begin
    SubTotal:=SubTotal+DataSet.FieldByName('SUBTOTAL').AsFloat;
    Total:=Total+DataSet.FieldByName('TOTAL').AsFloat;
    DataSet.Next;
  end;

  dmAcesso.QyPedidos.Edit;
  dmAcesso.QyPedidosSUBTOTAL.AsFloat :=SubTotal;
  dmAcesso.QyPedidosTOTAL.AsFloat :=Total;

  try
    dmAcesso.QyPedidos.Post;
  except

  end;
end;

PROcedure TFrmPedidoVenda.QyItemPedidoAfterOpen(DataSet: TDataSet);
var
i: Integer;
begin
  for I := 0 to DataSet.FieldCount-1 do
  begin
    if DataSet.Fields[i] is TFMTBCDField then
      TFMTBCDField(DataSet.Fields[i]).DisplayFormat := '#,##0.00';
    if DataSet.Fields[i] is TBCDField then
      TBCDField(DataSet.Fields[i]).DisplayFormat := '#,##0.00';
    if DataSet.Fields[i] is TFloatField then
      TFloatField(DataSet.Fields[i]).DisplayFormat := '#,##0.00';

  end;

end;

procedure TFrmPedidoVenda.QyItemPedidoAfterPost(DataSet: TDataSet);
var
  total: Currency;
begin

  total:=0;
  with dmAcesso do
  begin
    with QySQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID, ID_VENDA, QUANTIDADE, PRECO, SUBTOTAL, DESCONTO, TOTAL ');
      SQL.Add('FROM DETALHE_VENDA WHERE ID_VENDA =:pIdVenda');
      ParamByName('pIdVenda').AsInteger := DataSet.FieldByName('ID_VENDA').AsInteger;
      Open;
    end;

    QySQL.First;
    while not QySQL.Eof do
    begin
      Total:=Total+QySQL.FieldByName('TOTAL').AsFloat;
      QySQL.Next;
    end;

    QyPedidos.Edit;
    QyPedidos.FieldByName('SUBTOTAL').AsFloat :=Total;
    QyPedidos.FieldByName('TOTAL').AsFloat :=Total;

    if edtPERC_DESCONTO.Enabled then
    begin
      edtPERC_DESCONTO.Tag:=1;
      edtPERC_DESCONTOChange(edtPERC_DESCONTO);
      edtPERC_DESCONTO.Tag := 0;
    end;


    if edtDESCONTO.Enabled then
    begin
      edtDESCONTO.Tag := 1;
      edtDESCONTOChange(edtDESCONTO);
      edtDESCONTO.Tag := 0;
    end;


    try
      QyPedidos.Post;
    except

    end;
  end;
end;

procedure TFrmPedidoVenda.QyItemPedidoBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TFrmPedidoVenda.QyItemPedidoDESCONTOChange(Sender: TField);
begin
  if Sender.IsNull then
    Sender.AsFloat := 0;
  QyItemPedido.FieldByName('SUBTOTAL').AsFloat :=
    QyItemPedido.FieldByName('QUANTIDADE').AsFloat * QyItemPedido.FieldByName('PRECO').AsFloat;

  QyItemPedido.FieldByName('TOTAL').AsFloat := QyItemPedido.FieldByName('SUBTOTAL').AsFloat -
    Sender.AsFloat;
end;

procedure TFrmPedidoVenda.QyItemPedidoDESCONTOValidate(Sender: TField);
begin
  if (TFloatField(Sender).MinValue = 0) and (TFloatField(Sender).MaxValue = 0) then
    Exit;
end;

procedure TFrmPedidoVenda.QyItemPedidoPRECOChange(Sender: TField);
begin
 if (Sender.IsNull) or (Sender.AsFloat = 0) then
    Sender.AsFloat := 1;

  QyItemPedido.FieldByName('SUBTOTAL').AsFloat :=QyItemPedido.FieldByName('QUANTIDADE').AsFloat *
    Sender.AsFloat;

  QyItemPedido.FieldByName('TOTAL').AsFloat :=
  QyItemPedido.FieldByName('SUBTOTAL').AsFloat - QyItemPedido.FieldByName('DESCONTO').AsFloat;
  QyItemPedido.FieldByName('DESCONTO').AsFloat := 0;


  if QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat > 0 then
  begin
    QyItemPedido.FieldByName('BASE_ICMS').AsFloat :=QyItemPedido.FieldByName('TOTAL').AsFloat;
    QyItemPedido.FieldByName('VALOR_ICMS').AsFloat := RoundABNT(QyItemPedido.FieldByName('BASE_ICMS').AsFloat *
      QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat / 100,2);
  end
  else
  begin
    QyItemPedido.FieldByName('VALOR_ICMS').AsFloat := 0;
    QyItemPedido.FieldByName('BASE_ICMS').AsFloat := 0;
  end;
end;

procedure TFrmPedidoVenda.QyItemPedidoQUANTIDADEChange(Sender: TField);
begin
 if (Sender.IsNull) or (Sender.AsFloat = 0) then
    Sender.AsFloat := 1;

  QyItemPedido.FieldByName('SUBTOTAL').AsFloat :=QyItemPedido.FieldByName('PRECO').AsFloat *
    Sender.AsFloat;

  QyItemPedido.FieldByName('TOTAL').AsFloat :=
  QyItemPedido.FieldByName('SUBTOTAL').AsFloat - QyItemPedido.FieldByName('DESCONTO').AsFloat;
  QyItemPedido.FieldByName('DESCONTO').AsFloat := 0;






  if QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat > 0 then
  begin
    QyItemPedido.FieldByName('BASE_ICMS').AsFloat :=QyItemPedido.FieldByName('TOTAL').AsFloat;
    QyItemPedido.FieldByName('VALOR_ICMS').AsFloat := RoundABNT(QyItemPedido.FieldByName('BASE_ICMS').AsFloat *
      QyItemPedido.FieldByName('ALIQ_ICMS').AsFloat / 100,2);
  end
  else
  begin
    QyItemPedido.FieldByName('VALOR_ICMS').AsFloat := 0;
    QyItemPedido.FieldByName('BASE_ICMS').AsFloat := 0;
  end;
end;

procedure TFrmPedidoVenda.validaPreenchimento;
begin
 if clkID_CONTATO.KeyValue = null then
  begin
    clkID_CONTATO.SetFocus;
    raise Exception.Create('Informe o cliente.');
  end;


  if clkID_CONDICAOPAGAMENTO.KeyValue = null then
  begin
    clkID_CONDICAOPAGAMENTO.SetFocus;
    raise Exception.Create('Informe a condição de pagamento.');
  end;

  if clkID_FORMAPAGAMENTO.KeyValue = Null then
  begin
    clkID_FORMAPAGAMENTO.SetFocus;
    raise Exception.Create('Informe a forma de pagamento.');
  end;
end;

end.
