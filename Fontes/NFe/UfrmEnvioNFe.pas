unit UfrmEnvioNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmEnvioNFe = class(TForm)
    grp1: TGroupBox;
    edtPara: TLabeledEdit;
    edtAssumto: TLabeledEdit;
    btnEnviar: TBitBtn;
    mmo1: TMemo;
    lbl1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEnvioNFe: TfrmEnvioNFe;

implementation

{$R *.dfm}

end.
