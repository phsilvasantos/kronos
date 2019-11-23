unit uFrmListaEstabelecimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn;

type
  TFrmListaEstabelecimentos = class(TFrmLista)
    procedure btnRemoverClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaEstabelecimentos: TFrmListaEstabelecimentos;

implementation

uses
  udmAcesso, uFrmCadastroEstabelecimento;

{$R *.dfm}

procedure TFrmListaEstabelecimentos.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
  begin
    try
      dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
      Application.CreateForm(TFrmCadastroEstabelecimento, FrmCadastroEstabelecimento);
      FrmCadastroEstabelecimento.Tag:=1;
      FrmCadastroEstabelecimento.dsCadastro.DataSet.Edit;
      FrmCadastroEstabelecimento.ShowModal;
    finally
      dsConsulta.DataSet.Refresh;
      dmAcesso.QyLKPClientes.Refresh;
      FreeAndNil(FrmCadastroEstabelecimento);
    end;
  end;
end;

procedure TFrmListaEstabelecimentos.btnRemoverClick(Sender: TObject);
begin
//  inherited;

end;

procedure TFrmListaEstabelecimentos.JvBitBtn5Click(Sender: TObject);
begin
  if trim(edtBusca.Text) <> '' then
    self.Where := ' WHERE FILIAL.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
    + ' OR FILIAL.FANTASIA LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR FILIAL.DOCUMENTO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR FILIAL.TELEFONE LIKE '  + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR FILIAL.CELULAR LIKE '  + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR FILIAL.INSC_ESTADUAL LIKE '  + QuotedStr('%'+Trim(edtBusca.Text)+'%')
  else
    self.Where :='';
  inherited;

end;

end.
