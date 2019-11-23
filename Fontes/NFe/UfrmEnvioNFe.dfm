object frmEnvioNFe: TfrmEnvioNFe
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Envio de NF-e'
  ClientHeight = 272
  ClientWidth = 470
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
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 470
    Height = 84
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 6
      Top = 66
      Width = 56
      Height = 14
      Caption = 'Mensagem'
    end
    object edtPara: TLabeledEdit
      Left = 63
      Top = 8
      Width = 396
      Height = 22
      CharCase = ecLowerCase
      EditLabel.Width = 28
      EditLabel.Height = 14
      EditLabel.Caption = 'Para'
      LabelPosition = lpLeft
      LabelSpacing = 5
      TabOrder = 0
    end
    object edtAssumto: TLabeledEdit
      Left = 63
      Top = 35
      Width = 315
      Height = 22
      EditLabel.Width = 49
      EditLabel.Height = 14
      EditLabel.Caption = 'Assunto'
      LabelPosition = lpLeft
      LabelSpacing = 5
      TabOrder = 1
      Text = 'NF-e'
    end
    object btnEnviar: TBitBtn
      Left = 384
      Top = 35
      Width = 75
      Height = 22
      Caption = 'Enviar'
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
      TabOrder = 2
    end
  end
  object mmo1: TMemo
    Left = 0
    Top = 84
    Width = 470
    Height = 188
    Align = alClient
    TabOrder = 1
    ExplicitTop = 88
    ExplicitHeight = 184
  end
end
