unit uFrmTelaImportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    tsVendas: TTabSheet;
    Panel1: TPanel;
    dbgrd1: TDBGrid;
    DBGrid1: TDBGrid;
    conAmazon: TFDConnection;
    conLocal: TFDConnection;
    QyVendasLocal: TFDQuery;
    QyVendasAmazon: TFDQuery;
    dsVendasLocal: TDataSource;
    dsVendasAmazon: TDataSource;
    btnImportaVendas: TBitBtn;
    btn1: TBitBtn;
    QyContatoAmazon: TFDQuery;
    QyVendasAmazonTIPO: TStringField;
    QyVendasAmazonID_FILIAL: TIntegerField;
    QyVendasAmazonID: TFDAutoIncField;
    QyVendasAmazonEMISSAO: TDateTimeField;
    QyVendasAmazonDATAENTREGA: TDateField;
    QyVendasAmazonID_CONTATO: TIntegerField;
    QyVendasAmazonID_USUARIO: TIntegerField;
    QyVendasAmazonID_CONDICAOPAGAMENTO: TIntegerField;
    QyVendasAmazonID_FORMAPAGAMENTO: TIntegerField;
    QyVendasAmazonPROTOCOLONFE: TStringField;
    QyVendasAmazonXMLNFE: TBlobField;
    QyVendasAmazonRECIBOCANCELAMENTO: TDateTimeField;
    QyVendasAmazonPROTOCOLOCANCELAMENTO: TStringField;
    QyVendasAmazonXMLCANCELAMENTO: TBlobField;
    QyVendasAmazonNUMEROCOO: TStringField;
    QyVendasAmazonNUMEROECF: TStringField;
    QyVendasAmazonNUMEROLOJA: TStringField;
    QyVendasAmazonNUMEROSERIE: TStringField;
    QyVendasAmazonOBSERVACAO: TStringField;
    QyVendasAmazonSUBTOTAL: TBCDField;
    QyVendasAmazonDESCONTO: TBCDField;
    QyVendasAmazonPERC_DESCONTO: TBCDField;
    QyVendasAmazonSEGURO: TBCDField;
    QyVendasAmazonTIPOFRETE: TSmallintField;
    QyVendasAmazonVALORFRETE: TBCDField;
    QyVendasAmazonVALORII: TBCDField;
    QyVendasAmazonTOTAL: TBCDField;
    QyVendasAmazonVALORENTRADA: TBCDField;
    QyVendasAmazonCHAVENFE: TStringField;
    QyVendasAmazonBASEICMS: TBCDField;
    QyVendasAmazonVALORICMS: TBCDField;
    QyVendasAmazonBASEICMSST: TBCDField;
    QyVendasAmazonVALORICMSST: TBCDField;
    QyVendasAmazonVALORIPI: TBCDField;
    QyVendasAmazonVALORPIS: TBCDField;
    QyVendasAmazonVALORCOFINS: TBCDField;
    QyVendasAmazonOUTROS: TBCDField;
    QyVendasAmazonMODELO_NFE: TStringField;
    QyVendasAmazonSERIE_NFE: TStringField;
    QyVendasAmazonPRAZOENTREGA: TIntegerField;
    QyVendasAmazonID_VEICULO: TIntegerField;
    QyVendasAmazonID_MECANICO: TIntegerField;
    QyVendasAmazonDHRECBTO: TDateTimeField;
    QyVendasAmazonID_USUARIO_AUDITORIA: TIntegerField;
    QyVendasAmazonMOTIVO_BLOQUEIO: TStringField;
    QyVendasAmazonID_TABELAPRECO: TIntegerField;
    QyVendasAmazonNOME_CLIENTE: TStringField;
    QyVendasAmazonPERC_MONTAGEM: TBCDField;
    QyVendasAmazonPED_ECO: TStringField;
    QyVendasAmazonID_CFOP: TIntegerField;
    QyVendasAmazonDIGEST: TStringField;
    QyVendasAmazonCAUT: TStringField;
    QyVendasAmazonTOTALSERVICO: TBCDField;
    QyVendasAmazonFINALIDADENFE: TIntegerField;
    QyVendasAmazonID_IMPORT: TIntegerField;
    QyVendasLocalTIPO: TStringField;
    QyVendasLocalID_FILIAL: TIntegerField;
    QyVendasLocalID: TFDAutoIncField;
    QyVendasLocalEMISSAO: TDateTimeField;
    QyVendasLocalDATAENTREGA: TDateField;
    QyVendasLocalID_CONTATO: TIntegerField;
    QyVendasLocalID_USUARIO: TIntegerField;
    QyVendasLocalID_CONDICAOPAGAMENTO: TIntegerField;
    QyVendasLocalID_FORMAPAGAMENTO: TIntegerField;
    QyVendasLocalPROTOCOLONFE: TStringField;
    QyVendasLocalXMLNFE: TBlobField;
    QyVendasLocalRECIBOCANCELAMENTO: TDateTimeField;
    QyVendasLocalPROTOCOLOCANCELAMENTO: TStringField;
    QyVendasLocalXMLCANCELAMENTO: TBlobField;
    QyVendasLocalNUMEROCOO: TStringField;
    QyVendasLocalNUMEROECF: TStringField;
    QyVendasLocalNUMEROLOJA: TStringField;
    QyVendasLocalNUMEROSERIE: TStringField;
    QyVendasLocalOBSERVACAO: TStringField;
    QyVendasLocalSUBTOTAL: TBCDField;
    QyVendasLocalDESCONTO: TBCDField;
    QyVendasLocalPERC_DESCONTO: TBCDField;
    QyVendasLocalSEGURO: TBCDField;
    QyVendasLocalTIPOFRETE: TSmallintField;
    QyVendasLocalVALORFRETE: TBCDField;
    QyVendasLocalVALORII: TBCDField;
    QyVendasLocalTOTAL: TBCDField;
    QyVendasLocalVALORENTRADA: TBCDField;
    QyVendasLocalCHAVENFE: TStringField;
    QyVendasLocalBASEICMS: TBCDField;
    QyVendasLocalVALORICMS: TBCDField;
    QyVendasLocalBASEICMSST: TBCDField;
    QyVendasLocalVALORICMSST: TBCDField;
    QyVendasLocalVALORIPI: TBCDField;
    QyVendasLocalVALORPIS: TBCDField;
    QyVendasLocalVALORCOFINS: TBCDField;
    QyVendasLocalOUTROS: TBCDField;
    QyVendasLocalMODELO_NFE: TStringField;
    QyVendasLocalSERIE_NFE: TStringField;
    QyVendasLocalPRAZOENTREGA: TIntegerField;
    QyVendasLocalID_VEICULO: TIntegerField;
    QyVendasLocalID_MECANICO: TIntegerField;
    QyVendasLocalDHRECBTO: TDateTimeField;
    QyVendasLocalID_USUARIO_AUDITORIA: TIntegerField;
    QyVendasLocalMOTIVO_BLOQUEIO: TStringField;
    QyVendasLocalID_TABELAPRECO: TIntegerField;
    QyVendasLocalNOME_CLIENTE: TStringField;
    QyVendasLocalPERC_MONTAGEM: TBCDField;
    QyVendasLocalPED_ECO: TStringField;
    QyVendasLocalID_CFOP: TIntegerField;
    QyVendasLocalDIGEST: TStringField;
    QyVendasLocalCAUT: TStringField;
    QyVendasLocalTOTALSERVICO: TBCDField;
    QyVendasLocalFINALIDADENFE: TIntegerField;
    QyItemLocal: TFDQuery;
    QyItemAmazon: TFDQuery;
    QyItemAmazonID_FILIAL: TIntegerField;
    QyItemAmazonID: TFDAutoIncField;
    QyItemAmazonID_VENDA: TIntegerField;
    QyItemAmazonITEM: TIntegerField;
    QyItemAmazonGTIN: TStringField;
    QyItemAmazonID_PRODUTO: TIntegerField;
    QyItemAmazonID_DEPARTAMENTO: TIntegerField;
    QyItemAmazonID_UNIDADE: TIntegerField;
    QyItemAmazonID_CFOP: TIntegerField;
    QyItemAmazonQUANTIDADE: TFMTBCDField;
    QyItemAmazonPRECO: TFMTBCDField;
    QyItemAmazonSUBTOTAL: TBCDField;
    QyItemAmazonDESCONTO: TBCDField;
    QyItemAmazonACRESCIMO: TBCDField;
    QyItemAmazonTOTAL: TBCDField;
    QyItemAmazonCRT: TIntegerField;
    QyItemAmazonCSTICMS: TIntegerField;
    QyItemAmazonBASE_ICMS: TBCDField;
    QyItemAmazonCSOSN: TIntegerField;
    QyItemAmazonALIQ_ICMS: TBCDField;
    QyItemAmazonVALOR_ICMS: TBCDField;
    QyItemAmazonCSTIPI: TIntegerField;
    QyItemAmazonALIQ_IPI: TBCDField;
    QyItemAmazonVALOR_IPI: TBCDField;
    QyItemAmazonCSTPIS: TIntegerField;
    QyItemAmazonALIQ_PIS: TBCDField;
    QyItemAmazonVALOR_PIS: TBCDField;
    QyItemAmazonCSTCOFINS: TIntegerField;
    QyItemAmazonALIQ_COFINS: TBCDField;
    QyItemAmazonVALOR_COFINS: TBCDField;
    QyItemAmazonVALOR_OUTROS: TBCDField;
    QyItemAmazonVALOR_SEGURO: TBCDField;
    QyItemAmazonVALOR_FRETE: TBCDField;
    QyItemAmazonINFOADICIONAL: TStringField;
    QyItemAmazonID_GRADE: TIntegerField;
    QyItemAmazonID_SUBGRADE: TIntegerField;
    QyItemAmazonID_COR: TIntegerField;
    QyItemAmazonSTATUS: TStringField;
    QyItemAmazonALIQ_MVAST: TBCDField;
    QyItemAmazonALIQ_REDBCST: TBCDField;
    QyItemAmazonALIQ_ICMSST: TBCDField;
    QyItemAmazonVALOR_ICMSST: TBCDField;
    QyItemAmazonBASE_ICMSST: TBCDField;
    QyItemAmazonALIQ_REDBC: TBCDField;
    QyItemAmazonITEM_SERVICO: TStringField;
    QyItemAmazonVALOR_COMISSAO: TBCDField;
    QyItemAmazonALTURA: TBCDField;
    QyItemAmazonLARGURA: TBCDField;
    QyItemAmazonAREA: TBCDField;
    QyItemAmazonDESCRICAO_PRODUTO: TStringField;
    QyItemAmazonNS_PRODUTO: TStringField;
    QyItemLocalID_FILIAL: TIntegerField;
    QyItemLocalID: TFDAutoIncField;
    QyItemLocalID_VENDA: TIntegerField;
    QyItemLocalITEM: TIntegerField;
    QyItemLocalGTIN: TStringField;
    QyItemLocalID_PRODUTO: TIntegerField;
    QyItemLocalID_DEPARTAMENTO: TIntegerField;
    QyItemLocalID_UNIDADE: TIntegerField;
    QyItemLocalID_CFOP: TIntegerField;
    QyItemLocalQUANTIDADE: TFMTBCDField;
    QyItemLocalPRECO: TFMTBCDField;
    QyItemLocalSUBTOTAL: TBCDField;
    QyItemLocalDESCONTO: TBCDField;
    QyItemLocalACRESCIMO: TBCDField;
    QyItemLocalTOTAL: TBCDField;
    QyItemLocalCRT: TIntegerField;
    QyItemLocalCSTICMS: TIntegerField;
    QyItemLocalBASE_ICMS: TBCDField;
    QyItemLocalCSOSN: TIntegerField;
    QyItemLocalALIQ_ICMS: TBCDField;
    QyItemLocalVALOR_ICMS: TBCDField;
    QyItemLocalCSTIPI: TIntegerField;
    QyItemLocalALIQ_IPI: TBCDField;
    QyItemLocalVALOR_IPI: TBCDField;
    QyItemLocalCSTPIS: TIntegerField;
    QyItemLocalALIQ_PIS: TBCDField;
    QyItemLocalVALOR_PIS: TBCDField;
    QyItemLocalCSTCOFINS: TIntegerField;
    QyItemLocalALIQ_COFINS: TBCDField;
    QyItemLocalVALOR_COFINS: TBCDField;
    QyItemLocalVALOR_OUTROS: TBCDField;
    QyItemLocalVALOR_SEGURO: TBCDField;
    QyItemLocalVALOR_FRETE: TBCDField;
    QyItemLocalINFOADICIONAL: TStringField;
    QyItemLocalID_GRADE: TIntegerField;
    QyItemLocalID_SUBGRADE: TIntegerField;
    QyItemLocalID_COR: TIntegerField;
    QyItemLocalSTATUS: TStringField;
    QyItemLocalALIQ_MVAST: TBCDField;
    QyItemLocalALIQ_REDBCST: TBCDField;
    QyItemLocalALIQ_ICMSST: TBCDField;
    QyItemLocalVALOR_ICMSST: TBCDField;
    QyItemLocalBASE_ICMSST: TBCDField;
    QyItemLocalALIQ_REDBC: TBCDField;
    QyItemLocalITEM_SERVICO: TStringField;
    QyItemLocalVALOR_COMISSAO: TBCDField;
    QyItemLocalALTURA: TBCDField;
    QyItemLocalLARGURA: TBCDField;
    QyItemLocalAREA: TBCDField;
    QyItemLocalDESCRICAO_PRODUTO: TStringField;
    QyItemLocalNS_PRODUTO: TStringField;
    QyProdutosAmazon: TFDQuery;
    QyItemLocalGTIN_PROD: TStringField;
    QyVendasLocalDOCUMENTO: TStringField;
    Edit1: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btnImportaVendasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  try

    //conAmazon.Params.LoadFromFile('C:\Kronos\server.ini');
    QyVendasLocal.Close;
    QyVendasLocal.ParamByName('pID').AsInteger := StrToInt(Edit1.Text);
    QyVendasLocal.Open();
    QyItemLocal.Open();

  //  QyVendasAmazon.Open();
    QyItemAmazon.Open();
    QyProdutosAmazon.Open();
    QyContatoAmazon.Open();
    btnImportaVendas.Enabled:=True
  finally

  end;
end;

procedure TForm1.btnImportaVendasClick(Sender: TObject);
begin
  QyVendasLocal.First;


  while not QyVendasLocal.Eof do
  begin

    QyVendasAmazon.Insert;
    QyVendasAmazonID_FILIAL.AsInteger := QyVendasLocalID_FILIAL.AsInteger;
    QyVendasAmazonTIPO.AsString := QyVendasLocalTIPO.AsString;

    QyVendasAmazonEMISSAO.AsDateTime := QyVendasLocalEMISSAO.AsDateTime;

    if not QyVendasLocalDATAENTREGA.IsNull then
      QyVendasAmazonDATAENTREGA.AsDateTime := QyVendasLocalDATAENTREGA.AsDateTime;


    if QyContatoAmazon.Locate('ID_IMPORT',QyVendasLocalID_CONTATO.AsInteger, [loCaseInsensitive]) then
      QyVendasAmazonID_CONTATO.AsInteger :=  QyContatoAmazon.FieldByName('ID').AsInteger
    else
    begin
      if QyContatoAmazon.Locate('DOCUMENTO', QyVendasLocalDOCUMENTO.AsString, [loCaseInsensitive]) then
        QyVendasAmazonID_CONTATO.AsInteger :=  QyContatoAmazon.FieldByName('ID').AsInteger
      else
        QyVendasAmazonID_CONTATO.AsInteger :=1;
    end;



    QyVendasAmazonID_USUARIO.AsInteger := 1;//QyVendasLocalID_USUARIO.AsInteger;

    QyVendasAmazonID_CONDICAOPAGAMENTO.AsInteger :=QyVendasLocalID_CONDICAOPAGAMENTO.AsInteger;
    QyVendasAmazonID_FORMAPAGAMENTO.AsInteger := QyVendasLocalID_FORMAPAGAMENTO.AsInteger;
    QyVendasAmazonPROTOCOLONFE.AsString := QyVendasLocalPROTOCOLONFE.AsString;



    if QyVendasLocalXMLNFE.BlobSize > 0 then
      QyVendasAmazonXMLNFE.Value := QyVendasLocalXMLNFE.Value;

    if QyVendasAmazonTIPO.AsString = 'C' then
        QyVendasAmazonRECIBOCANCELAMENTO.AsDateTime := QyVendasLocalRECIBOCANCELAMENTO.AsDateTime;

    if QyVendasAmazonTIPO.AsString = 'C' then
      QyVendasAmazonPROTOCOLOCANCELAMENTO.AsString := QyVendasLocalPROTOCOLOCANCELAMENTO.AsString;

    if QyVendasAmazonTIPO.AsString = 'C' then
      QyVendasAmazonXMLCANCELAMENTO.Value := QyVendasLocalXMLCANCELAMENTO.Value;

    QyVendasAmazonOBSERVACAO.AsString := QyVendasLocalOBSERVACAO.AsString;
    QyVendasAmazonSUBTOTAL.AsFloat := QyVendasLocalSUBTOTAL.AsFloat;
    QyVendasAmazonDESCONTO.AsFloat := QyVendasLocalDESCONTO.AsFloat;
    QyVendasAmazonPERC_DESCONTO.AsFloat := QyVendasLocalPERC_DESCONTO.AsFloat;
    QyVendasAmazonSEGURO.AsFloat := QyVendasLocalSEGURO.AsFloat;
    QyVendasAmazonTIPOFRETE.AsInteger := QyVendasLocalTIPOFRETE.AsInteger;
    QyVendasAmazonVALORFRETE.AsFloat := QyVendasLocalVALORFRETE.AsFloat;
    QyVendasAmazonVALORII.AsFloat := QyVendasLocalVALORII.AsFloat;
    QyVendasAmazonTOTAL.AsFloat := QyVendasLocalTOTAL.AsFloat;
    QyVendasAmazonVALORENTRADA.AsFloat := QyVendasLocalVALORENTRADA.AsFloat;
    QyVendasAmazonCHAVENFE.AsString :=QyVendasLocalCHAVENFE.AsString;
    QyVendasAmazonBASEICMS.AsFloat := QyVendasLocalBASEICMS.AsFloat;
    QyVendasAmazonVALORICMS.AsFloat := QyVendasLocalVALORICMS.AsFloat;
    QyVendasAmazonBASEICMSST.AsFloat :=QyVendasLocalBASEICMSST.AsFloat;
    QyVendasAmazonVALORICMSST.AsFloat := QyVendasLocalVALORICMSST.AsFloat;
    QyVendasAmazonVALORIPI.AsFloat :=QyVendasLocalVALORIPI.AsFloat;
    QyVendasAmazonVALORPIS.AsFloat := QyVendasLocalVALORPIS.AsFloat;
    QyVendasAmazonVALORCOFINS.AsFloat := QyVendasLocalVALORCOFINS.AsFloat;
    QyVendasAmazonOUTROS.AsFloat := QyVendasLocalOUTROS.AsFloat;
    QyVendasAmazonMODELO_NFE.AsString := QyVendasLocalMODELO_NFE.AsString;
    QyVendasAmazonSERIE_NFE.AsString := QyVendasLocalSERIE_NFE.AsString;
    QyVendasAmazonPRAZOENTREGA.AsInteger := QyVendasLocalPRAZOENTREGA.AsInteger;
    QyVendasAmazonID_VEICULO.AsInteger := QyVendasLocalID_VEICULO.AsInteger;
    QyVendasAmazonID_MECANICO.AsInteger := QyVendasLocalID_MECANICO.AsInteger;

    QyVendasAmazonDHRECBTO.AsDateTime := QyVendasLocalDHRECBTO.AsDateTime;

    QyVendasAmazonID_USUARIO_AUDITORIA.AsInteger := QyVendasLocalID_USUARIO_AUDITORIA.AsInteger;
    QyVendasAmazonMOTIVO_BLOQUEIO.AsString:=QyVendasLocalMOTIVO_BLOQUEIO.AsString;
    QyVendasAmazonID_TABELAPRECO.AsInteger := QyVendasLocalID_TABELAPRECO.AsInteger;
    QyVendasAmazonNOME_CLIENTE.AsString := QyVendasLocalNOME_CLIENTE.AsString;
    QyVendasAmazonPERC_MONTAGEM.AsFloat := QyVendasLocalPERC_MONTAGEM.AsFloat;
    QyVendasAmazonPED_ECO.AsString := QyVendasLocalPED_ECO.AsString;
    QyVendasAmazonID_CFOP.AsInteger := QyVendasLocalID_CFOP.AsInteger;
    QyVendasAmazonDIGEST.AsString := QyVendasLocalDIGEST.AsString;
    QyVendasAmazonCAUT.AsString := QyVendasLocalCAUT.AsString;
    QyVendasAmazonTOTALSERVICO.AsFloat := QyVendasLocalTOTALSERVICO.AsFloat;
    QyVendasAmazonFINALIDADENFE.AsInteger := QyVendasLocalFINALIDADENFE.AsInteger;
    QyVendasAmazonID_IMPORT.AsInteger := QyVendasLocalID.AsInteger;
    QyVendasAmazon.Post;



    while not QyItemLocal.Eof do
    begin
      QyItemAmazon.Insert;
      QyItemAmazonID_FILIAL.AsInteger := QyItemLocalID_FILIAL.AsInteger;
//      QyItemAmazonID.AsInteger := 0;
      QyItemAmazonID_VENDA.AsInteger := QyVendasAmazonID.AsInteger;
      QyItemAmazonITEM.AsInteger := QyItemLocalITEM.AsInteger;
      QyItemAmazonGTIN.AsString := QyItemLocalGTIN.AsString;



      if QyProdutosAmazon.Locate('ID_IMPORT',QyItemLocalID_PRODUTO.AsInteger,[loCaseInsensitive]) then
          QyItemAmazonID_PRODUTO.AsInteger := QyProdutosAmazon.FieldByName('ID').AsInteger
      else
      begin
         if QyProdutosAmazon.Locate('GTIN',QyItemLocalGTIN_PROD.AsString,[loCaseInsensitive]) then
            QyItemAmazonID_PRODUTO.AsInteger := QyProdutosAmazon.FieldByName('ID').AsInteger
         else
          raise Exception.Create('Produto não encontrado. Pedido: ' + QyItemLocal.FieldByName('ID_VENDA').AsString);
      end;

      QyItemAmazonID_DEPARTAMENTO.AsInteger := QyItemLocalID_DEPARTAMENTO.AsInteger;
      QyItemAmazonID_UNIDADE.AsInteger := QyItemLocalID_UNIDADE.AsInteger;
      QyItemAmazonID_CFOP.AsInteger := QyItemLocalID_CFOP.AsInteger;
      QyItemAmazonQUANTIDADE.AsFloat := QyItemLocalQUANTIDADE.AsFloat;
      QyItemAmazonPRECO.AsFloat := QyItemLocalPRECO.AsFloat;
      QyItemAmazonSUBTOTAL.AsFloat := QyItemLocalSUBTOTAL.AsFloat;
      QyItemAmazonDESCONTO.AsFloat := QyItemLocalDESCONTO.AsFloat;
      QyItemAmazonACRESCIMO.AsFloat := QyItemLocalACRESCIMO.AsFloat;
      QyItemAmazonTOTAL.AsFloat := QyItemLocalTOTAL.AsFloat;
      QyItemAmazonCRT.AsInteger:=QyItemLocalCRT.AsInteger;
      QyItemAmazonCSTICMS.AsInteger:=QyItemLocalCSTICMS.AsInteger;
      QyItemAmazonBASE_ICMS.AsFloat := QyItemLocalBASE_ICMS.AsFloat;
      QyItemAmazonCSOSN.AsInteger:=QyItemLocalCSOSN.AsInteger;
      QyItemAmazonALIQ_ICMS.AsFloat := QyItemLocalALIQ_ICMS.AsFloat;
      QyItemAmazonVALOR_ICMS.AsFloat := QyItemLocalVALOR_ICMS.AsFloat;
      QyItemAmazonCSTIPI.AsInteger:=QyItemLocalCSTIPI.AsInteger;
      QyItemAmazonALIQ_IPI.AsFloat := QyItemLocalALIQ_IPI.AsFloat;
      QyItemAmazonVALOR_IPI.AsFloat := QyItemLocalVALOR_IPI.AsFloat;
      QyItemAmazonCSTPIS.AsInteger:=QyItemLocalCSTPIS.AsInteger;
      QyItemAmazonALIQ_PIS.AsFloat := QyItemLocalALIQ_PIS.AsFloat;
      QyItemAmazonVALOR_PIS.AsFloat := QyItemLocalVALOR_PIS.AsFloat;
      QyItemAmazonCSTCOFINS.AsInteger:=QyItemLocalCSTCOFINS.AsInteger;
      QyItemAmazonALIQ_COFINS.AsFloat := QyItemLocalALIQ_COFINS.AsFloat;
      QyItemAmazonVALOR_COFINS.AsFloat := QyItemLocalVALOR_COFINS.AsFloat;
      QyItemAmazonVALOR_OUTROS.AsFloat := QyItemLocalVALOR_OUTROS.AsFloat;
      QyItemAmazonVALOR_SEGURO.AsFloat := QyItemLocalVALOR_SEGURO.AsFloat;
      QyItemAmazonVALOR_FRETE.AsFloat := QyItemLocalVALOR_FRETE.AsFloat;
      QyItemAmazonINFOADICIONAL.AsString := QyItemLocalINFOADICIONAL.AsString;
      QyItemAmazonSTATUS.AsString := QyItemLocalSTATUS.AsString;
      QyItemAmazonALIQ_MVAST.AsFloat := QyItemLocalALIQ_MVAST.AsFloat;
      QyItemAmazonALIQ_REDBCST.AsFloat := QyItemLocalALIQ_REDBCST.AsFloat;
      QyItemAmazonALIQ_ICMSST.AsFloat := QyItemLocalALIQ_ICMSST.AsFloat;
      QyItemAmazonVALOR_ICMSST.AsFloat := QyItemLocalVALOR_ICMSST.AsFloat;
      QyItemAmazonBASE_ICMSST.AsFloat := QyItemLocalBASE_ICMSST.AsFloat;
      QyItemAmazonALIQ_REDBC.AsFloat := QyItemLocalALIQ_REDBC.AsFloat;
      QyItemAmazonITEM_SERVICO.AsString := QyItemLocalITEM_SERVICO.AsString;
      QyItemAmazonVALOR_COMISSAO.AsFloat := QyItemLocalVALOR_COMISSAO.AsFloat;
      QyItemAmazonALTURA.AsFloat := QyItemLocalALTURA.AsFloat;
      QyItemAmazonLARGURA.AsFloat := QyItemLocalLARGURA.AsFloat;
      QyItemAmazonAREA.AsFloat := QyItemLocalAREA.AsFloat;
      QyItemAmazonDESCRICAO_PRODUTO.AsString := QyItemLocalDESCRICAO_PRODUTO.AsString;
      QyItemAmazonNS_PRODUTO.AsString := QyItemLocalNS_PRODUTO.AsString;

      QyItemAmazon.Post;
      QyItemLocal.Next;
    end;









    QyVendasLocal.Next;
  end;





end;

end.
