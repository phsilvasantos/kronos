unit uFrmHistoricoPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TFrmHistoricoPedido = class(TForm)
    dbgrd1: TJvDBGrid;
    QyHistorico: TFDQuery;
    dsHistorico: TDataSource;
    dbmmoTEXTO: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHistoricoPedido: TFrmHistoricoPedido;

implementation

uses
  udmAcesso;

{$R *.dfm}

end.
