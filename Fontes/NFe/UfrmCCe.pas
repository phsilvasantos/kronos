unit UfrmCCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvLabel, StdCtrls, ComCtrls, JvExComCtrls,
  JvDateTimePicker, ExtCtrls, JvXPCore, JvXPButtons;

type
  TfrmCCe = class(TForm)
    GroupBox1: TGroupBox;
    edtDataHora: TJvDateTimePicker;
    lbl1: TLabel;
    edtSequencia: TLabeledEdit;
    mmoCorrecao: TMemo;
    lbl2: TLabel;
    btn1: TJvXPButton;
    btnOK: TJvXPButton;
    lbl3: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCCe: TfrmCCe;

implementation

{$R *.dfm}

procedure TfrmCCe.FormShow(Sender: TObject);
begin
  edtDataHora.DateTime := Now;
end;

end.
