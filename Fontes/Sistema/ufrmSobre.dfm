object frmSobre: TfrmSobre
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Sobre'
  ClientHeight = 213
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 334
    Height = 161
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 65
      Height = 57
      Stretch = True
      IsControl = True
    end
    object ProductName: TLabel
      Left = 88
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Kronos'
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 40
      Width = 54
      Height = 13
      Caption = 'Vers'#227'o: 1.0'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 80
      Width = 316
      Height = 13
      Caption = 
        'Copyright: Todos os direitos reservados a Janilson Varela de Sou' +
        'za'
      IsControl = True
    end
    object Comments: TLabel
      Left = 8
      Top = 104
      Width = 49
      Height = 13
      Caption = 'Comments'
      WordWrap = True
      IsControl = True
    end
  end
  object OKButton: TButton
    Left = 135
    Top = 175
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
