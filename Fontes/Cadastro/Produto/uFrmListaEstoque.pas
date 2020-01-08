unit uFrmListaEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmLista, Data.DB, Vcl.Menus,
  JvComponentBase, JvEnterTab, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, JvExButtons, JvBitBtn, JvExControls,
  JvDBLookup, JvMarkupLabel;

type
  TFrmListaEstoque = class(TFrmLista)
    clkFilial: TJvDBLookupCombo;
    dsFiliais: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure clkFilialCloseUp(Sender: TObject);
    procedure clkFilialKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrdConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmListaEstoque: TFrmListaEstoque;

implementation

uses
  udmAcesso, krnVarGlobais;

{$R *.dfm}

procedure TFrmListaEstoque.clkFilialCloseUp(Sender: TObject);
begin
  inherited;
  JvBitBtn5.Click;
end;

procedure TFrmListaEstoque.clkFilialKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  JvBitBtn5.Click;
end;

procedure TFrmListaEstoque.dbgrdConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if Assigned(dsConsulta.DataSet.FindField('ESTOQUE_QTD')) then
  begin
    if (Column.Field.FieldName = 'ESTOQUE_QTD') then
    begin

      if dsConsulta.DataSet.FieldByName('ESTOQUE_QTD').AsFloat <=0 then
      begin
        dbgrdConsulta.Canvas.Font.Color := clRed;
        dbgrdConsulta.Canvas.FillRect(Rect);//pinta a célula
        dbgrdConsulta.DefaultDrawColumnCell(Rect,DataCol,Column,State);

      end;
    end;
  end;
end;

procedure TFrmListaEstoque.FormShow(Sender: TObject);
begin
  inherited;
  dmAcesso.QyListaFiliais.Locate('ID', Estabelecimento, [loCaseInsensitive]);
  clkFilial.KeyValue := Estabelecimento;
end;

procedure TFrmListaEstoque.JvBitBtn5Click(Sender: TObject);
begin

    InnerJoin :=
    ' INNER JOIN UNIDADE ON UNIDADE.ID=PRODUTO.ID_UNIDADE '
    + ' INNER JOIN MARCA ON MARCA.ID=PRODUTO.ID_MARCA '
    + ' LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID AND ESTOQUE.ID_FILIAL = '
    + IntToStr(clkFilial.KeyValue);

  if trim(edtBusca.Text) <> '' then
    self.Where := ' WHERE PRODUTO.GTIN LIKE ' + QuotedStr('%'+ Trim(edtBusca.Text) + '%')
    + ' OR PRODUTO.DESCRICAO LIKE ' + QuotedStr('%'+Trim(edtBusca.Text)+'%')
    + ' AND PRODUTO.BLOQUEADO = 0 '

  else
    self.Where :='';
  inherited;

end;

end.
