inherited FrmListaUsuarios: TFrmListaUsuarios
  Caption = 'Lista de Usu'#225'rios'
  ExplicitWidth = 800
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlOpcoes: TPanel
    inherited btnNovo: TJvBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TJvBitBtn
      OnClick = btnEditarClick
    end
  end
  inherited dbgrdConsulta: TJvDBGrid
    Top = 99
    Height = 238
    Align = alTop
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'NOME USU'#193'RIO'
        Width = 257
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGIN'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PERFIL'
        Title.Caption = 'NOME DO PERFIL'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GERENTE'
        Title.Alignment = taCenter
        Title.Caption = 'GERENTE?'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Title.Alignment = taCenter
        Title.Caption = 'VENDEDOR?'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Caption = 'DESC. M'#193'X.'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOQUEADO'
        Title.Alignment = taRightJustify
        Title.Caption = 'BLOQUEADO?'
        Width = 96
        Visible = True
      end>
  end
  object JvCaptionPanel1: TJvCaptionPanel [3]
    Left = 0
    Top = 75
    Width = 784
    Height = 24
    Align = alTop
    Buttons = []
    BorderStyle = bsNone
    Caption = 'USU'#193'RIOS'
    CaptionColor = clNavy
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Courier New'
    CaptionFont.Style = [fsBold]
    OutlookLook = True
    Resizable = False
    TabOrder = 7
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 361
    Width = 784
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object clkFilial: TJvDBLookupCombo
      Left = 6
      Top = 4
      Width = 411
      Height = 25
      Hint = 'FANTASIA'
      DeleteKeyClear = False
      TabSelects = True
      LookupField = 'ID'
      LookupDisplay = 'FANTASIA'
      LookupSource = dsListaFiliais
      RightTrimmedLookup = True
      TabOrder = 0
    end
    object btnAdicionarFilial: TBitBtn
      Left = 423
      Top = 4
      Width = 98
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 1
      OnClick = btnAdicionarFilialClick
    end
    object btnRemoverFilial: TBitBtn
      Left = 525
      Top = 4
      Width = 98
      Height = 25
      Caption = 'Remover'
      TabOrder = 2
      OnClick = btnRemoverFilialClick
    end
  end
  object JvDBGrid1: TJvDBGrid [5]
    Left = 0
    Top = 395
    Width = 784
    Height = 135
    Align = alClient
    DataSource = dsUsuarioFiliais
    DrawingStyle = gdsClassic
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 20
    TitleRowHeight = 20
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FILIAL'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME_FILIAL'
        Title.Caption = 'NOME FILIAL'
        Width = 371
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end>
  end
  object JvCaptionPanel2: TJvCaptionPanel [6]
    Left = 0
    Top = 337
    Width = 784
    Height = 24
    Align = alTop
    Buttons = []
    BorderStyle = bsNone
    Caption = 'FILIAIS'
    CaptionColor = clNavy
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Courier New'
    CaptionFont.Style = [fsBold]
    OutlookLook = True
    Resizable = False
    TabOrder = 6
  end
  object dsUsuarioFiliais: TDataSource
    DataSet = QyUsuarioFiliais
    Left = 312
    Top = 400
  end
  object QyUsuarioFiliais: TFDQuery
    IndexFieldNames = 'ID_USUARIO'
    MasterSource = dsConsulta
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM USUARIO_FILIAL')
    Left = 288
    Top = 208
    object QyUsuarioFiliaisID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
      Required = True
    end
    object QyUsuarioFiliaisID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object QyUsuarioFiliaisNOME_FILIAL: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_FILIAL'
      LookupDataSet = dmAcesso.QyListaFiliais
      LookupKeyFields = 'ID'
      LookupResultField = 'FANTASIA'
      KeyFields = 'ID_FILIAL'
      Size = 60
      Lookup = True
    end
    object QyUsuarioFiliaisID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
  end
  object dsListaFiliais: TDataSource
    DataSet = dmAcesso.QyListaFiliais
    Left = 288
    Top = 320
  end
end
