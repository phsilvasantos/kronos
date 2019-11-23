object rptRelatorio: TrptRelatorio
  Left = 0
  Top = 0
  Caption = 'Lista de Unidade'
  ClientHeight = 447
  ClientWidth = 816
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
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = False
    DataSource = dsAux
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = RLReport1BeforePrint
    object bndDetalhe: TRLBand
      Left = 38
      Top = 229
      Width = 718
      Height = 18
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 115
      Width = 718
      Height = 44
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object rlblTitulo: TRLLabel
        Left = 3
        Top = 5
        Width = 712
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblParametros: TRLLabel
        Left = 3
        Top = 24
        Width = 712
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
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 263
      Width = 718
      Height = 16
      BandType = btFooter
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 631
        Top = 1
        Width = 87
        Height = 15
        Align = faClientRight
        Info = itPageNumber
        Text = ''
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 0
        Top = 1
        Width = 37
        Height = 15
        Align = faClientLeft
        Info = itNow
        Text = ''
      end
    end
    object bndHeader: TRLBand
      Left = 38
      Top = 159
      Width = 718
      Height = 21
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
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
        Width = 602
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
        Top = 23
        Width = 602
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
        Top = 40
        Width = 602
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
        Top = 57
        Width = 602
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
    object bndFooter: TRLBand
      Left = 38
      Top = 247
      Width = 718
      Height = 16
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Visible = False
      object RLSystemInfo3: TRLSystemInfo
        Left = 5
        Top = 3
        Width = 170
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = itDetailCount
        ParentFont = False
        Text = 'Total registro(s): '
      end
    end
    object rlgrpGrupo: TRLGroup
      Left = 38
      Top = 180
      Width = 718
      Height = 49
      Visible = False
      object bndHeaderGrupo: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 30
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bndFooterGrupo: TRLBand
        Left = 0
        Top = 30
        Width = 718
        Height = 18
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
    end
  end
  object dsAux: TDataSource
    DataSet = QyAux
    Left = 328
    Top = 16
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Title = 'Lista de '
    DocumentInfo.Author = 'Janilson'
    DocumentInfo.Creator = 'Janilson Varela'
    DocumentInfo.Producer = 'Janilson'
    FileName = 'docpdf'
    DisplayName = 'Doc. PDF'
    Left = 88
    Top = 352
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 248
    Top = 312
  end
  object QyAux: TFDQuery
    Connection = dmAcesso.FDConnection1
    Left = 408
    Top = 24
  end
end
