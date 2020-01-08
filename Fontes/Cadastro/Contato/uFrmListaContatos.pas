unit uFrmListaContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvExButtons, JvBitBtn, Vcl.Menus, JvComponentBase, JvEnterTab, JvExControls,
  JvMarkupLabel;

type
  TFrmListaContatos = class(TFrmLista)
    Centralderelatorios1: TMenuItem;
    btnArquivos: TJvBitBtn;
    pmMasOpcoes: TPopupMenu;
    ExportarcontatoPDVDJ1: TMenuItem;
    pmContext: TPopupMenu;
    ExportarPDVDJcontatoselecionado1: TMenuItem;
    procedure JvBitBtn5Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure Centralderelatorios1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportarcontatoPDVDJ1Click(Sender: TObject);
    procedure ExportarPDVDJcontatoselecionado1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmListaContatos: TFrmListaContatos;

implementation

uses
  uFrmCadastroContato, udmAcesso, krnVarGlobais, urptRelatorio, uFrmCentralRelatorios, PMensagem, Funcoes;

{$R *.dfm}

procedure TFrmListaContatos.btnEditarClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
  begin
    try
      dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
      Application.CreateForm(TFrmCadastroContato, FrmCadastroContato);
      FrmCadastroContato.Tag:=1;
      openDetGrupoContatos(dsConsulta.DataSet.FieldByName('ID').AsInteger);
      FrmCadastroContato.dsCadastro.DataSet.Edit;
      FrmCadastroContato.ShowModal;
    finally
      dsConsulta.DataSet.Refresh;
      dmAcesso.QyLKPClientes.Refresh;
      FreeAndNil(FrmCadastroContato);
    end;
  end;
end;

procedure TFrmListaContatos.btnNovoClick(Sender: TObject);
begin
  inherited;
 try
    dmAcesso.inicializaNovoRegistro(Self.Tabela);
    Application.CreateForm(TFrmCadastroContato, FrmCadastroContato);
    FrmCadastroContato.Tag:=0;

    FrmCadastroContato.dsCadastro.DataSet.Insert;
    FrmCadastroContato.dsCadastro.DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;

    FrmCadastroContato.dsCadastro.DataSet.FieldByName('ID_ESTADO').AsInteger := EstadoEstabelecimento;
    FrmCadastroContato.dsCadastro.DataSet.FieldByName('ID_MUNICIPIO').AsInteger := MunicipioEstabelecimento;
    FrmCadastroContato.dsCadastro.DataSet.FieldByName('BLOQUEADO').AsInteger:=0;

    FrmCadastroContato.ShowModal;
  finally
    dsConsulta.DataSet.Refresh;
    dmAcesso.QyLKPClientes.Refresh;
    FreeAndNil(FrmCadastroContato);
  end;
end;

procedure TFrmListaContatos.btnRemoverClick(Sender: TObject);
begin
  if (dsConsulta.DataSet.FieldByName('ID').AsInteger = 1) or
  (dsConsulta.DataSet.FieldByName('ID').AsInteger = 2)
  then
    raise Exception.Create('Contato não pode ser removido.')
  else
    inherited;

end;

procedure TFrmListaContatos.Centralderelatorios1Click(Sender: TObject);
begin
  inherited;
    try
    Application.CreateForm(TFrmCentralRelatorios,FrmCentralRelatorios);
    FrmCentralRelatorios.Hint := 'CONTATO';

    FrmCentralRelatorios.ShowModal;
  finally
    FreeAndNil(FrmCentralRelatorios);
  end;
end;

procedure TFrmListaContatos.ExportarcontatoPDVDJ1Click(Sender: TObject);
begin
  exportaContatoPDVDJ;
end;

procedure TFrmListaContatos.ExportarPDVDJcontatoselecionado1Click(
  Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
    exportaContatoPDVDJ(dsConsulta.DataSet.FieldByName('ID').AsInteger);
end;


procedure TFrmListaContatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount > 0 then
    self.Tag := dsConsulta.DataSet.FieldByName('ID').AsInteger;
end;

procedure TFrmListaContatos.FormCreate(Sender: TObject);
begin
  inherited;
//  paginate := 30;
end;

procedure TFrmListaContatos.JvBitBtn5Click(Sender: TObject);
begin

  if trim(edtBusca.Text) <> '' then
    self.Where := ' WHERE CONTATO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
    + ' OR CONTATO.APELIDO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR CONTATO.CEP LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR CONTATO.DOCUMENTO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR CONTATO.TELEFONE LIKE '  + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR CONTATO.CELULAR LIKE '  + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' OR CONTATO.INSC_ESTADUAL LIKE '  + QuotedStr('%'+Trim(edtBusca.Text)+'%')
  else
    self.Where :='';
  inherited;

end;

end.
