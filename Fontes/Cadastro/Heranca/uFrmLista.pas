unit uFrmLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, JvExButtons,
  JvBitBtn, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvComponentBase, JvEnterTab, Vcl.Menus, JvExControls, JvMarkupLabel;

type
  TFrmLista = class(TForm)
    pnlOpcoes: TPanel;
    btnNovo: TJvBitBtn;
    btnEditar: TJvBitBtn;
    btnRemover: TJvBitBtn;
    btnOpcoes: TJvBitBtn;
    pnlBusca: TPanel;
    edtBusca: TLabeledEdit;
    dbgrdConsulta: TJvDBGrid;
    dsConsulta: TDataSource;
    JvBitBtn5: TJvBitBtn;
    Label1: TLabel;
    JvEnterAsTab1: TJvEnterAsTab;
    PopupMenu1: TPopupMenu;
    pnl1: TPanel;
    BtnPrior: TJvBitBtn;
    BtnNext: TJvBitBtn;
    lblUsuarioLogado: TJvMarkupLabel;
    procedure FormShow(Sender: TObject);
    procedure JvBitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPriorClick(Sender: TObject);
    procedure BtnNextClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private

    pagAtual: integer;
    FFieldOrderBy: string;
    FListaField: string;
    FTabela: string;
    FWhere: string;
    FInnerJoin: string;
    procedure SetFieldOrderBy(const Value: string);
    procedure SetListaField(const Value: string);
    procedure SetTabela(const Value: string);
    procedure buscar(const pInicial : integer=0; const pFinal : integer = 20);
    procedure SetWhere(const Value: string);
    procedure SetInnerJoin(const Value: string);
  public
    paginate : integer;
    property FieldOrderBy: string read FFieldOrderBy write SetFieldOrderBy;
    property ListaField : string read FListaField write SetListaField; //Lista dos campos SQL
    property Tabela: string read FTabela write SetTabela;
    property Where : string read FWhere write SetWhere;
    property InnerJoin: string read FInnerJoin write SetInnerJoin;
  end;

var
  FrmLista: TFrmLista;

implementation

{$R *.dfm}

uses udmAcesso, krnVarGlobais, krnConst;

procedure TFrmLista.BtnNextClick(Sender: TObject);
begin
  inc(pagAtual,20);

  if trim(edtBusca.Text) = '' then
//    lista('SELECT ' +  ListaField +' FROM '+ self.Tabela,FieldOrderBy,
//     '',self.InnerJoin,pagAtual,paginate)

    lista('SELECT ' +  ListaField +' FROM '+ self.Tabela,FieldOrderBy,
     Self.Where,self.InnerJoin,pagAtual,paginate)
  else
    buscar(pagAtual,paginate);

  BtnPrior.Enabled := true;
  if dsConsulta.DataSet.RecordCount < paginate then
    BtnNext.Enabled := false;
end;

procedure TFrmLista.BtnPriorClick(Sender: TObject);
begin
  if pagAtual <= 0 then
  begin
    pagAtual := 0;
    BtnPrior.Enabled := false;
  end
  else
  begin
    dec(pagAtual,20);
    if pagAtual=0 then
      BtnPrior.Enabled := false;
  end;

  if trim(edtBusca.Text) = '' then
    lista('SELECT '+  ListaField +' FROM ' + self.Tabela,FieldOrderBy,
    Self.Where,self.InnerJoin,pagAtual,paginate)
  else
    buscar(pagAtual,paginate);

  if dsConsulta.DataSet.RecordCount < paginate then
    BtnNext.Enabled := false
  else
    BtnNext.Enabled := true;

end;

procedure TFrmLista.buscar(const pInicial, pFinal: integer);
begin
  if trim(edtBusca.Text) <> '' then
    lista('SELECT ' +Self.ListaField+ ' FROM '+ self.Tabela,
    self.FieldOrderBy,
    self.Where ,
    self.InnerJoin
    ,pInicial,pFinal)
  else
    lista('SELECT ' + SELF.ListaField +' FROM '+ self.Tabela,
      SELF.FieldOrderBy,
      self.Where,
      self.InnerJoin,
      pInicial,
      paginate);
end;

procedure TFrmLista.FormCreate(Sender: TObject);
begin
  paginate := 30;
  pagAtual :=0;

  lblUsuarioLogado.Text := 'Usuário: '+UsuarioLogadoNomeCompleto;
  lblUsuarioLogado.ShowHint := True;
  lblUsuarioLogado.Hint := 'Login: ' + UsuarioLogadoNome;
end;

procedure TFrmLista.FormShow(Sender: TObject);
begin
  lista('SELECT ' +  ListaField + ' FROM '+ self.Tabela,
    FieldOrderBy,
    self.Where,
    self.InnerJoin,
    pagAtual,
    paginate);

  if dsConsulta.DataSet.RecordCount < paginate then
  begin
    BtnPrior.Enabled := false;
    BtnNext.Enabled := false;
  end
  else
  begin
    BtnPrior.Enabled := true;
    BtnNext.Enabled := true;
  end;

  self.Width := 800;
  Self.Height := 600;
end;


procedure TFrmLista.btnRemoverClick(Sender: TObject);
begin
  if dsConsulta.DataSet.RecordCount > 0 then
  begin
    if MessageBox(Handle, 'Deseja realmente remover o registro?',NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) = IDYES then
    begin
      if dsConsulta.DataSet.RecordCount>0 then
      begin
        removerRegistro(dsConsulta.DataSet.FieldByName('ID').AsInteger,self.Tabela);
        dsConsulta.DataSet.Refresh;
      end;
    end;
   end;
end;

procedure TFrmLista.JvBitBtn5Click(Sender: TObject);
begin
  buscar();
  edtBusca.SetFocus;
end;

procedure TFrmLista.SetFieldOrderBy(const Value: string);
begin
  FFieldOrderBy := Value;
end;

procedure TFrmLista.SetInnerJoin(const Value: string);
begin
  FInnerJoin := Value;
end;

procedure TFrmLista.SetListaField(const Value: string);
begin
  FListaField := Value;
end;

procedure TFrmLista.SetTabela(const Value: string);
begin
  FTabela := Value;
end;

procedure TFrmLista.SetWhere(const Value: string);
begin
  FWhere := Value;
end;

end.
