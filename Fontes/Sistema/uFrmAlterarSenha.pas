unit uFrmAlterarSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  JvgGroupBox, md5, JvComponentBase, JvEnterTab;

type
  TFrmAlterarSenha = class(TForm)
    gbx1: TJvgGroupBox;
    edtUsuario: TLabeledEdit;
    edtSenha: TLabeledEdit;
    edtSenhaAtual: TLabeledEdit;
    JvgGroupBox1: TJvgGroupBox;
    btnOK: TBitBtn;
    btnCancel: TBitBtn;
    JvEnterAsTab1: TJvEnterAsTab;
    procedure edtSenhaAtualChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlterarSenha: TFrmAlterarSenha;

implementation

uses
  udmAcesso, krnVarGlobais;

{$R *.dfm}

procedure TFrmAlterarSenha.edtSenhaAtualChange(Sender: TObject);
begin
  if (MD5String(IntToStr(UsuarioLogado) +
    UsuarioLogadoNome + edtSenhaAtual.Text) =
    UpperCase( dmAcesso.QyUsuarioLogin.FieldByName('SENHA').AsString))
    and (edtSenha.Text<> '')
  then
  begin
    btnOK.Enabled:= True;
  end
  else
  begin
    btnOK.Enabled:= False;
    //raise Exception.Create('Senha atual inválida. Tente novamente');
  end;
end;

end.
