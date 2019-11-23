unit UFrmListaCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, ACBrUtil,
  JvExControls, JvMarkupLabel;

type
  TFrmListaCompras = class(TFrmLista)
    btnNF: TJvBitBtn;
    pmNF: TPopupMenu;
    EmitirNFe1: TMenuItem;
    ImprimirDANFe1: TMenuItem;
    CancelarNFe1: TMenuItem;
    N3: TMenuItem;
    ConsultarNFe1: TMenuItem;
    Cartadecorreo1: TMenuItem;
    EmitirCartadeCorreo1: TMenuItem;
    ImprimirCartadeCorreo1: TMenuItem;
    InutilizarNumeroNFe1: TMenuItem;
    PrVisualizarNFe1: TMenuItem;
    N1: TMenuItem;
    Enviaremail1: TMenuItem;
    EnviaremailNFe1: TMenuItem;
    EnviaremailNFeviaXML1: TMenuItem;
    StatusdoServiodaNFe1: TMenuItem;
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
    Adicionarprotocolo1: TMenuItem;
    procedure JvBitBtn5Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure StatusdoServiodaNFe1Click(Sender: TObject);
    procedure Validade1Click(Sender: TObject);
    procedure Nmerodesrie1Click(Sender: TObject);
    procedure RazoSocial1Click(Sender: TObject);
    procedure CNPJ1Click(Sender: TObject);
    procedure EmitirNFe1Click(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmListaCompras: TFrmListaCompras;

implementation

uses
  uFrmCadastroCompras, krnVarGlobais, udmAcesso, Funcoes;

{$R *.dfm}

procedure TFrmListaCompras.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
  begin
    if dsConsulta.DataSet.FieldByName('FINALIDADENFE').AsString <> 'Não Emitida' then
      raise Exception.Create('Nota não pode ser editada.');

    try
      Application.CreateForm(TFrmCadastroCompra,FrmCadastroCompra);
      FrmCadastroCompra.Tag := dsConsulta.DataSet.FieldByName('ID').AsInteger;
      FrmCadastroCompra.ShowModal;
    finally
      FreeAndNil(FrmCadastroCompra);
      dsConsulta.DataSet.Refresh;
    end;
  end;
end;

procedure TFrmListaCompras.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
//    AlertaInfo('Abrir compra');
    Application.CreateForm(TFrmCadastroCompra,FrmCadastroCompra);

//    AlertaInfo('Abrir show');
    FrmCadastroCompra.ShowModal;

  finally
    FreeAndNil(FrmCadastroCompra);
    dsConsulta.DataSet.Refresh;
  end;
end;

procedure TFrmListaCompras.btnRemoverClick(Sender: TObject);
begin
  if dsConsulta.DataSet.FieldByName('FINALIDADENFE').AsString <> 'Não Emitida' then
    raise Exception.Create('Nota não pode ser removida.')
  else
  begin
    if titulopago(dsConsulta.DataSet.FieldByName('ID').AsInteger) then
      raise Exception.Create('Existe titulo(s) pagos. Entre em contato com financeiro para efetuar o estorno. Depois tente remover.')
    else
    begin
      //USAR CONFIG PARA HABILITAR O LOG
//      addHistorio(UsuarioLogado, 'Compra: ' + dsConsulta.DataSet.FieldByName('ID').AsString
//      + ' Valor: ' + FormatFloat('#,##0.00', dsConsulta.DataSet.FieldByName('TOTAL').AsFloat)
//      + ' Removido pelo Usuario: ' + UsuarioLogadoNome
//      );
      inherited;
    end;
  end;
end;

procedure TFrmListaCompras.CNPJ1Click(Sender: TObject);
begin
  inherited;
  certCNPJ;
end;

procedure TFrmListaCompras.EmitirNFe1Click(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.FieldByName('FINALIDADENFE').AsString='Não Emitida' then
  begin
   if TransmitirNFeEntrada(dsConsulta.DataSet.FieldByName('ID').AsInteger,
      0,
      Estabelecimento
      , false
      ) then
      dsConsulta.DataSet.Refresh;
  end
  else
  begin
    raise Exception.Create('Emissão somente de NF não emitida.');
  end;
end;

procedure TFrmListaCompras.JvBitBtn5Click(Sender: TObject);
var
  sID: string;
begin
  if trim(edtBusca.Text) <> '' then
  begin
    self.Where := ' AND CONTATO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%');
    sID := OnlyNumber(Trim(edtBusca.Text));
    if sID <> '' then
    begin
      self.Where := self.Where +
      ' OR COMPRA.ID = ' + sID;
    end;
    self.Where := Self.Where + ' OR TRIM(LEADING "0" FROM SUBSTR(COMPRA.CHAVENFE,26,9)) LIKE '+QuotedStr('%'+ Trim(edtBusca.Text) + '%');
  end
  else
    self.Where :=' WHERE ID_FILIAL = ' + IntToStr(Estabelecimento);
  inherited;


end;

procedure TFrmListaCompras.Nmerodesrie1Click(Sender: TObject);
begin
  inherited;
  certNumSerie;
end;

procedure TFrmListaCompras.RazoSocial1Click(Sender: TObject);
begin
  inherited;
  certRazaoSocial;
end;

procedure TFrmListaCompras.StatusdoServiodaNFe1Click(Sender: TObject);
begin
  inherited;
  nfStatusServico;
end;

procedure TFrmListaCompras.Validade1Click(Sender: TObject);
begin
  inherited;
  certVencto;
end;

end.
