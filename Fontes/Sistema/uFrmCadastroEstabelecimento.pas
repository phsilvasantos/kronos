unit uFrmCadastroEstabelecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, JvComponentBase,
  JvEnterTab, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, JvDBImage, Vcl.Grids,
  Vcl.DBGrids, httpsend, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroEstabelecimento = class(TFrmCadastro)
    lbl2: TLabel;
    edtNOME: TDBEdit;
    lbl3: TLabel;
    dbedtFANTASIA: TDBEdit;
    lbl4: TLabel;
    dbedtENDERECO: TDBEdit;
    lbl5: TLabel;
    dbedtNUMERO: TDBEdit;
    dbedtCEP: TDBEdit;
    lbl8: TLabel;
    dbedtCOMPLEMENTO: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    dbedtBAIRRO: TDBEdit;
    dblkcbbID_ESTADO: TDBLookupComboBox;
    dblkcbbID_MUNICIPIO: TDBLookupComboBox;
    lbl10: TLabel;
    lbl9: TLabel;
    lbl11: TLabel;
    dbedtTELEFONE: TDBEdit;
    dbedtCELULAR: TDBEdit;
    lbl13: TLabel;
    dbedtFAX: TDBEdit;
    lbl12: TLabel;
    lbl14: TLabel;
    dbedtEMAIL: TDBEdit;
    lbl23: TLabel;
    tsDocumentos: TTabSheet;
    tsCobranca: TTabSheet;
    tsLogoMarca: TTabSheet;
    lbl16: TLabel;
    edtDOCUMENTO: TDBEdit;
    edtINSC_ESTADUAL: TDBEdit;
    lbl17: TLabel;
    lbl19: TLabel;
    edtINSC_ESTADUAL_ST: TDBEdit;
    edtINSC_MUNICIPAL: TDBEdit;
    lbl20: TLabel;
    lbl21: TLabel;
    edtINSC_SUFRAMA: TDBEdit;
    edtCNAE: TDBEdit;
    lbl22: TLabel;
    dbgrdCobrancas: TDBGrid;
    pnlOpcoesCobranca: TPanel;
    btnListarCobranca: TBitBtn;
    dbimgFOTO: TJvDBImage;
    Panel2: TPanel;
    btnRemoverFoto: TBitBtn;
    btnAdicionarFoto: TBitBtn;
    dlgOpen1: TOpenDialog;
    QyMemCobranca: TFDMemTable;
    QyMemCobrancaVENCTO: TDateField;
    QyMemCobrancaDTBAIXA: TDateField;
    QyMemCobrancaVLR_TITULO: TCurrencyField;
    QyMemCobrancaVLR_PAGO: TCurrencyField;
    QyMemCobrancaSITUACAO: TStringField;
    dsQyMemCobranca: TDataSource;
    procedure btnAdicionarFotoClick(Sender: TObject);
    procedure btnRemoverFotoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnListarCobrancaClick(Sender: TObject);
    procedure QyMemCobrancaSITUACAOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgrdCobrancasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroEstabelecimento: TFrmCadastroEstabelecimento;

implementation

uses
  krnVarGlobais;

{$R *.dfm}

procedure TFrmCadastroEstabelecimento.btnAdicionarFotoClick(Sender: TObject);
var
  JPG : TFileStream;
begin
  inherited;
  if dlgOpen1.Execute then
  begin
    try
      JPG := TFileStream.Create(dlgOpen1.FileName, fmOpenRead);
      TBlobField(dsCadastro.DataSet.FieldByName('LOGOMARCA')).LoadFromStream(JPG);
    finally
      FreeAndNil(jpg);
    end;
  end;
end;

procedure TFrmCadastroEstabelecimento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.Cancel;
  Close;
end;

procedure TFrmCadastroEstabelecimento.btnGravarClick(Sender: TObject);
begin
  inherited;
  try
    dsCadastro.DataSet.Post;
    Close;
  except on E: Exception do
  end;
end;

procedure TFrmCadastroEstabelecimento.btnListarCobrancaClick(Sender: TObject);
var
  http : THTTPSend;
  vs, aux : string;
  valor : string;
  sl : TStringList;
  jsonObj,jSubObj : TJSONObject;
    ja: TJSONArray;
  jv: TJSONValue;
  jp: TJSONPair;
  i : integer;
begin
  inherited;

  try
    if QyMemCobranca.RecordCount > 0 then
    begin
      QyMemCobranca.Close;
      QyMemCobranca.Open;

    end;
    vs:= 'http://plugsystem.natal.br/cobrancacliente.php?cnpj=' + CNPJEstabelecimento;
    http := THTTPSend.Create;
    sl:= TStringList.Create;
    http.Clear;

    if not http.HTTPMethod('GET',vs) then
      raise Exception.Create('Error ao obter dados de cobrança.');

    sl.LoadFromStream(http.Document);
//    sl.SaveToFile('c:\kronos\cob.txt');
    if sl.Count>0 then
    begin
      jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(trim(sl.Text)), 0) as TJSONObject;
      jv := jsonObj.Get('TITULOS').JsonValue;
      ja := jv as TJSONArray;

      for i := 0 to ja.Size - 1 do
      begin
        jSubObj := (ja.Get(i) as TJSONObject);


        QyMemCobranca.Insert;
        jv := jSubObj.Get(1).JsonValue; //vencimento
        QyMemCobrancaVENCTO.AsDateTime := StrToDate( Copy( StringReplace( Copy(jv.Value,1,10),'-','/',[rfReplaceAll]),9,2) +'/'+
        Copy( StringReplace( Copy(jv.Value,1,10),'-','/',[rfReplaceAll]),6,2) + '/' +
        Copy( StringReplace( Copy(jv.Value,1,10),'-','/',[rfReplaceAll]),1,4)
        );

        jv := jSubObj.Get(2).JsonValue; //data baixa
        if jv.Value <> 'null' then
          QyMemCobrancaDTBAIXA.AsDateTime :=
          StrToDate( Copy( StringReplace( Copy(jv.Value,1,10),'-','/',[rfReplaceAll]),9,2) +'/'+
        Copy( StringReplace( Copy(jv.Value,1,10),'-','/',[rfReplaceAll]),6,2) + '/' +
        Copy( StringReplace( Copy(jv.Value,1,10),'-','/',[rfReplaceAll]),1,4)
        );

        jv := jSubObj.Get(0).JsonValue;
        QyMemCobrancaVLR_TITULO.AsFloat := StrToFloat(StringReplace(jv.Value,'.',',',[rfReplaceAll]));

        jv := jSubObj.Get(3).JsonValue;
        QyMemCobrancaSITUACAO.AsString := jv.Value;

        if QyMemCobrancaSITUACAO.AsString = 'BX' then
          QyMemCobrancaVLR_PAGO.AsFloat := QyMemCobrancaVLR_TITULO.AsFloat
        else
          QyMemCobrancaVLR_PAGO.AsFloat :=0;


        QyMemCobranca.Post;

      end;
    end;

  finally
    freeandnil(http);
    freeandnil(sl);
  end;
end;


{
var
  jsonObj, jSubObj: TJSONObject;
  ja: TJSONArray;
  jv: TJSONValue;
  i: Integer;
begin
  jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(Memo1.Text), 0) as TJSONObject;

  jv := jsonObj.Get('ATIVIDADES_SECUNDARIAS').JsonValue;
  ja := jv as TJSONArray;

  ListBox1.Clear;

  for i := 0 to ja.Size - 1 do
  begin
    jSubObj := (ja.Get(i) as TJSONObject);
    jv := jSubObj.Get(0).JsonValue;
    ListBox1.Items.Add(jv.Value);
  end;
end;
}
procedure TFrmCadastroEstabelecimento.btnRemoverFotoClick(Sender: TObject);
begin
  inherited;
  TBlobField(dsCadastro.DataSet.FieldByName('LOGOMARCA')).Clear;
end;

procedure TFrmCadastroEstabelecimento.dbgrdCobrancasDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if QyMemCobranca.Active then
  begin
    if (QyMemCobranca.FieldByName('VENCTO').AsDateTime < date) and ((QyMemCobranca.FieldByName('SITUACAO').AsString = 'AB'))then
    begin
      if (dbgrdCobrancas.columns[datacol].field is  TMemoField) then
      begin
        dbgrdCobrancas.Canvas.Font.Color:= clWhite;
        dbgrdCobrancas.Canvas.Brush.Color:= clRed;
      end
      ELSE
      begin
        dbgrdCobrancas.Canvas.Font.Color:= clWhite;
        dbgrdCobrancas.Canvas.Brush.Color:= clRed;
      end;
    end
    else
    if (QyMemCobranca.FieldByName('SITUACAO').AsString = 'BX') OR (QyMemCobranca.FieldByName('SITUACAO').AsString = 'LQ') then
    begin
      if (dbgrdCobrancas.columns[datacol].field is  TMemoField) then
      begin
        dbgrdCobrancas.Canvas.Font.Color:= clWhite;
        dbgrdCobrancas.Canvas.Brush.Color:= clGreen;
      end
      ELSE
      begin
        dbgrdCobrancas.Canvas.Font.Color:= clWhite;
        dbgrdCobrancas.Canvas.Brush.Color:= clGreen;
      end;
    end;

    if (dbgrdCobrancas.columns[datacol].field is  TMemoField) then
    else
      dbgrdCobrancas.DefaultDrawDataCell(Rect, dbgrdCobrancas.columns[datacol].field, State);
  end;
end;

procedure TFrmCadastroEstabelecimento.QyMemCobrancaSITUACAOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString = 'AB' then
    Text := 'Aberto'
  else
  if Sender.AsString = 'BX' then
    Text := 'Pago'
  else
    text := '';
end;

end.
