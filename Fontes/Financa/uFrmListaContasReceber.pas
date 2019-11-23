unit uFrmListaContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, ACBrUtil, JvADOQuery;

type
  TFrmListaContasReceber = class(TFrmLista)
    btnMovimentos: TJvBitBtn;
    pmMovimentos: TPopupMenu;
    Baixarttulo1: TMenuItem;
    Estornarttulo1: TMenuItem;
    Centralderelatrio1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Baixarttulo1Click(Sender: TObject);
    procedure Estornarttulo1Click(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure Centralderelatrio1Click(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure dbgrdConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    FTPLANCAMENTO: string;
    procedure SetTPLANCAMENTO(const Value: string);
    { Private declarations }
  public
    // valores CR=Receber, CP=Pagar
    property TPLANCAMENTO : string read FTPLANCAMENTO write SetTPLANCAMENTO;
  end;

var
  FrmListaContasReceber: TFrmListaContasReceber;

implementation

uses
  krnVarGlobais, UfrmFormularioBaixa, Funcoes, udmAcesso, uFrmCentralRelatorios, uFrmCadastroTitulos;

{$R *.dfm}

procedure TFrmListaContasReceber.Baixarttulo1Click(Sender: TObject);
begin
  inherited;
{ TODO -oJanilson -c : Baixar de titulo 19/03/2019 11:02:13 }
  if dsConsulta.DataSet.RecordCount > 0 then
  begin
    if dsConsulta.DataSet.FieldByName('SITUACAO').AsString='Aberto' then
    begin
      try
        Application.CreateForm(TfrmFormularioBaixa,frmFormularioBaixa);
      frmFormularioBaixa.Tag := dsConsulta.DataSet.FieldByName('ID').AsInteger;
      frmFormularioBaixa.edtDocumento.Text := dsConsulta.DataSet.FieldByName('DOCUMENTO').AsString;
      frmFormularioBaixa.edtParcela.Text := dsConsulta.DataSet.FieldByName('PARCELA').AsString;
      frmFormularioBaixa.edtContato.Text := dsConsulta.DataSet.FieldByName('NOME_CONTATO').AsString;

      frmFormularioBaixa.edtValorTitulo.Value := dsConsulta.DataSet.FieldByName('VALOR').AsFloat;
      frmFormularioBaixa.edtMulta.Value := 0;
      frmFormularioBaixa.edtJuros.Value := 0;
      frmFormularioBaixa.edtDesconto.Value:= 0;
      frmFormularioBaixa.edtVlrPago.Value := frmFormularioBaixa.edtValorTitulo.Value;
        frmFormularioBaixa.ShowModal;
      finally
        if frmFormularioBaixa.ModalResult = mrOk then
        begin
          proc_UpdateTitulo(Estabelecimento,
            dsConsulta.DataSet.FieldByName('ID').AsInteger,
            frmFormularioBaixa.clkID_CONTACORRENTE.KeyValue,
            frmFormularioBaixa.edtMulta.Value,
            frmFormularioBaixa.edtJuros.Value,
            frmFormularioBaixa.edtDesconto.Value,
            frmFormularioBaixa.edtVlrPago.Value,
            frmFormularioBaixa.edtBaixa.Date,
            'LQ',
            dsConsulta.DataSet.FieldByName('TIPO_LANCAMENTO').AsString
        );
        end;

        FreeAndNil(frmFormularioBaixa);
        dsConsulta.DataSet.Refresh;
      end;
    end;
  end;
end;

procedure TFrmListaContasReceber.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
  begin
    if dsConsulta.DataSet.FieldByName('SITUACAO').AsString <> 'Aberto' then
      raise Exception.Create('Edição somente de títulos em aberto.');
    try
      dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
      Application.CreateForm(tFrmCadastroTitulos, FrmCadastroTitulos);
      FrmCadastroTitulos.Tag:=1;
      openDetGrupoContatos(dsConsulta.DataSet.FieldByName('ID').AsInteger);
      FrmCadastroTitulos.dsCadastro.DataSet.Edit;

      if TPLANCAMENTO = 'CR' then
      begin
        FrmCadastroTitulos.dsLkpNatureza.DataSet := dmAcesso.QyLkpNaturezaCR;
        FrmCadastroTitulos.dsLkpContatos.DataSet := dmAcesso.QyLKPClientes;
        if dsConsulta.DataSet.FieldByName('ID_VENDA').AsInteger <> 0 then
        begin
          with FrmCadastroTitulos do
          begin
            clkID_CONTATO.Enabled := False;
            dbedtDOCUMENTO.Enabled := False;
            dbedtPARCELA.Enabled := False;
            edtEMISSAO.Enabled := False;
            cbbTIPO_PAGAMENTO.Enabled := False;
          end;
        end;


      end
      else
      begin
        FrmCadastroTitulos.dsLkpNatureza.DataSet := dmAcesso.QyLkpNaturezaCP;
        FrmCadastroTitulos.dsLkpContatos.DataSet := dmAcesso.QyLKPFornecedores;

        if dsConsulta.DataSet.FieldByName('ID_COMPRA').AsInteger <> 0 then
        begin
          with FrmCadastroTitulos do
          begin
            clkID_CONTATO.Enabled := False;
            dbedtDOCUMENTO.Enabled := False;
            dbedtPARCELA.Enabled := False;
            edtEMISSAO.Enabled := False;
            cbbTIPO_PAGAMENTO.Enabled := False;

          end;
        end;
      end;

      FrmCadastroTitulos.ShowModal;
    finally
      dsConsulta.DataSet.Refresh;
      FreeAndNil(FrmCadastroTitulos);
    end;
  end;
end;

procedure TFrmListaContasReceber.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.inicializaNovoRegistro(Self.Tabela);
    Application.CreateForm(TFrmCadastroTitulos,FrmCadastroTitulos);
    FrmCadastroTitulos.dsCadastro.DataSet.Insert;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('EMISSAO').AsDateTime := Date;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('VENCIMENTO').AsDateTime := Date;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('VALOR').AsFloat := 0;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('SITUACAO').AsString := 'AB';
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('ORIGEM').AsString := 'AU';
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('PARCELA').AsInteger:=1;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('BLOQUEADO').AsInteger:=0;
    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('TIPO_PAGTO').AsString := 'ESP';
    FrmCadastroTitulos.cbbTIPO_PAGAMENTO.ItemIndex:=0;

    FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('ID_CONDICAOPAGAMENTO').AsInteger :=
      dmAcesso.QyLkpContaCorrente.FieldByName('ID').AsInteger;

    FrmCadastroTitulos.clkID_CONTACORRENTE.KeyValue:=dmAcesso.QyLkpContaCorrente.FieldByName('ID').AsInteger;

    if TPLANCAMENTO = 'CR' then
    begin
      FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('TIPO_LANCAMENTO').AsString := 'C';
      FrmCadastroTitulos.dsLkpNatureza.DataSet := dmAcesso.QyLkpNaturezaCR;
      FrmCadastroTitulos.clkID_NATUREZA.KeyValue := dmAcesso.QyLkpNaturezaCR.FieldByName('ID').AsInteger;
      FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('ID_CONTATO').AsInteger :=
        dmAcesso.QyLKPClientes.FieldByName('ID').AsInteger;
      FrmCadastroTitulos.clkID_CONTATO.KeyValue := dmAcesso.QyLKPClientes.FieldByName('ID').AsInteger;
    end
    else
    begin
      FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('TIPO_LANCAMENTO').AsString := 'D';
      FrmCadastroTitulos.dsLkpNatureza.DataSet := dmAcesso.QyLkpNaturezaCP;
      FrmCadastroTitulos.clkID_NATUREZA.KeyValue := dmAcesso.QyLkpNaturezaCP.FieldByName('ID').AsInteger;
      FrmCadastroTitulos.dsLkpContatos.DataSet := dmAcesso.QyLKPFornecedores;
      FrmCadastroTitulos.dsCadastro.DataSet.FieldByName('ID_CONTATO').AsInteger :=
        dmAcesso.QyLKPClientes.FieldByName('ID').AsInteger;
      FrmCadastroTitulos.clkID_CONTATO.KeyValue := dmAcesso.QyLKPFornecedores.FieldByName('ID').AsInteger;
    end;

    FrmCadastroTitulos.ShowModal;
  finally
    FreeAndNil(FrmCadastroTitulos);
    dsConsulta.DataSet.Refresh;
  end;
end;

procedure TFrmListaContasReceber.btnRemoverClick(Sender: TObject);
begin

  if dsConsulta.DataSet.FieldByName('SITUACAO').AsString <> 'Aberto' then
    AlertaInfo('Lançamento não pode ser removido.')
  else
  begin
    if TPLANCAMENTO = 'CR' then
    begin
      if dsConsulta.DataSet.FieldByName('ID_VENDA').AsInteger <> 0 then
      begin
        AlertaInfo(PChar('Título vinculado a venda nº ' +dsConsulta.DataSet.FieldByName('ID_VENDA').AsString
        +#13+ 'É necessário estornar o pedido.'));
      end
      else
        inherited;
    end
    else
    begin
      if dsConsulta.DataSet.FieldByName('ID_COMPRA').AsInteger <> 0 then
      begin
        AlertaInfo(PChar( 'Título vinculado a compra nº ' +dsConsulta.DataSet.FieldByName('ID_COMPRA').AsString
          +#13+ 'É necessário remover a compra.') );
      end
      else
        inherited;
    end;
  end;
end;

procedure TFrmListaContasReceber.Centralderelatrio1Click(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmCentralRelatorios,FrmCentralRelatorios);
    FrmCentralRelatorios.Hint := 'LANCAMENTO';

    if TPLANCAMENTO = 'CR' then
      FrmCentralRelatorios.cbbTipoLancamento.ItemIndex := 0
    else
      FrmCentralRelatorios.cbbTipoLancamento.ItemIndex := 1;

    FrmCentralRelatorios.cbbTipoLancamento.Enabled:=False;
    FrmCentralRelatorios.ShowModal;

  finally
    FreeAndNil(FrmCentralRelatorios);
  end;
end;

procedure TFrmListaContasReceber.dbgrdConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if Assigned(dsConsulta.DataSet.FindField('SITUACAO')) then
  begin
    if (Column.Field.FieldName = 'SITUACAO') then
    begin
      if (dsConsulta.DataSet.FieldByName('SITUACAO').AsString = 'Baixado')
      or (dsConsulta.DataSet.FieldByName('SITUACAO').AsString = 'Liquidado') then
      begin
//        dbgrdConsulta.Canvas.Brush.Color:= clRed;  //"pinta" a celula inteira
        dbgrdConsulta.Canvas.Font.Color:= clBlue;      //"Pinta" a letra
        dbgrdConsulta.Canvas.FillRect(Rect);
        dbgrdConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;

      if (dsConsulta.DataSet.FieldByName('VENCIMENTO').AsDateTime < Date) and
      ((dsConsulta.DataSet.FieldByName('SITUACAO').AsString = 'Aberto'))then
      begin
        dbgrdConsulta.Canvas.Font.Color:= clRed;      //"Pinta" a letra
        dbgrdConsulta.Canvas.FillRect(Rect);
        dbgrdConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;

    end;
  end;
end;

procedure TFrmListaContasReceber.Estornarttulo1Click(Sender: TObject);
begin
  inherited;
  { TODO -oJanilson -c : Estorno de titulo 19/03/2019 11:02:32 }
  if dsConsulta.DataSet.FieldByName('SITUACAO').AsString <> 'Aberto' then
  begin
    proc_UpdateTitulo(Estabelecimento,
      dsConsulta.DataSet.FieldByName('ID').AsInteger,
      dsConsulta.DataSet.FieldByName('ID_CONTACORRENTE').AsInteger,
      0,
      0,
      0,
      0,
      now,
      'AB',
      dsConsulta.DataSet.FieldByName('TIPO_LANCAMENTO').AsString
    );
    { TODO -oJanilson -c : Imprimir recibo? 21/03/2019 10:41:05 }


    dsConsulta.DataSet.Refresh;
  end;

end;

procedure TFrmListaContasReceber.FormCreate(Sender: TObject);
begin
  inherited;
  paginate := 30;
end;

procedure TFrmListaContasReceber.JvBitBtn5Click(Sender: TObject);
begin

  if TPLANCAMENTO = 'CR' then
  begin
    if trim(edtBusca.Text) <> '' then
    begin
      self.Where := ' WHERE LANCAMENTO.TIPO_LANCAMENTO = "C" AND LANCAMENTO.ID_FILIAL = ' + IntToStr(Estabelecimento)
      + ' AND CONTATO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) +'%')
      + ' OR LANCAMENTO.DOCUMENTO LIKE '+QuotedStr('%'+ Trim(edtBusca.Text) +'%')
      ;
    end
    else
      self.Where :=' WHERE LANCAMENTO.TIPO_LANCAMENTO = "C" AND LANCAMENTO.ID_FILIAL = ' + IntToStr(Estabelecimento);
    inherited;
  end
  else
  begin
    if trim(edtBusca.Text) <> '' then
    begin
      self.Where := ' WHERE LANCAMENTO.TIPO_LANCAMENTO = "D" AND LANCAMENTO.ID_FILIAL = ' + IntToStr(Estabelecimento)
      + ' AND CONTATO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) +'%')
      + ' OR LANCAMENTO.DOCUMENTO LIKE '+QuotedStr('%'+ Trim(edtBusca.Text) +'%')
      ;
    end
    else
      self.Where :=' WHERE LANCAMENTO.TIPO_LANCAMENTO = "D" AND LANCAMENTO.ID_FILIAL = ' + IntToStr(Estabelecimento);
    inherited;
  end;
end;

procedure TFrmListaContasReceber.SetTPLANCAMENTO(const Value: string);
begin
  FTPLANCAMENTO := Value;
end;

end.
