unit ufrmCadastroPerfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.DBCtrls, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBCheckBox,
  JvgGroupBox, JvExExtCtrls, JvExtComponent, JvCaptionPanel, Vcl.Buttons;

type
  TfrmCadastroPerfil = class(TForm)
    pnlPerfil: TPanel;
    pnlMenus: TPanel;
    pnlCadastro: TPanel;
    pnlListaPerfil: TPanel;
    dbgrdPerfil: TJvDBGrid;
    JvDBNavigator1: TJvDBNavigator;
    QyCadastroPerfil: TFDQuery;
    dsCadastroPerfil: TDataSource;
    QyCadastroPerfilID: TFDAutoIncField;
    QyCadastroPerfilNOME: TStringField;
    QyCadastroPerfilDESCONTO: TBCDField;
    QyCadastroPerfilFINALIZA_VENDA: TSmallintField;
    QyCadastroPerfilESTORNA_VENDA: TSmallintField;
    QyCadastroPerfilDELETAITEM_VENDA: TSmallintField;
    QyCadastroPerfilENVIANFE_VENDA: TSmallintField;
    QyCadastroPerfilTRANSFERENCIA_VENDA: TSmallintField;
    QyCadastroPerfilPERMITE_EDITAR_ESTOQUE: TSmallintField;
    QyCadastroPerfilPERMITE_EDITAR_PRECO: TSmallintField;
    QyCadastroPerfilPERMITE_EDITAR_TABELAPRECO: TSmallintField;
    lbl1: TLabel;
    edtNOME: TDBEdit;
    lbl2: TLabel;
    lbl8: TLabel;
    edtTRANSFERENCIA_VENDA: TDBEdit;
    edtDESCONTO: TJvDBCalcEdit;
    gbxPermissao: TJvgGroupBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO1: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO2: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO3: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO4: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO5: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO6: TJvDBCheckBox;
    ckbDEFAULT_PRODUTO_SUBGRUPO7: TJvDBCheckBox;
    dbgrd2: TJvDBGrid;
    JvCaptionPanel1: TJvCaptionPanel;
    JvCaptionPanel2: TJvCaptionPanel;
    QyMenus: TFDQuery;
    dsMenus: TDataSource;
    QyMenusID: TIntegerField;
    QyMenusID_PAI: TIntegerField;
    QyMenusID_PERFIL: TIntegerField;
    QyMenusORDEM: TIntegerField;
    QyMenusNOME: TStringField;
    QyMenusNAME: TStringField;
    QyMenusBLOQUEADO: TBooleanField;
    dbgrd3: TJvDBGrid;
    QyMenusItems: TFDQuery;
    dsMenusItems: TDataSource;
    QyMenusItemsID: TIntegerField;
    QyMenusItemsID_PAI: TIntegerField;
    QyMenusItemsID_PERFIL: TIntegerField;
    QyMenusItemsORDEM: TIntegerField;
    QyMenusItemsNOME: TStringField;
    QyMenusItemsNAME: TStringField;
    QyMenusItemsBLOQUEADO: TBooleanField;
    QyCadastroPerfilBLOQUEADO: TBooleanField;
    ckbBLOQUEADO: TJvDBCheckBox;
    btnListadeUsuarios: TBitBtn;
    procedure QyCadastroPerfilAfterOpen(DataSet: TDataSet);
    procedure QyMenusAfterOpen(DataSet: TDataSet);
    procedure QyMenusItemsBeforeInsert(DataSet: TDataSet);
    procedure QyMenusBeforeInsert(DataSet: TDataSet);
    procedure QyCadastroPerfilAfterEdit(DataSet: TDataSet);
    procedure QyCadastroPerfilAfterPost(DataSet: TDataSet);
    procedure QyCadastroPerfilBeforeInsert(DataSet: TDataSet);
    procedure JvDBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure QyCadastroPerfilBeforeDelete(DataSet: TDataSet);
    procedure btnListadeUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPerfil: TfrmCadastroPerfil;

implementation

uses
  udmAcesso, Funcoes, krnVarGlobais, uFrmListaUsuarios;

{$R *.dfm}

procedure TfrmCadastroPerfil.btnListadeUsuariosClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFrmListaUsuarios, FrmListaUsuarios);
    FrmListaUsuarios.ListaField := 'USUARIO.ID, USUARIO.NOME, USUARIO.LOGIN, PERFIL.NOME AS NOME_PERFIL, USUARIO.GERENTE, USUARIO.VENDEDOR, USUARIO.DESCONTO, USUARIO.BLOQUEADO'; //todos os campos
    FrmListaUsuarios.InnerJoin :=' INNER JOIN PERFIL ON PERFIL.ID=USUARIO.ID_PERFIL';
    FrmListaUsuarios.FieldOrderBy := 'USUARIO.LOGIN';
    FrmListaUsuarios.Tag := QyCadastroPerfilID.AsInteger;
    FrmListaUsuarios.Where := ' WHERE USUARIO.ID_PERFIL = ' + QuotedStr(QyCadastroPerfilID.AsString);
    FrmListaUsuarios.Tabela := 'USUARIO';
    FrmListaUsuarios.ShowModal;
  finally
    freeandnil(FrmListaUsuarios);
  end;
end;

procedure TfrmCadastroPerfil.JvDBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
//  case Button of
//    nbFirst: ;
//    nbPrior: ;
//    nbNext: ;
//    nbLast: ;
//    nbInsert: QyCadastroPerfil.BeforeInsert := nil ;
//    nbDelete: ;
//    nbEdit: ;
//    nbPost: QyCadastroPerfil.BeforeInsert := QyCadastroPerfilBeforeInsert;
//    nbCancel: QyCadastroPerfil.BeforeInsert := QyCadastroPerfilBeforeInsert;
//    nbRefresh: ;
//    nbApplyUpdates: ;
//    nbCancelUpdates: ;
//  end;
end;

procedure TfrmCadastroPerfil.QyCadastroPerfilAfterEdit(DataSet: TDataSet);
begin
  edtNOME.Enabled := True;
  edtDESCONTO.Enabled := True;
  ckbBLOQUEADO.Enabled := True;
  gbxPermissao.Enabled := True;

  DataSet.FieldByName('FINALIZA_VENDA').AsInteger := 0;
  DataSet.FieldByName('ESTORNA_VENDA').AsInteger := 0;
  DataSet.FieldByName('DELETAITEM_VENDA').AsInteger := 0;
  DataSet.FieldByName('ENVIANFE_VENDA').AsInteger := 0;
  DataSet.FieldByName('TRANSFERENCIA_VENDA').AsInteger := 0;
  DataSet.FieldByName('PERMITE_EDITAR_ESTOQUE').AsInteger := 0;
  DataSet.FieldByName('PERMITE_EDITAR_PRECO').AsInteger := 0;
  DataSet.FieldByName('PERMITE_EDITAR_TABELAPRECO').AsInteger := 0;
  DataSet.FieldByName('BLOQUEADO').AsBoolean := False;

end;

procedure TfrmCadastroPerfil.QyCadastroPerfilAfterOpen(DataSet: TDataSet);
begin
  QyMenus.Close;
  QyMenus.Open();
end;

procedure TfrmCadastroPerfil.QyCadastroPerfilAfterPost(DataSet: TDataSet);
begin
  edtNOME.Enabled := False;
  edtDESCONTO.Enabled := false;
  gbxPermissao.Enabled := false;
  ckbBLOQUEADO.Enabled := False;

  QyMenus.Close;
  QyMenus.Open;

end;

procedure TfrmCadastroPerfil.QyCadastroPerfilBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ID').AsInteger = PerfilUsuario then
    raise Exception.Create('Perfil logado.');
end;

procedure TfrmCadastroPerfil.QyCadastroPerfilBeforeInsert(DataSet: TDataSet);
begin
//  Abort;
end;

procedure TfrmCadastroPerfil.QyMenusAfterOpen(DataSet: TDataSet);
begin
  QyMenusItems.Close;
  QyMenusItems.Open();

end;

procedure TfrmCadastroPerfil.QyMenusBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure TfrmCadastroPerfil.QyMenusItemsBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

end.
