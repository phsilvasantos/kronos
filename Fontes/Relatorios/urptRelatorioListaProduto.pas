unit urptRelatorioListaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, urptRelatorio, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLXLSXFilter, RLFilters,
  RLPDFFilter, RLReport;

type
  TrptRelatorioListaProduto = class(TrptRelatorio)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRelatorioListaProduto: TrptRelatorioListaProduto;

implementation

{$R *.dfm}

end.
