unit uFrmCadastroCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, JvExButtons, JvBitBtn,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvXPCore, JvXPButtons, Vcl.DBCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvDBControls, JvExControls, JvDBLookup,
  Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvBaseEdits, ACBrUtil, ACBrBase, ACBrDFe, ACBrNFe,
  ACBrSpedFiscal, ACBrEFDBlocos, pcnConversao, pcnNFe,pcnAuxiliar,
  Datasnap.DBClient;

type
  TFrmCadastroCompra = class(TForm)
    pgcPrincipal: TPageControl;
    tsPrincipal: TTabSheet;
    pgcTotais: TPageControl;
    tsTotais: TTabSheet;
    tsParcelas: TTabSheet;
    Panel1: TPanel;
    lblCliente: TLabel;
    lblCondicaoPagamento: TLabel;
    lblFormaPagamento: TLabel;
    lblDataEmissao: TLabel;
    lbl16: TLabel;
    lbl25: TLabel;
    clkID_CONTATO: TJvDBLookupCombo;
    clkID_CONDICAOPAGAMENTO: TJvDBLookupCombo;
    clkID_FORMAPAGAMENTO: TJvDBLookupCombo;
    edtEMISSAO: TJvDBDateEdit;
    edtCHAVENFE: TDBEdit;
    jvxpbtnCarregaNFE: TJvXPButton;
    cbbSITUACAO: TJvDBComboBox;
    JvXPButton1: TJvXPButton;
    pnl2: TPanel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    grdItems: TJvDBGrid;
    btnCancelar: TJvBitBtn;
    btnGravar: TJvBitBtn;
    dsCompra: TDataSource;
    dsItems: TDataSource;
    QyCompra: TFDQuery;
    QyItems: TFDQuery;
    dsLKPCondicaoPagto: TDataSource;
    dsLKPFormaPagto: TDataSource;
    dsFornecedor: TDataSource;
    Label1: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    dsLKPProdutos: TDataSource;
    dsLKPUnidades: TDataSource;
    edtSubTotal: TJvDBCalcEdit;
    lblSubTotal: TLabel;
    lblTotal: TLabel;
    edtTotal: TJvDBCalcEdit;
    edtDESCONTO: TJvDBCalcEdit;
    lblDesconto: TLabel;
    QyItemsID_FILIAL: TIntegerField;
    QyItemsID: TFDAutoIncField;
    QyItemsID_COMPRA: TIntegerField;
    QyItemsITEM: TIntegerField;
    QyItemsID_PRODUTO: TIntegerField;
    QyItemsID_DEPARTAMENTO: TIntegerField;
    QyItemsID_UNIDADE: TIntegerField;
    QyItemsID_CFOP: TIntegerField;
    QyItemsQUANTIDADE: TFMTBCDField;
    QyItemsPRECO: TFMTBCDField;
    QyItemsSUBTOTAL: TBCDField;
    QyItemsDESCONTO: TBCDField;
    QyItemsTOTAL: TBCDField;
    QyItemsCRT: TIntegerField;
    QyItemsCSOSN: TIntegerField;
    QyItemsCSTICMS: TStringField;
    QyItemsALIQ_ICMS: TBCDField;
    QyItemsBASE_ICMS: TBCDField;
    QyItemsVALOR_ICMS: TBCDField;
    QyItemsCSTIPI: TStringField;
    QyItemsALIQ_IPI: TBCDField;
    QyItemsVALOR_IPI: TBCDField;
    QyItemsCSTPIS: TStringField;
    QyItemsALIQ_PIS: TBCDField;
    QyItemsVALOR_PIS: TBCDField;
    QyItemsCSTCOFINS: TStringField;
    QyItemsALIQ_COFINS: TBCDField;
    QyItemsVALOR_COFINS: TBCDField;
    QyItemsALIQ_II: TBCDField;
    QyItemsVALOR_II: TBCDField;
    QyItemsVALOR_OUTROS: TBCDField;
    QyItemsVALOR_SEGURO: TBCDField;
    QyItemsVALOR_FRETE: TBCDField;
    QyItemsINFOADICIONAL: TStringField;
    QyItemsSTATUS: TStringField;
    QyItemsGTIN: TStringField;
    QyItemsDESCRICAO_PRODUTO: TStringField;
    QyItemsCODIGO_UNIDADE: TStringField;
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    jvdbgrd1: TJvDBGrid;
    pnl22: TPanel;
    btnparcelas: TJvXPButton;
    btnRemoverParcela: TJvXPButton;
    dsFatura: TDataSource;
    QyFatura: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure clkID_CONDICAOPAGAMENTOCloseUp(Sender: TObject);
    procedure clkID_CONDICAOPAGAMENTOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure QyItemsAfterOpen(DataSet: TDataSet);
    procedure QyItemsAfterPost(DataSet: TDataSet);
    procedure edtDESCONTOChange(Sender: TObject);
    procedure edtDESCONTOExit(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure QyItemsQUANTIDADEChange(Sender: TField);
    procedure QyItemsPRECOChange(Sender: TField);
    procedure QyItemsDESCONTOChange(Sender: TField);
    procedure QyItemsBASE_ICMSChange(Sender: TField);
    procedure QyItemsALIQ_ICMSChange(Sender: TField);
    procedure QyItemsALIQ_IPIChange(Sender: TField);
    procedure QyItemsALIQ_PISChange(Sender: TField);
    procedure QyItemsALIQ_COFINSChange(Sender: TField);
    procedure QyItemsALIQ_IIChange(Sender: TField);
    procedure jvxpbtnCarregaNFEClick(Sender: TObject);
    procedure QyItemsBeforeInsert(DataSet: TDataSet);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnRemoverParcelaClick(Sender: TObject);
    procedure btnparcelasClick(Sender: TObject);
    procedure cdsFaturaBeforeInsert(DataSet: TDataSet);
    procedure clkID_FORMAPAGAMENTOCloseUp(Sender: TObject);
    procedure clkID_FORMAPAGAMENTOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QyFaturaAfterInsert(DataSet: TDataSet);
    procedure QyFaturaAfterOpen(DataSet: TDataSet);
    procedure QyFaturaBeforeInsert(DataSet: TDataSet);
  private
    procedure validaPreenchimento;
    procedure CreateDatasetFatura;
    procedure ProcCarregaXML(const chave : string = '');
    function FunNovoProduto(ID_FILIAL, ID: Integer; GTIN,
      CODIGO_INTERNO, DESCRICAO, NCM, ID_UNIDADE: string; ID_TIPOPRODUTO,
      ID_DEPARTAMENTO, ID_GRUPOPRODUTO, ID_MARCA: Integer; PRECO_COMPRA,
      PRECO: Double; ID_TRIBUTACAO, BLOQUEADO: Integer; pCEST: string): Integer;

     procedure GeraFatura;
     procedure LoadFatura;
     procedure gerarParcelas;
     procedure apagarParcelas;

  public
    { Public declarations }
  end;

var
  FrmCadastroCompra: TFrmCadastroCompra;

implementation

uses
  udmAcesso, krnVarGlobais, Funcoes, uFrmBuscaProdutos, krnConst, uFrmListaContatos;

{$R *.dfm}

procedure TFrmCadastroCompra.apagarParcelas;
begin
  if QyFatura.RecordCount > 0 then
    QyFatura.Delete;
end;

procedure TFrmCadastroCompra.btn1Click(Sender: TObject);
var
  idCompra: integer;
begin
  idCompra := QyCompra.FieldByName('ID').AsInteger;
  validaPreenchimento;
  try

    Application.CreateForm(TFrmBuscaProdutos, FrmBuscaProdutos);
    FrmBuscaProdutos.Tag := CONST_FORM_COMPRA;
    FrmBuscaProdutos.ShowModal;
  finally
    //QyCompra.Edit;
    FreeAndNil(FrmBuscaProdutos);
  end;
end;

procedure TFrmCadastroCompra.btn2Click(Sender: TObject);
begin
  if QyItems.RecordCount > 0 then
    if MessageBox(Handle, 'Remover item?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
    begin
      QyItems.Delete;
      QyCompra.Refresh;
    end;
end;

procedure TFrmCadastroCompra.btnCancelarClick(Sender: TObject);
begin
  QyItems.Cancel;
  QyCompra.Cancel;
  Close;
end;

procedure TFrmCadastroCompra.btnGravarClick(Sender: TObject);
begin
  validaPreenchimento;
  with dmAcesso do
  begin
    with Qysql do
    begin
      Close;
      SQL.Clear;
      sql.Add('UPDATE DETALHE_COMPRA SET STATUS = "G" WHERE ID_COMPRA =:pID');
      ParamByName('pID').AsInteger:= Self.QyCompra.FieldByName('ID').AsInteger;
      try
        ExecSQL;
        if not QyFatura.IsEmpty then
          QyFatura.ApplyUpdates(0);
        AlertaInfo('Compra gravada com sucesso.');
        self.Close;
      except on E: Exception do
        AlertaError(PChar(e.Message));
      end;
    end;
  end;
end;

procedure TFrmCadastroCompra.btnparcelasClick(Sender: TObject);
begin
  gerarParcelas;
end;
procedure TFrmCadastroCompra.btnRemoverParcelaClick(Sender: TObject);
begin
  apagarParcelas;
end;

procedure TFrmCadastroCompra.cdsFaturaBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TFrmCadastroCompra.clkID_CONDICAOPAGAMENTOCloseUp(Sender: TObject);
begin
  clkID_FORMAPAGAMENTO.KeyValue := dsLKPFormaPagto.DataSet.FieldByName('ID').AsInteger;
  apagarParcelas;
  gerarParcelas;
end;

procedure TFrmCadastroCompra.clkID_CONDICAOPAGAMENTOKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  clkID_FORMAPAGAMENTO.KeyValue := dsLKPFormaPagto.DataSet.FieldByName('ID').AsInteger;
  apagarParcelas;
  gerarParcelas;
end;

procedure TFrmCadastroCompra.clkID_FORMAPAGAMENTOCloseUp(Sender: TObject);
begin
  apagarParcelas;
  gerarParcelas;
end;

procedure TFrmCadastroCompra.clkID_FORMAPAGAMENTOKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  apagarParcelas;
  gerarParcelas;
end;

procedure TFrmCadastroCompra.CreateDatasetFatura;
begin
  
end;

procedure TFrmCadastroCompra.edtDESCONTOChange(Sender: TObject);
begin
  if edtDESCONTO.Focused then
  begin
    QyCompra.Edit;
    QyCompra.FieldByName('TOTAL').AsFloat :=
      QyCompra.FieldByName('SUBTOTAL').AsFloat - edtDESCONTO.Value;
  //  QyCompra.Post;
  end;
end;

procedure TFrmCadastroCompra.edtDESCONTOExit(Sender: TObject);
begin
  if QyCompra.State IN [dsEdit] then
    QyCompra.Post;
end;

procedure TFrmCadastroCompra.FormShow(Sender: TObject);
begin
  OpenDialog1.InitialDir :=  fsPastaImporta;
  dsFornecedor.DataSet.Refresh;
  dsLKPFormaPagto.DataSet.Refresh;
  dsLKPCondicaoPagto.DataSet.Refresh;

  if self.Tag=0 then //NOVO REGISTRO
  begin
    with QyCompra do
    begin
      Close;
      Open('SELECT * FROM COMPRA WHERE ID =-1 AND ID_FILIAL = ' + IntToStr(Estabelecimento));
      Insert;
      FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
      FieldByName('ID_NATUREZA').AsInteger := dmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_NATUREZA').AsInteger;
      FieldByName('EMISSAO').AsDateTime := Now;
      FieldByName('SITUACAO').AsString := 'NM';
      FieldByName('MODELO_NFE').AsString := '55';
      FieldByName('SERIE_NFE').AsString := '1';
      FieldByName('SUBTOTAL').AsFloat := 0;
      FieldByName('DESCONTO').AsFloat := 0;
      FieldByName('TIPOFRETE').AsFloat := 9;
      FieldByName('VALORFRETE').AsFloat := 0;
      FieldByName('BASEICMS').AsFloat := 0;
      FieldByName('VALORICMS').AsFloat := 0;
      FieldByName('BASEICMSST').AsFloat := 0;
      FieldByName('VALORICMSST').AsFloat := 0;
      FieldByName('VALORIPI').AsFloat := 0;
      FieldByName('VALORPIS').AsFloat := 0;
      FieldByName('VALORPISST').AsFloat := 0;
      FieldByName('VALORCOFINS').AsFloat := 0;
      FieldByName('VALORCOFINSST').AsFloat := 0;
      FieldByName('VALORII').AsFloat := 0;
      FieldByName('OUTROS').AsFloat := 0;
      FieldByName('SEGURO').AsFloat := 0;
      FieldByName('ABAT_NT').AsFloat := 0;
      FieldByName('TOTAL').AsFloat := 0;
      FieldByName('BLOQUEADO').AsInteger := 0;

      clkID_CONTATO.KeyValue :=dsFornecedor.DataSet.FieldByName('ID').AsInteger;
      FieldByName('ID_CONTATO').AsInteger := dsFornecedor.DataSet.FieldByName('ID').AsInteger;

      clkID_CONDICAOPAGAMENTO.KeyValue := dsLKPCondicaoPagto.DataSet.FieldByName('ID').AsInteger;
      FieldByName('ID_CONDICAOPAGAMENTO').AsInteger := dsLKPCondicaoPagto.DataSet.FieldByName('ID').AsInteger;;

      clkID_FORMAPAGAMENTO.KeyValue:= dsLKPFormaPagto.DataSet.FieldByName('ID').AsInteger;
      FieldByName('ID_FORMAPAGAMENTO').AsInteger := dsLKPFormaPagto.DataSet.FieldByName('ID').AsInteger;
    end;
    with QyItems do
    begin
      Close;
      Open('SELECT * FROM DETALHE_COMPRA WHERE ID=-1 AND ID_FILIAL = ' + IntToStr(Estabelecimento));
    end;
  end
  else //EDITAR REGISTRO
  begin
    with QyCompra do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM COMPRA WHERE ID = ' + IntToStr(SELF.Tag) + ' AND ID_FILIAL = ' + IntToStr(Estabelecimento));
      open;
      Edit;
    end;

    with QyItems do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM DETALHE_COMPRA WHERE ID_COMPRA=' + IntToStr(SELF.Tag) + ' AND ID_FILIAL = ' + IntToStr(Estabelecimento));
      Open;
    end;

  end;
  pgcTotais.ActivePage := tsTotais;
  LoadFatura;
end;

procedure TFrmCadastroCompra.jvxpbtnCarregaNFEClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    ProcCarregaXML(OpenDialog1.FileName);
  end;
end;

procedure TFrmCadastroCompra.LoadFatura;
VAR
  iParcela: integer;
begin
  iParcela:=1;
  QyFatura.Close;
  QyFatura.SQL.Clear;
  QyFatura.SQL.Add('SELECT * FROM LANCAMENTO WHERE ID_COMPRA=:pID');
  QyFatura.ParamByName('pID').AsInteger := QyCompra.FieldByName('ID').AsInteger;
  QyFatura.Open();
end;

procedure TFrmCadastroCompra.ProcCarregaXML(const chave: string);
var
  ViDup, ViAux : Integer;
begin
  if QyCompra.State in [dsBrowse] then
    QyCompra.Edit;

  if ACBrNFe1.NotasFiscais.Count > 0 then
  begin
    with ACBrNFe1.NotasFiscais.Items[0].NFe do
    begin

      if findCompra(OnlyNumber(infNFe.ID),Estabelecimento) then
      begin
        AlertaError('Nota Fiscal já foi Lançada no sistema.');
        Exit;
      end;


      QyCompra.FieldByName('ID_CONTATO').AsInteger :=
      findContatoOrInsert(Estabelecimento, Emit.xNome,
        Emit.xNome, Emit.CNPJCPF, Emit.IE, Emit.EnderEmit.xLgr, Emit.EnderEmit.nro,
        Emit.EnderEmit.xCpl, Emit.EnderEmit.xBairro, IntToStr(Emit.EnderEmit.CEP), Emit.EnderEmit.cMun,
        Emit.EnderEmit.fone, UsuarioLogado);

      with QyCompra do
      begin
        FieldByName('ID_FILIAL').AsInteger      := Estabelecimento;
        FieldByName('EMISSAO').AsDateTime       := Ide.dEmi;
        FieldByName('NUMERO_NOTA').AsInteger    := Ide.nNF;
        FieldByName('DATA_ENTRADA').AsDateTime  := Ide.dEmi;
        FieldByName('CHAVENFE').AsString        := OnlyNumber(infNFe.ID);
        FieldByName('PROTOCOLONFE').AsString    := procNFe.nProt;
        FieldByName('MODELO_NFE').AsString      := FormatFloat('00', Ide.modelo);
        FieldByName('SERIE_NFE').AsString       := FormatFloat('000', Ide.serie);
        FieldByName('ID_NATUREZA').AsInteger := dmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_NATUREZA').AsInteger;
      end;

      with Total.ICMSTot do
      begin
        QyCompra.FieldByName('BASEICMS').AsFloat     := vBC;
        QyCompra.FieldByName('VALORICMS').AsFloat    := vICMS;
        QyCompra.FieldByName('BASEICMSST').AsFloat   := vBCST;
        QyCompra.FieldByName('VALORICMSST').AsFloat  := vST;
        QyCompra.FieldByName('SUBTOTAL').AsFloat     := vProd;
        QyCompra.FieldByName('VALORFRETE').AsFloat   := vFrete;
        QyCompra.FieldByName('DESCONTO').AsFloat     := vDesc;
        QyCompra.FieldByName('VALORII').AsFloat      := vII;//vII;
        QyCompra.FieldByName('VALORIPI').AsFloat     := vIPI;
        QyCompra.FieldByName('VALORPIS').AsFloat     := vPIS;
        QyCompra.FieldByName('VALORCOFINS').AsFloat  := vCOFINS;
        QyCompra.FieldByName('TOTAL').AsFloat        := vNF;
        QyCompra.FieldByName('SITUACAO').AsString    := 'NE';
        if chave<> '' then
        begin
          try
            TBlobField(QyCompra.FieldByName('XMLNFE')).LoadFromFile(chave);
          except
          end;
        end;
        QyCompra.Post;
      end;

      //GERAR PARCELAS DO CONTAS A PAGAR
      CreateDatasetFatura;
      QyFatura.BeforeInsert := nil;
      with Cobr do
      begin
        for ViDup := 0 to Cobr.Dup.Count - 1 do
        begin
          with QyFatura do
          begin
            Append;
            FieldByName('ID_COMPRA').AsInteger := QyCompra.FieldByName('ID').AsInteger;
            FieldByName('PARCELA').AsInteger := ViDup+1;
            FieldByName('VENCIMENTO').AsDateTime := Cobr.Dup.Items[ViDup].dVenc;
            FieldByName('VALOR').AsFloat := Cobr.Dup.Items[ViDup].vDup;
            Post;
          end;
        end;
      end;
      QyFatura.BeforeInsert :=  cdsFaturaBeforeInsert;


      QyItems.BeforeInsert := nil;
      for ViAux := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count - 1 do
      begin
        with QyItems do
        begin
          append;
          FieldByName('ITEM').AsInteger := Det.Items[ViAux].Prod.nItem;
          FieldByName('ID_FILIAL').AsInteger  := Estabelecimento;
          FieldByName('ID_COMPRA').AsInteger  := QyCompra.FieldByName('ID').AsInteger;
          FieldByName('ID_PRODUTO').AsInteger := findProdutoOrInsert(det.Items[ViAux].Prod.cProd,
                                                det.Items[ViAux].Prod.xProd,
                                                det.Items[ViAux].Prod.NCM,
                                                det.Items[ViAux].Prod.uCom,
                                                det.Items[ViAux].Prod.vUnCom,
                                                QyCompra.FieldByName('ID_CONTATO').AsInteger,
                                                det.items[Viaux].prod.cEAN
                                                ); //dmAcesso.QySQL.FieldByName('ID_PRODUTO').AsInteger;
          FieldByName('QUANTIDADE').AsFloat   := det.Items[ViAux].Prod.qCom;
          FieldByName('PRECO').AsFloat        := det.Items[ViAux].Prod.vUnCom;
          FieldByName('SUBTOTAL').AsFloat     := det.Items[ViAux].Prod.vProd;
          FieldByName('CSOSN').AsInteger      := DmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_ST').AsInteger;

          //ICMS
          FieldByName('BASE_ICMS').AsFloat    := det.Items[ViAux].Imposto.ICMS.vBC;
          FieldByName('ALIQ_ICMS').AsFloat    := det.Items[ViAux].Imposto.ICMS.pICMS;
          FieldByName('VALOR_ICMS').AsFloat   := det.Items[ViAux].Imposto.ICMS.vICMS;

          //IPI
          FieldByName('ALIQ_IPI').AsFloat     := det.Items[ViAux].Imposto.IPI.pIPI;
          FieldByName('VALOR_IPI').AsFloat    := det.Items[ViAux].Imposto.IPI.vIPI;

          //PIS
          FieldByName('ALIQ_PIS').AsFloat     := det.Items[ViAux].Imposto.PIS.pPIS;
          FieldByName('VALOR_PIS').AsFloat    := det.Items[ViAux].Imposto.PIS.vPIS;

          //COFINS
          FieldByName('ALIQ_COFINS').AsFloat  := det.Items[ViAux].Imposto.COFINS.pCOFINS;
          FieldByName('VALOR_COFINS').AsFloat := det.Items[ViAux].Imposto.COFINS.vCOFINS;

          // II
          FieldByName('ALIQ_II').AsFloat      := 0; //NAO EXISTE O CAMPO NO XML
          FieldByName('VALOR_II').AsFloat     := det.Items[ViAux].Imposto.II.vII;

          FieldByName('DESCONTO').AsFloat           := det.Items[ViAux].Prod.vDesc;
          FieldByName('TOTAL').AsFloat              := det.Items[ViAux].Prod.vProd - det.Items[ViAux].Prod.vDesc + det.Items[ViAux].Prod.vFrete;
          FieldByName('ID_UNIDADE').AsInteger       :=
            findUnidadeOrInsert(det.Items[ViAux].Prod.uCom,det.Items[ViAux].Prod.uCom);

          FieldByName('ID_DEPARTAMENTO').AsInteger  :=
            findDepartamentoProduto(FieldByName('ID_PRODUTO').AsInteger);

          FieldByName('ID_CFOP').AsInteger :=     StrToInt(det.Items[ViAux].Prod.CFOP);

          FieldByName('CRT').AsInteger := StrToInt(CRTToStr(Emit.CRT));


          // IMPOSTOS

          with det.Items[ViAux].Imposto DO
          begin
            if CRTToStr(Emit.CRT) = '3' then // regime normal
              FieldByName('CSTICMS').AsString := CSTICMSToStr(ICMS.CST)
            else
              FieldByName('CSOSN').AsString   := CSOSNIcmsToStr(ICMS.CSOSN);

            FieldByName('CSTIPI').AsString      := CSTIPIToStr(IPI.CST);
            FieldByName('CSTPIS').AsString      := CSTPISToStr(PIS.CST);
            FieldByName('CSTCOFINS').AsString   := CSTCOFINSToStr(COFINS.CST);
            FieldByName('BASE_ICMS').AsFloat    := det.Items[ViAux].Imposto.ICMS.vBC;;
            FieldByName('ALIQ_ICMS').AsFloat    := det.Items[ViAux].Imposto.ICMS.pICMS;
            FieldByName('VALOR_ICMS').AsFloat   := det.Items[ViAux].Imposto.ICMS.vICMS;
            FieldByName('VALOR_OUTROS').AsFloat := 0;
            FieldByName('VALOR_SEGURO').AsFloat := 0;
            FieldByName('VALOR_FRETE').AsFloat  := 0;
            FieldByName('STATUS').AsString := 'N';
          end;
          FieldByName('INFOADICIONAL').AsString := det.Items[ViAux].infAdProd;
          Post;
        end;
      end;
    end;
    QyItems.BeforeInsert := QyItemsBeforeInsert;
  end;
end;

function TFrmCadastroCompra.FunNovoProduto(ID_FILIAL, ID: Integer; GTIN,
  CODIGO_INTERNO, DESCRICAO, NCM, ID_UNIDADE: string; ID_TIPOPRODUTO,
  ID_DEPARTAMENTO, ID_GRUPOPRODUTO, ID_MARCA: Integer; PRECO_COMPRA,
  PRECO: Double; ID_TRIBUTACAO, BLOQUEADO: Integer; pCEST: string): Integer;
var
  ViUnidade, ViCODIGO_INTERNO: Integer;
  VsGTIN : string;
begin
  VsGTIN:='';
  ViUnidade := 0;
  ViCODIGO_INTERNO := 0;
  with dmAcesso do
  begin
  with QySQLCRUD do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO PRODUTO (ID_FILIAL, ID, GTIN, CODIGO_INTERNO, ALIQ_ICMS, DESCRICAO, ');
    SQL.Add('NCM,ID_UNIDADE, ID_TIPOPRODUTO, ID_DEPARTAMENTO, ID_GRUPOPRODUTO, ID_MARCA, ID_VASILHAME, ');
    SQL.Add('PRECO_COMPRA,  PRECO, ID_TRIBUTACAO, BLOQUEADO, ID_CATEGORIA,');
    SQL.Add(' IAT, IPPT, ST_ECF, GRADE, ESTOQUE_QTD ) VALUES ');

    SQL.Add('(:pID_FILIAL, :pID, :pGTIN, :pCODIGO_INTERNO, :pALIQ_ICMS, :pDESCRICAO, ');
    SQL.Add(':pNCM, :pID_UNIDADE, :pID_TIPOPRODUTO, :pID_DEPARTAMENTO, :pID_GRUPOPRODUTO, :pID_MARCA, :pID_VASILHAME,');
    SQL.Add(' :pPRECO_COMPRA, :pPRECO, :pID_TRIBUTACAO, :pBLOQUEADO, :pID_CATEGORIA, ');
    SQL.Add(':pIAT, :pIPPT, :pST_ECF, :pGRADE, :pESTOQUE_QTD)');

    ParamByName('pID_FILIAL').AsInteger := Estabelecimento;

//    ViCODIGO_INTERNO              := ID_NEXT('PRODUTO', Estabelecimento);
   // ViCODIGO_INTERNO := MaxTableID('PRODUTO',Estabelecimento);

    if ViCODIGO_INTERNO > 0  then
    begin
      VsGTIN:= '2' + FormatFloat('0000000',ViCODIGO_INTERNO) + '0000';
      VsGTIN := VsGTIN + EAN13_DV(VsGTIN);
    end;
    ParamByName('pID').AsInteger  := ViCODIGO_INTERNO;

    ParamByName('pGTIN').AsString := VsGTIN;
    ParamByName('pCODIGO_INTERNO').AsString := VsGTIN;
    ParamByName('pDESCRICAO').AsString      := StringReplace( DESCRICAO,'%','',[rfReplaceAll]);
    ParamByName('pNCM').AsString            := NCM;
    ParamByName('pID_CATEGORIA').AsInteger  := 1;
    ParamByName('pESTOQUE_QTD').AsFloat     := 0;


    //cadastro de unidades
    with QyAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM UNIDADE WHERE CODIGO=:pCODIGO');
      ParamByName('pCODIGO').AsString := ID_UNIDADE;
      Open;

      if IsEmpty then
      begin
        Insert;
        FieldByName('ID_FILIAL').AsInteger  := Estabelecimento;
       // FieldByName('ID').AsInteger         := ID_NEXT('UNIDADE', Estabelecimento);
        FieldByName('CODIGO').AsString      := ID_UNIDADE;
        FieldByName('NOME').AsString        := ID_UNIDADE;
        FieldByName('BLOQUEADO').AsInteger  := 0;
        Post;
      end;
      ViUnidade := FieldByName('ID').AsInteger;
    end;

    ParamByName('pID_UNIDADE').AsInteger      := ViUnidade;
    ParamByName('pID_TIPOPRODUTO').AsInteger  := ID_TIPOPRODUTO;
    ParamByName('pID_DEPARTAMENTO').AsInteger := ID_DEPARTAMENTO;
    ParamByName('pID_GRUPOPRODUTO').AsInteger := ID_GRUPOPRODUTO;
    ParamByName('pID_MARCA').AsInteger        := ID_MARCA;
    ParamByName('pID_VASILHAME').AsInteger    := 1;

    ParamByName('pPRECO_COMPRA').AsFloat      := PRECO_COMPRA;
    ParamByName('pPRECO').AsFloat             := PRECO;

    if DmAcesso.QyConfigSistema.FieldByName('NFE_WEBSERVICE_REGIMETRIBUTARIO').AsInteger = 1 then
      ParamByName('pID_TRIBUTACAO').AsInteger   := 2
    else
      ParamByName('pID_TRIBUTACAO').AsInteger   := 1;

    ParamByName('pBLOQUEADO').AsInteger       := BLOQUEADO;
    ParamByName('pALIQ_ICMS').AsFloat         := 17;
    ParamByName('pIAT').AsString              := 'A';
    ParamByName('pIPPT').AsString             := 'P';
    ParamByName('pST_ECF').AsString           := 'N';
    ParamByName('pGRADE').AsInteger           := 0;

    try
      ExecSQL;
    finally
      Result := 1;
    end;


//
//    if Trim(pCEST) <> '' then
//    begin
//      with QyAux do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT C.*, NC.NCM FROM CEST C ');
//        SQL.Add('LEFT JOIN NCM_CEST NC ON NC.CEST = C.CODIGO ');
//        SQL.Add('WHERE C.CODIGO=:pCODIGO AND NC.NCM=:pNCM');
//        ParamByName('pCODIGO').AsString := pCEST;
//        ParamByName('pNCM').AsString := NCM;
//        Open;
//        if IsEmpty then
//        begin
//          qyAux2.Close;
//          qyAux2.SQL.Clear;
//          qyAux2.SQL.Add('INSERT INTO NCM_CEST (ID_FILIAL, CEST, NCM) VALUES (:pID_FILIAL, :pCEST, :pNCM)');
//          qyAux2.ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
//          qyAux2.ParamByName('pCEST').AsString := pCEST;
//          qyAux2.ParamByName('pNCM').AsString := NCM;
//
//          try
//            qyAux2.ExecSQL;
//          except
//
//          end;
//        end;
//      end;
//    end;
//
//
//    with QyNovoRegistro do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT * FROM PRODUTO_FORNECEDOR WHERE ID_CONTATO=:pID_CONTATO');
//      SQL.Add('AND ID_PRODUTO=:pID_PRODUTO');
//      ParamByName('pID_CONTATO').AsInteger := QyCompra.FieldByName('ID_CONTATO').AsInteger;
//      ParamByName('pID_PRODUTO').AsInteger := ViCODIGO_INTERNO;
//      Open;
//
//      Insert;
//      FieldByName('ID_CONTATO').AsInteger     := QyCompra.FieldByName('ID_CONTATO').AsInteger;
//      FieldByName('ID_PRODUTO').AsInteger     := ViCODIGO_INTERNO;
//      FieldByName('CODIGO_EXTERNO').AsString  := CODIGO_INTERNO;
//      Post;
//    end;
//    with QyProduto do
//    begin
//      Close;
//      SQL.Add('SELECT  ID, GTIN, DESCRICAO FROM PRODUTO');
//      SQL.Add('ORDER BY PRODUTO.DESCRICAO');
//      Open;
//    end;
  end;
  end;
end;



procedure TFrmCadastroCompra.GeraFatura;
begin
//  with dmAcesso do
//  begin
//    with QySQL do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('DELETE FROM LANCAMENTO WHERE ID_COMPRA=:p');
//      ParamByName('p').AsInteger := QyCompra.FieldByName('ID').AsInteger;
//      ExecSQL;
//
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT * FROM LANCAMENTO WHERE ID_COMPRA=:p');
//      ParamByName('p').AsInteger := QyCompra.FieldByName('ID').AsInteger;
//      Open;
//
//    end;
//    cdsFatura.First;
//    while not cdsFatura.Eof do
//    begin
//      QySQL.Append;
//      QySQL.FieldByName('ID_FILIAL').AsInteger            := Estabelecimento;
//      QySQL.FieldByName('ID_COMPRA').AsInteger            := QyCompra.FieldByName('ID').AsInteger;
//      QySQL.FieldByName('ID_CONTATO').AsInteger           := QyCompra.FieldByName('ID_CONTATO').AsInteger;
//      QySQL.FieldByName('EMISSAO').AsDateTime             := QyCompra.FieldByName ('EMISSAO').AsDateTime;
//      QySQL.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger := QyCompra.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger;
//      QySQL.FieldByName('ID_CONTACORRENTE').AsInteger     := DmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_CONTACORRENTE').AsInteger;
//      QySQL.FieldByName('ID_NATUREZA').AsInteger          := DmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_NATUREZA').AsInteger;
//      QySQL.FieldByName('BLOQUEADO').AsInteger            := 0;
//      QySQL.FieldByName('DOCUMENTO').AsString             := IntToStr(QyCompra.FieldByName('ID').AsInteger);
//      QySQL.FieldByName('TIPO_LANCAMENTO').AsString       := 'D';
//      QySQL.FieldByName('SITUACAO').AsString              := 'AB';
//      QySQL.FieldByName('ORIGEM').AsString                := 'AU';
//      QySQL.FieldByName('VALORPAGO').AsFloat              := 0;
//      QySQL.FieldByName('PARCELA').AsInteger              := cdsFatura.FieldByName('PARCELA').AsInteger;
//      QySQL.FieldByName('PERC_COMISSAO').AsFloat          := UsuarioComissao;
//      QySQL.FieldByName('VALOR').AsFloat                  := cdsFatura.FieldByName('VALOR').AsFloat;
//      QySQL.FieldByName('VENCIMENTO').AsDateTime          := cdsFatura.FieldByName('VENCIMENTO').AsDateTime;
//      QySQL.Post;
//      cdsFatura.Next;
//    end;
//  end;
end;

procedure TFrmCadastroCompra.gerarParcelas;
var
  I: Integer;
  Intervalo: Integer;
  ViParcela : Integer;
begin

//  CreateDatasetFatura;
  QyFatura.BeforeInsert := nil;

  ViParcela := 1;

  Intervalo := 0;
  inherited;
  if (QyCompra.FieldByName('TOTAL').AsFloat > 0) AND (QyFatura.RecordCount = 0) then
  begin
    for I := 0 to dsLKPFormaPagto.DataSet.FieldByName('NUMERO_PARCELA').AsInteger - 1 do
    begin
      with QyFatura do
      begin
        Append;
        FieldByName('PARCELA').AsInteger := ViParcela;
        FieldByName('VENCIMENTO').AsDateTime := Now + Intervalo;
        FieldByName('VALOR').AsFloat := RoundABNT
          (QyCompra.FieldByName('TOTAL').AsFloat /
            dsLKPFormaPagto.DataSet.FieldByName('NUMERO_PARCELA').AsInteger,2);
        Post;
      end;
      Inc(Intervalo, 30);
      Inc(ViParcela);
    end;
  end;
  QyFatura.BeforeInsert :=  cdsFaturaBeforeInsert;
end;

procedure TFrmCadastroCompra.QyFaturaAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('ID_FILIAL').AsInteger            := Estabelecimento;
  DataSet.FieldByName('ID_COMPRA').AsInteger            := QyCompra.FieldByName('ID').AsInteger;
  DataSet.FieldByName('ID_CONTATO').AsInteger           := QyCompra.FieldByName('ID_CONTATO').AsInteger;
  DataSet.FieldByName('EMISSAO').AsDateTime             := QyCompra.FieldByName ('EMISSAO').AsDateTime;
  DataSet.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger := QyCompra.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger;
  DataSet.FieldByName('ID_CONTACORRENTE').AsInteger     := DmAcesso.QyConfigSistema.FieldByName('DEFAULT_VENDA_CONTACORRENTE').AsInteger;
  DataSet.FieldByName('ID_NATUREZA').AsInteger          := DmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_NATUREZA').AsInteger;
  DataSet.FieldByName('BLOQUEADO').AsInteger            := 0;
  DataSet.FieldByName('DOCUMENTO').AsString             := IntToStr(QyCompra.FieldByName('ID').AsInteger);
  DataSet.FieldByName('TIPO_LANCAMENTO').AsString       := 'D';
  DataSet.FieldByName('SITUACAO').AsString              := 'AB';
  DataSet.FieldByName('ORIGEM').AsString                := 'AU';
  DataSet.FieldByName('VALORPAGO').AsFloat              := 0;
  DataSet.FieldByName('PARCELA').AsInteger              := 1;
  DataSet.FieldByName('PERC_COMISSAO').AsFloat          := UsuarioComissao;
  DataSet.FieldByName('VALOR').AsFloat                  := QyCompra.FieldByName('TOTAL').AsFloat;
  DataSet.FieldByName('VENCIMENTO').AsDateTime          := Date;

end;

procedure TFrmCadastroCompra.QyFaturaAfterOpen(DataSet: TDataSet);
var
  I: Integer;
begin
  for I := 0 to QyFatura.FieldCount-1 do
  begin

    if QyFatura.Fields[i] is TFloatField then
    (QyFatura.Fields[i] as TFloatField).DisplayFormat := '#,##0.00';

    if QyFatura.Fields[i] is TCurrencyField then
      (QyFatura.Fields[i] as TCurrencyField).DisplayFormat := '#,##0.00';

    if QyFatura.Fields[i] is TBCDField then
      (QyFatura.Fields[i] as TBCDField).DisplayFormat := '#,##0.00';

    if QyFatura.Fields[i] is TFMTBCDField then
      (QyFatura.Fields[i] as TFMTBCDField).DisplayFormat := '#,##0.00';
  end;


end;

procedure TFrmCadastroCompra.QyFaturaBeforeInsert(DataSet: TDataSet);
begin
 Abort;
end;

procedure TFrmCadastroCompra.QyItemsAfterOpen(DataSet: TDataSet);
var
  i: Integer;
begin
  TFMTBCDField(DataSet.FieldByName('QUANTIDADE')).DisplayFormat :=
    fsMascara(dmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_CASAQUANTIDADE').AsInteger);

  TFMTBCDField(DataSet.FieldByName('PRECO')).DisplayFormat :=
    fsMascara(dmAcesso.QyConfigSistema.FieldByName('DEFAULT_COMPRA_CASAPRECO').AsInteger);

  for I := 0 to DataSet.FieldCount-1 do
  begin
    if DataSet.Fields[i] is TBCDField then
      TBCDField(DataSet.Fields[i]).DisplayFormat := fsMascara(2);

    if DataSet.Fields[i] is TFloatField then
      TFloatField(DataSet.Fields[i]).DisplayFormat := fsMascara(2);
  end;

end;

procedure TFrmCadastroCompra.QyItemsAfterPost(DataSet: TDataSet);
var
  vTotal, vSubtotal, vIPI: Currency;
begin

  vTotal:=0;
  vSubtotal := 0;
  vIPI :=0;

  with dmAcesso do
  begin
    with QySQL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DETALHE_COMPRA.ID, ID_COMPRA, DETALHE_COMPRA.QUANTIDADE, DETALHE_COMPRA.PRECO, DETALHE_COMPRA.SUBTOTAL, DETALHE_COMPRA.DESCONTO, DETALHE_COMPRA.TOTAL, DETALHE_COMPRA.VALOR_IPI ');
      SQL.Add('FROM DETALHE_COMPRA WHERE DETALHE_COMPRA.ID_COMPRA =:pIdCompra');
      ParamByName('pIdCompra').AsInteger := DataSet.FieldByName('ID_COMPRA').AsInteger;
      Open;
    end;

    QySQL.First;
    while not QySQL.Eof do
    begin
      vTotal:=vTotal+QySQL.FieldByName('TOTAL').AsFloat;
      vSubtotal:= vSubtotal +QySQL.FieldByName('SUBTOTAL').AsFloat;
      vIPI := vIPI + QySQL.FieldByName('VALOR_IPI').AsFloat;
      QySQL.Next;
    end;
  end;

  QyCompra.Edit;
  QyCompra.FieldByName('SUBTOTAL').AsFloat := vSubtotal;
  QyCompra.FieldByName('TOTAL').AsFloat := vTotal+vIPI;

  try
    QyCompra.Post;
  except
  // on E: Exception do
  end;


end;

procedure TFrmCadastroCompra.QyItemsALIQ_COFINSChange(Sender: TField);
begin
  QyItemsVALOR_COFINS.AsFloat := RoundABNT(Sender.AsFloat * QyItemsTOTAL.AsFloat/100,2);
end;

procedure TFrmCadastroCompra.QyItemsALIQ_ICMSChange(Sender: TField);
begin
  if QyItemsALIQ_ICMS.AsFloat > 0 then
  begin
    QyItemsVALOR_ICMS.AsFloat := RoundABNT(Sender.AsFloat * QyItemsBASE_ICMS.AsFloat/100,2);
  end;
end;

procedure TFrmCadastroCompra.QyItemsALIQ_IIChange(Sender: TField);
begin
  QyItemsVALOR_II.AsFloat := RoundABNT(Sender.AsFloat * QyItemsTOTAL.AsFloat/100,2);
end;

procedure TFrmCadastroCompra.QyItemsALIQ_IPIChange(Sender: TField);
begin
  QyItemsVALOR_IPI.AsFloat := RoundABNT(Sender.AsFloat * QyItemsTOTAL.AsFloat/100,2);
end;

procedure TFrmCadastroCompra.QyItemsALIQ_PISChange(Sender: TField);
begin
  QyItemsVALOR_PIS.AsFloat := RoundABNT(Sender.AsFloat * QyItemsTOTAL.AsFloat/100,2);
end;

procedure TFrmCadastroCompra.QyItemsBASE_ICMSChange(Sender: TField);
begin
  if QyItemsALIQ_ICMS.AsFloat > 0 then
  begin
    QyItemsVALOR_ICMS.AsFloat := RoundABNT(Sender.AsFloat * QyItemsALIQ_ICMS.AsFloat/100,2);
  end;
end;

procedure TFrmCadastroCompra.QyItemsBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TFrmCadastroCompra.QyItemsDESCONTOChange(Sender: TField);
begin
  QyItems.FieldByName('SUBTOTAL').AsFloat :=
    (QyItems.FieldByName('PRECO').AsFloat * QyItems.FieldByName('QUANTIDADE').AsFloat)-QyItems.FieldByName('DESCONTO').AsFloat;

  QyItems.FieldByName('TOTAL').AsFloat :=
    QyItems.FieldByName('SUBTOTAL').AsFloat -QyItems.FieldByName('DESCONTO').AsFloat;

end;

procedure TFrmCadastroCompra.QyItemsPRECOChange(Sender: TField);
begin
  QyItems.FieldByName('SUBTOTAL').AsFloat :=
    (Sender.AsFloat * QyItems.FieldByName('QUANTIDADE').AsFloat)-QyItems.FieldByName('DESCONTO').AsFloat;

  QyItems.FieldByName('TOTAL').AsFloat :=
    QyItems.FieldByName('SUBTOTAL').AsFloat -QyItems.FieldByName('DESCONTO').AsFloat;

end;

procedure TFrmCadastroCompra.QyItemsQUANTIDADEChange(Sender: TField);
begin
  QyItems.FieldByName('SUBTOTAL').AsFloat :=
    (Sender.AsFloat * QyItems.FieldByName('PRECO').AsFloat);

  QyItems.FieldByName('TOTAL').AsFloat :=
    QyItems.FieldByName('SUBTOTAL').AsFloat -QyItems.FieldByName('DESCONTO').AsFloat;

  QyItemsBASE_ICMS.AsFloat :=QyItems.FieldByName('TOTAL').AsFloat;

  if QyItemsALIQ_IPI.AsFloat > 0 then
  begin
    QyItemsVALOR_IPI.AsFloat :=
      RoundABNT(QyItems.FieldByName('TOTAL').AsFloat *QyItemsALIQ_IPI.AsFloat /100,2)
  end;

  if QyItemsALIQ_PIS.AsFloat > 0 then
  begin
    QyItemsVALOR_PIS.AsFloat :=
      RoundABNT(QyItems.FieldByName('TOTAL').AsFloat *QyItemsALIQ_PIS.AsFloat /100,2)
  end;


  if QyItemsALIQ_COFINS.AsFloat > 0 then
  begin
    QyItemsVALOR_COFINS.AsFloat :=
      RoundABNT(QyItems.FieldByName('TOTAL').AsFloat *QyItemsALIQ_COFINS.AsFloat /100,2)
  end;


  if QyItemsALIQ_II.AsFloat > 0 then
  begin
    QyItemsVALOR_II.AsFloat :=
      RoundABNT(QyItems.FieldByName('TOTAL').AsFloat *QyItemsALIQ_II.AsFloat /100,2)
  end;


end;

procedure TFrmCadastroCompra.validaPreenchimento;
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
