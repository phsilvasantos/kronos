unit UfrmAutorizacaoGerente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, ExtCtrls, DB
;

type
  TfrmAutorizacaoGerente = class(TForm)
    grp1: TGroupBox;
    edtLogin: TLabeledEdit;
    edtSenha: TLabeledEdit;
    btnLogin: TButton;
    procedure btnLoginClick(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frmAutorizacaoGerente: TfrmAutorizacaoGerente;

implementation

uses udmacesso, MD5;

{$R *.dfm}

procedure TfrmAutorizacaoGerente.btnLoginClick(Sender: TObject);
begin
  inherited;
  with dmAcesso do
  begin
    if QyUsuarioLogin.Locate('LOGIN', Trim(edtLogin.Text), [loCaseInsensitive]) then
    begin
      if MD5String(QyUsuarioLogin.FieldByName('ID').AsString+ Trim(edtLogin.Text)+ Trim(edtSenha.Text)) = UpperCase(QyUsuarioLogin.FieldByName('SENHA').AsString) then
      begin
        Self.Tag := QyUsuarioLogin.FieldByName('GERENTE').AsInteger;
        self.Hint := QyUsuarioLogin.FieldByName('LOGIN').AsString;
      end
      else
      begin
        Self.Tag:=0;
        raise Exception.Create('Senha e ou usuário incorretos.');
      end;
    end
    else
    begin
      raise Exception.Create('Usuário não encontrado.');
    end;
  end;
  Close;
end;

end.
