object FrmTelaImportacaoRegistro: TFrmTelaImportacaoRegistro
  Left = 0
  Top = 0
  Caption = 'Tela de import'#231#227'o de Registros'
  ClientHeight = 417
  ClientWidth = 766
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
  object pgc1: TPageControl
    Left = 0
    Top = 0
    Width = 766
    Height = 417
    ActivePage = tsImportacaoNCMIPPT
    Align = alClient
    TabOrder = 0
    object tsImportacaoNCMIPPT: TTabSheet
      Caption = 'Importa'#231#227'o NCM/IPPT'
      ExplicitTop = 24
      ExplicitHeight = 389
      object pnl55: TPanel
        Left = 0
        Top = 0
        Width = 758
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        ExplicitTop = 363
        ExplicitWidth = 776
        object btnFile: TButtonedEdit
          Left = 9
          Top = 5
          Width = 393
          Height = 25
          Images = ilPesquisa
          ReadOnly = True
          RightButton.DisabledImageIndex = 1
          RightButton.HotImageIndex = 1
          RightButton.ImageIndex = 1
          RightButton.PressedImageIndex = 1
          RightButton.Visible = True
          TabOrder = 0
        end
        object btnProcessar: TBitBtn
          Left = 410
          Top = 5
          Width = 107
          Height = 25
          Caption = 'Processar'
          TabOrder = 1
        end
        object btnCancelar: TBitBtn
          Left = 521
          Top = 5
          Width = 107
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 2
        end
        object btnDownloadNCM: TBitBtn
          Left = 632
          Top = 5
          Width = 119
          Height = 25
          Caption = 'Download NCM'
          TabOrder = 3
        end
      end
    end
  end
  object ilPesquisa: TImageList
    BkColor = clWhite
    Left = 480
    Top = 232
    Bitmap = {
      494C010102002800040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00314B6200AC7D7E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6D5B800E6D4B800E6D4
      B800E6D4B800E6D4B800E6D4B800E6D4B800E6D4B800E6D4B800E6D4B800E6D4
      B800E6D4B800E6D4B800E6D5B800FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005084B2000F6FE100325F8C00B87E
      7A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C7903F00D0903000CF903000CF90
      3000CF903000CF903000CF903000CF903000CF903000CF903000CF903000CF90
      3000CF903000CF903000D0903000C69041000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000032A0FE0037A1FF00106FE200325F
      8B00B67D7900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DA983300DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DA9734000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0037A4FE00379FFF000E6D
      DE00355F8900BB7F7900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0037A4FE00359E
      FF000F6FDE0035608B00A67B7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0038A5
      FE00329DFF00156DCE00444F5B00E6DBDB00A6807D0095646200895654009363
      6000C5ADAD00E6DBDB00FFFFFF00FFFFFF00DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003BABFF00A1CAE700C4AAA60095656000BD9D8B00EBE1C200FCFBDA00E9DC
      BA00B18B800091625F00D9C9C900FFFFFF00DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E6DBDB009C6B6300EDD39F00FFFFCC00FFFFCF00FFFFD000FFFF
      DE00FFFFFA00D7C0BF008F5E5D00E6DBDB00DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C5ADAD009F736800FAD19200FEF4C200FFFFD000FFFFDA00FFFF
      F600FFFFFC00FFFFFC00A3786F00C5ADAD00DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0095656000EAC28B00EDB47800FBEEBB00FFFFD300FFFFDC00FFFF
      F400FFFFF400FFFFE200D8C5AA0091626000DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF008A575300FCDA9800E9A16700F4D19900FEFCCC00FFFFD500FFFF
      DA00FFFFDC00FFFFD700EDE2C20088545300DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400DB9834000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0093636000E7C79600F0B77800EEBA7B00F6DDA600FEFBCC00FFFF
      D300FFFFD100FFFFD700CBB1980091605E00DA983500DB983400DB983400DB98
      3400DB983400DB983400DB983400DB983400DB983400DB983400DB983400DB98
      3400DB983400DB983400DB983400D99835000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C5ADAD00B28B7800FFFEDD00F4D1A500EEBA7B00F2C78F00F8E1
      AB00FCF0BA00FCFACA0097676300C5ADAD00D3AC7100D4A66200D5A66100D5A6
      6100D5A66100D5A66100D5A66100D5A66100D5A66100D5A66100D5A66100D5A6
      6100D5A66100D5A66100D4A66200D3AB72000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E6DBDB0091625F00D4C1C000FFFEEE00F7CC8C00F0B47300F7C7
      8800FCE3A500BA95800093635F00E6DBDB00E5D2B400BC8E4800BE975C00BE97
      5C00BE975C00BE975C00BE975C00BE975C00BE975C00BE975C00BE975C00BE97
      5C00BE975C00BE975C00BF985D00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00D9C9C9008F5E5D00A5797000D9C09600E7D39D00D1AD
      8B009867600093635F00D9C9C900FFFFFF00EEE3D100B57F2800B9802900B980
      2900B9802900B9802900B9802900C69C5A00F3EBDE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E6DBDB00C5ADAD0093635F00885552009160
      5E00C5ADAD00E6DBDB00FFFFFF00FFFFFF00FFFFFF00EEE3D100E5D2B400E5D2
      B400E5D2B400E5D2B400E8D7BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF009FFF8001000000000FFF000000000000
      07FF00000000000083FF000000000000C1FF000000000000E003000000000000
      F001000000000000F800000000000000F800000000000000F800000000000000
      F800000000000000F800000000000000F800000000000000F800000100000000
      FC01007F00000000FE0381FF0000000000000000000000000000000000000000
      000000000000}
  end
end
