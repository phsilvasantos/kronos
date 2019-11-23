unit Testes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrUtil, Vcl.StdCtrls, Vcl.ExtCtrls,
  RLPreview, RLReport, RLPreviewForm;

type
  TForm1 = class(TForm)
    RLPreview1: TRLPreview;
    RLPreviewSetup1: TRLPreviewSetup;
    Panel1: TPanel;
    btn1: TButton;
    edtEntrada: TLabeledEdit;
    edtSaida: TLabeledEdit;
    Button1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  edtSaida.Text := OnlyAlphaNum(edtEntrada.Text);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  Form2.RLReport1.Preview(RLPreview1);
end;

end.
