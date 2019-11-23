unit uFrmMetasVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvCaptionPanel, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, Vcl.StdCtrls, JvExControls, JvDBLookup, JvExComCtrls,
  JvDateTimePicker, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Vcl.ComCtrls, JvExStdCtrls, JvCombobox,
  JvDBCombobox, ACBrUtil, pcnAuxiliar, funcoes, krnVarGlobais, JvCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client , urptRelatorio;

type
  TFrmMetasVenda = class(TForm)
    JvCaptionPanel1: TJvCaptionPanel;
    JvCaptionPanel2: TJvCaptionPanel;
    dbgrd1: TJvDBGrid;
    cblkVendedor: TJvDBLookupCombo;
    lblVendedor: TLabel;
    cbMes: TJvDBComboBox;
    cbAno: TJvDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    dsVendedores: TDataSource;
    chkTodosVendedores: TJvCheckBox;
    btnConsultar: TButton;
    QyMetas: TFDQuery;
    dsMetas: TDataSource;
    QyMetasNOME: TStringField;
    QyMetasVALOR_META: TBCDField;
    QyMetasTOTAL_VENDA: TFMTBCDField;
    QyMetasMESANO: TStringField;
    btnImprimir: TButton;
    QyMetasSITUACAO_META: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMetasVenda: TFrmMetasVenda;

implementation

uses
  udmAcesso;

{$R *.dfm}

procedure TFrmMetasVenda.btnConsultarClick(Sender: TObject);
begin
  with QyMetas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT U.NOME, SUM(V.TOTAL) AS TOTAL_VENDA, ');
    SQL.Add('case ');
    SQL.Add('when VM.VALOR_META = 0 then ');
    SQL.Add('"Nao atingida" ');
    SQL.Add('when VM.VALOR_META<=SUM(TOTAL) then ');
    SQL.Add('"ATINGIDA" ');
    SQL.Add('else ');
    SQL.Add('"Nao atingida" end as SITUACAO_META, ');
    SQL.Add('CONCAT(LPAD(MONTH(V.EMISSAO),2,"00"),"/",YEAR(V.EMISSAO)) AS MESANO,');
    SQL.Add('COALESCE(VM.VALOR_META,0) AS VALOR_META ');
    SQL.Add('FROM USUARIO U ');
    SQL.Add('INNER JOIN VENDA V ON V.ID_USUARIO=U.ID ');
    SQL.Add('LEFT JOIN VENDEDOR_META VM ON VM.ID_VENDEDOR=U.ID AND VM.MES=:pMES AND VM.ANO=:pANO ');
    SQL.Add('WHERE U.VENDEDOR=1 AND U.BLOQUEADO = 0 ');
    SQL.Add('AND V.TIPO IN ("V","K","N","F") ');
    SQL.Add('AND YEAR(V.EMISSAO) = :pANO ');
    SQL.Add('AND MONTH(V.EMISSAO) = :pMES ');
    SQL.Add('AND V.ID_FILIAL = :pFILIAL  AND U.GERENTE=0 AND V.BLOQUEADO=0 ');
    ParamByName('pFILIAL').AsInteger := Estabelecimento;

    if not chkTodosVendedores.Checked then
    begin
      SQL.Add(' and V.ID_USUARIO=:pUSUARIO');
      ParamByName('pUSUARIO').AsInteger := cblkVendedor.KeyValue;
    end;
    ParamByName('pANO').AsInteger :=  StrToInt(cbAno.Items[cbAno.ItemIndex]);
    ParamByName('pMES').AsInteger :=  cbMes.ItemIndex+1;

    SQL.Add('GROUP BY U.NOME ');
    Open();
  end;

end;

procedure TFrmMetasVenda.btnImprimirClick(Sender: TObject);
begin
  try
    Application.CreateForm(TrptRelatorio,rptRelatorio);
    //montando o SQL
    with rptRelatorio.QyAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT DISTINCT U.NOME, SUM(V.TOTAL) AS TOTAL_VENDA, ');
      SQL.Add('case ');
      SQL.Add('when VM.VALOR_META = 0 then ');
      SQL.Add('"Nao atingida" ');
      SQL.Add('when VM.VALOR_META<=SUM(TOTAL) then ');
      SQL.Add('"ATINGIDA" ');
      SQL.Add('else ');
      SQL.Add('"Nao atingida" end as SITUACAO_META, ');
      SQL.Add('CONCAT(LPAD(MONTH(V.EMISSAO),2,"00"),"/",YEAR(V.EMISSAO)) AS MESANO,');
      SQL.Add('COALESCE(VM.VALOR_META,0) AS VALOR_META ');
      SQL.Add('FROM USUARIO U ');
      SQL.Add('INNER JOIN VENDA V ON V.ID_USUARIO=U.ID ');
      SQL.Add('LEFT JOIN VENDEDOR_META VM ON VM.ID_VENDEDOR=U.ID AND VM.MES=:pMES AND VM.ANO=:pANO ');
      SQL.Add('WHERE U.VENDEDOR=1 AND U.BLOQUEADO = 0 ');
      SQL.Add('AND V.TIPO IN ("V","K","N","F") ');
      SQL.Add('AND YEAR(V.EMISSAO) = :pANO ');
      SQL.Add('AND MONTH(V.EMISSAO) = :pMES ');
      SQL.Add('AND V.ID_FILIAL = :pFILIAL  AND U.GERENTE=0 AND V.BLOQUEADO=0 ');
      ParamByName('pFILIAL').AsInteger := Estabelecimento;

      if not chkTodosVendedores.Checked then
      begin
        SQL.Add(' and V.ID_USUARIO=:pUSUARIO');
        ParamByName('pUSUARIO').AsInteger := cblkVendedor.KeyValue;
      end;
      ParamByName('pANO').AsInteger :=  StrToInt(cbAno.Items[cbAno.ItemIndex]);
      ParamByName('pMES').AsInteger :=  cbMes.ItemIndex+1;

      SQL.Add('GROUP BY U.NOME ');
      Open();
    end;

    //criando o relatorio
    with rptRelatorio do
    begin
      criaComponente(8,3,'Nome Vendedor','NOME');
      criaComponente(250,3,'Meta Vend.','VALOR_META',raEsquerda,asSim,0,fsMascara(2));
      criaComponente(400,3,'Total Venda','TOTAL_VENDA',raEsquerda,asSim,0,fsMascara(2));
      criaComponente(550,3,'Ref.','MESANO',raEsquerda,asSim);
      criaComponente(600,3,'Sit. Meta','SITUACAO_META',raEsquerda,asSim);

      rlblParametros.Caption := '';
      rlblTitulo.Caption := 'Metas de vendas';
      RLReport1.Preview;
    end;
  finally
    FreeAndNil(rptRelatorio);
  end;
end;

procedure TFrmMetasVenda.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Assigned(dsMetas.DataSet.FindField('SITUACAO_META')) then
  begin
    if (Column.Field.FieldName = 'SITUACAO_META') then
    begin

      if dsMetas.DataSet.FieldByName('SITUACAO_META').AsString = 'Nao atingida' then
      begin
        dbgrd1.Canvas.Font.Color := clRed;
        dbgrd1.Canvas.FillRect(Rect);//pinta a célula
        dbgrd1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end
      else
      if dsMetas.DataSet.FieldByName('SITUACAO_META').AsString = 'ATINGIDA' then
      begin
        dbgrd1.Canvas.Font.Color := clBlue;
        dbgrd1.Canvas.FillRect(Rect);//pinta a célula
        dbgrd1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
      end;

    end;
  end;

end;

procedure TFrmMetasVenda.FormShow(Sender: TObject);
var
  I: Integer;
begin
  cbAno.Clear;
  for I := 10  downto 1 do
   cbAno.Items.Add(IntToStr( CurrentYear-i));

  for I := 0 to 9 do
    cbAno.Items.Add(IntToStr(CurrentYear+i));

 cbAno.ItemIndex:= cbAno.Items.IndexOf(IntToStr(CurrentYear));
 cbMes.ItemIndex := CurrentMonth-1;

 cblkVendedor.KeyValue :=  UsuarioLogado;

end;

end.
