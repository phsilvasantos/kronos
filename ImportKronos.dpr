program ImportKronos;

uses
  Vcl.Forms,
  uFrmTelaImportacao in 'Fontes\Importacao\uFrmTelaImportacao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
