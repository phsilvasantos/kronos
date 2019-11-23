unit UfrmFormularioBaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, ExtCtrls, ImgList, Buttons, Mask,
  JvExMask, JvToolEdit, JvBaseEdits, JvExControls, JvDBLookup, DB,
  ACBrBase, ACBrEnterTab, System.ImageList, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFormularioBaixa = class(TForm)
    ImageList100: TImageList;
    btnCancelar: TBitBtn;
    btnOK: TBitBtn;
    ACBrEnterTab1: TACBrEnterTab;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lblDesconto: TLabel;
    lbl15: TLabel;
    lbl5: TLabel;
    edtDocumento: TLabeledEdit;
    edtParcela: TLabeledEdit;
    edtContato: TLabeledEdit;
    edtValorTitulo: TJvCalcEdit;
    edtMulta: TJvCalcEdit;
    edtJuros: TJvCalcEdit;
    edtVlrPago: TJvCalcEdit;
    edtDesconto: TJvCalcEdit;
    edtBaixa: TJvDateEdit;
    clkID_CONTACORRENTE: TJvDBLookupCombo;
    chkDefineVrlPago: TCheckBox;
    lbl4: TLabel;
    edtVencto: TJvDateEdit;
    dsLkpContaCorrente: TDataSource;
    edtSaldoConta: TJvCalcEdit;
    procedure edtMultaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chkDefineVrlPagoClick(Sender: TObject);
    procedure edtVlrPagoExit(Sender: TObject);
    procedure btnOKEnter(Sender: TObject);
    procedure clkID_CONTACORRENTECloseUp(Sender: TObject);
    procedure clkID_CONTACORRENTEKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormularioBaixa: TfrmFormularioBaixa;

implementation

uses udmacesso;

{$R *.dfm}

procedure TfrmFormularioBaixa.btnOKEnter(Sender: TObject);
begin
  inherited;
  if (chkDefineVrlPago.Checked) then
    if (edtVlrPago.Value < edtValorTitulo.Value) then
      if (edtVencto.Text = '  /  /    ') then begin
        edtVencto.SetFocus;
        ShowMessage('Informe o vencimento da próxima parcela.');
      end;
end;

procedure TfrmFormularioBaixa.chkDefineVrlPagoClick(Sender: TObject);
begin
  inherited;
  if chkDefineVrlPago.Checked then  begin
    edtMulta.Value := 0;
    edtMulta.Enabled := False;
    edtDesconto.Value := 0;
    edtDesconto.Enabled := False;
    edtJuros.Value := 0;
    edtJuros.Enabled := False;
    edtVlrPago.ReadOnly := false;

  end
  else begin
    edtMulta.Enabled := True;
    edtDesconto.Enabled := True;
    edtJuros.Enabled := True;
    edtVlrPago.ReadOnly := True;
    edtVlrPago.Value := edtValorTitulo.Value;
  end;
end;

procedure TfrmFormularioBaixa.clkID_CONTACORRENTECloseUp(Sender: TObject);
begin
  edtSaldoConta.Value := dsLkpContaCorrente.DataSet.FieldByName('SALDO').AsFloat;
end;

procedure TfrmFormularioBaixa.clkID_CONTACORRENTEKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
edtSaldoConta.Value := dsLkpContaCorrente.DataSet.FieldByName('SALDO').AsFloat;
end;

procedure TfrmFormularioBaixa.edtMultaChange(Sender: TObject);
begin
  inherited;
  edtVlrPago.Value :=
   edtValorTitulo.Value + edtMulta.Value + edtJuros.Value - edtDesconto.Value;

end;

procedure TfrmFormularioBaixa.edtVlrPagoExit(Sender: TObject);
begin
  inherited;
  if (edtVlrPago.Value <= 0) then begin
    edtVlrPago.SetFocus;
    raise Exception.Create('Informe o valor pago. Valor não pode ser zero.');
  end;

  if (edtVlrPago.Value < edtValorTitulo.Value) then begin
    edtVencto.Enabled := True;
   // edtVencto.SetFocus;
  end;

end;

procedure TfrmFormularioBaixa.FormShow(Sender: TObject);
begin
  inherited;
//  with QyLkpContas do begin
//    Close;
//    SQL.Clear;
//    SQL.Add('SELECT * FROM ' + DmAcesso.conSiga.Database + '.CONTACORRENTE ');
//    SQL.Add('ORDER BY ' + DmAcesso.conSiga.Database + '.CONTACORRENTE.NOME');
//    Open;

     dsLkpContaCorrente.DataSet.Refresh;
    clkID_CONTACORRENTE.KeyValue := dsLkpContaCorrente.DataSet.FieldByName('ID').AsInteger;
    edtSaldoConta.Value := dsLkpContaCorrente.DataSet.FieldByName('SALDO').AsFloat;

//  end;
end;

end.
