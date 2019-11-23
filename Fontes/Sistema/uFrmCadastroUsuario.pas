unit uFrmCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastro, JvComponentBase,
  JvEnterTab, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, Vcl.DBCtrls, JvDBCheckBox, JvExMask, JvToolEdit,
  JvBaseEdits, JvDBControls, Vcl.Mask, MD5, JvExStdCtrls, JvCombobox,
  JvDBCombobox, Vcl.WinXPickers, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmCadastroUsuario = class(TFrmCadastro)
    edtNOME: TDBEdit;
    edtLOGIN: TDBEdit;
    edtSENHA: TDBEdit;
    edtDESCONTO: TJvDBCalcEdit;
    edtPERC_COMISSAO: TJvDBCalcEdit;
    ckbGERENTE: TJvDBCheckBox;
    ckbVENDEDOR: TJvDBCheckBox;
    ckbBLOQUEADO: TJvDBCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lbl3: TLabel;
    Label3: TLabel;
    clkID_PERFIL: TDBLookupComboBox;
    dsLkpPerfisUsuarios: TDataSource;
    Label4: TLabel;
    tsMetasVenda: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    edtValorMeta: TJvCalcEdit;
    Label5: TLabel;
    dtpckrMesAno: TDatePicker;
    Label6: TLabel;
    QyVendedorMetas: TFDQuery;
    btnRemover: TBitBtn;
    dsVendedorMetas: TDataSource;
    btnIncluir: TBitBtn;
    procedure btnGravarClick(Sender: TObject);
    procedure cdsCadastroBeforePost(DataSet: TDataSet);
    procedure edtSENHAKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroUsuario: TFrmCadastroUsuario;

implementation

uses
  Funcoes, udmAcesso, krnVarGlobais;

{$R *.dfm}

procedure TFrmCadastroUsuario.btnGravarClick(Sender: TObject);
begin
  inherited;
  if Trim(edtNOME.Text)= '' then
  begin
    AlertaError('Informe o nome do usuário.');
    edtNOME.SetFocus;
    Exit;
  end;

  if Trim(edtLOGIN.Text)= '' then
  begin
    AlertaError('Informe o Login do usuário.');
    edtLOGIN.SetFocus;
    Exit
  end;


  if dsCadastro.DataSet.State IN [dsInsert] then
  begin
    if Trim(edtSENHA.Text)= '' then
    begin
      AlertaError('Informe o Senha do usuário.');
      edtSENHA.SetFocus;
      Exit;
    end;
  end;

  try
    dsCadastro.DataSet.BeforePost :=  cdsCadastroBeforePost; //embaralha senha


    if dsCadastro.DataSet.State IN [dsEdit] then
      if Trim(edtSENHA.Text)= '' then
        dsCadastro.DataSet.FieldByName('SENHA').ProviderFlags := [pfInWhere];


    dsCadastro.DataSet.Post;
    AlertaInfo('Usuário cadastrado com sucesso.');
    dsCadastro.DataSet.BeforePost := nil;
    Close;
  except on E: Exception do
    AlertaError(PChar( E.Message));
  end;
end;


procedure TFrmCadastroUsuario.btnIncluirClick(Sender: TObject);
begin
  inherited;
  if QyVendedorMetas.Locate('ANO;MES',VarArrayOf([ FormatDateTime('yyyy',dtpckrMesAno.Date), FormatDateTime('MM',dtpckrMesAno.Date) ]) ,[loCaseInsensitive]) then
  begin
    AlertaInfo('Meta já lançada');
    exit
  end
  else
  begin
    if edtValorMeta.Value = 0 then
    begin
      AlertaError('Informe o valor da meta');
      edtValorMeta.SetFocus;
      Exit;
    end
    else
    begin
      QyVendedorMetas.Insert;
      QyVendedorMetas.FieldByName('ID_FILIAL').AsInteger := Estabelecimento;
      QyVendedorMetas.FieldByName('ID_VENDEDOR').AsInteger := dsCadastro.DataSet.FieldByName('ID').AsInteger;
      QyVendedorMetas.FieldByName('ANO').AsInteger := StrToInt(FormatDateTime('yyyy',dtpckrMesAno.Date));
      QyVendedorMetas.FieldByName('MES').AsInteger := StrToInt(FormatDateTime('MM',dtpckrMesAno.Date));
      QyVendedorMetas.FieldByName('VALOR_META').AsFloat := edtValorMeta.Value;
      QyVendedorMetas.Post;
      AlertaInfo('Incluido com sucesso!');
    end;
  end;

end;

procedure TFrmCadastroUsuario.btnRemoverClick(Sender: TObject);
begin
  inherited;
  if QyVendedorMetas.RecordCount>0 then
    if Perguntar('Deseja realmente remover?') = IDYES then
      QyVendedorMetas.Delete;
end;

procedure TFrmCadastroUsuario.cdsCadastroBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
  begin
    DataSet.FieldByName('SENHA').AsString:= MD5String(IntToStr(nextId('USUARIO'))+
              DataSet.FieldByName('LOGIN').AsString+
              Trim(edtSENHA.Text));
  end
  else
  if (DataSet.State = dsEdit) and (Trim(edtSENHA.Text)<> '') then
  begin
    DataSet.FieldByName('SENHA').AsString:= MD5String(DataSet.FieldByName('ID').AsString+
              DataSet.FieldByName('LOGIN').AsString+
              Trim(edtSENHA.Text));
  end;



end;

procedure TFrmCadastroUsuario.edtSENHAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not(Key in ['0'..'9'])) and (Key<>#0) then
    Key:=#0;
end;

procedure TFrmCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  QyVendedorMetas.Open();
end;

end.
