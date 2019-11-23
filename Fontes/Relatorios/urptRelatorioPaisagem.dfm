inherited rptRelatorioPaisagem: TrptRelatorioPaisagem
  Caption = 'rptRelatorioPaisagem'
  ClientWidth = 1155
  ExplicitWidth = 1171
  PixelsPerInch = 96
  TextHeight = 13
  inherited RLReport1: TRLReport
    Width = 1123
    Height = 794
    PageSetup.Orientation = poLandscape
    ExplicitWidth = 1123
    ExplicitHeight = 794
    inherited bndDetalhe: TRLBand
      Width = 1047
      ExplicitWidth = 1047
    end
    inherited RLBand2: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rlblTitulo: TRLLabel
        Width = 1041
        ExplicitWidth = 1041
      end
      inherited rlblParametros: TRLLabel
        Width = 1041
        ExplicitWidth = 1041
      end
    end
    inherited RLBand3: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited RLSystemInfo1: TRLSystemInfo
        Left = 960
        ExplicitLeft = 960
      end
    end
    inherited bndHeader: TRLBand
      Width = 1047
      ExplicitWidth = 1047
    end
    inherited RLBand5: TRLBand
      Width = 1047
      ExplicitWidth = 1047
      inherited rlblFantasia: TRLLabel
        Width = 931
        ExplicitWidth = 931
      end
      inherited rlblEndereco: TRLLabel
        Width = 931
        ExplicitWidth = 931
      end
      inherited rlblTelefones: TRLLabel
        Width = 931
        ExplicitWidth = 931
      end
      inherited rlblEmail: TRLLabel
        Width = 931
        ExplicitWidth = 931
      end
    end
    inherited bndFooter: TRLBand
      Width = 1047
      ExplicitWidth = 1047
    end
    inherited rlgrpGrupo: TRLGroup
      Width = 1047
      ExplicitWidth = 1047
      inherited bndHeaderGrupo: TRLBand
        Width = 1047
        ExplicitWidth = 1047
      end
      inherited bndFooterGrupo: TRLBand
        Width = 1047
        ExplicitWidth = 1047
      end
    end
  end
  inherited dsAux: TDataSource
    Left = 208
    Top = 288
  end
end
