unit uFrmListaFormapagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, IdMailBox;

type
  TFrmListaFormapagamentos = class(TFrmLista)
    procedure JvBitBtn5Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaFormapagamentos: TFrmListaFormapagamentos;

implementation

uses
  uFrmCadastroFormapagamento, udmAcesso, krnVarGlobais;

{$R *.dfm}

procedure TFrmListaFormapagamentos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
  try
    Application.CreateForm(TFrmCadastroFormapagamento,FrmCadastroFormapagamento);
    FrmCadastroFormapagamento.QyParcelas.Close;
    FrmCadastroFormapagamento.QyParcelas.Open();
    FrmCadastroFormapagamento.ShowModal;
  finally
     FreeAndNil(FrmCadastroFormapagamento);

  end;
end;

procedure TFrmListaFormapagamentos.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
  //FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('')
    dmAcesso.inicializaNovoRegistro(Self.Tabela);
    Application.CreateForm(TFrmCadastroFormapagamento,FrmCadastroFormapagamento);
    FrmCadastroFormapagamento.dsCadastro.DataSet.Insert;
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('TIPO_PAGAMENTO').AsString := 'ESP';
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('NUMERO_PARCELA').AsInteger := 1;
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('CARTAO').AsInteger := 0;
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('TAXA_CARTAO').AsFloat := 0;
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('NOTACREDITO').AsInteger := 0;
    FrmCadastroFormapagamento.dsCadastro.DataSet.FieldByName('AVISTA').AsInteger := 0;
    FrmCadastroFormapagamento.QyParcelas.Close;
    FrmCadastroFormapagamento.QyParcelas.Open();
    FrmCadastroFormapagamento.ShowModal;
  finally
    FreeAndNil(FrmCadastroFormapagamento);
  end;
end;

procedure TFrmListaFormapagamentos.JvBitBtn5Click(Sender: TObject);
begin
  if trim(edtBusca.Text) <> '' then
    self.Where := ' WHERE FORMAPAGAMENTO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
    + ' OR FORMAPAGAMENTO.TIPO_PAGAMENTO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
  else
    self.Where :='';
  inherited;

end;

end.
