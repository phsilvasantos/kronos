unit uFrmCentralRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, JvExExtCtrls,
  JvNavigationPane, JvExControls, JvXPCore, JvXPButtons, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvExForms, JvScrollBox, Datasnap.DBClient,
  Datasnap.Provider, Vcl.StdCtrls, JvCombobox, JvExStdCtrls, JvDBCombobox,
  JvDBLookup, Vcl.ComCtrls, MidasLib;

type
  TFrmCentralRelatorios = class(TForm)
    dbgrd1: TJvDBGrid;
    btn2: TJvXPButton;
    JvOutlookSplitter1: TJvOutlookSplitter;
    dsListaRelatorios: TDataSource;
    dspRelatorios: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    ScrollBox1: TScrollBox;
    grpDataEmissao: TGroupBox;
    chkEmissaoInicial: TCheckBox;
    chkEmissaoFinal: TCheckBox;
    dtpDataEmissaoInicial: TDateTimePicker;
    dtpDataEmissaoFinal: TDateTimePicker;
    grpMarca: TGroupBox;
    clkMarcas: TJvDBLookupCombo;
    chkAllMarca: TCheckBox;
    pnl2: TPanel;
    rgTipoContato: TRadioGroup;
    grpBloqueado: TGroupBox;
    cbbBloqueado: TComboBox;
    grpGrupo: TGroupBox;
    clkGrupo: TJvDBLookupCombo;
    chkAllGrupo: TCheckBox;
    grpTipoPedido: TGroupBox;
    lbl4: TLabel;
    cbbTipoPedido: TJvDBComboBox;
    grpVencimento: TGroupBox;
    chkVencimentoInicial: TCheckBox;
    chkVencimentoFinal: TCheckBox;
    dtpDataVenctoInicial: TDateTimePicker;
    dtpDataVenctoFinal: TDateTimePicker;
    grpDepartamento: TGroupBox;
    clkDepartamento: TJvDBLookupCombo;
    chkAllDepartamento: TCheckBox;
    grpMecanico: TGroupBox;
    clkCbbMecanico: TJvDBLookupCombo;
    chkAllMecanico: TCheckBox;
    grpCategoria: TGroupBox;
    clkCategoria: TJvDBLookupCombo;
    chkAllCategoria: TCheckBox;
    grpTipoLancamento: TGroupBox;
    lblTipoVenda: TLabel;
    lblTipoVenda2: TLabel;
    cbbTipoLancamento: TComboBox;
    cbbSituacao: TComboBox;
    grpOrdem: TGroupBox;
    cbbColunaOrdem: TComboBox;
    cbbOrdem: TComboBox;
    grpProdutos: TGroupBox;
    clkProdutos: TJvDBLookupCombo;
    chkAllProdutos: TCheckBox;
    grpExibeCampo: TGroupBox;
    chkApelido: TCheckBox;
    grpFornecedor: TGroupBox;
    clkFornecedor: TJvDBLookupCombo;
    chkAllFornecedor: TCheckBox;
    grpCliente: TGroupBox;
    clkCliente: TJvDBLookupCombo;
    chkAllCliente: TCheckBox;
    grpMes: TGroupBox;
    cbbMes: TJvComboBox;
    grpAno: TGroupBox;
    cbbAno: TJvComboBox;
    grpSituacaoOS: TGroupBox;
    cbbSitOS: TJvComboBox;
    grpFilialCorrente: TGroupBox;
    clkFilialCorrente: TJvDBLookupCombo;
    grpTP: TGroupBox;
    clkTabelaPreco: TJvDBLookupCombo;
    grpCFOP: TGroupBox;
    chkCFOP: TCheckBox;
    edtCFOP: TEdit;
    grpCondicaoPagamento: TGroupBox;
    clkCondPagto: TJvDBLookupCombo;
    chkAllCondPagto: TCheckBox;
    grpUsuario: TGroupBox;
    clkVendedor: TJvDBLookupCombo;
    chkUsuario: TCheckBox;
    grpCidades: TGroupBox;
    clkLkpCidades: TJvDBLookupCombo;
    chkSelectedCidade: TCheckBox;
    grpRotas: TGroupBox;
    clkLkpRotas: TJvDBLookupCombo;
    chkRotaSelected: TCheckBox;
    dsMarcas: TDataSource;
    dsGrupos: TDataSource;
    dsRotas: TDataSource;
    dsCidades: TDataSource;
    dsContatos: TDataSource;
    grpEstoquePositivo: TGroupBox;
    chkEstoque: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure cdsRelatorioAfterScroll(DataSet: TDataSet);
    procedure btn2Click(Sender: TObject);
    procedure cbbSituacaoCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCentralRelatorios: TFrmCentralRelatorios;

implementation

uses
  udmAcesso, urptRelatorio, krnVarGlobais, Funcoes, urptRelatorioPaisagem;

{$R *.dfm}

procedure TFrmCentralRelatorios.btn2Click(Sender: TObject);
const
  aTipoLancamento : array[1..2] of string = ('Titulos a Receber', 'Titulo a Pagar');
var
  vsp: string;
begin
  if cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de haking de produto por marca' then
  begin
    try
      Application.CreateForm(TrptRelatorio,rptRelatorio);
      with rptRelatorio.qyAux do
      begin
        Close;
        SQL.Clear;



        Open();


      end;
    finally
      FreeAndNil(rptRelatorio);
    end;
  end
  else
  if cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos' then
  begin
    try
      Application.CreateForm(TrptRelatorio,rptRelatorio);
      with rptRelatorio.qyAux do
      begin

        Close;
        SQL.Clear;
        SQL.Add('SELECT P.ID, P.GTIN,P.DESCRICAO,P.PRECO,');
        SQL.Add('COALESCE(E.ESTOQUE_QTD,0) AS ESTOQUE_QTD,P.BLOQUEADO,P.PRECO_COMPRA,');
        SQL.Add('U.CODIGO,P.NCM, (P.PRECO*E.ESTOQUE_QTD) AS TOTAL ');
        SQL.Add('FROM PRODUTO P ');
        SQL.Add('INNER JOIN UNIDADE U ON U.ID=P.ID_UNIDADE');
        SQL.Add('LEFT JOIN ESTOQUE E ON E.ID_PRODUTO = P.ID AND E.ID_FILIAL =:pID_FILIAL');
        sql.Add('WHERE 1=1');

        if grpEstoquePositivo.Visible then
        begin
          if chkEstoque.Checked then
            sql.Add(' and E.ESTOQUE_QTD>0');
        end;

        if grpBloqueado.Visible then
        begin
          if cbbBloqueado.ItemIndex = 0 then
          begin
            SQL.Add('AND P.BLOQUEADO = 0');
            vsp := vsp + 'Produtos ativos';
          end
          else if cbbBloqueado.ItemIndex = 1 then
          begin
            SQL.Add('AND P.BLOQUEADO = 1');
            vsp := vsp + 'Produtos bloqueados';
          end;
        end;

        if not chkAllMarca.Checked then
        begin
          SQL.Add('AND P.ID_MARCA =:ParamID_MARCA ');
          ParamByName('ParamID_MARCA').AsInteger := clkMarcas.KeyValue;
          vsp := vsp + ' Marca: ' +clkMarcas.Text;
        end;


        if not chkAllGrupo.Checked then
        begin
          SQL.Add('AND P.ID_GRUPOPRODUTO =:ParamID_GRUPOPRODUTO');
          ParamByName('ParamID_GRUPOPRODUTO').AsInteger := clkGrupo.KeyValue;
          vsp := vsp + ' Grupo: ' +clkGrupo.Text;
        end;


        SQL.Add('ORDER BY P.DESCRICAO ');
        ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
        Open;
        if IsEmpty then
        begin
          AlertaInfo('Sem registro');
          Exit;
        end;
      end;

      rptRelatorio.criaComponente(8,3,'GTIN/EAN','GTIN');
      rptRelatorio.criaComponente(100,3,'Descrição do produto','DESCRICAO',raEsquerda,asnao,300);
      rptRelatorio.criaComponente(500,3,'Preço','PRECO',raEsquerda,asSim,0,fsMascara(2));
      rptRelatorio.criaComponente(550,3,'Estoque','ESTOQUE_QTD',raEsquerda,asSim,0,fsMascara(1));
      rptRelatorio.criaComponente(1,3,'Total','TOTAL', raDireita,assim,0,fsMascara(2));
      rptRelatorio.criaComponente(1,3,'Total (Prc. Venda * Estoque) ->','TOTAL', raDireita,asSim,0,'',tgSim);

      rptRelatorio.rlblParametros.Caption := vsP;
      rptRelatorio.rlblTitulo.Caption := cdsRelatorio.FieldByName('NOME').AsString;
      rptRelatorio.RLReport1.Preview;
    finally
      FreeAndNil(rptRelatorio);
    end;
  end

  else
  if cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos (Inventario)' then
  begin
    try
      Application.CreateForm(TrptRelatorio,rptRelatorio);
      with rptRelatorio.qyAux do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT P.ID, P.GTIN,P.DESCRICAO,P.PRECO,');
        SQL.Add('COALESCE(E.ESTOQUE_QTD,0) AS ESTOQUE_QTD,P.BLOQUEADO,P.PRECO_COMPRA,');
        SQL.Add('U.CODIGO,P.NCM ');
        SQL.Add('FROM PRODUTO P ');
        SQL.Add('INNER JOIN UNIDADE U ON U.ID=P.ID_UNIDADE');
        SQL.Add('LEFT JOIN ESTOQUE E ON E.ID_PRODUTO = P.ID AND E.ID_FILIAL =:pID_FILIAL');
        sql.Add('WHERE 1=1');


        if grpBloqueado.Visible then
        begin
          if cbbBloqueado.ItemIndex = 0 then
          begin
            SQL.Add('AND P.BLOQUEADO = 0');
            vsp := vsp + 'Produtos ativos';
          end
          else if cbbBloqueado.ItemIndex = 1 then
          begin
            SQL.Add('AND P.BLOQUEADO = 1');
            vsp := vsp + 'Produtos bloqueados';
          end;
        end;

        if not chkAllMarca.Checked then
        begin
          SQL.Add('AND P.ID_MARCA =:ParamID_MARCA ');
          ParamByName('ParamID_MARCA').AsInteger := clkMarcas.KeyValue;
          vsp := vsp + ' Marca: ' +clkMarcas.Text;
        end;


        if not chkAllGrupo.Checked then
        begin
          SQL.Add('AND P.ID_GRUPOPRODUTO =:ParamID_GRUPOPRODUTO');
          ParamByName('ParamID_GRUPOPRODUTO').AsInteger := clkGrupo.KeyValue;
          vsp := vsp + ' Grupo: ' +clkGrupo.Text;
        end;


        SQL.Add('ORDER BY P.DESCRICAO ');
        ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
        Open;
        if IsEmpty then
        begin
          AlertaInfo('Sem registro');
          Exit;
        end;
      end;

      rptRelatorio.criaComponente(8,3,'GTIN/EAN','GTIN');
      rptRelatorio.criaComponente(100,3,'Descrição do produto','DESCRICAO',raEsquerda,asnao,300);
      rptRelatorio.criaComponente(500,3,'Qtd. Atual','ESTOQUE_QTD',raEsquerda,asSim,0,fsMascara(1));
      rptRelatorio.criarLabel(700,3,'______','Qtd. Inv.', raDireita);
 //     rptRelatorio.criaComponente(1,3,'Bloqueado?','BLOQUEADO', raDireita);

      rptRelatorio.rlblParametros.Caption := vsP;
      rptRelatorio.rlblTitulo.Caption := cdsRelatorio.FieldByName('NOME').AsString;
      rptRelatorio.RLReport1.Preview;
    finally
      FreeAndNil(rptRelatorio);
    end;
  end

  else if cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Contatos' then
  begin
    try
      Application.CreateForm(TrptRelatorio,rptRelatorio);
      with rptRelatorio.qyAux do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT GC.NOME GRUPO_CONTATO, CONTATO.NOME, FMT_CPFCNPJ(CONTATO.DOCUMENTO) AS DOCUMENTO,');
        SQL.Add(' CONTATO.INSC_ESTADUAL, CONTATO.TELEFONE, ');
        SQL.Add('CONTATO.CELULAR, CONCAT(MUNICIPIO.NOME, " / ", ESTADO.SIGLA) AS NOME_MUNICIPIO ');
        SQL.Add(' FROM CONTATO ');
        SQL.Add('INNER JOIN MUNICIPIO ON MUNICIPIO.ID=CONTATO.ID_MUNICIPIO');
        SQL.Add('INNER JOIN ESTADO ON ESTADO.ID = MUNICIPIO.ID_ESTADO');
        SQL.Add('INNER JOIN CONTATOGRUPOCONTATO CGC ON CGC.ID_CONTATO=CONTATO.ID ');
        SQL.Add('INNER JOIN GRUPOCONTATO GC ON GC.ID= CGC.ID_GRUPOCONTATO ');
        SQL.Add('WHERE 1=1');

        case rgTipoContato.ItemIndex of
          0,1,2,3,4: //cliente
          begin
            SQL.Add('and GC.ID=:pID_GRUPO  ');
            ParamByName('pID_GRUPO').AsInteger :=  rgTipoContato.ItemIndex + 1;
          end;
        end;

        if grpBloqueado.Visible then
        begin
          if cbbBloqueado.ItemIndex = 0 then
          begin
            SQL.Add('AND CONTATO.BLOQUEADO = 0');
            vsp := vsp + 'Contatos ativos';
          end
          else if cbbBloqueado.ItemIndex = 1 then
          begin
            SQL.Add('AND CONTATO.BLOQUEADO = 1');
            vsp := vsp + 'Contatos bloqueados';
          end;
        end;


        if (grpCidades.Visible) and (chkSelectedCidade.Checked) then
        begin
          sql.Add('AND ID_MUNICIPIO =:pIdMun');
          ParamByName('pIdMun').AsInteger := clkLkpCidades.KeyValue;
        end;

        if (grpRotas.Visible) and (chkRotaSelected.Checked) and (clkLkpRotas.KeyValue <> null) then
        begin
          SQL.Add(' AND ID_ROTA =:pIdRota');
          ParamByName('pIdRota').AsInteger:= clkLkpRotas.KeyValue;
          vsp := vsp+' - Rota: ' + clkLkpRotas.Text;
        end;

        SQL.Add('GROUP BY GC.NOME, CONTATO.NOME, CONTATO.DOCUMENTO ');
        SQL.Add('ORDER BY GC.NOME, CONTATO.NOME, CONTATO.DOCUMENTO ');

        Open;
        if IsEmpty then
        begin
          AlertaInfo('Sem registro');
          Exit;
        end;
      end;

      rptRelatorio.criaComponente(8,3,'Nome do contato','NOME', raEsquerda, asNao , 250);
      rptRelatorio.criaComponente(280,3,'CPF/CNPJ','DOCUMENTO');
      rptRelatorio.criaComponente(430,3,'Município/UF','NOME_MUNICIPIO');
      rptRelatorio.criaComponente(550,3,'Telefone','TELEFONE');
      rptRelatorio.criaComponente(630,3,'Celular','CELULAR');
      rptRelatorio.rlblTitulo.Caption := 'Listagem de Contatos';
      rptRelatorio.RLReport1.Preview;
    finally
      FreeAndNil(rptRelatorio);
    end;
  end
  else
  if cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento' then //21
  begin

    try
      Application.CreateForm(TrptRelatorioPaisagem,rptRelatorioPaisagem);
      with rptRelatorioPaisagem.qyAux do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT ');
        SQL.Add('CP.NOME CONDICAOPAGAMENTO,');
        if chkApelido.Checked then
          SQL.Add('C.APELIDO NOME_CONTATO,')
        else
          SQL.Add('C.NOME NOME_CONTATO,');
        SQL.Add('L.ID,');
        SQL.Add('L.PARCELA,');
        SQL.Add('L.DOCUMENTO, ');
        SQL.Add('L.TIPO_LANCAMENTO, ');
        SQL.Add('L.EMISSAO,');
        SQL.Add('L.VENCIMENTO,');
        SQL.Add('L.BAIXA,');
        SQL.Add('L.VALOR,');
        SQL.Add('L.JUROS,');
        SQL.Add('L.MULTA,');
        SQL.Add('L.DESCONTO,');
        SQL.Add('CASE WHEN L.SITUACAO ="AB" THEN "Aberto" else "Liquidado" end as SITUACAO,');
        SQL.Add('L.VALORPAGO,');
        SQL.Add('L.DESCRICAO');
        SQL.Add('FROM LANCAMENTO L ');
        SQL.Add('INNER JOIN CONDICAOPAGAMENTO CP ON CP.ID = L.ID_CONDICAOPAGAMENTO ');
        SQL.Add('INNER JOIN CONTATO C ON C.ID = L.ID_CONTATO ');
        SQL.Add('WHERE L.ID_FILIAL=:pID_FILIAL ');
        ParamByName('pID_FILIAL').AsInteger := Estabelecimento;
        if grpTipoLancamento.Visible then
        begin
          case cbbSituacao.ItemIndex of
            0:
            begin
              SQL.Add(' AND L.SITUACAO =:pSITUACAO');
              ParamByName('pSITUACAO').AsString := 'AB';
            end;
            1:
            begin
              SQL.Add(' AND L.SITUACAO =:pSITUACAO');
              ParamByName('pSITUACAO').AsString := 'BX';
            end;
            2:
            begin
              SQL.Add(' AND L.SITUACAO =:pSITUACAO');
              ParamByName('pSITUACAO').AsString := 'LQ';
            end;
          end;

          case cbbTipoLancamento.ItemIndex of
            0:
            begin
              SQL.Add('AND TIPO_LANCAMENTO = "C"');

            end;
            1:
            begin
              SQL.Add('AND TIPO_LANCAMENTO = "D"');
            end;
          end;
        end;

        if grpDataEmissao.Visible then
        begin
          if chkEmissaoInicial.Checked then
          begin
            SQL.Add('AND EMISSAO >=:pEMISSAO1');
            ParamByName('pEMISSAO1').AsDate := dtpDataEmissaoInicial.Date;
            vsp := vsp + ' Da emissão ' + FormatDateTime('dd/MM/yyyy',dtpDataEmissaoInicial.Date);
          end;
          if chkEmissaoFinal.Checked then
          begin
            SQL.Add('AND EMISSAO <=:pEMISSAO2');
            ParamByName('pEMISSAO2').AsDate := dtpDataEmissaoFinal.Date;
            vsp := vsp + ' ate emissão ' + FormatDateTime('dd/MM/yyyy',dtpDataEmissaoFinal.Date);
          end;
        end;

        if grpVencimento.Visible then
        begin
          if chkVencimentoInicial.Checked then
          begin
            if (cbbSituacao.ItemIndex = 2)  OR (cbbSituacao.ItemIndex = 1) then
            begin
              SQL.Add('AND L.BAIXA >=:pVENCTO1');
              ParamByName('pVENCTO1').AsDate := dtpDataVenctoInicial.Date;
              vsp := vsp + ' Da baixa ' + FormatDateTime('dd/MM/yyyy',dtpDataVenctoInicial.Date);
            end
            else
            begin
              SQL.Add('AND VENCIMENTO >=:pVENCTO1');
              ParamByName('pVENCTO1').AsDate := dtpDataVenctoInicial.Date;
              vsp := vsp + ' ate vencto ' + FormatDateTime('dd/MM/yyyy',dtpDataVenctoInicial.Date);
            end;
          end;
          if chkVencimentoFinal.Checked then
          begin
            if (cbbSituacao.ItemIndex = 2) OR (cbbSituacao.ItemIndex = 1)  then
            begin
              SQL.Add('AND L.BAIXA <=:pVENCTO2');
              ParamByName('pVENCTO2').AsDate := dtpDataVenctoFinal.Date;
              vsp := vsp + ' ate baixa ' + FormatDateTime('dd/MM/yyyy',dtpDataVenctoFinal.Date);
            end
            else
            begin
              SQL.Add('AND VENCIMENTO <=:pVENCTO2');
              ParamByName('pVENCTO2').AsDate := dtpDataVenctoFinal.Date;
              vsp := vsp + ' ate vencto ' + FormatDateTime('dd/MM/yyyy',dtpDataVenctoFinal.Date);
            end;
          end;

        end;


        if (grpRotas.Visible) and (chkRotaSelected.Checked) and (clkLkpRotas.KeyValue <> null) then
        begin
          SQL.Add(' AND C.ID_ROTA =:pIdRota');
          ParamByName('pIdRota').AsInteger:= clkLkpRotas.KeyValue;
          vsp := ' - Rota: ' + clkLkpRotas.Text;
        end;


        if grpCliente.Visible then begin
          if not chkAllCliente.Checked then begin
            sql.Add('AND L.ID_CONTATO =:idContato');
            ParamByName('idContato').AsInteger := clkCliente.KeyValue;
          end;
        end;



        if grpOrdem.Visible then
        begin
          case cbbColunaOrdem.ItemIndex of
             0: SQL.Add('ORDER BY L.VENCIMENTO ');
             1: SQL.Add('ORDER BY L.EMISSAO ');
             2: SQL.Add('ORDER BY L.BAIXA');
             3: SQL.Add('ORDER BY L.VALOR');
             4:
             begin
               if chkApelido.Checked then
                 SQL.Add('ORDER BY C.APELIDO')
               else
                 SQL.Add('ORDER BY C.NOME');
             end;
             5:
             begin
              if chkApelido.Checked then
                SQL.Add('ORDER BY CP.NOME, C.APELIDO')
              else
                SQL.Add('ORDER BY CP.NOME, C.NOME');

             end;
          end;
          if cbbOrdem.ItemIndex = 1 then
            SQL.Add('DESC ');
        end;

        Open;
        if IsEmpty then
        begin
          AlertaInfo('Sem registro');
          Exit;
        end;
      end;

      rptRelatorioPaisagem.criaComponente(8,3,'Situação','SITUACAO');
      rptRelatorioPaisagem.criaComponente(70,3,'Documento','DOCUMENTO');
      rptRelatorioPaisagem.criaComponente(140,3,'Parc.','PARCELA');

      if cbbTipoLancamento.ItemIndex =0 then
        rptRelatorioPaisagem.criaComponente(180,3,'Nome do cliente','NOME_CONTATO',raEsquerda,asnao,300)
      else
        rptRelatorioPaisagem.criaComponente(180,3,'Nome do fornecedor','NOME_CONTATO',raEsquerda,asnao,300);

     rptRelatorioPaisagem.criaComponente(480,3,'Forma Pagto','CONDICAOPAGAMENTO',raEsquerda,asnao,150);
     rptRelatorioPaisagem.criaComponente(640,3,'Emissão','EMISSAO',raEsquerda,asnao,70);
     rptRelatorioPaisagem.criaComponente(710,3,'Vencto','VENCIMENTO',raEsquerda,asnao,70);
     rptRelatorioPaisagem.criaComponente(780,3,'Dt. baixa','BAIXA',raEsquerda,asnao,70);
     rptRelatorioPaisagem.criaComponente(880,3,'Valor','VALOR', raEsquerda,asSim,0,fsMascara(2));
     rptRelatorioPaisagem.criaComponente(1,3,'Vlr Pago','VALORPAGO', raDireita,asSim,0,fsMascara(2));
     rptRelatorioPaisagem.criaComponente(804,3,'Total-> ','VALOR', raEsquerda,asSim,0,fsMascara(2,'R$'),tgSim);
     rptRelatorioPaisagem.criaComponente(874,3,'','VALORPAGO', raDireita,asSim,0,fsMascara(2,'R$'),tgSim);

     rptRelatorioPaisagem.rlblTitulo.Caption := cdsRelatorio.FieldByName('NOME').AsString;
     rptRelatorioPaisagem.rlblParametros.Caption:= aTipoLancamento[cbbTipoLancamento.ItemIndex+1] + vsp;
     rptRelatorioPaisagem.RLReport1.Preview;
    finally
      FreeAndNil(rptRelatorioPaisagem);
    end;
  end


end;

procedure TFrmCentralRelatorios.cbbSituacaoCloseUp(Sender: TObject);
begin
  case cbbSituacao.ItemIndex of
    0: grpVencimento.Caption := ' Vencimento';
    1: grpVencimento.Caption := ' Baixa';
    2: grpVencimento.Caption := ' Baixa';
  else
   grpVencimento.Caption := ' Vencimento';
  end;
end;

procedure TFrmCentralRelatorios.cdsRelatorioAfterScroll(DataSet: TDataSet);
begin
  cbbBloqueado.ItemIndex := 0; //default

  grpEstoquePositivo.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos');

  grpMarca.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos por marca')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Etiqueta de Produtos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Produtos com estoque mínimo')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos')
  ;


  grpGrupo.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos por grupo')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Etiqueta de Produtos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produto vendidos por grupo')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos com custo')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos')

;


  rgTipoContato.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Contatos')
       ;

  grpDepartamento.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos por Departamento')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Etiqueta de Produtos');

  grpBloqueado.Visible :=
  (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Contatos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Unidades')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Grupo de produtos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos mais vendidos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Marcas')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Departamentos')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Conta corrente')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Condições de Pagamento')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Formas de Pagamento')//12
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Naturezas')//13
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Bancos')//14
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de CFOPs')//15
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Grades')//16
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Subgrades')//17
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Cores')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos por marca')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos por grupo')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos por Departamento')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Produtos')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de NCM')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Regiões')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Países')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Estados')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Municípios')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Visilhames')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Veículos')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Tipo de Veículo')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Agencia')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Produtos com estoque mínimo')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de estoque do produto com preço de custo')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Custo do Produto')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos (Inventario)')


   ;//18

   grpCategoria.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Produtos com estoque mínimo');

  grpTP.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Lista de produto por Tabela de Preço');

  grpTipoLancamento.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento');
  grpVencimento.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento');

  grpDataEmissao.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Vendas por Forma de Pagamento')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Comissao de Mecanico')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Produtos vendidos por forma de pagamento')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Faturamento por período')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Auditoria de Pedido por período')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por tipo')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por Vendedor')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos com custo')

  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Notas fiscais de entrada')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos comprado')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos detalhado por cliente')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos por Condição de Pagto')
  OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem lançamento por natureza')
  //OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem Ordem de Serviço')
  ;


  grpCondicaoPagamento.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos por Condição de Pagto');

  grpCFOP.Visible :=   (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por tipo');


  if (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem lançamento por natureza') then
  begin
   grpDataEmissao.Caption := 'Data da baixa';
  end;
  if (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem Ordem de Serviço') then
  begin
    grpDataEmissao.Caption := 'Dt. Saída/Finalizada';
    grpDataEmissao.Visible := True;

    grpVencimento.Caption := 'Dt. Entrada';
    grpVencimento.Visible := True;
  end;
  grpSituacaoOS.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem Ordem de Serviço');

  grpFornecedor.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Notas fiscais de entrada');

  grpCliente.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por tipo')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Vendas por Forma de Pagamento')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem Ordem de Serviço')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos detalhado por cliente')
    or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de endereço dos contatos')
    ;


  grpExibeCampo.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento');

  grpTipoPedido.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por tipo')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos com custo')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos detalhado por cliente')
    OR (cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos por Condição de Pagto')

;

  grpMecanico.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Comissao de Mecanico');

  grpProdutos.Visible := (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos')
   OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos comprado')
   OR (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produtos vendidos com custo')
   OR (cdsRelatorio.FieldByName('NOME').AsString = 'Histórico de vendas anual')
   ;

  grpMes.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Relatório de Faturamento Anual')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Relatório de produtos vendidos mensalmente')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Histórico de vendas anual')
  ;

  grpAno.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Relatório de Faturamento Anual')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Relatório de produtos vendidos mensalmente')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de produto vendidos por grupo')
  or (cdsRelatorio.FieldByName('NOME').AsString = 'Histórico de vendas anual')
  ;


//    lblEmissaoInicial.Checked := True;
//    lblEmissaoFinal.Checked := True;


  if (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por Vendedor') then
  begin
    grpMecanico.Visible := True;
    grpMecanico.Caption := ' Vendedores';
    chkAllMecanico.Caption := 'Todos os Vendedores';
    chkAllMecanico.Checked := true;

//    with QyMecanico do
//    begin
//      Close;
//      SQL.Clear;
//      sql.Add(xVENDEDORES + ' ORDER BY USUARIO.NOME');
//      Open;
//      CbbMecanico.KeyValue:= FieldByName('ID').AsInteger;
//    end;
  end
  else
  begin
//    with QyMecanico do
//    begin
//      Close;
//      SQL.Clear;
//      sql.Add(xMECANICO + ' ORDER BY CONTATO.NOME');
//      Open;
//      CbbMecanico.KeyValue:= FieldByName('ID').AsInteger;
//    end;

    grpMecanico.Caption := ' Mecânicos';
    chkAllMecanico.Caption := 'Todos os Mecânicos';
    chkAllMecanico.Checked := True;
  end;
  grpOrdem.Visible:= (cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Lançamento');

//  if cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Pedidos por tipo' then
//    TipoPedido('PED');
//
//  if cdsRelatorio.FieldByName('NOME').AsString = 'Lista de Pedidos por Condição de Pagto' then
//    TipoPedido('NF');

  grpCidades.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Contatos')
  or (cdsRelatorio.FieldByName('NOME').AsString ='Listagem de endereço dos contatos')

  ;

  grpRotas.Visible :=(cdsRelatorio.FieldByName('NOME').AsString = 'Listagem de Contatos')
  or
  (cdsRelatorio.FieldByName('NOME').AsString ='Listagem de endereço dos contatos' )
  or (cdsRelatorio.FieldByName('NOME').AsString ='Listagem de produtos vendidos')
  or (cdsRelatorio.FieldByName('NOME').AsString ='Listagem de Lançamento')

  ;
  if (cdsRelatorio.FieldByName('NOME').AsString ='Listagem de Lançamento') then
    chkRotaSelected.Checked := False;

//  if grpRotas.Visible then
//  begin
//    qyRotas.Close;
//    qyRotas.Open;
//    qyRotas.First;
//
//    cbLkpRotas.KeyValue:= qyRotas.FieldByName('ID').AsInteger;
//  end
//  else
//  begin
//    qyRotas.Close;
//  end;


end;

procedure TFrmCentralRelatorios.FormShow(Sender: TObject);
begin
  ScrollBox1.Align := alClient;
  self.Height := 500;
  self.Width := 700;
  dtpDataEmissaoInicial.Date := Now;
  dtpDataEmissaoFinal.Date := Now;
  dtpDataVenctoInicial.Date := Now;
  dtpDataVenctoFinal.Date := Now;

  if Trim(self.Hint) <> '' then
  begin
    cdsRelatorio.Close;
    cdsRelatorio.Open;
    cdsRelatorio.Filter := 'TABELA = ' + QuotedStr(Self.Hint);
    cdsRelatorio.Filtered := True;

    dsMarcas.DataSet.Refresh;
    clkMarcas.KeyValue := dsMarcas.DataSet.FieldByName('ID').AsInteger;

    dsGrupos.DataSet.Refresh;
    clkGrupo.KeyValue := dsGrupos.DataSet.FieldByName('ID').AsInteger;

    //dsCidades.DataSet.Refresh;
    clkLkpCidades.KeyValue:= dsCidades.DataSet.FieldByName('ID').AsInteger;

    dsRotas.DataSet.Refresh;
    clkLkpRotas.KeyValue:= dsRotas.DataSet.FieldByName('ID').AsInteger;

    dsContatos.DataSet.Refresh;
    clkCliente.KeyValue:= dsContatos.DataSet.FieldByName('ID').AsInteger;

  end;
end;

end.

{TODO}
{Remover os relatorios:
Listagem de produto por marca
Listagem de produto por grupo
Listagem de produto por Departamento

}
