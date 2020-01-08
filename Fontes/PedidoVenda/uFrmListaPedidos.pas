unit uFrmListaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, JvComponentBase,
  JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, ACBrUtil, Vcl.Menus, pcnConversao, System.MaskUtils
  ,Clipbrd, JvExControls, JvMarkupLabel, ACBrBase, ACBrExtenso, ACBrValidador
  ;

type
  TFrmListaPedidos = class(TFrmLista)
    JvBitBtn1: TJvBitBtn;
    EspelhodoPedido1: TMenuItem;
    btnNF: TJvBitBtn;
    pmNF: TPopupMenu;
    EmitirNFe1: TMenuItem;
    ImprimirDANFe1: TMenuItem;
    ConsultarNFe1: TMenuItem;
    N1: TMenuItem;
    CancelarNFe1: TMenuItem;
    Cartadecorreo1: TMenuItem;
    InutilizarNumeroNFe1: TMenuItem;
    EnviaremailNFe1: TMenuItem;
    StatusdoServiodaNFe1: TMenuItem;
    PrVisualizarNFe1: TMenuItem;
    N2: TMenuItem;
    CertificadoDigital1: TMenuItem;
    Validade1: TMenuItem;
    Nmerodesrie1: TMenuItem;
    RazoSocial1: TMenuItem;
    CNPJ1: TMenuItem;
    PDFNFe1: TMenuItem;
    GerarPDFindividual1: TMenuItem;
    GerarPDFfiltrado1: TMenuItem;
    OperaesNFeXML1: TMenuItem;
    LoaddoXMLparaPedido1: TMenuItem;
    ListarXMLs1: TMenuItem;
    CancelarNFecomXML1: TMenuItem;
    SalvarXML1: TMenuItem;
    OperaesNFe1: TMenuItem;
    AjustarCFOP1: TMenuItem;
    EmitirCartadeCorreo1: TMenuItem;
    ImprimirCartadeCorreo1: TMenuItem;
    Adicionarprotocolo1: TMenuItem;
    OpenDialog1: TOpenDialog;
    N3: TMenuItem;
    EnviaremailNFeviaXML1: TMenuItem;
    Enviaremail1: TMenuItem;
    pmContext: TPopupMenu;
    CopiarChaveNFe1: TMenuItem;
    CopiarProtocolo1: TMenuItem;
    ImprimirDANFe2: TMenuItem;
    Enviaremail2: TMenuItem;
    btnMetasVenda: TJvBitBtn;
    Histrico1: TMenuItem;
    Recibodepagamento1: TMenuItem;
    ACBrExtenso1: TACBrExtenso;
    Recibodeentrega1: TMenuItem;
    CentraldeRelatrios1: TMenuItem;
    procedure JvBitBtn5Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure JvBitBtn1Click(Sender: TObject);
    procedure EspelhodoPedido1Click(Sender: TObject);
    procedure ImprimirDANFe1Click(Sender: TObject);
    procedure StatusdoServiodaNFe1Click(Sender: TObject);
    procedure EmitirNFe1Click(Sender: TObject);
    procedure PrVisualizarNFe1Click(Sender: TObject);
    procedure CancelarNFe1Click(Sender: TObject);
    procedure ConsultarNFe1Click(Sender: TObject);
    procedure EmitirCartadeCorreo1Click(Sender: TObject);
    procedure Validade1Click(Sender: TObject);
    procedure RazoSocial1Click(Sender: TObject);
    procedure CNPJ1Click(Sender: TObject);
    procedure ImprimirCartadeCorreo1Click(Sender: TObject);
    procedure EnviaremailNFe1Click(Sender: TObject);
    procedure EnviaremailNFeviaXML1Click(Sender: TObject);
    procedure dbgrdConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Nmerodesrie1Click(Sender: TObject);
    procedure CopiarChaveNFe1Click(Sender: TObject);
    procedure CopiarProtocolo1Click(Sender: TObject);
    procedure ImprimirDANFe2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Enviaremail2Click(Sender: TObject);
    procedure btnMetasVendaClick(Sender: TObject);
    procedure Histrico1Click(Sender: TObject);
    procedure Recibodepagamento1Click(Sender: TObject);
    procedure Recibodeentrega1Click(Sender: TObject);
    procedure CentraldeRelatrios1Click(Sender: TObject);
  private
    procedure setValorPadraoDlg(defaultpath: string;const titulo: string = 'Selecione a NFe';
    const filtroFile:string = 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    const extfile: string = '*-nfe.XML' );

    procedure imprimirDANFe;
    procedure EnviarEmailNF;
  public
    { Public declarations }
  end;

var
  FrmListaPedidos: TFrmListaPedidos;

implementation

uses
  uFrmPedidoVenda, udmAcesso, krnVarGlobais, Funcoes, UfrmCCe, UfrmEnvioNFe, UfrmAutorizacaoGerente, krnConst, krnProcedures, uFrmMetasVenda, uFrmHistoricoPedido,
  UfrmReciboAvulso, urptReciboAvulso, urptReciboEntrega,  uFrmCentralRelatorios;

{$R *.dfm}

procedure TFrmListaPedidos.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('BLOQUEADO').AsBoolean then
    raise Exception.Create('Pedido removido e não pode ser editado.');


  if ( UpperCase(dsConsulta.DataSet.FieldByName('TIPO').AsString) = UpperCase('Orçamento')) or
  ( UpperCase(dsConsulta.DataSet.FieldByName('TIPO').AsString) = UpperCase('Pre-Venda')) then
  begin
    try
      dmAcesso.QyPedidos.Close;
      dmAcesso.QyPedidos.SQL.Clear;
      dmAcesso.QyPedidos.Open('SELECT * FROM VENDA WHERE ID=' + dsConsulta.DataSet.FieldByName('ID').AsString);
      dmAcesso.QyPedidos.Edit;
      Application.CreateForm(TFrmPedidoVenda, FrmPedidoVenda);
      FrmPedidoVenda.QyItemPedido.Close;
      FrmPedidoVenda.QyItemPedido.Open('SELECT * FROM DETALHE_VENDA WHERE ID_VENDA =' +dsConsulta.DataSet.FieldByName('ID').AsString);
      FrmPedidoVenda.ShowModal;
    finally
      dsConsulta.DataSet.Refresh;
      FreeAndNil(FrmPedidoVenda);
    end;
  end
  else
  begin
    raise Exception.Create('Somente Orçamento pode ser editado.');
  end;
end;

procedure TFrmListaPedidos.btnMetasVendaClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(tFrmMetasVenda,FrmMetasVenda);

    if UsuarioGerente=1 then
    begin
      FrmMetasVenda.chkTodosVendedores.Enabled:= True;
      FrmMetasVenda.cblkVendedor.Enabled := True;
    end
    else
    begin
      FrmMetasVenda.chkTodosVendedores.Enabled:= False;
      FrmMetasVenda.cblkVendedor.KeyValue := UsuarioLogado;
      FrmMetasVenda.chkTodosVendedores.Checked:= False;
      FrmMetasVenda.cblkVendedor.Enabled := false;
    end;
    FrmMetasVenda.ShowModal;
  finally
    FreeAndNil(FrmMetasVenda);
  end;
end;

procedure TFrmListaPedidos.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.QyPedidos.Close;
    dmAcesso.QyPedidos.SQL.Clear;
    dmAcesso.QyPedidos.Open('SELECT * FROM VENDA WHERE VENDA.ID=-1 AND VENDA.ID_FILIAL =' + IntToStr(Estabelecimento));
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



    Application.CreateForm(TFrmPedidoVenda, FrmPedidoVenda);
    FrmPedidoVenda.QyItemPedido.Close;
    FrmPedidoVenda.QyItemPedido.Open('SELECT * FROM DETALHE_VENDA WHERE ID=-1 AND ID_FILIAL='+IntToStr(Estabelecimento));
    FrmPedidoVenda.ShowModal;
  finally
    dsConsulta.DataSet.Refresh;
    FreeAndNil(FrmPedidoVenda);
  end;

end;

procedure TFrmListaPedidos.btnRemoverClick(Sender: TObject);
var
  sAux : string;
begin
  if dsConsulta.DataSet.FieldByName('TIPO').AsString <> 'Orçamento' then
    raise Exception.Create('Somente é permitido remoção de Orçamento.')
  else
  begin
    //inherited;
    if not dsConsulta.DataSet.FieldByName('BLOQUEADO').AsBoolean then
    begin
      if dsConsulta.DataSet.RecordCount > 0 then
      begin
        if MessageBox(Handle, 'Deseja realmente remover o registro?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then
        begin
          if dsConsulta.DataSet.RecordCount>0 then
          begin
            sAux := 'Remoção da Pre-Venda n. ' + dsConsulta.DataSet.FieldByName('ID').AsString
            +' Data do pedido: ' + dsConsulta.DataSet.FieldByName('EMISSAO').AsString
            +' Usuario: ' + UsuarioLogadoNome;

            bloquearRegistro(dsConsulta.DataSet.FieldByName('ID').AsInteger,self.Tabela);
            addHistorico(UsuarioLogado, sAux,dsConsulta.DataSet.FieldByName('ID').AsInteger);
            dsConsulta.DataSet.Refresh;
          end;
        end;
      end;
    end
    else
      AlertaError('Pedido já removido.');
  end;
end;

procedure TFrmListaPedidos.CancelarNFe1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('TIPO').AsString = 'NF-e' then
  begin
    if MessageBox(Handle, 'Deseja realmente cancelar a NFe?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
    begin
      cancelarNFe(dsConsulta.DataSet.FieldByName('ID').AsInteger,
          dsConsulta.DataSet.FieldByName('CHAVENFE').AsString,
          dsConsulta.DataSet.FieldByName('PROTOCOLONFE').AsString,
          CNPJEstabelecimento,
          Now,
          DmAcesso.QyConfigSistema.FieldByName('NFE_WEBSERVICE_UF').AsString,
          'Cliente desistiu da compra');
      dsConsulta.DataSet.Refresh;
    end;
  end
  else
    raise Exception.Create('Cancelamento somente de NFe');
end;

procedure TFrmListaPedidos.CentraldeRelatrios1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmCentralRelatorios,FrmCentralRelatorios);
    FrmCentralRelatorios.Hint := 'VENDA';
    FrmCentralRelatorios.ShowModal;
  finally
    FreeAndNil(FrmCentralRelatorios);
  end;
end;

procedure TFrmListaPedidos.ConsultarNFe1Click(Sender: TObject);
//var
//  verdade: Boolean;
begin
  inherited;
//  verdade:=false;
//
//  repeat
//    if MessageBox(Handle, 'Deseja realmente remover o registro?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
//      verdade:=true;
//
//  until (verdade);

end;

procedure TFrmListaPedidos.CopiarChaveNFe1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('CHAVENFE').AsString <> '' then
    Clipboard.AsText := dsConsulta.DataSet.FieldByName('CHAVENFE').AsString;
end;

procedure TFrmListaPedidos.CopiarProtocolo1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('PROTOCOLONFE').AsString <> '' then
    Clipboard.AsText := dsConsulta.DataSet.FieldByName('PROTOCOLONFE').AsString;
end;

procedure TFrmListaPedidos.dbgrdConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Assigned(dsConsulta.DataSet.FindField('TIPO')) then
  begin
    if (Column.Field.FieldName = 'TIPO') then
    begin
      if (dsConsulta.DataSet.FieldByName('TIPO').AsString = 'NF-e Cancelada')
      or (dsConsulta.DataSet.FieldByName('TIPO').AsString = 'NFC-e Cancelada') then
      begin
        dbgrdConsulta.Canvas.Brush.Color:= clRed;  //"pinta" a celula inteira
        dbgrdConsulta.Canvas.Font.Color:= clWhite;      //"Pinta" a letra
        dbgrdConsulta.Canvas.FillRect(Rect);
        dbgrdConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;

//    if (Column.Field.FieldName = 'BLOQUEADO') then
//    begin
//      if dsConsulta.DataSet.FieldByName('BLOQUEADO').AsBoolean    then
//      begin
//        dbgrdConsulta.Canvas.Brush.Color:= clYellow;  //"pinta" a celula inteira
//        dbgrdConsulta.Canvas.Font.Color:= clRed;      //"Pinta" a letra
//        dbgrdConsulta.Canvas.FillRect(Rect);
//        dbgrdConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//      end;
//    end;


  end;

  

end;

procedure TFrmListaPedidos.EmitirCartadeCorreo1Click(Sender: TObject);
var
  vsChave: string;
  localXml : string;
  label vsLabel;
begin
  with dmAcesso do
  begin
    if (dsConsulta.dataset.FieldByName('TIPO').AsString = 'NF-e') or
    (dsConsulta.dataset.FieldByName('TIPO').AsString = 'NFC-e') then
    begin
      vsChave :=dsConsulta.dataset.FieldByName('CHAVENFE').AsString;
      vslabel:
      try
        if Length(vsChave) <> 44 then
          raise Exception.Create('Tamanho da chave inválido');

        Application.CreateForm(TfrmCCe,frmcce);

        with QyAux do
        begin
          Close;
          SQL.Clear;
          SQL.Add('select COALESCE( count(*)+1,1) AS ID  FROM NFE_EVENTO ');
          SQL.Add('WHERE TIPO = 1 AND ID_VENDA =:pID_VENDA');
          ParamByName('pID_VENDA').AsInteger := dsConsulta.dataset.FieldByName('ID').AsInteger;
          Open;

          if FieldByName('ID').AsInteger = 21 then
            raise Exception.Create('Número máximo de evento já enviado.')
          else
            frmCCe.edtSequencia.Text := FieldByName('ID').AsString;
        end;

        frmCCe.ShowModal;

        if frmCCe.ModalResult = mrOk then
        begin
          ACBrNFe1.EventoNFe.Evento.Clear;
          with ACBrNFe1.EventoNFe.Evento.Add do
          begin
            infEvento.chNFe   := vsChave;
            infEvento.CNPJ    := CNPJEstabelecimento;
            infEvento.dhEvento := now;
            infEvento.tpEvento := teCCe;
            infEvento.nSeqEvento := StrToInt(frmCCe.edtSequencia.Text);
            infEvento.detEvento.xCorrecao := Trim(frmCCe.mmoCorrecao.Text);
          end;
          ACBrNFe1.EnviarEvento(StrToInt('1'));
          if ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 135 then
          begin
            with QyAux do
            begin
              Close;
              SQL.Clear;
              sql.Add('INSERT INTO NFE_EVENTO (ID_FILIAL, ID_VENDA, TIPO, DATAHORA, CHAVE, DETALHE, PROTOCOLO, ID_EVENTO) ');
              SQL.Add('VALUES ');
              SQL.Add('(:pID_FILIAL, :pID_VENDA, :pTIPO, :pDATAHORA, :pCHAVE, :pDETALHE, :pPROTOCOLO, :pID_EVENTO)');
              ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
              ParamByName('pID_VENDA').AsInteger := dsConsulta.dataset.FieldByName('ID').AsInteger;
              ParamByName('pTIPO').AsInteger := 1; // 1- CARTA CORRECAO / 2 - Cancelamento NFe
              ParamByName('pDATAHORA').AsDateTime := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
              ParamByName('pCHAVE').AsString := dsConsulta.dataset.FieldByName('CHAVENFE').AsString;
              ParamByName('pDETALHE').AsString :=Trim(frmCCe.mmoCorrecao.Text);
              ParamByName('pPROTOCOLO').AsString := ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
              ParamByName('pID_EVENTO').AsString := TpEventoToStr(teCCe) + dsConsulta.dataset.FieldByName('CHAVENFE').AsString + FormatFloat('00',StrToInt(frmCCe.edtSequencia.Text)) ;

              localXml:=FsPastaNotaFiscal+ FormatDateTime('yyyyMM', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento)+ '\'
              +  ParamByName('pID_EVENTO').AsString + '-procEventoNFe.xml';

             try
              ExecSQL;
              with Qysql do
              begin
                Close;
                SQL.Clear;
                SQL.Add('SELECT * FROM NFE_EVENTO WHERE ID_EVENTO =:pIdEvento');
                ParamByName('pIdEvento').AsString :=TpEventoToStr(teCCe) + dsConsulta.dataset.FieldByName('CHAVENFE').AsString + FormatFloat('00',StrToInt(frmCCe.edtSequencia.Text));
                Open;
                if not IsEmpty then
                begin
                  try
                    Edit;
                    TBlobField(FieldByName('XML')).LoadFromFile( localXml );
                    Post;
                  except

                  end;
                end;
              end;
            except on E: Exception do
              ShowMessage('Erro ao registra evento no DB');
            end;

            end;
          end;
          ACBrNFe1.ImprimirEvento;
          AlertaInfo('Enviado com sucesso. Obs: A carta de correção pode levar alguns minutos para ser processada pela SEFAZ. Acesse o portal: http://www.nfe.fazenda.gov.br/ e consulta a nfe para mais detalhes.');
        end;
      finally
        FreeAndNil(frmCCe);
      end;
    end
    else
    begin
      InputQuery('Chave da NF','Informa a chave',vsChave);
      goto vsLabel;
    end;
  end;
end;
procedure TFrmListaPedidos.EmitirNFe1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('TIPO').AsString='Pre-Venda' then
  begin
   if TransmitirNFeSaida(dsConsulta.DataSet.FieldByName('ID').AsInteger,
      0,
      Estabelecimento
      , false
      , false
      ) then
      dsConsulta.DataSet.Refresh;
  end
  else
  begin
    raise Exception.Create('NF-e somente de pré-venda.');
  end;
end;

procedure TFrmListaPedidos.Enviaremail2Click(Sender: TObject);
begin
  inherited;
  EnviarEmailNF;
end;

procedure TFrmListaPedidos.EnviarEmailNF;
begin
  if dsConsulta.DataSet.FieldByName('TIPO').AsString <> 'NF-e' then
    raise Exception.Create('Envio de email somente de NFe.');
    
//  if TBlobField(dsConsulta.DataSet.FieldByName('XMLNFE')).BlobSize = 0 then
//    raise Exception.Create('XML não encontrado.');

  with dmAcesso do
  begin
    QyLKPClientes.Locate('ID',dsConsulta.DataSet.FieldByName('ID_CONTATO').AsInteger, [loCaseInsensitive]);
    if TBlobField(dsConsulta.DataSet.FieldByName('XMLNFE')).BlobSize > 0 then
    begin
      try
        Application.CreateForm(TfrmEnvioNFe,frmEnvioNFe);
        frmEnvioNFe.edtPara.Text:= QyLKPClientes.FieldByName('EMAIL').AsString;
        ACBrNFe1.NotasFiscais.Clear;
        TBlobField(dsConsulta.DataSet.FieldByName('XMLNFE')).SaveToFile(DmAcesso.QyConfigSistema.FieldByName('NFE_PASTAXML').AsString + '\' + dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml');

        ACBrNFe1.NotasFiscais.LoadFromFile(DmAcesso.QyConfigSistema.FieldByName('NFE_PASTAXML').AsString + '\' +  dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml');
        frmEnvioNFe.edtAssumto.Text:=  'NF-e - Nº' + IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF) + ' - ' +
        FantasiaEstabelecimento;
        frmEnvioNFe.mmo1.Text := 'Segue em anexo o xml e o pdf da nfe: ' +IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF) ;
        frmEnvioNFe.ShowModal;
      finally
        if (frmEnvioNFe.edtPara.Text <> '') and (frmEnvioNFe.ModalResult = mrOk) then
          ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(frmEnvioNFe.edtPara.Text,frmEnvioNFe.edtAssumto.Text,frmEnvioNFe.mmo1.Lines)
        else
          AlertaInfo('e-mail não enviado.');
        FreeAndNil(frmEnvioNFe);
      end;
    end
    else
    begin
      try
        if not FileExists(FsPastaApp +'\NotaFiscalXML\' + dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml') then
          raise Exception.Create('XML não encontrado.');

        Application.CreateForm(TfrmEnvioNFe,frmEnvioNFe);
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(FsPastaApp +'\NotaFiscalXML\' + dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml');
        frmEnvioNFe.edtAssumto.Text:=  'NF-e - Nº' + IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF) + ' - ' +
        FantasiaEstabelecimento;
        frmEnvioNFe.ShowModal;
      finally
        if (frmEnvioNFe.edtPara.Text <> '') and (frmEnvioNFe.ModalResult = mrOk) then
          ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(frmEnvioNFe.edtPara.Text,frmEnvioNFe.edtAssumto.Text,frmEnvioNFe.mmo1.Lines)
        else
          AlertaInfo('e-mail não enviado.');

        FreeAndNil(frmEnvioNFe);
      end;
     end;
  end;
end;

procedure TFrmListaPedidos.EnviaremailNFe1Click(Sender: TObject);
begin
  inherited;
  EnviarEmailNF;
end;

procedure TFrmListaPedidos.EnviaremailNFeviaXML1Click(Sender: TObject);
begin
  inherited;
  with dmAcesso do
  begin
    setValorPadraoDlg(ACBrNFe1.Configuracoes.Arquivos.PathSalvar);
    if OpenDialog1.Execute then
    begin
      try
        Application.CreateForm(TfrmEnvioNFe,frmEnvioNFe);
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
        frmEnvioNFe.edtAssumto.Text:=  'NF-e - Nº' + IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF) +
        ' - ' +FantasiaEstabelecimento;
        frmEnvioNFe.ShowModal;
      finally
        if (frmEnvioNFe.edtPara.Text <> '') and (frmEnvioNFe.ModalResult = mrOk) then
          ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(frmEnvioNFe.edtPara.Text,frmEnvioNFe.edtAssumto.Text, frmEnvioNFe.mmo1.Lines)
        else
          AlertaInfo('e-mail não enviado.');
        FreeAndNil(frmEnvioNFe);
      end;
    end;
  end;
end;

procedure TFrmListaPedidos.EspelhodoPedido1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount> 0 then
    imprimirEspelhoPedido(dsConsulta.DataSet.FieldByName('ID').AsInteger);
end;

procedure TFrmListaPedidos.FormShow(Sender: TObject);
begin
  inherited;
  InicializaNFe();
end;

procedure TFrmListaPedidos.Histrico1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount > 0 then
  begin
    try
      Application.CreateForm(TFrmHistoricoPedido,FrmHistoricoPedido);
      FrmHistoricoPedido.QyHistorico.Close;
      FrmHistoricoPedido.QyHistorico.ParamByName('pID').AsInteger := dsConsulta.DataSet.FieldByName('ID').AsInteger;
      FrmHistoricoPedido.QyHistorico.Open();
      FrmHistoricoPedido.ShowModal;
    finally
      FreeAndNil(FrmHistoricoPedido);
    end;
  end;
end;

procedure TFrmListaPedidos.ImprimirCartadeCorreo1Click(Sender: TObject);
begin
  inherited;
  with dmAcesso do
  begin
    setValorPadraoDlg( ACBrNFe1.Configuracoes.Arquivos.PathSalvar);
    if OpenDialog1.Execute then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
    end;

    setValorPadraoDlg(ACBrNFe1.Configuracoes.Arquivos.PathSalvar);
    if OpenDialog1.Execute then
    begin
      ACBrNFe1.EventoNFe.Evento.Clear;
      ACBrNFe1.EventoNFe.LerXML(OpenDialog1.FileName) ;
      ACBrNFe1.ImprimirEvento;
    end;
  end;
end;

procedure TFrmListaPedidos.imprimirDANFe;
begin
  with dmAcesso do
  begin
    if TBlobField(dsConsulta.DataSet.FieldByName('XMLNFE')).BlobSize > 0 then
    begin

      ACBrNFe1.NotasFiscais.Clear;
      TBlobField(dsConsulta.DataSet.FieldByName('XMLNFE')).SaveToFile(FsPastaApp +'\NotaFiscalXML\'
      +  dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml');

      ACBrNFe1.NotasFiscais.LoadFromFile(FsPastaApp +'\NotaFiscalXML\'
      + dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml');
      if dsConsulta.DataSet.FieldByName('PROTOCOLOCANCELAMENTO').AsString <> '' then
      begin
        ACBrNFeDANFeRL1.Cancelada:= True;
        ACBrNFeDANFeRL1.Protocolo := dsConsulta.DataSet.FieldByName('PROTOCOLOCANCELAMENTO').AsString + ' ' +
        FormatDateTime('dd/MM/yyyy hh:mm:ss', dsConsulta.DataSet.FieldByName('RECIBOCANCELAMENTO').AsDateTime);
        ACBrNFe1.NotasFiscais.Imprimir;
        ACBrNFeDANFeRL1.Cancelada:= False;

      end
      else
        ACBrNFe1.NotasFiscais.Imprimir;
    end
    else
    begin
      if MessageDlg('Deseja abrir o DANFE a partir de um XML?',mtConfirmation,mbyesNo,0) = mrYes then
      begin
        if OpenDialog1.Execute then
        begin
          ACBrNFe1.NotasFiscais.Clear;
          ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
          ACBrNFe1.NotasFiscais.Imprimir;
        end;
      end
      else
      begin
        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile( FsPastaApp + '\NotaFiscalXML\' + dsConsulta.DataSet.FieldByName('CHAVENFE').AsString + '-nfe.xml');
        if dsConsulta.DataSet.FieldByName('PROTOCOLOCANCELAMENTO').AsString <> '' then
        begin
          ACBrNFeDANFeRL1.Cancelada:= True;
          ACBrNFeDANFeRL1.Protocolo := dsConsulta.DataSet.FieldByName('PROTOCOLOCANCELAMENTO').AsString + ' ' +
          FormatDateTime('dd/MM/yyyy hh:mm:ss', dsConsulta.DataSet.FieldByName('RECIBOCANCELAMENTO').AsDateTime);
        end;
        ACBrNFe1.NotasFiscais.Imprimir;
        ACBrNFe1.DANFE.Cancelada:= False;
      end;
    end;
  end;
end;

procedure TFrmListaPedidos.ImprimirDANFe1Click(Sender: TObject);
begin
  imprimirDANFe;
end;

procedure TFrmListaPedidos.ImprimirDANFe2Click(Sender: TObject);
begin
  inherited;
  imprimirDANFe;
end;

procedure TFrmListaPedidos.JvBitBtn1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('TIPO').AsString <> 'Pre-Venda' then
    raise Exception.Create('Somente é permitido estorno de Pré-Venda.')
  else
  begin
    if UsuarioEstornaVenda=1 then
    begin
      if MessageBox(Handle, 'Deseja estorna o pedido?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then
      begin
      //criar para para usar esse recurso? criar uma certa burocracia
//        if titulopago(dsConsulta.DataSet.FieldByName('ID').AsInteger,'V') then
//          raise Exception.Create('Existe titulo(s) pagos. Entre em contato com financeiro para efetuar o estorno do título. Depois tente o estorno do pedido.')
//        else
        begin
          estornoPedido(dsConsulta.DataSet.FieldByName('ID').AsInteger, UsuarioLogadoNome, dsConsulta.DataSet.FieldByName('TOTAL').AsFloat);

          dsConsulta.DataSet.Refresh;
        end;
      end;
    end
    else
    begin
      try
        if MessageBox(Handle,
          'Usuário sem permissão para estornar Pre-Venda. Deseja Solicitar autorização do gerente?',
          NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1) = IDYES then
        begin
          Application.CreateForm(TfrmAutorizacaoGerente,frmAutorizacaoGerente);
          frmAutorizacaoGerente.ShowModal;
        end;
      finally
        if Assigned(frmAutorizacaoGerente) then
        begin
          if frmAutorizacaoGerente.Tag = 1 then
          begin
            estornoPedido(dsConsulta.DataSet.FieldByName('ID').AsInteger, frmAutorizacaoGerente.Hint, dsConsulta.DataSet.FieldByName('TOTAL').AsFloat);
            dsConsulta.DataSet.Refresh;
          end;
          FreeAndNil(frmAutorizacaoGerente);
        end;
      end;
    end;
  end;
end;

procedure TFrmListaPedidos.JvBitBtn5Click(Sender: TObject);
var
  sID: string;
begin
  if trim(edtBusca.Text) <> '' then
  begin
    self.Where := ' WHERE CONTATO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
      + ' AND VENDA.ID_FILIAL='+ IntToStr(Estabelecimento) + ' AND VENDA.BLOQUEADO=0';
    sID := OnlyNumber(Trim(edtBusca.Text));
    if sID <> '' then
    begin
      self.Where := self.Where +
      ' OR VENDA.ID = ' + sID;
    end;
    self.Where := Self.Where + ' OR VENDA.CHAVENFE LIKE '+  QuotedStr('%'+ Trim(edtBusca.Text) +'%') +   ' OR TRIM(LEADING "0" FROM SUBSTR(VENDA.CHAVENFE,26,9)) LIKE '+QuotedStr('%'+ Trim(edtBusca.Text) + '%');
  end
  else
    self.Where :=' WHERE VENDA.ID_FILIAL = ' + IntToStr(Estabelecimento) + ' AND VENDA.BLOQUEADO=0';
  inherited;

end;



procedure TFrmListaPedidos.Nmerodesrie1Click(Sender: TObject);
begin
  inherited;
  certNumSerie;
end;

procedure TFrmListaPedidos.PrVisualizarNFe1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('TIPO').AsString='Pre-Venda' then
  begin
   if TransmitirNFeSaida(dsConsulta.DataSet.FieldByName('ID').AsInteger,
      0,
      Estabelecimento
      , true
      , false
      ) then
      dsConsulta.DataSet.Refresh;
  end
  else
  begin
    raise Exception.Create('NF-e somente de pré-venda.');
  end;

end;

procedure TFrmListaPedidos.CNPJ1Click(Sender: TObject);
begin
  inherited;
  certCNPJ;
end;

procedure TFrmListaPedidos.RazoSocial1Click(Sender: TObject);
begin
  inherited;
  certRazaoSocial;
end;

procedure TFrmListaPedidos.Recibodeentrega1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TrptReciboEntrega, rptReciboEntrega);

    if dsConsulta.DataSet.FieldByName('PROTOCOLONFE').AsString<> '' then
    begin
      rptReciboEntrega.lblMsg.Caption := 'DECLARO QUE RECEBI AS MERCADORIAS CONSTANTES NA NOTA FISCAL/PEDIDO:';
      rptReciboEntrega.lblNumero.Caption := dsConsulta.DataSet.FieldByName('NUMERO_NOTA').AsString + ' / ' +dsConsulta.DataSet.FieldByName('ID').AsString;
    end
    else
    begin
      rptReciboEntrega.lblMsg.Caption := 'DECLARO QUE RECEBI AS MERCADORIAS CONSTANTES NO PEDIDO:';
      rptReciboEntrega.lblNumero.Caption :=dsConsulta.DataSet.FieldByName('ID').AsString
    end;
    rptReciboEntrega.RLReport1.PreviewModal;
  finally
    freeandnil(rptReciboEntrega);
  end;

end;

procedure TFrmListaPedidos.Recibodepagamento1Click(Sender: TObject);
var
  sAux : TStringBuilder;
begin
  inherited;
  try
    Application.CreateForm(TfrmReciboAvulso,frmReciboAvulso);
    if dsConsulta.DataSet.FieldByName('PROTOCOLONFE').AsString <> '' then
      frmReciboAvulso.edtNumeroNota.Text := dsConsulta.DataSet.FieldByName('NUMERO_NOTA').AsString.Trim;



    frmReciboAvulso.edtFavorecido.Text := UpperCase(dsConsulta.DataSet.FieldByName('NOME').AsString);
    frmReciboAvulso.edtValor.Value := dsConsulta.DataSet.FieldByName('TOTAL').AsFloat;
    frmReciboAvulso.edtCPFCNPJ.Text := dsConsulta.DataSet.FieldByName('CPFCNPJ').AsString;



    frmReciboAvulso.ShowModal;
  finally
    if frmReciboAvulso.ModalResult = mrok then
    begin
      sAux := TStringBuilder.Create;

      sAux.Append('Recebi(emos) de ').Append( UpperCase(Trim(frmReciboAvulso.edtFavorecido.Text)));

      if trim(frmReciboAvulso.edtCPFCNPJ.Text) <> '' then
        sAux.Append(', inscrito no ');
      if Length(trim(frmReciboAvulso.edtCPFCNPJ.Text)) = 11 then
        sAux.Append('CPF sob o nº ').Append( FormatarCPF(trim(frmReciboAvulso.edtCPFCNPJ.Text)))
      else
        sAux.Append('CNPJ sob o nº ').Append( FormatarCNPJ(trim(frmReciboAvulso.edtCPFCNPJ.Text)));


      sAux.Append(', a importância de ').Append(FormatFloatBr(frmReciboAvulso.edtValor.Value, 'R$ #,##0.00')).Append(' (');
      sAux.Append(ACBrExtenso1.ValorToTexto(frmReciboAvulso.edtValor.Value)).Append(')');

      sAux.Append(', referente à ').Append(frmReciboAvulso.mmoReferente.Text);


      if frmReciboAvulso.edtNumeroNota.Text<> '' then
        saux.Append(', NOTA FISCAL ').Append(frmReciboAvulso.edtNumeroNota.Text).Append('.');



      //gerar o relatorio

      Application.CreateForm(TrptReciboAvulso, rptReciboAvulso);


      rptReciboAvulso.lblData.Caption := MunicipioNome + ' - ' + UFEstabelecimento +', '+ FsDataExtenso(frmReciboAvulso.edtData.Date);

      rptReciboAvulso.mmRecebimento.Lines.Add(
        saux.ToString

      );

      rptReciboAvulso.RLReport1.PreviewModal;


    end;
    freeandnil(frmReciboAvulso);
    freeandnil(rptReciboAvulso);
  end;
end;

procedure TFrmListaPedidos.setValorPadraoDlg(defaultpath: string; const titulo,
  filtroFile, extfile: string);
begin
  OpenDialog1.Title :=  titulo;
  OpenDialog1.DefaultExt :=  extfile;
  OpenDialog1.Filter := filtroFile;
  OpenDialog1.InitialDir := defaultpath;
end;

procedure TFrmListaPedidos.StatusdoServiodaNFe1Click(Sender: TObject);
begin
  inherited;
  nfStatusServico;
end;

procedure TFrmListaPedidos.Validade1Click(Sender: TObject);
begin
  inherited;
  certVencto;
end;
end.
