object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 445
  ClientWidth = 718
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object RLPreview1: TRLPreview
    Left = 0
    Top = 89
    Width = 718
    Height = 356
    HorzScrollBar.Tracking = True
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 0
    ExplicitTop = 136
    ExplicitWidth = 545
    ExplicitHeight = 281
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 718
    Height = 89
    Align = alTop
    TabOrder = 1
    object btn1: TButton
      Left = 336
      Top = 17
      Width = 161
      Height = 25
      Caption = 'Executar'
      TabOrder = 0
      OnClick = btn1Click
    end
    object edtEntrada: TLabeledEdit
      Left = 144
      Top = 16
      Width = 161
      Height = 27
      EditLabel.Width = 65
      EditLabel.Height = 19
      EditLabel.Caption = 'Entrada: '
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object edtSaida: TLabeledEdit
      Left = 144
      Top = 48
      Width = 161
      Height = 27
      EditLabel.Width = 49
      EditLabel.Height = 19
      EditLabel.Caption = 'Sa'#237'da: '
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object Button1: TButton
      Left = 304
      Top = 49
      Width = 161
      Height = 25
      Caption = 'Preview'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object RLPreviewSetup1: TRLPreviewSetup
    ShowModal = True
    Left = 384
    Top = 208
  end
end
