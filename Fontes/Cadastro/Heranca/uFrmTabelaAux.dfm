object FrmTabelaAux: TFrmTabelaAux
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Tabela'
  ClientHeight = 364
  ClientWidth = 677
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
  object pnlFields: TPanel
    Left = 0
    Top = 36
    Width = 677
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    Visible = False
    object lbl1: TLabel
      Left = 26
      Top = 9
      Width = 40
      Height = 16
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object lblCodigo: TLabel
      Left = 10
      Top = 37
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'Codigo:'
      Visible = False
    end
    object edtNOME: TDBEdit
      Left = 72
      Top = 4
      Width = 405
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsConsulta
      TabOrder = 0
    end
    object edtCODIGO: TDBEdit
      Left = 72
      Top = 34
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      DataSource = dsConsulta
      TabOrder = 1
      Visible = False
    end
    object btnSalvar: TBitBtn
      Left = 481
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnCancelarUpd: TBitBtn
      Left = 560
      Top = 4
      Width = 109
      Height = 25
      Caption = 'Cancelar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 3
      OnClick = btnCancelarUpdClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 331
    Width = 677
    Height = 33
    Align = alBottom
    TabOrder = 1
    object btnOK: TBitBtn
      Left = 594
      Top = 4
      Width = 75
      Height = 25
      Caption = 'OK'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnCancelar: TBitBtn
      Left = 481
      Top = 4
      Width = 107
      Height = 25
      Caption = 'Fechar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnNovo: TBitBtn
      Left = 6
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 2
      OnClick = btnNovoClick
    end
    object btnEdit: TBitBtn
      Left = 83
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 3
      OnClick = btnEditClick
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 97
    Width = 677
    Height = 234
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object dbgrd1: TJvDBGrid
      Left = 0
      Top = 0
      Width = 677
      Height = 234
      Align = alClient
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Courier New'
      TitleFont.Style = []
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 20
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 554
          Visible = True
        end>
    end
  end
  object pnl4: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 36
    Align = alTop
    TabOrder = 3
    object edtValor: TLabeledEdit
      Left = 73
      Top = 6
      Width = 515
      Height = 24
      EditLabel.Width = 64
      EditLabel.Height = 16
      EditLabel.Caption = 'Pesquisa'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object btnFiltrar: TBitBtn
      Left = 594
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = btnFiltrarClick
    end
  end
  object dsConsulta: TDataSource
    DataSet = QyConsulta
    Left = 272
    Top = 144
  end
  object QyConsulta: TFDQuery
    AfterPost = QyConsultaAfterPost
    AfterScroll = QyConsultaAfterScroll
    Connection = dmAcesso.FDConnection1
    Left = 248
    Top = 219
  end
end
