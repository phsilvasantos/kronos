object frmAutorizacaoGerente: TfrmAutorizacaoGerente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Autoriza'#231#227'o'
  ClientHeight = 127
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 226
    Height = 127
    Align = alClient
    Caption = 'Autentica'#231#227'o do usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object edtLogin: TLabeledEdit
      Left = 56
      Top = 32
      Width = 153
      Height = 24
      EditLabel.Width = 43
      EditLabel.Height = 16
      EditLabel.Caption = 'Usu'#225'rio'
      LabelPosition = lpLeft
      TabOrder = 0
    end
    object edtSenha: TLabeledEdit
      Left = 56
      Top = 60
      Width = 153
      Height = 24
      EditLabel.Width = 36
      EditLabel.Height = 16
      EditLabel.Caption = 'Senha'
      LabelPosition = lpLeft
      PasswordChar = '*'
      TabOrder = 1
    end
    object btnLogin: TButton
      Left = 16
      Top = 91
      Width = 193
      Height = 25
      Caption = 'Autenticar'
      TabOrder = 2
      OnClick = btnLoginClick
    end
  end
end
