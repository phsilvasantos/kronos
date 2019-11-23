unit uFrmListaUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, JvExExtCtrls,
  JvExtComponent, JvCaptionPanel, JvExControls, JvDBLookup, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvMarkupLabel;

type
  TFrmListaUsuarios = class(TFrmLista)
    JvCaptionPanel1: TJvCaptionPanel;
    Panel1: TPanel;
    clkFilial: TJvDBLookupCombo;
    JvDBGrid1: TJvDBGrid;
    btnAdicionarFilial: TBitBtn;
    btnRemoverFilial: TBitBtn;
    dsUsuarioFiliais: TDataSource;
    QyUsuarioFiliais: TFDQuery;
    QyUsuarioFiliaisID_FILIAL: TIntegerField;
    QyUsuarioFiliaisID_USUARIO: TIntegerField;
    QyUsuarioFiliaisNOME_FILIAL: TStringField;
    JvCaptionPanel2: TJvCaptionPanel;
    dsListaFiliais: TDataSource;
    QyUsuarioFiliaisID: TFDAutoIncField;
    procedure JvBitBtn5Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarFilialClick(Sender: TObject);
    procedure btnRemoverFilialClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaUsuarios: TFrmListaUsuarios;

implementation

uses
  uFrmCadastroUsuario, udmAcesso, krnVarGlobais, Funcoes, krnConst;

{$R *.dfm}

procedure TFrmListaUsuarios.btnAdicionarFilialClick(Sender: TObject);
begin
  inherited;
  if dsConsulta.DataSet.RecordCount>0 then
  begin
    if QyUsuarioFiliais.Locate('ID_FILIAL', clkFilial.KeyValue, [loCaseInsensitive]) then
      raise Exception.Create('Filial já adicionada.')
    else
    begin
      QyUsuarioFiliais.Insert;
      QyUsuarioFiliaisID_FILIAL.AsInteger := clkFilial.KeyValue;
      QyUsuarioFiliaisID_USUARIO.AsInteger := dsConsulta.DataSet.FieldByName('ID').AsInteger;
      QyUsuarioFiliais.Post;
    end;
  end;
end;

procedure TFrmListaUsuarios.btnEditarClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.inicializaNovoRegistro(Self.Tabela, dsConsulta.DataSet.FieldByName('ID').AsInteger);
    Application.CreateForm(TFrmCadastroUsuario, FrmCadastroUsuario);

    FrmCadastroUsuario.dsCadastro.DataSet.Edit;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('SENHA').AsString:='';
    FrmCadastroUsuario.edtLOGIN.Enabled := False;

    FrmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(FrmCadastroUsuario);
    dsConsulta.DataSet.Refresh;
  end;
end;

procedure TFrmListaUsuarios.btnNovoClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.inicializaNovoRegistro(Self.Tabela);
    Application.CreateForm(TFrmCadastroUsuario, FrmCadastroUsuario);

    FrmCadastroUsuario.dsCadastro.DataSet.Insert;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('ID_PERFIL').AsInteger := SELF.Tag;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('GERENTE').AsInteger := 0;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('VENDEDOR').AsInteger := 0;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('BLOQUEADO').AsInteger := 0;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('VALOR_META').AsFloat := 0;
    FrmCadastroUsuario.dsCadastro.DataSet.FieldByName('TIPO_META').AsString := 'M';

    FrmCadastroUsuario.clkID_PERFIL.KeyValue := dmAcesso.QyLkpPerfisUsuarios.FieldByName('ID').AsInteger;

    FrmCadastroUsuario.ShowModal;
  finally
    FreeAndNil(FrmCadastroUsuario);
    dsConsulta.DataSet.Refresh;
  end;
end;

procedure TFrmListaUsuarios.btnRemoverClick(Sender: TObject);
begin
  if dsConsulta.DataSet.FieldByName('ID').AsInteger = UsuarioLogado then
    AlertaError('Usuário logado não pode excluir ele mesmo.')
  else
  if dsConsulta.DataSet.FieldByName('ID').AsInteger =1 then
    AlertaError('Não é possivel excluir o admin')
  else
   inherited;

end;

procedure TFrmListaUsuarios.btnRemoverFilialClick(Sender: TObject);
begin
  inherited;
  if QyUsuarioFiliais.RecordCount>0 then
    if MessageBox(Handle, 'Deseja realmente remover o registro?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then
      QyUsuarioFiliais.Delete;
end;

procedure TFrmListaUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  QyUsuarioFiliais.Open();
  clkFilial.KeyValue := Estabelecimento;
end;

procedure TFrmListaUsuarios.JvBitBtn5Click(Sender: TObject);
begin
  if trim(edtBusca.Text) <> '' then
  begin
    self.Where := ' WHERE USUARIO.ID_PERFIL = ' + IntToStr(Self.Tag)
    + ' AND USUARIO.NOME LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) +'%')
    + ' OR USUARIO.LOGIN LIKE '+QuotedStr('%'+ Trim(edtBusca.Text) +'%')
    ;
  end
  else
    self.Where :=' WHERE USUARIO.ID_PERFIL = ' + IntToStr(Self.Tag);
  inherited;

end;

end.
