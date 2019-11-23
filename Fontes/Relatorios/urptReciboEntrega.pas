unit urptReciboEntrega;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, Data.DB, ACbrUtil, ACBrValidador;

type
  TrptReciboEntrega = class(TForm)
    RLReport1: TRLReport;
    RLBand5: TRLBand;
    rlblFantasia: TRLLabel;
    rlblEndereco: TRLLabel;
    rlblTelefones: TRLLabel;
    rlblEmail: TRLLabel;
    img1: TRLImage;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel1: TRLLabel;
    lblMsg: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    lblNumero: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptReciboEntrega: TrptReciboEntrega;

implementation


{$R *.dfm}
uses udmAcesso , krnVarGlobais, Funcoes;


procedure TrptReciboEntrega.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  try
   dmAcesso.QyFiliais.Locate('ID',Estabelecimento,[loCaseInsensitive]);
     img1.Picture :=nil;

    if not FileExists(FsPastaApp+'\Imagens\' + IntToStr(Estabelecimento) +'.jpg') then
      if TBlobField(dmAcesso.QyFiliais.FieldByName('LOGOMARCA')).BlobSize > 0 then
        TBlobField(dmAcesso.QyFiliais.FieldByName('LOGOMARCA')).SaveToFile( FsPastaApp + '\Imagens\' + IntToStr(Estabelecimento) + '.jpg' );
    if FileExists(FsPastaApp+'\Imagens\' + IntToStr(Estabelecimento) + '.jpg') then
      img1.Picture.LoadFromFile(FsPastaApp+'\Imagens\' + IntToStr(Estabelecimento) + '.jpg');


  except on E: Exception do

  end;

  rlblFantasia.Caption := dmAcesso.QyFiliais.FieldByName('FANTASIA').AsString;

  rlblEndereco.Caption := dmAcesso.QyFiliais.FieldByName('ENDERECO').AsString
  + ' Nº ' +dmAcesso.QyFiliais.FieldByName('NUMERO').AsString
  + ' ' +dmAcesso.QyFiliais.FieldByName('BAIRRO').AsString
  + ' ' +  dmAcesso.QyFiliais.FieldByName('NOME_MUNICIPIO').AsString
  + '/' +  dmAcesso.QyFiliais.FieldByName('SIGLA').AsString
  ;

  rlblTelefones.Caption := 'Fones: '+dmAcesso.QyFiliais.FieldByName('FONE').AsString;
  rlblEmail.Caption := 'CNPJ: '+ FormatarCNPJouCPF(dmAcesso.QyFiliais.FieldByName('DOCUMENTO').AsString);

end;

end.
