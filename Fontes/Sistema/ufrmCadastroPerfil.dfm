object frmCadastroPerfil: TfrmCadastroPerfil
  Left = 0
  Top = 0
  Caption = 'Cadastro de perfil'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 14
  object pnlPerfil: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 281
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object pnlCadastro: TPanel
      Left = 0
      Top = 24
      Width = 392
      Height = 257
      Align = alLeft
      TabOrder = 0
      object lbl1: TLabel
        Left = 8
        Top = 32
        Width = 98
        Height = 14
        Caption = 'Nome do Perfil'
        FocusControl = edtNOME
      end
      object lbl2: TLabel
        Left = 8
        Top = 78
        Width = 70
        Height = 14
        Caption = 'Desc. M'#225'x.'
      end
      object lbl8: TLabel
        Left = 32
        Top = 296
        Width = 133
        Height = 14
        Caption = 'TRANSFERENCIA_VENDA'
        FocusControl = edtTRANSFERENCIA_VENDA
      end
      object JvDBNavigator1: TJvDBNavigator
        Left = 1
        Top = 1
        Width = 390
        Height = 25
        DataSource = dsCadastroPerfil
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alTop
        TabOrder = 0
        OnClick = JvDBNavigator1Click
      end
      object edtNOME: TDBEdit
        Left = 8
        Top = 48
        Width = 375
        Height = 22
        DataField = 'NOME'
        DataSource = dsCadastroPerfil
        Enabled = False
        TabOrder = 1
      end
      object edtTRANSFERENCIA_VENDA: TDBEdit
        Left = 32
        Top = 312
        Width = 134
        Height = 22
        DataField = 'TRANSFERENCIA_VENDA'
        DataSource = dsCadastroPerfil
        TabOrder = 2
      end
      object edtDESCONTO: TJvDBCalcEdit
        Left = 8
        Top = 95
        Width = 69
        Height = 22
        DisplayFormat = '#,##0.00'
        Enabled = False
        MaxValue = 100.000000000000000000
        ShowButton = False
        TabOrder = 3
        DecimalPlacesAlwaysShown = False
        DataField = 'DESCONTO'
        DataSource = dsCadastroPerfil
      end
      object gbxPermissao: TJvgGroupBox
        Left = 8
        Top = 120
        Width = 378
        Height = 133
        Caption = 'Permiss'#245'es'
        TabOrder = 4
        Enabled = False
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object ckbDEFAULT_PRODUTO_SUBGRUPO: TJvDBCheckBox
          Left = 9
          Top = 29
          Width = 184
          Height = 17
          Caption = 'Finalizar pedido?'
          DataField = 'FINALIZA_VENDA'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO1: TJvDBCheckBox
          Left = 9
          Top = 56
          Width = 184
          Height = 17
          Caption = 'Estornar pedido?'
          DataField = 'ESTORNA_VENDA'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO2: TJvDBCheckBox
          Left = 9
          Top = 83
          Width = 184
          Height = 17
          Caption = 'Deleta item pedido?'
          DataField = 'DELETAITEM_VENDA'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 2
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO3: TJvDBCheckBox
          Left = 9
          Top = 110
          Width = 184
          Height = 17
          Caption = 'Enviar NF-e pedido?'
          DataField = 'ENVIANFE_VENDA'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 3
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO4: TJvDBCheckBox
          Left = 182
          Top = 29
          Width = 188
          Height = 17
          Caption = 'Editar estoque?'
          DataField = 'PERMITE_EDITAR_ESTOQUE'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO5: TJvDBCheckBox
          Left = 182
          Top = 56
          Width = 188
          Height = 17
          Caption = 'Editar pre'#231'o de venda?'
          DataField = 'PERMITE_EDITAR_PRECO'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO6: TJvDBCheckBox
          Left = 182
          Top = 83
          Width = 188
          Height = 17
          Caption = 'Editar tabela de pre'#231'o?'
          DataField = 'PERMITE_EDITAR_TABELAPRECO'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 6
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object ckbDEFAULT_PRODUTO_SUBGRUPO7: TJvDBCheckBox
          Left = 182
          Top = 110
          Width = 188
          Height = 17
          Caption = 'Fazer transfer'#234'ncia?'
          DataField = 'TRANSFERENCIA_VENDA'
          DataSource = dsCadastroPerfil
          Enabled = False
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object ckbBLOQUEADO: TJvDBCheckBox
        Left = 94
        Top = 98
        Width = 99
        Height = 17
        Caption = 'Bloqueado?'
        DataField = 'BLOQUEADO'
        DataSource = dsCadastroPerfil
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object btnListadeUsuarios: TBitBtn
        Left = 199
        Top = 89
        Width = 187
        Height = 25
        Caption = 'Lista de Usu'#225'rios'
        TabOrder = 6
        OnClick = btnListadeUsuariosClick
      end
    end
    object pnlListaPerfil: TPanel
      Left = 392
      Top = 24
      Width = 392
      Height = 257
      Align = alClient
      TabOrder = 1
      object dbgrdPerfil: TJvDBGrid
        Left = 1
        Top = 1
        Width = 390
        Height = 255
        Align = alClient
        DataSource = dsCadastroPerfil
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 18
        TitleRowHeight = 18
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            ReadOnly = False
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            ReadOnly = False
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            ReadOnly = False
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUEADO'
            Title.Caption = 'Bloqueado?'
            Visible = False
          end>
      end
    end
    object JvCaptionPanel2: TJvCaptionPanel
      Left = 0
      Top = 0
      Width = 784
      Height = 24
      Align = alTop
      Buttons = []
      Caption = 'Perfil de usu'#225'rios'
      CaptionColor = clNavy
      CaptionPosition = dpTop
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWhite
      CaptionFont.Height = -13
      CaptionFont.Name = 'Courier New'
      CaptionFont.Style = [fsBold]
      OutlookLook = True
      Resizable = False
      TabOrder = 2
    end
  end
  object pnlMenus: TPanel
    Left = 0
    Top = 281
    Width = 784
    Height = 281
    Align = alClient
    TabOrder = 1
    object dbgrd2: TJvDBGrid
      Left = 1
      Top = 25
      Width = 391
      Height = 255
      Align = alLeft
      DataSource = dsMenus
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      TitleButtons = True
      TitleButtonAllowMove = True
      PostOnEnterKey = True
      TitleArrow = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 18
      TitleRowHeight = 18
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_PAI'
          ReadOnly = True
          Title.Caption = 'Menu'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_PERFIL'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NAME'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Width = 208
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORDEM'
          ReadOnly = True
          Title.Caption = 'Ordem'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BLOQUEADO'
          Title.Caption = 'Bloqueado?'
          Width = 84
          Visible = True
        end>
    end
    object JvCaptionPanel1: TJvCaptionPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 24
      Align = alTop
      Buttons = []
      Caption = 'Menus'
      CaptionColor = clNavy
      CaptionPosition = dpTop
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWhite
      CaptionFont.Height = -13
      CaptionFont.Name = 'Courier New'
      CaptionFont.Style = [fsBold]
      OutlookLook = True
      Resizable = False
      TabOrder = 1
    end
    object dbgrd3: TJvDBGrid
      Left = 392
      Top = 25
      Width = 391
      Height = 255
      Align = alClient
      DataSource = dsMenusItems
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      PostOnEnterKey = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 18
      TitleRowHeight = 18
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          ReadOnly = True
          Title.Caption = 'T'#237'tulo'
          Width = 162
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORDEM'
          ReadOnly = True
          Title.Caption = 'Ordem'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BLOQUEADO'
          Title.Caption = 'Bloqueado?'
          Width = 85
          Visible = True
        end>
    end
  end
  object QyCadastroPerfil: TFDQuery
    AfterOpen = QyCadastroPerfilAfterOpen
    BeforeInsert = QyCadastroPerfilBeforeInsert
    AfterInsert = QyCadastroPerfilAfterEdit
    AfterEdit = QyCadastroPerfilAfterEdit
    AfterPost = QyCadastroPerfilAfterPost
    AfterCancel = QyCadastroPerfilAfterPost
    BeforeDelete = QyCadastroPerfilBeforeDelete
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM PERFIL')
    Left = 432
    Top = 48
    object QyCadastroPerfilID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyCadastroPerfilNOME: TStringField
      DisplayLabel = 'Nome do Perfil'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object QyCadastroPerfilDESCONTO: TBCDField
      DisplayLabel = 'Desc. M'#225'x.'
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      DisplayFormat = '#,##0.00'
      Precision = 5
      Size = 2
    end
    object QyCadastroPerfilFINALIZA_VENDA: TSmallintField
      DisplayLabel = 'Finaliza Pedido?'
      FieldName = 'FINALIZA_VENDA'
      Origin = 'FINALIZA_VENDA'
      Required = True
    end
    object QyCadastroPerfilESTORNA_VENDA: TSmallintField
      DisplayLabel = 'Estorna Pedido?'
      FieldName = 'ESTORNA_VENDA'
      Origin = 'ESTORNA_VENDA'
      Required = True
    end
    object QyCadastroPerfilDELETAITEM_VENDA: TSmallintField
      DisplayLabel = 'Delata item Pedido?'
      FieldName = 'DELETAITEM_VENDA'
      Origin = 'DELETAITEM_VENDA'
      Required = True
    end
    object QyCadastroPerfilENVIANFE_VENDA: TSmallintField
      DisplayLabel = 'Envia NF-e a partir do Pedido'
      FieldName = 'ENVIANFE_VENDA'
      Origin = 'ENVIANFE_VENDA'
      Required = True
    end
    object QyCadastroPerfilTRANSFERENCIA_VENDA: TSmallintField
      FieldName = 'TRANSFERENCIA_VENDA'
      Origin = 'TRANSFERENCIA_VENDA'
      Required = True
    end
    object QyCadastroPerfilPERMITE_EDITAR_ESTOQUE: TSmallintField
      DisplayLabel = 'Perm. editar estoque?'
      FieldName = 'PERMITE_EDITAR_ESTOQUE'
      Origin = 'PERMITE_EDITAR_ESTOQUE'
      Required = True
    end
    object QyCadastroPerfilPERMITE_EDITAR_PRECO: TSmallintField
      DisplayLabel = 'Perm. Editar Pre'#231'o Venda?'
      FieldName = 'PERMITE_EDITAR_PRECO'
      Origin = 'PERMITE_EDITAR_PRECO'
      Required = True
    end
    object QyCadastroPerfilPERMITE_EDITAR_TABELAPRECO: TSmallintField
      DisplayLabel = 'Perm. editar tabela pre'#231'o?'
      FieldName = 'PERMITE_EDITAR_TABELAPRECO'
      Origin = 'PERMITE_EDITAR_TABELAPRECO'
      Required = True
    end
    object QyCadastroPerfilBLOQUEADO: TBooleanField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Required = True
    end
  end
  object dsCadastroPerfil: TDataSource
    DataSet = QyCadastroPerfil
    Left = 496
    Top = 80
  end
  object QyMenus: TFDQuery
    AfterOpen = QyMenusAfterOpen
    BeforeInsert = QyMenusBeforeInsert
    IndexFieldNames = 'ID_PERFIL'
    MasterSource = dsCadastroPerfil
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM MENU'
      'WHERE ID_PAI = 0')
    Left = 216
    Top = 393
    object QyMenusID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QyMenusID_PAI: TIntegerField
      FieldName = 'ID_PAI'
      Origin = 'ID_PAI'
    end
    object QyMenusID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
      Origin = 'ID_PERFIL'
    end
    object QyMenusORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object QyMenusNOME: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QyMenusNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 60
    end
    object QyMenusBLOQUEADO: TBooleanField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Required = True
    end
  end
  object dsMenus: TDataSource
    DataSet = QyMenus
    Left = 280
    Top = 393
  end
  object QyMenusItems: TFDQuery
    BeforeInsert = QyMenusItemsBeforeInsert
    IndexFieldNames = 'ID_PAI;ID_PERFIL'
    MasterSource = dsMenus
    MasterFields = 'ID;ID_PERFIL'
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM MENU WHERE ID_PAI <> 0')
    Left = 488
    Top = 377
    object QyMenusItemsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QyMenusItemsID_PAI: TIntegerField
      FieldName = 'ID_PAI'
      Origin = 'ID_PAI'
    end
    object QyMenusItemsID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
      Origin = 'ID_PERFIL'
    end
    object QyMenusItemsORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ORDEM'
    end
    object QyMenusItemsNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object QyMenusItemsNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 60
    end
    object QyMenusItemsBLOQUEADO: TBooleanField
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Required = True
    end
  end
  object dsMenusItems: TDataSource
    DataSet = QyMenusItems
    Left = 472
    Top = 449
  end
end
