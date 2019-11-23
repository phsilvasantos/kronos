unit UfrmDadosAdicionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  StdCtrls, JvExStdCtrls, JvCombobox, ComCtrls,
  JvgPage, Mask, JvExMask, JvToolEdit, JvBaseEdits, JvMemo, JvExControls,
  JvXPCore, JvXPButtons, ExtCtrls, DB,
pngimage, Buttons, JvComponentBase, JvEnterTab, DBCtrls;

type
  TfrmDadosAdicionais = class(TForm)
    grp1: TGroupBox;
    cbbTIPODOCUMENTO: TJvComboBox;
    lbl1: TLabel;
    cbbFINALIDADE: TJvComboBox;
    lbl2: TLabel;
    cbbTIPOIMPRESSAO: TJvComboBox;
    lbl3: TLabel;
    edtNumeroNFe: TEdit;
    lbl4: TLabel;
    edtdescricaoCFOP: TEdit;
    lbl5: TLabel;
    edtCFOP: TEdit;
    lbl6: TLabel;
    pgcDadosAdicionais: TJvgPageControl;
    ts1: TTabSheet;
    tsECF: TTabSheet;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    edtNumeroECF: TEdit;
    edtNumeroCOO: TEdit;
    cbbModeloECF: TComboBox;
    pgcTransportador: TPageControl;
    tsTransportador: TTabSheet;
    grpIdentificacaoTransportador: TGroupBox;
    lbl7: TLabel;
    edtRazao: TDBEdit;
    lbl8: TLabel;
    edtCNPJ: TDBEdit;
    lbl9: TLabel;
    edtIE: TDBEdit;
    grpEnderecoTransportador: TGroupBox;
    edtEndereco: TDBEdit;
    lbl10: TLabel;
    lbl11: TLabel;
    edtCidade: TDBEdit;
    cbbEstado: TDBComboBox;
    lbl12: TLabel;
    tsVeiculo: TTabSheet;
    edtRNTC: TDBEdit;
    lbl19: TLabel;
    lbl13: TLabel;
    cbbEstadoPlaca: TDBComboBox;
    edtPlaca: TDBEdit;
    lbl14: TLabel;
    tsNotaFiscal: TTabSheet;
    lbl15: TLabel;
    edtChave: TEdit;
    tsVolumes: TTabSheet;
    lbl24: TLabel;
    edtQuantidade: TJvCalcEdit;
    lbl20: TLabel;
    edtNumeracao: TEdit;
    lbl25: TLabel;
    edtClcPBruto: TJvCalcEdit;
    lbl16: TLabel;
    edtClcPLiquido: TJvCalcEdit;
    lbl17: TLabel;
    edtMarca: TEdit;
    lbl18: TLabel;
    edtEspecie: TEdit;
    tsInformacoesAdicionais: TTabSheet;
    mmoDadosAdicionais: TJvMemo;
    pnl1: TPanel;
    btn1: TJvXPButton;
    lbl26: TLabel;
    lbl27: TLabel;
    dtpHora: TDateTimePicker;
    btn2: TJvXPButton;
    btnCFOP: TJvXPButton;
    btnBuscaTransportador: TBitBtn;
    JvEnterAsTab1: TJvEnterAsTab;
    dtpDTSaida: TDateTimePicker;
    dtpDTEmissao: TDateTimePicker;
    tsLocalEntrega: TTabSheet;
    tsLocalRetirada: TTabSheet;
    grpEE: TGroupBox;
    Panel1: TPanel;
    chkLocalEntrega: TCheckBox;
    lbledtEECPFCNPJ: TLabeledEdit;
    lbledtLEEndereco: TLabeledEdit;
    lbledtEEComplemento: TLabeledEdit;
    lbledtEEBairro: TLabeledEdit;
    lbledtEENumero: TLabeledEdit;
    Panel2: TPanel;
    chkLocalRetirada: TCheckBox;
    grpLR: TGroupBox;
    lbledtLRCPFCNPJ: TLabeledEdit;
    lbledtLRENDERECO: TLabeledEdit;
    lbledtLRCOMPLEMENTO: TLabeledEdit;
    lbledtLRBAIRRO: TLabeledEdit;
    lbledtLRNUMERO: TLabeledEdit;
    Label1: TLabel;
    dblkcbbEEID_ESTADO: TDBLookupComboBox;
    Label2: TLabel;
    dblkcbbEEID_MUNICIPIO: TDBLookupComboBox;
    dsEstado: TDataSource;
    dsQyMunicipio: TDataSource;
    Label3: TLabel;
    dblkcbbLRID_ESTADO: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    dblkcbbLRID_MUNICIPIO: TDBLookupComboBox;
    dscdsMunicipioLR: TDataSource;
    dscdsEstadoLR: TDataSource;
    Label6: TLabel;
    edtChaveCTe: TEdit;
    Label7: TLabel;
    dsTransportador: TDataSource;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure edtCFOPExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtdescricaoCFOPExit(Sender: TObject);
    procedure edtNumeroNFeExit(Sender: TObject);
    procedure btnCFOPClick(Sender: TObject);
    procedure edtCNPJExit(Sender: TObject);
    procedure btnBuscaTransportadorClick(Sender: TObject);
    procedure dtpHoraChange(Sender: TObject);
    procedure chkLocalEntregaClick(Sender: TObject);
    procedure lbledtEECPFCNPJExit(Sender: TObject);
    procedure chkLocalRetiradaClick(Sender: TObject);
    procedure lbledtLRCPFCNPJExit(Sender: TObject);
    procedure qyTransportadorAfterInsert(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosAdicionais: TfrmDadosAdicionais;

implementation

uses  udmacesso , {uFrmCadastroContato,} krnVarGlobais, krnConst;

{$R *.dfm}

procedure TfrmDadosAdicionais.btnCFOPClick(Sender: TObject);
begin
  inherited;
// try
//    Application.CreateForm(TfrmCadastroBase,frmCadastroBase);
//    with frmCadastroBase.QyCadastro do
//    begin
//      frmCadastroBase.Caption := 'Cadastro de CFOP';
//      frmCadastroBase.Hint:= 'CFOP';
//
//      frmCadastroBase.edtcodigo.DataField := 'ID';
//      frmCadastroBase.edtNome.DataField := 'DESCRICAO';
//      frmCadastroBase.dbgrdDados.Columns[0].FieldName := 'ID';
//      frmCadastroBase.dbgrdDados.Columns[1].FieldName := 'DESCRICAO';
//      Close;
//      SortedFields := 'DESCRICAO';
//      SQL.Add('SELECT * FROM CFOP');
//      Open;
//      frmCadastroBase.grp2.Height := 86;
//
//
//    end;
//    frmCadastroBase.ShowModal;
//  finally
//    if frmCadastroBase.Tag > 0 then
//    begin
//      edtCFOP.Text          := frmCadastroBase.QyCadastro.FieldByName('ID').AsString;
//      edtdescricaoCFOP.Text := frmCadastroBase.QyCadastro.FieldByName('DESCRICAO').AsString;
//
//    end;
//    FreeAndNil(frmCadastroBase);
//  end;

end;

procedure TfrmDadosAdicionais.chkLocalEntregaClick(Sender: TObject);
begin
  inherited;
  if chkLocalEntrega.Checked then
    grpEE.Enabled := True
  else
    grpEE.Enabled:= False;
end;

procedure TfrmDadosAdicionais.chkLocalRetiradaClick(Sender: TObject);
begin
  inherited;
  if chkLocalRetirada.Checked then
    grpLR.Enabled := True
  else
    grpLR.Enabled:= False;
end;

procedure TfrmDadosAdicionais.BitBtn1Click(Sender: TObject);
begin
  inherited;
//  if qyTransportador.Active then
//    if qyTransportador.RecordCount>0 then
//      qyTransportador.Delete;
end;

procedure TfrmDadosAdicionais.btnBuscaTransportadorClick(Sender: TObject);

begin

//  inherited;
//  try
//    Application.CreateForm(TfrmCadastroContato,frmCadastroContato);
//    frmCadastroContato.Hint:= TB_CONTATO;
//    frmCadastroContato.Tabela:='CONTATO';
//    frmCadastroContato.Caption:='Cadastro de Transportador';
//    frmCadastroContato.ViTipoContato := TIPO_TRANSPORTADORA;
//    frmCadastroContato.ShowModal;
//
//    qyTransportador.Close;
//    qyTransportador.SQL.Clear;
//    qyTransportador.SQL.Add('SELECT * FROM NFE_TRANSPORTE where ID_VENDA =:pID_VENDA');
//    qyTransportador.ParamByName('pID_VENDA').AsInteger := SELF.Tag;
//    qyTransportador.Open;
//  finally
//    if frmCadastroContato.IDResult <> 0 then
//    begin
//      CContato := TContato.Create;
//        CContato.FindByIDContato(frmCadastroContato.IDResult);
//        if CContato.Count > 0 then
//        begin
//          if qyTransportador.IsEmpty then
//            qyTransportador.Insert
//          else
//            qyTransportador.Edit;
//
//         // qyTransportador.FieldByName('ID_VENDA').AsInteger := Self.Tag;
//          qyTransportador.FieldByName('CPFCNPJ').AsString := CContato.DOCUMENTO;
//          qyTransportador.FieldByName('NOME_TRANSPORTADOR').AsString := CContato.NOME;
//          qyTransportador.FieldByName('ENDERECO').AsString := CContato.ENDERECO + ',' + CContato.NUMERO;
//          qyTransportador.FieldByName('INSC_ESTADUAL').AsString := CContato.INSC_ESTADUAL;
//          qyTransportador.FieldByName('NOME_CIDADE').AsString := CContato.Cidade;
//          qyTransportador.FieldByName('UF').AsString := CContato.Estado;
//          qyTransportador.FieldByName('VEIC_UF').AsString := 'NI';
//          qyTransportador.Post;
//        end
//        else
//          raise Exception.Create('Nenhum transporta encontrado com esse CPF/CNPJ');
//      FreeAndNil(CContato);
//    end;
//    FreeAndNil(frmCadastroContato);
//
//  end;
end;

procedure TfrmDadosAdicionais.dtpHoraChange(Sender: TObject);
begin
  inherited;
  dtpDTSaida.Time := dtpHora.Time;
end;

procedure TfrmDadosAdicionais.edtCFOPExit(Sender: TObject);
begin
  inherited;
  if dmAcesso.QyLkpCFOP.Locate('ID',StrToInt(Trim(edtCFOP.Text)),[loCaseInsensitive]) then
  begin
    edtdescricaoCFOP.Text := Copy(dmAcesso.QyLkpCFOP.FieldByName('DESCRICAO').AsString,1,60);
    if Pos('DEVOLU', UpperCase(edtdescricaoCFOP.Text)) > 0 then
      cbbFINALIDADE.ItemIndex := 3
    else
      cbbFINALIDADE.ItemIndex := 0;
  end;

end;

procedure TfrmDadosAdicionais.edtCNPJExit(Sender: TObject);
//var
//  CContato : TContato;
begin
  inherited;
//  CContato := TContato.Create;
//
//  if edtCNPJ.Text <> '' then
//  begin
//    CContato.FindByDocumentoTransportador(edtCNPJ.Text);
//    if CContato.Count > 0 then
//    begin
//      qyTransportador.FieldByName('CPFCNPJ').AsString := CContato.DOCUMENTO;
//      qyTransportador.FieldByName('NOME_TRANSPORTADOR').AsString := CContato.NOME;
//      qyTransportador.FieldByName('ENDERECO').AsString := CContato.ENDERECO + ',' + CContato.NUMERO;
//      qyTransportador.FieldByName('INSC_ESTADUAL').AsString := CContato.INSC_ESTADUAL;
//      qyTransportador.FieldByName('NOME_CIDADE').AsString := CContato.Cidade;
//      qyTransportador.FieldByName('UF').AsString := CContato.Estado;
//      qyTransportador.FieldByName('VEIC_UF').AsString := 'NI';
//    end
//    else
//      raise Exception.Create('Nenhum transporta encontrado com esse CPF/CNPJ');
//  end
//  else
//  begin
//    edtRazao.Clear;
//    edtEndereco.Clear;
//    edtIE.Clear;
//    edtCidade.Clear;
//  end;
//  FreeAndNil(CContato);
end;

procedure TfrmDadosAdicionais.edtdescricaoCFOPExit(Sender: TObject);
begin
  inherited;
  if Trim(edtdescricaoCFOP.Text) = '' then
  begin
    Application.MessageBox('Informe a natureza da operação.',NOME_SISTEMA,64);
    edtdescricaoCFOp.SetFocus;
    Exit;
  end;
end;

procedure TfrmDadosAdicionais.edtNumeroNFeExit(Sender: TObject);
begin
  inherited;
  if Trim(edtNumeroNFe.Text) = '' then
  begin
    Application.MessageBox('Informe o número da NF-e.',NOME_SISTEMA,64);
    edtNumeroNFe.SetFocus;
    Exit;
  end;
end;

procedure TfrmDadosAdicionais.FormCreate(Sender: TObject);
begin
 // inherited;

end;

procedure TfrmDadosAdicionais.FormShow(Sender: TObject);
begin
  inherited;
  dtpHora.Time := Now;
  dtpDTSaida.DateTime := Now;
  dtpDTEmissao.DateTime := Now;
  pgcDadosAdicionais.ActivePage := tsInformacoesAdicionais;
  pgcTransportador.ActivePage := tsTransportador;

//  with cdsEstado do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add(xESTADO);
//    Open;
//  end;
//
//  with cdsMunicipio do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add(xMUNICIPIO);
//    Open;
//  end;
//
//
//  with cdsEstadoLR do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add(xESTADO);
//    Open;
//  end;
//
//  with cdsMunicipioLR do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add(xMUNICIPIO);
//    Open;
//  end;
//
//  if Self.Tag > 0 then
//  begin
//    with qyTransportador do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT * FROM NFE_TRANSPORTE WHERE ID_VENDA =:pID_VENDA');
//      ParamByName('pID_VENDA').AsInteger := Self.Tag;
//      Open;
//      if IsEmpty then
//        Insert
//      else
//        Edit;
//    end;
//  end;


end;

procedure TfrmDadosAdicionais.lbledtEECPFCNPJExit(Sender: TObject);
begin
  inherited;
//  if Trim((Sender as TLabeledEdit).Text) <> '' then
//  begin
//    with QyAux do
//    begin
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT C.NOME, C.DOCUMENTO, E.* FROM ENDERECO_CONTATO E ');
//      SQL.Add('INNER JOIN CONTATO C ON C.ID = E.ID_CONTATO ');
//      SQL.Add('WHERE E.TIPO_ENDERECO = 1 ');
//      SQL.Add('AND C.DOCUMENTO =:pDoc');
//      ParamByName('pDoc').AsString :=Trim((Sender as TLabeledEdit).Text);
//      Open;
//      if not IsEmpty then begin
//         (Sender as TLabeledEdit).Text := FieldByName('DOCUMENTO').AsString;
//         lbledtLEEndereco.Text := FieldByName('ENDERECO').AsString;
//         lbledtEENumero.Text := FieldByName('NUMERO').AsString;
//         lbledtEEComplemento.Text := FieldByName('COMPLEMENTO').AsString;
//         lbledtEEBairro.Text := FieldByName('BAIRRO').AsString;
//         dblkcbbEEID_ESTADO.KeyValue := FieldByName('ID_ESTADO').AsInteger;
//         dblkcbbEEID_MUNICIPIO.KeyValue := FieldByName('ID_MUNICIPIO').AsInteger;
//      end;
//    end;
//  end;
end;

procedure TfrmDadosAdicionais.lbledtLRCPFCNPJExit(Sender: TObject);
begin
  inherited;
//  if Trim((Sender as TLabeledEdit).Text) <> '' then begin
//    with QyAux do begin
//      Close;
//      SQL.Clear;
//      SQL.Add('SELECT C.NOME, C.DOCUMENTO, E.* FROM ENDERECO_CONTATO E ');
//      SQL.Add('INNER JOIN CONTATO C ON C.ID = E.ID_CONTATO ');
//      SQL.Add('WHERE E.TIPO_ENDERECO = 2 ');
//      SQL.Add('AND C.DOCUMENTO =:pDoc');
//      ParamByName('pDoc').AsString :=Trim((Sender as TLabeledEdit).Text);
//      Open;
//      if not IsEmpty then begin
//         (Sender as TLabeledEdit).Text := FieldByName('DOCUMENTO').AsString;
//         lbledtLRENDERECO.Text := FieldByName('ENDERECO').AsString;
//         lbledtLRNumero.Text := FieldByName('NUMERO').AsString;
//         lbledtLRComplemento.Text := FieldByName('COMPLEMENTO').AsString;
//         lbledtLRBairro.Text := FieldByName('BAIRRO').AsString;
//         dblkcbbLRID_ESTADO.KeyValue := FieldByName('ID_ESTADO').AsInteger;
//         dblkcbbLRID_MUNICIPIO.KeyValue := FieldByName('ID_MUNICIPIO').AsInteger;
//      end;
//      Close;
//    end;
//  end;
end;

procedure TfrmDadosAdicionais.qyTransportadorAfterInsert(DataSet: TDataSet);
begin
  inherited;
//  DataSet.FieldByName('ID_VENDA').AsInteger := self.Tag;
//  DataSet.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
end;

end.
