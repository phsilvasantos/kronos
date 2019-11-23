inherited FrmCadastroCondicaoPagamento: TFrmCadastroCondicaoPagamento
  Caption = 'Cadastro Condi'#231#227'o de Pagamento'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnl1: TPanel
    inherited btnGravar: TJvBitBtn
      OnClick = btnGravarClick
    end
  end
  inherited pgcPrincipal: TPageControl
    inherited tsPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 776
      ExplicitHeight = 493
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 776
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lbl3: TLabel
          Left = 38
          Top = 45
          Width = 56
          Height = 16
          Alignment = taRightJustify
          Caption = 'Prefixo'
        end
        object lbl2: TLabel
          Left = 62
          Top = 17
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'Nome'
          FocusControl = edtNOME
        end
        object cbTIPO_PAGAMENTO: TJvDBComboBox
          Left = 100
          Top = 41
          Width = 213
          Height = 24
          DataField = 'TIPO_PAGAMENTO'
          DataSource = dsCadastro
          Items.Strings = (
            'AV - '#192' Vista '
            'BO - Boleto '
            'CC - Cart'#227'o de Cr'#233'dito'
            'CD - Cart'#227'o de D'#233'bito'
            'FT - Fatura'
            'CA - Carteira'
            'NC - Nota de Cr'#233'dito'
            'CH - Cheque'
            'CL - Credito Loja'
            'VA - Vale Alimenta'#231#227'o'
            'VR - Vale Refei'#231#227'o'
            'VP - Vale Presente'
            'VC - Vale Combust'#237'vel'
            'DM - Duplicata Mercantil'
            'SP - Sem pagamento'
            'VL - Vale'
            'BON - Bonifica'#231#227'o'
            'DC - Debito em conta'
            'DUP - Duplicata'
            'PRZ - A prazo')
          TabOrder = 1
          Values.Strings = (
            'AV'
            'BO'
            'CC'
            'CD'
            'FT'
            'CA'
            'NC'
            'CH'
            'CL'
            'VA'
            'VR'
            'VP'
            'VC'
            'DM'
            'SP'
            'VL'
            'BON'
            'DC'
            'DUP'
            'PRZ')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtNOME: TDBEdit
          Left = 100
          Top = 13
          Width = 493
          Height = 24
          DataField = 'NOME'
          DataSource = dsCadastro
          TabOrder = 0
        end
      end
      object JvCaptionPanel1: TJvCaptionPanel
        Left = 0
        Top = 73
        Width = 776
        Height = 420
        Align = alClient
        Buttons = []
        BorderStyle = bsNone
        Caption = 'Formas de pagamentos'
        CaptionColor = 10187010
        CaptionPosition = dpTop
        CaptionFont.Charset = DEFAULT_CHARSET
        CaptionFont.Color = clWhite
        CaptionFont.Height = -13
        CaptionFont.Name = 'Courier New'
        CaptionFont.Style = [fsBold]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        OutlookLook = True
        ParentColor = True
        ParentFont = False
        Resizable = False
        TabOrder = 1
        object pnl3: TPanel
          Left = 1
          Top = 23
          Width = 774
          Height = 42
          Align = alTop
          ParentColor = True
          TabOrder = 0
          object lbl7: TLabel
            Left = 17
            Top = 14
            Width = 96
            Height = 16
            Alignment = taRightJustify
            Caption = 'Forma Pagtos'
            FocusControl = clkFormasPagamentos
          end
          object btnAddGrupoContao: TBitBtn
            Left = 398
            Top = 9
            Width = 95
            Height = 25
            Caption = 'Adicionar'
            TabOrder = 0
            OnClick = btnAddGrupoContaoClick
          end
          object btnRemoverGrupocontato: TBitBtn
            Left = 497
            Top = 9
            Width = 95
            Height = 25
            Caption = 'Remover'
            TabOrder = 1
            OnClick = btnRemoverGrupocontatoClick
          end
          object clkFormasPagamentos: TJvDBLookupCombo
            Left = 117
            Top = 10
            Width = 275
            Height = 24
            DeleteKeyClear = False
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = dsListaFormas
            TabOrder = 2
          end
        end
        object dbgrd1: TJvDBGrid
          Left = 1
          Top = 65
          Width = 774
          Height = 354
          Align = alClient
          DataSource = dsFormas
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
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
              FieldName = 'NOME'
              Title.Caption = 'DESCRI'#199#195'O DA FORMA DE PAGAMENTO'
              Visible = True
            end>
        end
      end
    end
  end
  object dsFormas: TDataSource
    DataSet = QyFormas
    Left = 328
    Top = 328
  end
  object QyFormas: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_CONDICAOPAGAMENTO'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    DetailFields = 'ID_CONDICAOPAGAMENTO'
    Connection = dmAcesso.FDConnection1
    SchemaAdapter = dmAcesso.FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM REF_CONDICAO_PRAZO'
      'where ID_CONDICAOPAGAMENTO=:ID')
    Left = 312
    Top = 264
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QyFormasID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyFormasID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyFormasID_CONDICAOPAGAMENTO: TIntegerField
      FieldName = 'ID_CONDICAOPAGAMENTO'
      Origin = 'ID_CONDICAOPAGAMENTO'
    end
    object QyFormasID_FORMAPAGAMENTO: TIntegerField
      FieldName = 'ID_FORMAPAGAMENTO'
      Origin = 'ID_FORMAPAGAMENTO'
      Required = True
    end
    object QyFormasNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = dmAcesso.QyListaFormaPagtoCompleta
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORMAPAGAMENTO'
      Size = 120
      Lookup = True
    end
  end
  object dsListaFormas: TDataSource
    DataSet = dmAcesso.QyListaFormaPagtoCompleta
    Left = 432
    Top = 232
  end
end
