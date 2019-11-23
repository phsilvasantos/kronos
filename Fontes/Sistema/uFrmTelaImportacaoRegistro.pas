unit uFrmTelaImportacaoRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmTelaImportacaoRegistro = class(TForm)
    pgc1: TPageControl;
    tsImportacaoNCMIPPT: TTabSheet;
    pnl55: TPanel;
    btnFile: TButtonedEdit;
    btnProcessar: TBitBtn;
    btnCancelar: TBitBtn;
    btnDownloadNCM: TBitBtn;
    ilPesquisa: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaImportacaoRegistro: TFrmTelaImportacaoRegistro;

implementation

{$R *.dfm}

end.
