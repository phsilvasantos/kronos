unit uFrmTabelaAux;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmTabelaAux = class(TForm)
    pnlFields: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    btnOK: TBitBtn;
    btnCancelar: TBitBtn;
    edtNOME: TDBEdit;
    edtCODIGO: TDBEdit;
    lbl1: TLabel;
    lblCodigo: TLabel;
    dbgrd1: TJvDBGrid;
    dsConsulta: TDataSource;
    QyConsulta: TFDQuery;
    btnSalvar: TBitBtn;
    btnCancelarUpd: TBitBtn;
    btnNovo: TBitBtn;
    pnl4: TPanel;
    edtValor: TLabeledEdit;
    btnFiltrar: TBitBtn;
    btnEdit: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarUpdClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure QyConsultaAfterScroll(DataSet: TDataSet);
    procedure btnFiltrarClick(Sender: TObject);
    procedure QyConsultaAfterPost(DataSet: TDataSet);
    procedure btnEditClick(Sender: TObject);
  private
    procedure Filtro(const aValor: string = '');
  public
    rvResult : Variant;
    vrFieldResult : string;
    vFiltro: string;

 end;

var
  FrmTabelaAux: TFrmTabelaAux;

implementation

uses
  udmAcesso, krnVarGlobais;

{$R *.dfm}

procedure TFrmTabelaAux.btnEditClick(Sender: TObject);
begin
  pnlFields.Visible:=true;
  QyConsulta.Edit;
  edtNOME.SetFocus;
end;

procedure TFrmTabelaAux.btnFiltrarClick(Sender: TObject);
var
  sql: string;
begin
  if edtValor.Text<> '' then
  begin
    if vrFieldResult<> '' then
    begin
      sql := sql + ' where ' + vrFieldResult + ' LIKE ' + QuotedStr('%'+edtValor.Text+'%') ;
      sql := sql + ' OR NOME LIKE ' + QuotedStr('%'+edtValor.Text+'%') ;
    end
    else
    begin
      sql := sql + ' where NOME LIKE ' + QuotedStr('%'+edtValor.Text+'%') ;
    end;
    Filtro(sql);
  end
  else
    Filtro;
end;

procedure TFrmTabelaAux.btnNovoClick(Sender: TObject);
begin
  pnlFields.Visible:=true;
  QyConsulta.Insert;
  edtNOME.SetFocus;

  if QyConsulta.FindField('ID_FILIAL') <> nil then
    QyConsulta.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;

  if QyConsulta.FindField('BLOQUEADO') <> nil then
    QyConsulta.FieldByName('BLOQUEADO').AsInteger := 0;


end;

procedure TFrmTabelaAux.btnCancelarUpdClick(Sender: TObject);
begin
  pnlFields.Visible:=False;
  QyConsulta.Cancel;
end;

procedure TFrmTabelaAux.btnSalvarClick(Sender: TObject);
begin
  try
    if Trim( edtNOME.Text) = '' then
      raise Exception.Create('Informe o nome.');

    if edtCODIGO.Visible then
      if Trim(edtCODIGO.Text) = '' then
        raise Exception.Create('Informe o código.');


    QyConsulta.Post;
    pnlFields.Visible:= False;
  except on E: Exception do
  begin
    ShowMessage(E.Message);
  end;
  end;
end;

procedure TFrmTabelaAux.Filtro(const aValor: string);
begin
  with QyConsulta do
  begin
    Close;
    SQL.Clear;
    sql.Add('SELECT * FROM ' + Self.Hint);
    if aValor<> '' then
      SQL.Add(aValor);

    SQL.Add('LIMIT 20');
    open;
  end;
end;

procedure TFrmTabelaAux.FormShow(Sender: TObject);
begin
  Filtro;

  if vrFieldResult<> '' then
  begin
    edtCODIGO.Visible:=True;
    lblCodigo.Visible:=True;
    edtCODIGO.DataField :=vrFieldResult;
    dbgrd1.Columns[1].Visible:=True;
    dbgrd1.Columns[1].Width:=70;
    dbgrd1.Columns[1].FieldName := vrFieldResult;
  end;


end;

procedure TFrmTabelaAux.QyConsultaAfterPost(DataSet: TDataSet);
begin
  self.Tag := DataSet.FieldByName('ID').AsInteger;
end;

procedure TFrmTabelaAux.QyConsultaAfterScroll(DataSet: TDataSet);
begin
  if vrFieldResult<> '' then
    rvResult := QyConsulta.FieldByName(vrFieldResult).AsVariant;
  self.Tag := QyConsulta.FieldByName('ID').AsInteger;
end;

end.
