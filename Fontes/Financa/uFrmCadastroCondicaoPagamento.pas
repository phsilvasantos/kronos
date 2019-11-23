unit uFrmCadastroCondicaoPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, JvComponentBase,
  JvEnterTab, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.Mask,
  Vcl.DBCtrls, JvExExtCtrls, JvExtComponent, JvCaptionPanel, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvExControls, JvDBLookup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroCondicaoPagamento = class(TFrmCadastro)
    pnl2: TPanel;
    cbTIPO_PAGAMENTO: TJvDBComboBox;
    lbl3: TLabel;
    lbl2: TLabel;
    edtNOME: TDBEdit;
    JvCaptionPanel1: TJvCaptionPanel;
    pnl3: TPanel;
    dbgrd1: TJvDBGrid;
    btnAddGrupoContao: TBitBtn;
    btnRemoverGrupocontato: TBitBtn;
    clkFormasPagamentos: TJvDBLookupCombo;
    lbl7: TLabel;
    dsFormas: TDataSource;
    QyFormas: TFDQuery;
    dsListaFormas: TDataSource;
    QyFormasID_FILIAL: TIntegerField;
    QyFormasID: TFDAutoIncField;
    QyFormasID_CONDICAOPAGAMENTO: TIntegerField;
    QyFormasID_FORMAPAGAMENTO: TIntegerField;
    QyFormasNOME: TStringField;
    procedure btnAddGrupoContaoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnRemoverGrupocontatoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure LimparCache(Sender : TObject);
  public
    { Public declarations }
  end;

var
  FrmCadastroCondicaoPagamento: TFrmCadastroCondicaoPagamento;

implementation

uses
  udmAcesso, Funcoes, krnVarGlobais, krnConst;

{$R *.dfm}

procedure TFrmCadastroCondicaoPagamento.btnAddGrupoContaoClick(Sender: TObject);
begin
  inherited;
  if dsCadastro.DataSet.State IN [dsInsert] then
    dsCadastro.DataSet.Post;

  if clkFormasPagamentos.KeyValue <> null then
  begin
    if QyFormas.Locate('ID_FORMAPAGAMENTO', clkFormasPagamentos.KeyValue, [loCaseInsensitive]) then
    begin
      AlertaError('Forma de pagamento já adicionada.');
    end
    else
    begin
      QyFormas.Insert;
      QyFormasID_FILIAL.AsInteger := Estabelecimento;
      QyFormasID_FORMAPAGAMENTO.AsInteger := clkFormasPagamentos.KeyValue;
      QyFormas.Post;
    end;
  end;
end;

procedure TFrmCadastroCondicaoPagamento.btnGravarClick(Sender: TObject);
begin
  inherited;
  if Trim(edtNOME.Text) = '' then
  begin
    AlertaError('Informe a nome.');
    edtNOME.SetFocus;
    Exit;
  end;

  if QyFormas.RecordCount <=0 then
  begin
    AlertaInfo('Adicione uma forma de pagamento.');
    Exit;
  end;

  try
    dmAcesso.FDSchemaAdapter1.ApplyUpdates(0);
    dmAcesso.cdsCadastro.CachedUpdates := false;
    Close;
  except on E: Exception do
    AlertaError(PChar(E.Message));
  end;
end;

procedure TFrmCadastroCondicaoPagamento.btnRemoverGrupocontatoClick(
  Sender: TObject);
begin
  inherited;
  if QyFormas.RecordCount > 0 then
    if MessageBox(Handle, 'Deseja realmente remover o registro?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then
      QyFormas.Delete;
end;

procedure TFrmCadastroCondicaoPagamento.FormCreate(Sender: TObject);
begin
  inherited;
  dmAcesso.cdsCadastro.CachedUpdates := True;
  dmAcesso.FDSchemaAdapter1.AfterApplyUpdate := LimparCache;
end;

procedure TFrmCadastroCondicaoPagamento.LimparCache(Sender: TObject);
begin
  dmAcesso.cdsCadastro.CommitUpdates;
  QyFormas.CommitUpdates;
end;

end.
