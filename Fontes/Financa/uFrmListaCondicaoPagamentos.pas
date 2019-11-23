unit uFrmListaCondicaoPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn;

type
  TFrmListaCondicaoPagamentos = class(TFrmLista)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaCondicaoPagamentos: TFrmListaCondicaoPagamentos;

implementation

uses
  uFrmCadastroCondicaoPagamento, udmAcesso, krnVarGlobais;

{$R *.dfm}

procedure TFrmListaCondicaoPagamentos.btnEditarClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
    Application.CreateForm(TFrmCadastroCondicaoPagamento, FrmCadastroCondicaoPagamento);

    FrmCadastroCondicaoPagamento.QyFormas.Close;
    FrmCadastroCondicaoPagamento.QyFormas.SQL.Clear;
    FrmCadastroCondicaoPagamento.QyFormas.SQL.Add('SELECT * FROM REF_CONDICAO_PRAZO WHERE ID_CONDICAOPAGAMENTO=:pID');
    FrmCadastroCondicaoPagamento.QyFormas.ParamByName('pID').AsInteger :=
       dsConsulta.DataSet.FieldByName('ID').AsInteger;

    FrmCadastroCondicaoPagamento.QyFormas.Open();

    FrmCadastroCondicaoPagamento.clkFormasPagamentos.KeyValue :=
      dmAcesso.QyListaFormaPagtoCompleta.FieldByName('ID').AsInteger;

    FrmCadastroCondicaoPagamento.dsCadastro.DataSet.Edit;
    FrmCadastroCondicaoPagamento.ShowModal;
    dsConsulta.DataSet.Refresh;
  finally
    FreeAndNil(FrmCadastroCondicaoPagamento);
  end;
end;

procedure TFrmListaCondicaoPagamentos.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.inicializaNovoRegistro(Self.Tabela);
    Application.CreateForm(TFrmCadastroCondicaoPagamento, FrmCadastroCondicaoPagamento);
    FrmCadastroCondicaoPagamento.dsCadastro.DataSet.Insert;
    FrmCadastroCondicaoPagamento.dsCadastro.DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
    FrmCadastroCondicaoPagamento.dsCadastro.DataSet.FieldByName('TIPO_PAGAMENTO').AsString := 'AV';
    FrmCadastroCondicaoPagamento.dsCadastro.DataSet.FieldByName('BLOQUEADO').AsInteger := 0;

    FrmCadastroCondicaoPagamento.QyFormas.Close;
    FrmCadastroCondicaoPagamento.QyFormas.Open();

    FrmCadastroCondicaoPagamento.clkFormasPagamentos.KeyValue :=
      dmAcesso.QyListaFormaPagtoCompleta.FieldByName('ID').AsInteger;

    FrmCadastroCondicaoPagamento.ShowModal;
    dsConsulta.DataSet.Refresh;
  finally
    FreeAndNil(FrmCadastroCondicaoPagamento);
  end;
end;

procedure TFrmListaCondicaoPagamentos.JvBitBtn5Click(Sender: TObject);
begin
  inherited;
  if trim(edtBusca.Text) <> '' then
    self.Where := ' WHERE CONDICAOPAGAMENTO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
    + ' OR CONDICAOPAGAMENTO.TIPO_PAGAMENTO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
  else
    self.Where :='';
  inherited;
end;

end.
