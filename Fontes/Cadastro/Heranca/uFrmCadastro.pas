unit uFrmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, JvExControls, JvXPCore, JvXPButtons,
  JvDBLookup, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvDBCheckBox, JvComponentBase, JvEnterTab;

type
  TFrmCadastro = class(TForm)
    pnl1: TPanel;
    pgcPrincipal: TPageControl;
    tsPrincipal: TTabSheet;
    btnGravar: TJvBitBtn;
    btnCancelar: TJvBitBtn;
    dsCadastro: TDataSource;
    JvEnterAsTab1: TJvEnterAsTab;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

uses
  udmAcesso;

{$R *.dfm}

procedure TFrmCadastro.btnCancelarClick(Sender: TObject);
begin
  dsCadastro.DataSet.Cancel;
  Close;
end;

procedure TFrmCadastro.FormShow(Sender: TObject);
begin
  pgcPrincipal.ActivePage := tsPrincipal;
end;

end.
