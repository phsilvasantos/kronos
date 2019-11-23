object frmReciboAvulso: TfrmReciboAvulso
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Formul'#225'rio de Recibo Avulso'
  ClientHeight = 365
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object grp1: TGroupBox
    Left = 0
    Top = 0
    Width = 547
    Height = 121
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 507
      Top = 14
      Width = 30
      Height = 16
      Caption = 'Valor'
    end
    object lbl2: TLabel
      Left = 365
      Top = 96
      Width = 73
      Height = 16
      Caption = 'Data Recibo:'
    end
    object edtFavorecido: TLabeledEdit
      Left = 16
      Top = 32
      Width = 394
      Height = 24
      EditLabel.Width = 102
      EditLabel.Height = 16
      EditLabel.Caption = 'Nome do pagador'
      TabOrder = 0
    end
    object edtValor: TJvCalcEdit
      Left = 416
      Top = 32
      Width = 121
      Height = 24
      DisplayFormat = '#,##0.00'
      ShowButton = False
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edtData: TJvDateEdit
      Left = 442
      Top = 92
      Width = 95
      Height = 24
      DefaultToday = True
      ShowNullDate = False
      TabOrder = 4
    end
    object edtNumeroNota: TLabeledEdit
      Left = 416
      Top = 62
      Width = 121
      Height = 24
      EditLabel.Width = 64
      EditLabel.Height = 16
      EditLabel.Caption = 'Nota fiscal:'
      LabelPosition = lpLeft
      TabOrder = 3
    end
    object edtCPFCNPJ: TLabeledEdit
      Left = 16
      Top = 80
      Width = 209
      Height = 24
      EditLabel.Width = 60
      EditLabel.Height = 16
      EditLabel.Caption = 'CPF/CNPJ:'
      NumbersOnly = True
      TabOrder = 2
    end
  end
  object grp2: TGroupBox
    Left = 0
    Top = 121
    Width = 547
    Height = 195
    Align = alClient
    Caption = 'Referente a'
    TabOrder = 1
    ExplicitTop = 97
    ExplicitHeight = 155
    object mmoReferente: TMemo
      Left = 2
      Top = 18
      Width = 543
      Height = 175
      Align = alClient
      TabOrder = 0
      ExplicitHeight = 135
    end
  end
  object grp3: TGroupBox
    Left = 0
    Top = 316
    Width = 547
    Height = 49
    Align = alBottom
    Caption = 'Op'#231#245'es'
    TabOrder = 2
    ExplicitTop = 255
    object BitBtn1: TBitBtn
      Left = 446
      Top = 16
      Width = 93
      Height = 26
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 349
      Top = 16
      Width = 93
      Height = 26
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
