unit uFrmCadastroFormapagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, JvComponentBase,
  JvEnterTab, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvCaptionPanel,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroFormapagamento = class(TFrmCadastro)
    pnl2: TPanel;
    JvCaptionPanel1: TJvCaptionPanel;
    pnl3: TPanel;
    lbl2: TLabel;
    edtNOME: TDBEdit;
    cbbTIPO_PAGAMENTO: TJvDBComboBox;
    lbl3: TLabel;
    lbl5: TLabel;
    cbbCARTAO: TJvDBComboBox;
    lbl7: TLabel;
    cbbNOTACREDITO: TJvDBComboBox;
    cbbaVISTA: TJvDBComboBox;
    lblaVISTA: TLabel;
    lbl6: TLabel;
    edtTAXA_CARTAO: TJvDBCalcEdit;
    dbedtNUMERO_PARCELA: TDBEdit;
    lbl4: TLabel;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    dbgrd1: TJvDBGrid;
    QyParcelas: TFDQuery;
    dsParcelas: TDataSource;
    QyParcelasID_FILIAL: TIntegerField;
    QyParcelasID: TFDAutoIncField;
    QyParcelasID_FORMAPAGAMENTO: TIntegerField;
    QyParcelasORDEM: TIntegerField;
    QyParcelasINTERVALO: TIntegerField;
    QyParcelasTIPO_INTERVALO: TStringField;
    QyParcelasTAXA_JUROS: TBCDField;
    QyParcelasTAXA_ADMINISTRATIVA: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure QyParcelasBeforeInsert(DataSet: TDataSet);
    procedure QyParcelasAfterInsert(DataSet: TDataSet);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private
    procedure LimparCache(Sender : TObject);
  public
    { Public declarations }
  end;

var
  FrmCadastroFormapagamento: TFrmCadastroFormapagamento;

implementation

uses
  udmAcesso, Funcoes, krnVarGlobais, krnConst;

{$R *.dfm}

procedure TFrmCadastroFormapagamento.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  QyParcelas.Insert;
  QyParcelas.Post;
end;

procedure TFrmCadastroFormapagamento.btnGravarClick(Sender: TObject);
begin
  inherited;
  try
    dmAcesso.FDSchemaAdapter1.ApplyUpdates(0);
    dmAcesso.cdsCadastro.CachedUpdates := false;
    Close;
  except on E: Exception do
    AlertaError(PChar(E.Message));
  end;
end;

procedure TFrmCadastroFormapagamento.btnRemoverClick(Sender: TObject);
begin
  inherited;
  if Perguntar('Deseja realmente remover o registro?') = IDYES then
    QyParcelas.Delete;
end;

procedure TFrmCadastroFormapagamento.FormCreate(Sender: TObject);
begin
  inherited;
  dmAcesso.cdsCadastro.CachedUpdates := True;
  dmAcesso.FDSchemaAdapter1.AfterApplyUpdate := LimparCache;
end;

procedure TFrmCadastroFormapagamento.LimparCache(Sender: TObject);
begin
  dmAcesso.cdsCadastro.CommitUpdates;
  QyParcelas.CommitUpdates;
end;

procedure TFrmCadastroFormapagamento.QyParcelasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
  DataSet.FieldByName('ORDEM').AsInteger := DataSet.RecordCount+1;
  DataSet.FieldByName('TIPO_INTERVALO').AsString := 'DIA';
  DataSet.FieldByName('INTERVALO').AsInteger := 30;
  DataSet.FieldByName('TAXA_JUROS').AsFloat := 0;
  DataSet.FieldByName('TAXA_ADMINISTRATIVA').AsFloat := 0;

end;

procedure TFrmCadastroFormapagamento.QyParcelasBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if DataSet.RecordCount = dsCadastro.DataSet.FieldByName('NUMERO_PARCELA').AsInteger then
    Abort;
end;

end.
