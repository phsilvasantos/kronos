unit uFrmFormularioTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmFormularioTeste = class(TForm)
    PageControl1: TPageControl;
    tsMD5: TTabSheet;
    edtTexto: TLabeledEdit;
    edtResultMD5: TLabeledEdit;
    procedure edtTextoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormularioTeste: TFrmFormularioTeste;

implementation
uses MD5;

{$R *.dfm}

procedure TFrmFormularioTeste.edtTextoChange(Sender: TObject);
begin
  if Trim( edtTexto.Text) <> '' then
   edtResultMD5.Text:= MD5String(edtTexto.Text)
  else
    edtResultMD5.Clear;
end;

end.
