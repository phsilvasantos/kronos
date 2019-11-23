unit uFrmCadastroTitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, JvComponentBase,
  JvEnterTab, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls, JvBaseEdits, JvDBControls, JvExMask,
  JvToolEdit, JvExControls, JvDBLookup, Vcl.Mask, JvExStdCtrls, JvCombobox,
  JvDBCombobox;

type
  TFrmCadastroTitulos = class(TFrmCadastro)
    lblDOCUMENTO: TLabel;
    dbedtDOCUMENTO: TDBEdit;
    lbl4: TLabel;
    dbedtPARCELA: TDBEdit;
    chkparcelado: TCheckBox;
    edtEMISSAO: TJvDBDateEdit;
    lbl5: TLabel;
    lbl7: TLabel;
    clkID_CONTATO: TJvDBLookupCombo;
    lbl8: TLabel;
    edtVENCIMENTO: TJvDBDateEdit;
    clkID_NATUREZA: TJvDBLookupCombo;
    edtVALOR: TJvDBCalcEdit;
    lbl15: TLabel;
    clkID_CONTACORRENTE: TJvDBLookupCombo;
    lbl10: TLabel;
    dbmmoDESCRICAO: TDBMemo;
    Label1: TLabel;
    dsLkpContas: TDataSource;
    Label2: TLabel;
    dsLkpNatureza: TDataSource;
    dsLkpCondPagtos: TDataSource;
    dsLkpContatos: TDataSource;
    cbbTIPO_PAGAMENTO: TJvDBComboBox;
    lbl3: TLabel;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroTitulos: TFrmCadastroTitulos;

implementation

uses
  udmAcesso, Funcoes;

{$R *.dfm}

procedure TFrmCadastroTitulos.btnGravarClick(Sender: TObject);
begin
  inherited;
  if Trim(dbedtDOCUMENTO.Text) = '' then
  Begin
    dbedtDOCUMENTO.SetFocus;
    raise Exception.Create('Informe o número do documento.');
  End;

  if (Trim(dbedtPARCELA.Text) = '') or ( Trim(dbedtPARCELA.Text) = '0' )then
  begin
    dbedtPARCELA.SetFocus;
    raise Exception.Create('Informe o número da parcela.');
  end;


  if clkID_CONTATO.KeyValue = null then
  begin
    clkID_CONTATO.SetFocus;
    raise Exception.Create('Informe o contato.');
  end;

  if clkID_NATUREZA.KeyValue = null then
  begin
    clkID_NATUREZA.SetFocus;
    raise Exception.Create('Informe a natureza.');
  end;

  if clkID_CONTACORRENTE.KeyValue = null then
  begin
    clkID_CONTACORRENTE.SetFocus;
    raise Exception.Create('Informe a conta corrente.');
  end;


  if edtVALOR.Value=0 then
  begin
    edtVALOR.SetFocus;
    raise Exception.Create('Informe o valor do título.');
  end;

  try
    dsCadastro.DataSet.Post;
    AlertaInfo('Título gravado com sucesso.');
    Close;
  except on E: Exception do
    AlertaError(PChar(e.Message));
  end;

end;

end.
