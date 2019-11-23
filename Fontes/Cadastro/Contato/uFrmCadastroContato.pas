unit uFrmCadastroContato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, JvComponentBase,
  JvEnterTab, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls, JvDBImage, JvExMask, JvToolEdit,
  JvDBControls, Vcl.Mask, Vcl.Menus, JvDBCheckBox, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, ACBrBase, ACBrSocket, ACBrCEP, ACBrUtil, JvExStdCtrls,
  JvHtControls, JvExControls, JvDBLookup, pcnAuxiliar;

type
  TFrmCadastroContato = class(TFrmCadastro)
    lbl2: TLabel;
    edtNOME: TDBEdit;
    btnReceita: TJvBitBtn;
    lbl3: TLabel;
    edtAPELIDO: TDBEdit;
    lbl12: TLabel;
    edtENDERECO: TDBEdit;
    lbl13: TLabel;
    edtNUMERO: TDBEdit;
    edtCOMPLEMENTO: TDBEdit;
    lbl15: TLabel;
    edtBAIRRO: TDBEdit;
    btnBuscaCEP: TBitBtn;
    lbl20: TLabel;
    clkID_ESTADO: TDBLookupComboBox;
    clkID_MUNICIPIO: TDBLookupComboBox;
    lbl16: TLabel;
    lbl19: TLabel;
    edtTELEFONE_RES: TDBEdit;
    edtTELEFONE: TDBEdit;
    lbl17: TLabel;
    edtNOME_CONTATO: TDBEdit;
    lbl23: TLabel;
    lblEmail: TLabel;
    edtEMAIL: TDBEdit;
    lbl21: TLabel;
    edtFAX: TDBEdit;
    edtCELULAR: TDBEdit;
    lbl33: TLabel;
    edtDATA_ANIV: TJvDBDateEdit;
    Label2: TLabel;
    Panel1: TPanel;
    imgFoto: TJvDBImage;
    lbl14: TLabel;
    Label1: TLabel;
    edtCEP: TDBEdit;
    lbl6: TLabel;
    edtDOCUMENTO: TDBEdit;
    edtINSC_ESTADUAL: TDBEdit;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    ProcurarFoto1: TMenuItem;
    RemoverFoto1: TMenuItem;
    ckbBLOQUEADO: TJvDBCheckBox;
    tsGrupo: TTabSheet;
    Panel2: TPanel;
    dbgrdListaGrupoContato: TJvDBGrid;
    dsDetGrupoContato: TDataSource;
    clkGrupoContatos: TJvDBLookupCombo;
    lbl7: TLabel;
    btnAddGrupoContao: TBitBtn;
    btnRemoverGrupocontato: TBitBtn;
    dsLKPGrupoContato: TDataSource;
    pmFoto: TPopupMenu;
    Adicionarfoto1: TMenuItem;
    Removerfoto2: TMenuItem;
    dlgOpen1: TOpenDialog;
    ACBrCEP1: TACBrCEP;
    dsLKPEstados: TDataSource;
    dsLKPCidades: TDataSource;
    JvHTLabel1: TJvHTLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure clkID_ESTADOCloseUp(Sender: TObject);
    procedure btnRemoverGrupocontatoClick(Sender: TObject);
    procedure btnAddGrupoContaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Adicionarfoto1Click(Sender: TObject);
    procedure Removerfoto2Click(Sender: TObject);
    procedure btnBuscaCEPClick(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure btnReceitaClick(Sender: TObject);
    procedure edtDOCUMENTOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroContato: TFrmCadastroContato;

implementation

uses
  udmAcesso, krnVarGlobais, uFrmConsultaContatoReceita, Funcoes;

{$R *.dfm}

procedure TFrmCadastroContato.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
  i : Integer;
begin

  if ACBrCEP1.Enderecos.Count < 1 then
    AlertaError('Nenhum endereço encontrado.')
  else
  begin
     For I := 0 to ACBrCEP1.Enderecos.Count-1 do
     begin
       with ACBrCEP1.Enderecos[I] do
       begin

          if Trim(Tipo_Logradouro) <> '' then
            dsCadastro.DataSet.FieldByName('ENDERECO').AsString := Tipo_Logradouro + ' ' + Logradouro
          else
            dsCadastro.DataSet.FieldByName('ENDERECO').AsString := Logradouro;

          dsCadastro.DataSet.FieldByName('COMPLEMENTO').AsString := Complemento;
          if trim(Bairro) = '' then
            dsCadastro.DataSet.FieldByName('BAIRRO').AsString := 'CENTRO'
          else
            dsCadastro.DataSet.FieldByName('BAIRRO').AsString := Bairro;

          dsLKPEstados.DataSet.Locate('SIGLA', UF, [loCaseInsensitive]);
          clkID_ESTADO.KeyValue := dsLKPEstados.DataSet.FieldByName('ID').AsInteger;
          dsCadastro.DataSet.FieldByName('ID_ESTADO').AsInteger :=dsLKPEstados.DataSet.FieldByName('ID').AsInteger;

          dsLKPCidades.DataSet.Locate('ID_IBGE', StrToInt(TiraAcentos(IBGE_Municipio)), [loCaseInsensitive]);
          dsCadastro.DataSet.FieldByName('ID_MUNICIPIO').AsInteger :=dsLKPCidades.DataSet.FieldByName('ID').AsInteger;
          dmAcesso.dsLKPMunicipios.DataSet.Locate('ID',dsLKPCidades.DataSet.FieldByName('ID').AsInteger,[loCaseInsensitive]);
          clkID_MUNICIPIO.KeyValue := dsLKPCidades.DataSet.FieldByName('ID').AsInteger;
       end;
     end;
   end;
end;

procedure TFrmCadastroContato.Adicionarfoto1Click(Sender: TObject);
var
  JPG : TFileStream;
begin
  inherited;
  if (dlgOpen1.Execute) then begin
    JPG := TFileStream.Create(dlgOpen1.FileName,fmOpenRead);
    TBlobField( dsCadastro.DataSet.FieldByName('FOTO')).LoadFromStream(JPG);
  end;
  FreeAndNil(jpg);
end;

procedure TFrmCadastroContato.btnAddGrupoContaoClick(Sender: TObject);
begin
  inherited;
  if dsDetGrupoContato.DataSet.Locate('ID_GRUPOCONTATO',clkGrupoContatos.KeyValue,[loCaseInsensitive]) then
    raise Exception.Create('Grupo já adicionado.')
  else
  begin
    novoContatoGrupocontato(
      Estabelecimento,
      dsCadastro.DataSet.FieldByName('ID').AsInteger,
      clkGrupoContatos.KeyValue
      );
      dsDetGrupoContato.DataSet.Refresh;
  end;

end;

procedure TFrmCadastroContato.btnBuscaCEPClick(Sender: TObject);
begin
  inherited;
  if Trim(edtCEP.Text) <> '' then
  begin
    try
       ACBrCEP1.BuscarPorCEP(edtCEP.Text);
       edtNUMERO.SetFocus;
    except
       On E : Exception do begin
         ShowMessage(E.Message);
       end;
    end;
  end
  else
  begin
    edtCEP.SetFocus;
    AlertaInfo('Informe o CEP.');
  end;

end;

procedure TFrmCadastroContato.btnGravarClick(Sender: TObject);
begin
  inherited;
  if Trim( edtNOME.Text) = '' then
  begin
    edtNOME.SetFocus;
    raise Exception.Create('Informe o nome.');
  end;

  if Trim( edtDOCUMENTO.Text) <> '' then
  begin
    if not ValidarCNPJouCPF(Trim(edtDOCUMENTO.Text)) then
     raise Exception.Create('CPF/CNPJ inválido.');
  end;

  try
    dsCadastro.DataSet.Post;
    if Self.Tag=0 then
      novoContatoGrupocontato(Estabelecimento, dsCadastro.DataSet.FieldByName('ID').AsInteger,1);

    Close;
  except on E: Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFrmCadastroContato.btnReceitaClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFrmConsultaContatoReceita,FrmConsultaContatoReceita);
    FrmConsultaContatoReceita.ShowModal;
  finally

    if FrmConsultaContatoReceita.EditRazaoSocial.Text <> '' then begin
      if Length(OnlyNumber(FrmConsultaContatoReceita.EditCNPJ.Text)) = 14  then begin
        dsCadastro.DataSet.FieldByName('PESSOA').AsInteger := 2;
        dsCadastro.DataSet.FieldByName('DOCUMENTO').AsString :=OnlyNumber(FrmConsultaContatoReceita.EditCNPJ.Text);
      end;

      dsCadastro.DataSet.FieldByName('NOME').AsString    := FrmConsultaContatoReceita.EditRazaoSocial.Text;
      dsCadastro.DataSet.FieldByName('APELIDO').AsString := FrmConsultaContatoReceita.EditFantasia.Text;
      dsCadastro.DataSet.FieldByName('ENDERECO').AsString:= FrmConsultaContatoReceita.EditEndereco.Text;
      dsCadastro.DataSet.FieldByName('NUMERO').AsString  := FrmConsultaContatoReceita.EditNumero.Text;
      dsCadastro.DataSet.FieldByName('BAIRRO').AsString  := FrmConsultaContatoReceita.EditBairro.Text;
      dsCadastro.DataSet.FieldByName('CNAE').AsString    := OnlyNumber(Copy(FrmConsultaContatoReceita.EditCNAE1.Text,1,10));
      dsCadastro.DataSet.FieldByName('CEP').AsString     := OnlyNumber( FrmConsultaContatoReceita.EditCEP.Text);

      dmAcesso.dsLKPEstados.DataSet.Locate('SIGLA',Trim(FrmConsultaContatoReceita.EditUF.Text), [loCaseInsensitive]);
      clkID_ESTADO.KeyValue := dmAcesso.dsLKPEstados.DataSet.FieldByName('ID').AsInteger;
      dsCadastro.DataSet.FieldByName('ID_ESTADO').AsInteger := dmAcesso.dsLKPEstados.DataSet.FieldByName('ID').AsInteger;

      dsLKPCidades.DataSet.Locate('NOME_CIDADE',Trim(FrmConsultaContatoReceita.EditCidade.Text), [loCaseInsensitive]);
      dsCadastro.DataSet.FieldByName('ID_MUNICIPIO').AsInteger := dsLKPCidades.DataSet.FieldByName('ID').AsInteger;
      clkID_MUNICIPIO.KeyValue := dsLKPCidades.DataSet.FieldByName('ID').AsInteger;

      dsCadastro.DataSet.FieldByName('DATA_ANIV').AsDateTime := StrToDate(FrmConsultaContatoReceita.EditAbertura.Text);
    end;

    FreeAndNil(FrmConsultaContatoReceita);
  end;
end;

procedure TFrmCadastroContato.btnRemoverGrupocontatoClick(Sender: TObject);
begin
  inherited;
  if dsDetGrupoContato.DataSet.RecordCount>0 then
  begin
    if dsDetGrupoContato.DataSet.RecordCount=1 then
      raise Exception.Create('Pelo menos um grupo de ser incluído.')
    else
    begin
      if MessageBox(Handle, 'Deseja realmente apagar o registro?','Kronos', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then
      begin
        removerRegistro(dsDetGrupoContato.DataSet.FieldByName('ID').AsInteger,'CONTATOGRUPOCONTATO');
        dsDetGrupoContato.DataSet.Refresh;
      end;
    end;
  end;
end;

procedure TFrmCadastroContato.clkID_ESTADOCloseUp(Sender: TObject);
begin
  inherited;
  clkID_MUNICIPIO.KeyValue := dmAcesso.dsLKPMunicipios.DataSet.FieldByName('ID').AsInteger ;
end;

procedure TFrmCadastroContato.edtDOCUMENTOExit(Sender: TObject);
begin
  inherited;
  if Trim(edtDOCUMENTO.Text) = '' then
    dsCadastro.DataSet.FieldByName('DOCUMENTO').Clear;
end;

procedure TFrmCadastroContato.FormShow(Sender: TObject);
begin
  inherited;
  if Self.Tag=0 then
    tsGrupo.TabVisible := False
  else
  begin
    tsGrupo.TabVisible := True;
    clkGrupoContatos.KeyValue := dsLKPGrupoContato.DataSet.FieldByName('ID').AsInteger;
  end;
end;

procedure TFrmCadastroContato.Removerfoto2Click(Sender: TObject);
begin
  inherited;
  TBlobField(dsCadastro.DataSet.FieldByName('FOTO')).Clear;
end;

end.
