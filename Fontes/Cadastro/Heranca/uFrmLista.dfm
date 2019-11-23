object FrmLista: TFrmLista
  Left = 0
  Top = 0
  Caption = 'Lista de '
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnlOpcoes: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 42
    Align = alTop
    TabOrder = 1
    object btnNovo: TJvBitBtn
      Left = 4
      Top = 4
      Width = 81
      Height = 33
      Caption = 'Novo'
      TabOrder = 0
    end
    object btnEditar: TJvBitBtn
      Left = 87
      Top = 4
      Width = 81
      Height = 33
      Caption = 'Editar'
      TabOrder = 1
    end
    object btnRemover: TJvBitBtn
      Left = 172
      Top = 4
      Width = 81
      Height = 33
      Caption = 'Remover'
      TabOrder = 2
      OnClick = btnRemoverClick
    end
    object btnOpcoes: TJvBitBtn
      Left = 257
      Top = 4
      Width = 120
      Height = 33
      Caption = 'Relat'#243'rios'
      TabOrder = 3
    end
  end
  object pnlBusca: TPanel
    Left = 0
    Top = 42
    Width = 784
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 421
      Top = 6
      Width = 8
      Height = 16
      Caption = '0'
      Visible = False
    end
    object edtBusca: TLabeledEdit
      Left = 57
      Top = 4
      Width = 292
      Height = 24
      CharCase = ecUpperCase
      EditLabel.Width = 48
      EditLabel.Height = 16
      EditLabel.Caption = 'Busca:'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object JvBitBtn5: TJvBitBtn
      Left = 353
      Top = 4
      Width = 86
      Height = 25
      Caption = 'Localizar'
      TabOrder = 1
      OnClick = JvBitBtn5Click
    end
  end
  object dbgrdConsulta: TJvDBGrid
    Left = 0
    Top = 75
    Width = 784
    Height = 455
    Align = alClient
    DataSource = dsConsulta
    DrawingStyle = gdsClassic
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 19
    TitleRowHeight = 19
  end
  object pnl1: TPanel
    Left = 0
    Top = 530
    Width = 784
    Height = 32
    Align = alBottom
    TabOrder = 3
    object lblUsuarioLogado: TJvMarkupLabel
      Left = 408
      Top = 1
      Width = 375
      Height = 30
      Alignment = taRightJustify
      Text = 'Usu'#225'rio:'
      Align = alRight
    end
    object BtnPrior: TJvBitBtn
      Left = 4
      Top = 3
      Width = 75
      Height = 25
      Caption = '<'
      Enabled = False
      TabOrder = 0
      OnClick = BtnPriorClick
    end
    object BtnNext: TJvBitBtn
      Left = 80
      Top = 3
      Width = 75
      Height = 25
      Caption = '>'
      TabOrder = 1
      OnClick = BtnNextClick
    end
  end
  object dsConsulta: TDataSource
    DataSet = dmAcesso.QyLista
    Left = 208
    Top = 152
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 384
    Top = 232
  end
  object PopupMenu1: TPopupMenu
    Left = 336
    Top = 184
  end
end
