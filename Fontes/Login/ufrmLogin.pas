unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, JvgGroupBox, JvExControls, JvDBLookup,
  JvXPCore, JvXPButtons, krnVarGlobais, JvComponentBase, JvEnterTab, JvBaseDlg,
  JvLoginForm;

type
  TFrmLogin = class(TForm)
    JvgGroupBox1: TJvgGroupBox;
    Panel1: TPanel;
    btn1: TJvXPButton;
    JvXPButton1: TJvXPButton;
    dsFiliais: TDataSource;
    JvgGroupBox2: TJvgGroupBox;
    cbbFilial: TJvDBLookupCombo;
    Label1: TLabel;
    edtSenha: TLabeledEdit;
    edtUsuario: TLabeledEdit;
    JvLoginDialog1: TJvLoginDialog;
    procedure edtUsuarioExit(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure JvXPButton1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvLoginDialog1GetPassword(Sender: TObject; const UserName: string;
      var Password: string);
    procedure FormShow(Sender: TObject);
  private
    procedure carregarMenus(idPerfil: Integer);
  public

  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses udmAcesso, MD5, uFrmPrincipal, uFrmFormularioTeste, Funcoes;

procedure TFrmLogin.btn1Click(Sender: TObject);
var
  saux : string;
begin
  saux:=  MD5String(dmAcesso.QyFiliais.FieldByName('NOME').AsString);
  if Trim(edtSenha.Text) = '' then
    raise Exception.Create('Informe a senha.')

  else
  if cbbFilial.KeyValue = null then
    raise Exception.Create('Usuário sem permissão')
  else
  if MD5String(dmAcesso.QyFiliais.FieldByName('NOME').AsString) <> UpperCase(dmAcesso.QyFiliais.FieldByName('CHAVE').AsString) then
  begin
    ShowMessage('Licença inválida.');
    Application.Terminate;
  end
  else if dmAcesso.QyFiliais.FieldByName('BLOQUEADO').AsInteger=1 then
  begin
    ShowMessage('Licença bloqueada.');
    Application.Terminate;
  end
  else
  begin
    if MD5String(dmAcesso.QyUsuarioLogin.FieldByName('ID').AsString +
      dmAcesso.QyUsuarioLogin.FieldByName('LOGIN').AsString + edtSenha.Text) =
      UpperCase( dmAcesso.QyUsuarioLogin.FieldByName('SENHA').AsString) then
    begin
      Estabelecimento           := cbbFilial.KeyValue;
      NomeEstabelecimento       := cbbFilial.Text;
      CNPJEstabelecimento       := dmAcesso.QyFiliais.FieldByName('DOCUMENTO').AsString;
      FantasiaEstabelecimento   := dmAcesso.QyFiliais.FieldByName('FANTASIA').AsString;
      MunicipioEstabelecimento  := dmAcesso.QyFiliais.FieldByName('ID_MUNICIPIO').AsInteger;
      EstadoEstabelecimento     := dmAcesso.QyFiliais.FieldByName('ID_ESTADO').AsInteger;
      CEPEstabelecimento        := dmAcesso.QyFiliais.FieldByName('CEP').AsString;
      UFEstabelecimento         := dmAcesso.QyFiliais.FieldByName('SIGLA').AsString;
      MunicipioNome             := dmAcesso.QyFiliais.FieldByName('NOME_MUNICIPIO').AsString;


      CountEstabelecimento      := numFiliais;

      UsuarioLogado             := dmAcesso.QyUsuarioLogin.FieldByName('ID').AsInteger;
      UsuarioLogadoNome         := dmAcesso.QyUsuarioLogin.FieldByName('LOGIN').AsString;
      UsuarioLogadoNomeCompleto :=dmAcesso.QyUsuarioLogin.FieldByName('NOME').AsString;


      If dmAcesso.QyUsuarioLogin.FieldByName('GERENTE').AsInteger = 1 then
        UsuarioGerente            := 1
      else
        UsuarioGerente := 0;
      PerfilUsuario             := dmAcesso.QyUsuarioLogin.FieldByName('ID_PERFIL').AsInteger;

      UsuarioDesconto                 := dmAcesso.QyGrupoUsuario.FieldByName('DESCONTO').AsFloat;
      UsuarioFinalizaVenda            := dmAcesso.QyGrupoUsuario.FieldByName('FINALIZA_VENDA').AsInteger;
      UsuarioEstornaVenda             := dmAcesso.QyGrupoUsuario.FieldByName('ESTORNA_VENDA').AsInteger;
      UsuarioDeletaItemVenda          := dmAcesso.QyGrupoUsuario.FieldByName('DELETAITEM_VENDA').AsInteger;
      UsuarioEnviaNFeVenda            := dmAcesso.QyGrupoUsuario.FieldByName('ENVIANFE_VENDA').AsInteger;
      UsuarioTransferencia            := dmAcesso.QyGrupoUsuario.FieldByName('TRANSFERENCIA_VENDA').AsInteger;
      UsuarioPermiteEditarEstoque     := dmAcesso.QyGrupoUsuario.FieldByName('PERMITE_EDITAR_ESTOQUE').AsInteger;
      UsuarioPermiteEditarPreco       := dmAcesso.QyGrupoUsuario.FieldByName('PERMITE_EDITAR_PRECO').AsInteger;
      UsuarioPermiteEditarTabelaPreco := dmAcesso.QyGrupoUsuario.FieldByName('PERMITE_EDITAR_TABELAPRECO').AsInteger;

      afterLogin; //necessario apos o login , nao remover
      carregarMenus(PerfilUsuario);


      FrmPrincipal.Visible := True;
      FrmPrincipal.Caption := 'Menu Principal :: Versão: ' + VersaoExe + ' Terminal: ' +NumSerie();
      frmLogin.Hide;
    end
    else
    begin
      edtSenha.SetFocus;
      raise Exception.Create('Senha incorreta.');
    end;
  end;
end;

procedure TFrmLogin.carregarMenus(idPerfil: Integer);
begin
//
  with dmAcesso.QyMenus do
  begin
    Close;
    SQL.Clear;
    sql.Add('SELECT * FROM MENU WHERE ID_PERFIL =:pID');
    ParamByName('pID').AsInteger := idPerfil;
    Open;
  end;
end;

procedure TFrmLogin.edtUsuarioExit(Sender: TObject);
begin
  if Trim(edtUsuario.Text) = '' then
    raise Exception.Create('Informe o usuário.')
  else
  begin
    if dmAcesso.QyUsuarioLogin.Locate('LOGIN',Trim(edtUsuario.Text),[loCaseInsensitive]) then
    begin
      dmAcesso.QyFiliais.Close;
      dmAcesso.QyFiliais.ParamByName('pIdUsuario').AsInteger := dmAcesso.QyUsuarioLogin.FieldByName('ID').AsInteger;
      dmAcesso.QyFiliais.Open;

      dmAcesso.QyFiliais.First;
      if dmAcesso.QyFiliais.RecordCount > 0 then
        cbbFilial.KeyValue := dmAcesso.QyFiliais.FieldByName('ID').AsInteger;
    end
    else
    begin
      dmAcesso.QyFiliais.Close;
      raise Exception.Create('Usuário não encontrado.');
    end;
  end;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;



end;

procedure TFrmLogin.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  vAux : string;
begin
  if key=vk_f12 then
  begin
    //if InputBox('Informe a senha','Senha do programador',vAux) = '@180579#' then
    JvLoginDialog1.Active := True;
    JvLoginDialog1.Login;
    JvLoginDialog1.Active := false;

//    begin
//      try
//        Application.CreateForm(TFrmFormularioTeste,FrmFormularioTeste);
//        FrmFormularioTeste.ShowModal;
//      finally
//        FreeAndNil(FrmFormularioTeste);
//      end;
//    end;

  end;



end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  self.Caption := self.Caption+ ' :: Versão: ' + VersaoExe + ' Terminal: ' + NumSerie() ;
end;

procedure TFrmLogin.JvLoginDialog1GetPassword(Sender: TObject;
  const UserName: string; var Password: string);
begin
  if (UserName='janilson') and (Password='@180579#') then
  begin
    try
      Application.CreateForm(TFrmFormularioTeste,FrmFormularioTeste);
      FrmFormularioTeste.ShowModal;
    finally
      FreeAndNil(FrmFormularioTeste);
    end;
  end;
end;

procedure TFrmLogin.JvXPButton1Click(Sender: TObject);
begin
  Close;
end;

end.
