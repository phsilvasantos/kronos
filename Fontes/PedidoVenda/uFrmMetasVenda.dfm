object FrmMetasVenda: TFrmMetasVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Metas de Venda'
  ClientHeight = 406
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object JvCaptionPanel1: TJvCaptionPanel
    Left = 0
    Top = 0
    Width = 810
    Height = 113
    Align = alTop
    Buttons = []
    BorderStyle = bsNone
    Caption = 'Vendodores'
    CaptionColor = 10187010
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    OutlookLook = True
    Resizable = False
    TabOrder = 0
    ExplicitWidth = 850
    object lblVendedor: TLabel
      Left = 11
      Top = 28
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object Label1: TLabel
      Left = 53
      Top = 57
      Width = 32
      Height = 16
      Alignment = taRightJustify
      Caption = 'M'#234's:'
    end
    object Label2: TLabel
      Left = 53
      Top = 84
      Width = 32
      Height = 16
      Alignment = taRightJustify
      Caption = 'Ano:'
    end
    object cblkVendedor: TJvDBLookupCombo
      Left = 91
      Top = 24
      Width = 199
      Height = 24
      DeleteKeyClear = False
      TabSelects = True
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dsVendedores
      RightTrimmedLookup = True
      TabOrder = 0
    end
    object cbMes: TJvDBComboBox
      Left = 91
      Top = 52
      Width = 78
      Height = 24
      DataField = 'DEFAULT_PRODUTO_PRECO_CASAS'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outrobro'
        'Novembro'
        'Dezembro')
      TabOrder = 1
      Values.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object cbAno: TJvDBComboBox
      Left = 91
      Top = 80
      Width = 78
      Height = 24
      Items.Strings = (
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10')
      TabOrder = 2
      Values.Strings = (
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
    object chkTodosVendedores: TJvCheckBox
      Left = 296
      Top = 29
      Width = 181
      Height = 17
      Caption = 'Todos os vendedores?'
      Checked = True
      State = cbChecked
      TabOrder = 3
      LinkedControls = <>
    end
    object btnConsultar: TButton
      Left = 175
      Top = 82
      Width = 146
      Height = 25
      Caption = 'Consultar'
      TabOrder = 4
      OnClick = btnConsultarClick
    end
    object btnImprimir: TButton
      Left = 327
      Top = 82
      Width = 146
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
    end
  end
  object JvCaptionPanel2: TJvCaptionPanel
    Left = 0
    Top = 113
    Width = 810
    Height = 293
    Align = alClient
    Buttons = []
    BorderStyle = bsNone
    Caption = 'Metas'
    CaptionColor = 10187010
    CaptionPosition = dpTop
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWhite
    CaptionFont.Height = -13
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    OutlookLook = True
    Resizable = False
    TabOrder = 1
    ExplicitWidth = 850
    object dbgrd1: TJvDBGrid
      Left = 1
      Top = 23
      Width = 808
      Height = 269
      Align = alClient
      DataSource = dsMetas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      OnDrawColumnCell = dbgrd1DrawColumnCell
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'NOME VENDEDOR'
          Width = 282
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_META'
          Title.Caption = 'VALOR META'
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_VENDA'
          Title.Caption = 'TOTAL VENDA'
          Width = 152
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MESANO'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITUACAO_META'
          Title.Caption = 'SITUA'#199#195'O'
          Width = 125
          Visible = True
        end>
    end
  end
  object dsVendedores: TDataSource
    DataSet = dmAcesso.QyLKPUsuario
    Left = 192
    Top = 192
  end
  object QyMetas: TFDQuery
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      
        'SELECT DISTINCT U.NOME, VM.VALOR_META, SUM(V.TOTAL) AS TOTAL_VEN' +
        'DA, '
      'case '
      'when VM.VALOR_META = 0 then '
      '"Nao atingida" '
      'when VM.VALOR_META<=SUM(TOTAL) then '
      '"ATINGIDA" '
      'else '
      '"Nao atingida" end as SITUACAO_META, '
      
        'CONCAT(LPAD(MONTH(V.EMISSAO),2,"00"),"/",YEAR(V.EMISSAO)) AS MES' +
        'ANO,'
      'COALESCE(VM.VALOR_META,0) AS VALOR_META '
      'FROM USUARIO U '
      'INNER JOIN VENDA V ON V.ID_USUARIO=U.ID '
      'LEFT JOIN VENDEDOR_META VM ON VM.ID_VENDEDOR=U.ID '
      'WHERE U.VENDEDOR=1 AND U.BLOQUEADO = 0 '
      'AND V.TIPO IN ("V","K","N","F") '
      'AND YEAR(V.EMISSAO) = 2019 '
      'AND MONTH(V.EMISSAO) = 6 '
      'AND V.ID_FILIAL = 1  AND U.GERENTE=0 AND V.BLOQUEADO=0 '
      'GROUP BY U.NOME')
    Left = 288
    Top = 248
    object QyMetasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QyMetasVALOR_META: TBCDField
      FieldName = 'VALOR_META'
      Origin = 'VALOR_META'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object QyMetasTOTAL_VENDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      Precision = 37
      Size = 2
    end
    object QyMetasMESANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MESANO'
      Origin = 'MESANO'
      ProviderFlags = []
      ReadOnly = True
      Size = 7
    end
    object QyMetasSITUACAO_META: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO_META'
      Origin = 'SITUACAO_META'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
  end
  object dsMetas: TDataSource
    DataSet = QyMetas
    Left = 232
    Top = 248
  end
end
