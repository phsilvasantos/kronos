unit urptRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB,  jpeg,
  RLFilters, RLPDFFilter,  RLDraftFilter, RLXLSXFilter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

  //rpt - Constantes para uso no fortes report
  type rpt_alinhamento = (raEsquerda,raDireita);
  type rpt_agrupamento = (agSim, agNao);
  type rpt_totalgeral = (tgSim, tgNao);
  type rpt_autosize = (asSim, asNao);

type
  TrptRelatorio = class(TForm)
    RLReport1: TRLReport;
    dsAux: TDataSource;
    bndDetalhe: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    bndHeader: TRLBand;
    rlblTitulo: TRLLabel;
    RLBand5: TRLBand;
    rlblFantasia: TRLLabel;
    rlblEndereco: TRLLabel;
    rlblTelefones: TRLLabel;
    rlblEmail: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    img1: TRLImage;
    RLPDFFilter1: TRLPDFFilter;
    rlblParametros: TRLLabel;
    bndFooter: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    rlgrpGrupo: TRLGroup;
    bndHeaderGrupo: TRLBand;
    bndFooterGrupo: TRLBand;
    RLXLSXFilter1: TRLXLSXFilter;
    QyAux: TFDQuery;
    procedure rldbtxtBLOQUEADOBeforePrint(Sender: TObject; var AText: string;
      var PrintIt: Boolean);    
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    procedure criarLabel(pLeft, pTop: Integer; pCaption, pTitulo : string; const alinDireita: rpt_alinhamento = raEsquerda);
    procedure criaComponente (
    pLeft, pTop: Integer
    ; pCaption, pFieldName: string
    ; const alinDireita: rpt_alinhamento = raEsquerda
    ; const pAutoSize:  rpt_autosize = asSim
    ; const pwidth :  Integer = 0
    ; const pDisplayMask : string = ''
    ; const ptotal : rpt_totalgeral = tgNao
    ; const ptxtGrupo : rpt_agrupamento = agNao
    ; const pMemo : Boolean = False

    );



  end;

var
  rptRelatorio: TrptRelatorio;

  implementation

uses
  udmacesso  , krnVarGlobais, Funcoes;

{$R *.dfm}

procedure TrptRelatorio.criarLabel(pLeft, pTop: Integer; pCaption, pTitulo: string; const alinDireita: rpt_alinhamento = raEsquerda);
var
  oLabel, oTitulo : TRLLabel;
begin
  oLabel := TRLLabel.Create(Self);
  oLabel.Parent := bndDetalhe;
  oLabel.Left := pLeft;
  oLabel.Top := pTop;
  oLabel.Caption := pCaption;

  if alinDireita = raDireita then
    oLabel.Align := faRightOnly;

  if Trim(ptitulo)<> '' then
  begin
    oTitulo := TRLLabel.Create(Self);
    oTitulo.Parent := bndHeader;
    oTitulo.Left := pLeft;
    oTitulo.Top := pTop;
    oTitulo.Caption := pTitulo;

    if alinDireita = raDireita then
      oTitulo.Align := faRightOnly;

  end;



end;
procedure TrptRelatorio.criaComponente(
  pLeft, pTop: Integer //1
; pCaption, pFieldName: string //2
; const alinDireita: rpt_alinhamento = raEsquerda //3
; const pAutoSize: rpt_autosize = asSim //4
; const pwidth :  Integer = 0 //5
; const pDisplayMask : string = '' //6
; const ptotal : rpt_totalgeral = tgNao //7
; const ptxtGrupo : rpt_agrupamento = agNao //8
; const pMemo : Boolean = False//9

);
var
  otexto : TRLDBText;
  otitulo : TRLLabel;
  oMemo : TRLDBMemo;
  total : TRLDBResult;
begin

  if not pMemo  then
  begin
    if ptotal = tgNao then
    begin
      otexto := TRLDBText.Create(Self);
      otitulo := TRLLabel.Create(Self);
      otitulo.Parent := bndHeader;


      if ptxtGrupo = agSim then
      begin
        rlgrpGrupo.Visible:=true;
        bndDetalhe.Parent :=rlgrpGrupo;
        rlgrpGrupo.DataFields := pFieldName;
        otexto.Parent := bndHeaderGrupo;
      end
      else
      begin
        otexto.Parent := bndDetalhe;
      end;

      with otexto do
      begin
        if pAutoSize = asNao then
        begin
          AutoSize := false;
          Width := pwidth;
        end;

        Left := pleft;
        Top := ptop;
        DataSource:= dsAux;
        DataField := pFieldName;
        if ptxtGrupo = agSim then
          Name := 'txtdbgrp'+pFieldName
        else
          Name := 'txtdb'+pFieldName;

        if pDisplayMask<>'' then
        begin
          otexto.DisplayMask := pDisplayMask;
          Alignment := taRightJustify;
        end;

        if alinDireita = raDireita then
        begin
          Align := faRightOnly;
          if pFieldName = 'BLOQUEADO' then
            otexto.BeforePrint := rldbtxtBLOQUEADOBeforePrint;
        end;
      end;

      if (pCaption <> '') and ( ptxtGrupo = agNao) then
      begin
        with otitulo do
        begin
          Left := pleft;
          Top := ptop;
          Caption := pCaption;
          Font.Size := 9;
          Font.Style := [fsBold];
          if pDisplayMask <> '' then
          begin
            Alignment := taRightJustify;
            AutoSize:=False;
            Width := otexto.Width;
            if QyAux.FindField(pFieldName) <> nil then
            begin
              if  QyAux.FieldByName(pFieldName) is TFloatField then
                TFloatField(QyAux.FieldByName(pFieldName)).DisplayFormat := pDisplayMask;

              if  QyAux.FieldByName(pFieldName) is TFMTBCDField then
                TFMTBCDField(QyAux.FieldByName(pFieldName)).DisplayFormat := pDisplayMask;

              if  QyAux.FieldByName(pFieldName) is TBCDField then
                TBCDField(QyAux.FieldByName(pFieldName)).DisplayFormat := pDisplayMask;

            end;
          end;
          if (alinDireita = raDireita)  then
            Align := faRightOnly
        end;
      end
      else
      begin
        otexto.Text := pCaption;
      end;
    end
    else if ptotal = tgSim then
    begin
      total := TRLDBResult.Create(Self);

      if ptxtGrupo  = agSim then
      begin
        bndFooterGrupo.Visible:=true;
        total.Parent := bndFooterGrupo;
      end
      else
      begin
        bndFooter.Visible:=true;
        total.Parent := bndFooter;
      end;

      with total do
      begin
        Font.Size:=8;
        Font.Style:=[fsBold];
        Info := riSum;
       // DataFormula := 'SUM(TOTAL)';
        Text := pCaption;
        if pAutoSize  = asNao then
        begin
          AutoSize := False;
          Width := pwidth;
        end;

        Left := pleft;
        Top := ptop;
        DataSource:= dsAux;
        DataField := pFieldName;
        if ptxtGrupo  = agSim then
          Name := 'rstdbgrp'+pFieldName
        else
          Name := 'rstdb'+pFieldName;
        DisplayMask :='';
        if pDisplayMask<>'' then
        begin
          DisplayMask := pDisplayMask;
          Alignment := taRightJustify;
        end;

        if alinDireita = raDireita then
        begin
          Align := faRightOnly;
        end;
      end;
    end;
  end
  else
  begin
    oMemo := TRLDBMemo.Create(self);
    oMemo.Parent := bndDetalhe;

    with oMemo do
    begin
      Left := pleft;
      Top := ptop;
      DataSource:= dsAux;
      DataField := pFieldName;
      if alinDireita = raDireita then
        Align := faRightOnly;

    end;
  end;
end;




procedure TrptRelatorio.rldbtxtBLOQUEADOBeforePrint(Sender: TObject;
  var AText: string; var PrintIt: Boolean);
begin
  if AText = '0' then
    AText := 'Não'
  else
    AText := 'Sim';

end;

procedure TrptRelatorio.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  try
   dmAcesso.QyFiliais.Locate('ID',Estabelecimento,[loCaseInsensitive]);
     img1.Picture :=nil;

    if not FileExists(FsPastaApp+'\Imagens\' + IntToStr(Estabelecimento) +'.jpg') then
      if TBlobField(dmAcesso.QyFiliais.FieldByName('LOGOMARCA')).BlobSize > 0 then
        TBlobField(dmAcesso.QyFiliais.FieldByName('LOGOMARCA')).SaveToFile( FsPastaApp + '\Imagens\' + IntToStr(Estabelecimento) + '.jpg' );
    if FileExists(FsPastaApp+'\Imagens\' + IntToStr(Estabelecimento) + '.jpg') then
      img1.Picture.LoadFromFile(FsPastaApp+'\Imagens\' + IntToStr(Estabelecimento) + '.jpg');


  except on E: Exception do

  end;

  rlblFantasia.Caption := dmAcesso.QyFiliais.FieldByName('FANTASIA').AsString;

  rlblEndereco.Caption := dmAcesso.QyFiliais.FieldByName('ENDERECO').AsString
  + ' Nº ' +dmAcesso.QyFiliais.FieldByName('NUMERO').AsString
  + ' ' +dmAcesso.QyFiliais.FieldByName('BAIRRO').AsString
  + ' ' +  dmAcesso.QyFiliais.FieldByName('NOME_MUNICIPIO').AsString
  + '/' +  dmAcesso.QyFiliais.FieldByName('SIGLA').AsString
  ;

  rlblTelefones.Caption := 'Fones: '+dmAcesso.QyFiliais.FieldByName('FONE').AsString + ' ' + dmAcesso.QyFiliais.FieldByName('CELULAR').AsString;
  rlblEmail.Caption := 'e-mail: '+dmAcesso.QyFiliais.FieldByName('EMAIL').AsString;

  //RLPDFFilter1.FileName := FsPastaExporta;
end;

end.
