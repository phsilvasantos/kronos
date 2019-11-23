unit urptRelatorioPaisagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, urptRelatorio, RLFilters, RLPDFFilter, DB,
  RLReport, RLXLSXFilter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TrptRelatorioPaisagem = class(TrptRelatorio)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rptRelatorioPaisagem: TrptRelatorioPaisagem;

implementation

uses
  udmAcesso;

{$R *.dfm}

end.
