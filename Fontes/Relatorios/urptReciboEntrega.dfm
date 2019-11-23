object rptReciboEntrega: TrptReciboEntrega
  Left = 0
  Top = 0
  Caption = 'rptReciboEntrega'
  ClientHeight = 526
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 77
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object rlblFantasia: TRLLabel
        Left = 112
        Top = 4
        Width = 599
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEndereco: TRLLabel
        Left = 112
        Top = 38
        Width = 599
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblTelefones: TRLLabel
        Left = 112
        Top = 55
        Width = 599
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblEmail: TRLLabel
        Left = 112
        Top = 23
        Width = 599
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object img1: TRLImage
        Left = 5
        Top = 4
        Width = 104
        Height = 70
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Stretch = True
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 115
      Width = 718
      Height = 181
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 3
        Top = 26
        Width = 716
        Height = 25
        Alignment = taCenter
        AutoSize = False
        Caption = 'COMPROVANTE DE ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblMsg: TRLLabel
        Left = 23
        Top = 72
        Width = 548
        Height = 16
        Alignment = taJustify
        AutoSize = False
        Caption = 'DECLARO QUE RECEBI AS MERCADORIAS CONSTANTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 23
        Top = 107
        Width = 686
        Height = 16
        Alignment = taJustify
        AutoSize = False
        Caption = 
          'DEVIDAMENTE ABERTAS E VISTORIADAS, AO MESMO TEMPO QUE ATESTO ENC' +
          'ONTRAM-SE EM PERFEITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 23
        Top = 143
        Width = 250
        Height = 16
        AutoSize = False
        Caption = 'ESTADO, NADA TENDO A RECLAMAR.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNumero: TRLLabel
        Left = 576
        Top = 72
        Width = 132
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 296
      Width = 718
      Height = 121
      BandType = btSummary
      object RLLabel2: TRLLabel
        Left = 0
        Top = 100
        Width = 718
        Height = 18
        Align = faWidth
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Assinatura do recebedor'
      end
      object RLLabel3: TRLLabel
        Left = 13
        Top = 41
        Width = 340
        Height = 18
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 
          'Local                                                           ' +
          '                 '
      end
      object RLLabel6: TRLLabel
        Left = 404
        Top = 44
        Width = 32
        Height = 16
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Data'
      end
      object RLLabel7: TRLLabel
        Left = 360
        Top = 26
        Width = 124
        Height = 16
        Alignment = taCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = '____/____/________'
      end
    end
  end
end
