object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 38
    Align = alTop
    TabOrder = 0
    object btnGravar: TJvBitBtn
      Left = 6
      Top = 4
      Width = 99
      Height = 28
      Caption = 'Gravar'
      TabOrder = 0
    end
    object btnCancelar: TJvBitBtn
      Left = 109
      Top = 4
      Width = 99
      Height = 28
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 38
    Width = 784
    Height = 524
    ActivePage = tsPrincipal
    Align = alClient
    TabOrder = 1
    object tsPrincipal: TTabSheet
      Caption = 'Principal'
    end
  end
  object dsCadastro: TDataSource
    DataSet = dmAcesso.cdsCadastro
    Left = 584
    Top = 104
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 528
    Top = 72
  end
end
