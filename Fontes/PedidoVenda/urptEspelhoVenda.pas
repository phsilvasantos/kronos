unit urptEspelhoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, urptRelatorio, RLFilters, RLPDFFilter, DB,
   RLReport, RLXLSXFilter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TrptEspelhoVenda = class(TrptRelatorio)
    rldbtxtGTIN: TRLDBText;
    RLSystemInfo4: TRLSystemInfo;
    rldbtxtGTIN1: TRLDBText;
    rldbtxtUNIDADE: TRLDBText;
    rldbmNOME_PRODUTO: TRLDBMemo;
    rldbtxtPRECO: TRLDBText;
    rldbtxtSUBTOTAL: TRLDBText;
    rldbtxtSUBTOTAL1: TRLDBText;
    rldbtxtDESCONTO: TRLDBText;
    rlbl1: TRLLabel;
    rlbl2: TRLLabel;
    RLLabel1: TRLLabel;
    rlbl3: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    rlbl4: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;

    dsFatura: TDataSource;
    rlbFatura: TRLBand;
    rliFatura: TRLDraw;
    RLLabel19: TRLLabel;
    rllFatNum1: TRLLabel;
    rllFatNum5: TRLLabel;
    rllFatNum9: TRLLabel;
    rllFatData1: TRLLabel;
    rllFatData5: TRLLabel;
    rllFatData9: TRLLabel;
    rllFatValor1: TRLLabel;
    rllFatValor5: TRLLabel;
    rllFatValor9: TRLLabel;
    rllFatNum2: TRLLabel;
    rllFatNum6: TRLLabel;
    rllFatNum10: TRLLabel;
    rllFatData2: TRLLabel;
    rllFatData6: TRLLabel;
    rllFatData10: TRLLabel;
    rllFatValor2: TRLLabel;
    rllFatValor6: TRLLabel;
    rllFatValor10: TRLLabel;
    rllFatNum3: TRLLabel;
    rllFatNum7: TRLLabel;
    rllFatNum11: TRLLabel;
    rllFatData3: TRLLabel;
    rllFatData7: TRLLabel;
    rllFatData11: TRLLabel;
    rllFatValor3: TRLLabel;
    rllFatValor7: TRLLabel;
    rllFatValor11: TRLLabel;
    rllFatNum4: TRLLabel;
    rllFatNum8: TRLLabel;
    rllFatNum12: TRLLabel;
    rllFatData4: TRLLabel;
    rllFatData8: TRLLabel;
    rllFatData12: TRLLabel;
    rllFatValor4: TRLLabel;
    rllFatValor8: TRLLabel;
    rllFatValor12: TRLLabel;
    rllFatNum13: TRLLabel;
    rllFatData13: TRLLabel;
    rllFatValor13: TRLLabel;
    rllFatNum14: TRLLabel;
    rllFatData14: TRLLabel;
    rllFatValor14: TRLLabel;
    rllFatNum15: TRLLabel;
    rllFatData15: TRLLabel;
    rllFatValor15: TRLLabel;
    rllFatNum16: TRLLabel;
    rllFatData16: TRLLabel;
    rllFatValor16: TRLLabel;
    rllFatNum17: TRLLabel;
    rllFatData17: TRLLabel;
    rllFatValor17: TRLLabel;
    rllFatNum18: TRLLabel;
    rllFatData18: TRLLabel;
    rllFatValor18: TRLLabel;
    rllFatNum19: TRLLabel;
    rllFatData19: TRLLabel;
    rllFatValor19: TRLLabel;
    rllFatNum20: TRLLabel;
    rllFatData20: TRLLabel;
    rllFatValor20: TRLLabel;
    rllFatNum21: TRLLabel;
    rllFatData21: TRLLabel;
    rllFatValor21: TRLLabel;
    rllFatNum22: TRLLabel;
    rllFatData22: TRLLabel;
    rllFatValor22: TRLLabel;
    rllFatNum23: TRLLabel;
    rllFatData23: TRLLabel;
    rllFatValor23: TRLLabel;
    rllFatNum24: TRLLabel;
    rllFatData24: TRLLabel;
    rllFatValor24: TRLLabel;
    rllFatNum25: TRLLabel;
    rllFatData25: TRLLabel;
    rllFatValor25: TRLLabel;
    rllFatNum26: TRLLabel;
    rllFatData26: TRLLabel;
    rllFatValor26: TRLLabel;
    rllFatNum27: TRLLabel;
    rllFatData27: TRLLabel;
    rllFatValor27: TRLLabel;
    rllFatNum28: TRLLabel;
    rllFatData28: TRLLabel;
    rllFatValor28: TRLLabel;
    rllFatNum29: TRLLabel;
    rllFatData29: TRLLabel;
    rllFatValor29: TRLLabel;
    rllFatNum30: TRLLabel;
    rllFatData30: TRLLabel;
    rllFatValor30: TRLLabel;
    rllFatNum31: TRLLabel;
    rllFatData31: TRLLabel;
    rllFatValor31: TRLLabel;
    rllFatNum32: TRLLabel;
    rllFatData32: TRLLabel;
    rllFatValor32: TRLLabel;
    rllFatNum33: TRLLabel;
    rllFatData33: TRLLabel;
    rllFatValor33: TRLLabel;
    rllFatNum34: TRLLabel;
    rllFatData34: TRLLabel;
    rllFatValor34: TRLLabel;
    rllFatNum35: TRLLabel;
    rllFatData35: TRLLabel;
    rllFatValor35: TRLLabel;
    rllFatNum36: TRLLabel;
    rllFatData36: TRLLabel;
    rllFatValor36: TRLLabel;
    rllFatNum37: TRLLabel;
    rllFatData37: TRLLabel;
    rllFatValor37: TRLLabel;
    rllFatNum38: TRLLabel;
    rllFatData38: TRLLabel;
    rllFatValor38: TRLLabel;
    rllFatNum39: TRLLabel;
    rllFatData39: TRLLabel;
    rllFatValor39: TRLLabel;
    rllFatNum40: TRLLabel;
    rllFatData40: TRLLabel;
    rllFatValor40: TRLLabel;
    rllFatNum41: TRLLabel;
    rllFatData41: TRLLabel;
    rllFatValor41: TRLLabel;
    rllFatNum42: TRLLabel;
    rllFatData42: TRLLabel;
    rllFatValor42: TRLLabel;
    rllFatNum43: TRLLabel;
    rllFatData43: TRLLabel;
    rllFatValor43: TRLLabel;
    rllFatNum44: TRLLabel;
    rllFatData44: TRLLabel;
    rllFatValor44: TRLLabel;
    rllFatNum45: TRLLabel;
    rllFatData45: TRLLabel;
    rllFatValor45: TRLLabel;
    rllFatNum46: TRLLabel;
    rllFatData46: TRLLabel;
    rllFatValor46: TRLLabel;
    rllFatNum47: TRLLabel;
    rllFatData47: TRLLabel;
    rllFatValor47: TRLLabel;
    rllFatNum48: TRLLabel;
    rllFatData48: TRLLabel;
    rllFatValor48: TRLLabel;
    rllFatNum49: TRLLabel;
    rllFatData49: TRLLabel;
    rllFatValor49: TRLLabel;
    rllFatNum50: TRLLabel;
    rllFatData50: TRLLabel;
    rllFatValor50: TRLLabel;
    rllFatNum51: TRLLabel;
    rllFatData51: TRLLabel;
    rllFatValor51: TRLLabel;
    rllFatNum52: TRLLabel;
    rllFatData52: TRLLabel;
    rllFatValor52: TRLLabel;
    rllFatNum53: TRLLabel;
    rllFatData53: TRLLabel;
    rllFatValor53: TRLLabel;
    rllFatNum54: TRLLabel;
    rllFatData54: TRLLabel;
    rllFatValor54: TRLLabel;
    rllFatNum55: TRLLabel;
    rllFatData55: TRLLabel;
    rllFatValor55: TRLLabel;
    rllFatNum56: TRLLabel;
    rllFatData56: TRLLabel;
    rllFatValor56: TRLLabel;
    rllFatNum57: TRLLabel;
    rllFatData57: TRLLabel;
    rllFatValor57: TRLLabel;
    rllFatNum58: TRLLabel;
    rllFatData58: TRLLabel;
    rllFatValor58: TRLLabel;
    rllFatNum59: TRLLabel;
    rllFatData59: TRLLabel;
    rllFatValor59: TRLLabel;
    rllFatNum60: TRLLabel;
    rllFatData60: TRLLabel;
    rllFatValor60: TRLLabel;
    RLLabel12: TRLLabel;
    rllCabFatura1: TRLLabel;
    rllCabFatura2: TRLLabel;
    rllCabFatura3: TRLLabel;
    rllCabFatura4: TRLLabel;
    rllCabFatura5: TRLLabel;
    rllCabFatura6: TRLLabel;
    rllCabFatura7: TRLLabel;
    rllCabFatura8: TRLLabel;
    rllCabFatura9: TRLLabel;
    rllCabFatura10: TRLLabel;
    rllCabFatura11: TRLLabel;
    rllCabFatura12: TRLLabel;
    RLDraw69: TRLDraw;
    rliFatura1: TRLDraw;
    rliFatura2: TRLDraw;
    rliFatura3: TRLDraw;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    bndCabec: TRLBand;
    RLDraw9: TRLDraw;
    RLLabel6: TRLLabel;
    RLDraw10: TRLDraw;
    rlblNomeCliente: TRLLabel;
    rlblCPFCNPJ: TRLLabel;
    rlblIE: TRLLabel;
    rlblNUMEROPEDIDO: TRLLabel;
    rlbl6: TRLLabel;
    rlbl7: TRLLabel;
    rlbl8: TRLLabel;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    rlblEnderecoCliente: TRLLabel;
    rlbl10: TRLLabel;
    RLLabel9: TRLLabel;
    rlblBairro: TRLLabel;
    rlblDataEmissao: TRLLabel;
    RLLabel13: TRLLabel;
    rlblcep: TRLLabel;
    rlbl12: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    rlblMunicipio: TRLLabel;
    rlbl9: TRLLabel;
    rlblCompl: TRLLabel;
    rlbl13: TRLLabel;
    rlblfoneres: TRLLabel;
    rlbl15: TRLLabel;
    rlblfonecom: TRLLabel;
    rlbl17: TRLLabel;
    rlblcelular: TRLLabel;
    rlbl19: TRLLabel;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    rlblpagamento: TRLLabel;
    rlbl21: TRLLabel;
    rlblVendedor: TRLLabel;
    rlbl23: TRLLabel;
    rlmObs: TRLMemo;
    RLLabel7: TRLLabel;
    rlblTotalDesconto: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel10: TRLLabel;
    rlblTotalGeral: TRLLabel;
    dsCliente: TDataSource;
    rlblTipo: TRLLabel;
    rlbl11: TRLLabel;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    bndAssinatura: TRLBand;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    rlblAssNumPed: TRLLabel;
    RLLabel14: TRLLabel;
    rlbl5: TRLLabel;
    rlbl14: TRLLabel;
    rlbl16: TRLLabel;
    rlblNomedoClienteAss: TRLLabel;
    RLDraw27: TRLDraw;
    RLDraw36: TRLDraw;
    rlblSubtotal: TRLLabel;
    QyFatura: TFDQuery;
    QyCliente: TFDQuery;
    QyAuxID_FILIAL: TIntegerField;
    QyAuxITEM: TIntegerField;
    QyAuxID_VENDA: TIntegerField;
    QyAuxID_PRODUTO: TIntegerField;
    QyAuxGTIN: TStringField;
    QyAuxNOME_PRODUTO: TStringField;
    QyAuxDESCRICAO_TECNICA: TStringField;
    QyAuxUNIDADE: TStringField;
    QyAuxID_CFOP: TIntegerField;
    QyAuxQUANTIDADE: TFMTBCDField;
    QyAuxPRECO: TFMTBCDField;
    QyAuxSUBTOTAL: TBCDField;
    QyAuxDESCONTO: TBCDField;
    QyAuxTOTAL: TBCDField;
    QyAuxALIQ_ICMS: TBCDField;
    QyAuxVALOR_ICMS: TBCDField;
    QyAuxALIQ_IPI: TBCDField;
    QyAuxVALOR_IPI: TBCDField;
    QyAuxVALOR_COMISSAO: TBCDField;
    QyAuxINFOADICIONAL: TStringField;
    QyAuxALTURA: TBCDField;
    QyAuxLARGURA: TBCDField;
    QyAuxAREA: TBCDField;
    QyAuxACRESCIMO: TBCDField;
    lblTerminal: TRLLabel;
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure qyClienteAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    fonte : string;
    fonteSize : Integer;

  public
    { Public declarations }
  end;

var
  rptEspelhoVenda: TrptEspelhoVenda;

implementation

uses
  udmacesso, Funcoes;

{$R *.dfm}

procedure TrptEspelhoVenda.FormCreate(Sender: TObject);
begin
  inherited;

  try
    fonte :=  DmAcesso.QyConfigSistema.FieldByName('VENDA_ESPELHO_FONTE').AsString;
    fonteSize :=DmAcesso.QyConfigSistema.FieldByName('VENDA_ESPELHO_FONTE_TAMANHO').AsInteger;
  except
    fonte := 'Arial';
    fonteSize := 8;
  end;

end;

procedure TrptEspelhoVenda.qyClienteAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qyFatura.Open;
end;

procedure TrptEspelhoVenda.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  x, iQuantDup, iLinhas, iColunas, iPosQuadro, iAltLinha, iAltQuadro1Linha,
  iAltQuadro, iAltBand, iFolga, iParcela,i: integer;


begin
  inherited;

  iParcela := 0;

  if qyFatura.RecordCount > 0 then
  begin
    //rlbFatura.Visible := True;

    for x := 1 to 60 do
    begin
      TRLLabel(FindComponent('rllFatNum'    + IntToStr(x))).Caption := '';
      TRLLabel(FindComponent('rllFatData'   + IntToStr(x))).Caption := '';
      TRLLabel(FindComponent('rllFatValor'  + IntToStr(x))).Caption := '';
    end;
    TRLLabel(FindComponent('rllFatNum1')).AutoSize := True;

    iQuantDup := qyFatura.RecordCount;


    while not qyFatura.Eof do
    begin
      Inc(iParcela);
      TRLLabel(FindComponent('rllFatNum'    + IntToStr(iParcela))).Caption := qyFatura.FieldByName('DOCUMENTO').AsString + '-'+qyFatura.FieldByName('PARCELA').AsString ;
      TRLLabel(FindComponent('rllFatData'   + IntToStr(iParcela))).Caption := FormatDateTime('dd/MM/yyyy',qyFatura.FieldByName('VENCIMENTO').AsDateTime);
      TRLLabel(FindComponent('rllFatValor'  + IntToStr(iParcela))).Caption := FormatFloat('#,##0.00', qyFatura.FieldByName('VALOR').AsFloat);

      qyFatura.Next;
    end;

    {=============== Ajusta o tamanho do quadro das faturas ===============}
    iColunas          := 4;   // Quantidade de colunas
    iAltLinha         := 13;  // Altura de cada linha
    iPosQuadro        := 12;  // Posição (Top) do Quadro
    iAltQuadro1Linha  := 27;  // Altura do quadro com 1 linha
    iFolga            := 5;   // Distância entre o final da Band e o final do quadro

    if (iQuantDup mod iColunas) = 0 then // Quantidade de linhas
      iLinhas := iQuantDup div iColunas
    else
      iLinhas := (iQuantDup div iColunas) + 1;

    if iLinhas = 1 then
      iAltQuadro := iAltQuadro1Linha
    else
      iAltQuadro := iAltQuadro1Linha + ((iLinhas - 1) * iAltLinha);

    iAltBand := iPosQuadro + iAltQuadro + iFolga;

    rlbFatura.Height  := iAltBand;
    rliFatura.Height  := iAltQuadro;
    rliFatura1.Height := iAltQuadro;
    rliFatura2.Height := iAltQuadro;
    rliFatura3.Height := iAltQuadro;

  end
  else
    rlbFatura.Visible := False;


  rlblNomeCliente.Caption := qyCliente.FieldByName('NOME').AsString;
  rlblCPFCNPJ.Caption := qyCliente.FieldByName('DOCUMENTO').AsString;
  rlblIE.Caption := qyCliente.FieldByName('INSC_ESTADUAL').AsString;
  rlblNUMEROPEDIDO.Caption := qyCliente.FieldByName('ID_PEDIDO').AsString;
  rlblEnderecoCliente.Caption := qyCliente.FieldByName('ENDERECO').AsString + ', N ' + qyCliente.FieldByName('NUMERO').AsString;
  rlblBairro.Caption := qyCliente.FieldByName('BAIRRO').AsString;
  rlblcep.Caption := qyCliente.FieldByName('CEP').AsString;
  rlblDataEmissao.Caption :=  FormatDateTime('dd/MM/yyyy hh:mm', qyCliente.FieldByName('EMISSAO').AsDateTime);
  rlblMunicipio.Caption := qyCliente.FieldByName('CIDADE').AsString + '/'+qyCliente.FieldByName('UF').AsString;
  rlblCompl.Caption := qyCliente.FieldByName('COMPLEMENTO').AsString;
  rlblfoneres.Caption := qyCliente.FieldByName('TELEFONE_RES').AsString;
  rlblfonecom.Caption := qyCliente.FieldByName('TELEFONE_COM').AsString;
  rlblcelular.Caption := qyCliente.FieldByName('CELULAR').AsString;
  rlblpagamento.Caption := qyCliente.FieldByName('NOME_CONDICAOPAGTO').AsString + ' - '+ qyCliente.FieldByName('NOME_FORMAPAGTO').AsString;
  rlblVendedor.Caption := qyCliente.FieldByName('NOME_USUARIO').AsString;
  rlmObs.Lines.Add(qyCliente.FieldByName('OBSERVACAO').AsString);
  rlblTotalDesconto.Caption := FormatFloat('R$ #,##0.00',qyCliente.FieldByName('DESCONTO').AsFloat);

  rlblSubtotal.Caption := FormatFloat('R$ #,##0.00',qyCliente.FieldByName('SUBTOTAL').AsFloat);
  rlblTotalGeral.Caption := FormatFloat('R$ #,##0.00',qyCliente.FieldByName('TOTAL').AsFloat);

  rlblAssNumPed.Caption := qyCliente.FieldByName('ID_PEDIDO').AsString;
  rlblNomedoClienteAss.Caption := qyCliente.FieldByName('NOME').AsString;
  if qyCliente.FieldByName('TIPO').AsString = 'V' then
    rlblTipo.Caption := 'Pedido'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'O' then
    rlblTipo.Caption := 'Orçamento'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'B' then
    rlblTipo.Caption := 'Bloqueada'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'P' then
    rlblTipo.Caption:= 'Pendência'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'F' then
    rlblTipo.Caption:= 'Cupom Fiscal'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'C' then
    rlblTipo.Caption:= 'NF-e Cancelada'
  else
  IF qyCliente.FieldByName('TIPO').AsString = 'N' then
    rlblTipo.Caption:= 'NF-e'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'D' then
    rlblTipo.Caption:=  'NF-e Dev'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'X' then
    rlblTipo.Caption:=  'Excluído'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'K' then
    rlblTipo.Caption:=  'NFC-e'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'L' then
    rlblTipo.Caption:=  'NFC-e Cancelada'
  else
  if qyCliente.FieldByName('TIPO').AsString = 'T' then
    rlblTipo.Caption:=  'Transferência'  else    rlblTipo.Caption:='';  for I := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TRLDBText) then
    begin
      if (self.Components[i] as TRLDBText).Parent = bndDetalhe then
      begin
        (self.Components[i] as TRLDBText).Font.Name := fonte;
        (self.Components[i] as TRLDBText).Font.Size := fonteSize;
      end;
    end;

    if (self.Components[i] is TRLDBMemo) then
    begin
      if (self.Components[i] as TRLDBMemo).Parent = bndDetalhe then
      begin
        (self.Components[i] as TRLDBMemo).Font.Name := fonte;
        (self.Components[i] as TRLDBMemo).Font.Size := fonteSize;
      end;
    end;
  end; RLSystemInfo4.font.Name := fonte; RLSystemInfo4.font.size := fontesize; lblTerminal.Caption := 'Terminal: '+ NumSerie();end;

end.
