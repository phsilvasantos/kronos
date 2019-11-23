object FrmFormularioTeste: TFrmFormularioTeste
  Left = 0
  Top = 0
  Caption = 'Formulario do programador'
  ClientHeight = 432
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 17
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 696
    Height = 432
    ActivePage = tsMD5
    Align = alClient
    TabOrder = 0
    object tsMD5: TTabSheet
      Caption = 'MD5'
      ExplicitTop = 24
      ExplicitHeight = 404
      object edtTexto: TLabeledEdit
        Left = 86
        Top = 16
        Width = 529
        Height = 25
        EditLabel.Width = 45
        EditLabel.Height = 17
        EditLabel.Caption = 'Texto'
        LabelPosition = lpLeft
        TabOrder = 0
        OnChange = edtTextoChange
      end
      object edtResultMD5: TLabeledEdit
        Left = 86
        Top = 45
        Width = 529
        Height = 25
        EditLabel.Width = 72
        EditLabel.Height = 17
        EditLabel.Caption = 'Hash MD5'
        LabelPosition = lpLeft
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
end
