unit UfrmReciboAvulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ExtCtrls,
  JvExControls, JvXPCore, JvXPButtons, JvComponentBase, JvEnterTab, Vcl.Buttons;

type
  TfrmReciboAvulso = class(TForm)
    grp1: TGroupBox;
    edtFavorecido: TLabeledEdit;
    edtValor: TJvCalcEdit;
    lbl1: TLabel;
    grp2: TGroupBox;
    grp3: TGroupBox;
    mmoReferente: TMemo;
    edtData: TJvDateEdit;
    lbl2: TLabel;
    edtNumeroNota: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edtCPFCNPJ: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReciboAvulso: TfrmReciboAvulso;

implementation

{$R *.dfm}

end.
