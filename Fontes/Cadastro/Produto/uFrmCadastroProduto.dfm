inherited FrmCadastroProduto: TFrmCadastroProduto
  Caption = 'Cadastro de Produto'
  ClientHeight = 457
  ClientWidth = 773
  OnCreate = FormCreate
  ExplicitWidth = 789
  ExplicitHeight = 495
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnl1: TPanel
    Width = 773
    BevelOuter = bvNone
    ExplicitWidth = 773
    inherited btnGravar: TJvBitBtn
      Left = 4
      OnClick = btnGravarClick
      ExplicitLeft = 4
    end
  end
  inherited pgcPrincipal: TPageControl
    Width = 773
    Height = 419
    ExplicitWidth = 773
    ExplicitHeight = 419
    inherited tsPrincipal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 765
      ExplicitHeight = 388
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 272
        Align = alClient
        TabOrder = 0
        object Label9: TLabel
          Left = 26
          Top = 22
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Descri'#231#227'o:'
        end
        object lbl6: TLabel
          Left = 74
          Top = 50
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'NCM:'
          FocusControl = edtNCM
        end
        object lbl11: TLabel
          Left = 58
          Top = 78
          Width = 48
          Height = 16
          Alignment = taRightJustify
          Caption = 'Marca:'
          FocusControl = clkID_MARCA
        end
        object lbl8: TLabel
          Left = 2
          Top = 105
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'Tipo Produto:'
          FocusControl = clkID_TIPOPRODUTO
        end
        object lblCategoria: TLabel
          Left = 26
          Top = 133
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Categoria:'
        end
        object lbl84: TLabel
          Left = 18
          Top = 160
          Width = 88
          Height = 16
          Alignment = taRightJustify
          Caption = 'Tributa'#231#227'o:'
          FocusControl = clkID_TRIBUTACAO
        end
        object lbl24: TLabel
          Left = 2
          Top = 188
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Compra:'
          FocusControl = edtPRECO_COMPRA
        end
        object lbl12: TLabel
          Left = 439
          Top = 190
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Caption = 'Pre'#231'o Venda:'
          FocusControl = edtPRECO
        end
        object lbl9: TLabel
          Left = 423
          Top = 162
          Width = 112
          Height = 16
          Alignment = taRightJustify
          Caption = 'Grupo Produto:'
        end
        object lbl17: TLabel
          Left = 479
          Top = 134
          Width = 56
          Height = 16
          Alignment = taRightJustify
          Caption = 'Estado:'
        end
        object lbl30: TLabel
          Left = 455
          Top = 106
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Vasilhame:'
          FocusControl = clkID_VASILHAME
        end
        object lbl10: TLabel
          Left = 431
          Top = 78
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'Departamento:'
        end
        object lbl7: TLabel
          Left = 471
          Top = 50
          Width = 64
          Height = 16
          Alignment = taRightJustify
          Caption = 'Unidade:'
          FocusControl = clkID_UNIDADE
        end
        object lbl3: TLabel
          Left = 439
          Top = 22
          Width = 96
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cod. Barras:'
          FocusControl = edtGTIN
        end
        object edtDESCRICAO: TDBEdit
          Left = 112
          Top = 18
          Width = 256
          Height = 24
          DataField = 'DESCRICAO'
          DataSource = dsCadastro
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edtNCM: TDBEdit
          Left = 112
          Top = 46
          Width = 93
          Height = 24
          DataField = 'NCM'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object btnPesquisaNCM: TJvXPButton
          Left = 207
          Top = 46
          Width = 23
          Height = 24
          TabOrder = 3
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          OnClick = btnPesquisaNCMClick
        end
        object clkID_MARCA: TDBLookupComboBox
          Left = 112
          Top = 74
          Width = 185
          Height = 24
          DataField = 'ID_MARCA'
          DataSource = dsCadastro
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsListaMarcas
          TabOrder = 6
        end
        object btnPesquisaMarca: TJvXPButton
          Left = 298
          Top = 74
          Width = 23
          Height = 24
          TabOrder = 7
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          Style.Theme = OfficeXP
          OnClick = btnPesquisaMarcaClick
        end
        object clkID_TIPOPRODUTO: TJvDBLookupCombo
          Left = 112
          Top = 102
          Width = 256
          Height = 23
          DeleteKeyClear = False
          DataField = 'ID_TIPOPRODUTO'
          DataSource = dsCadastro
          FieldsDelimiter = '-'
          ListStyle = lsDelimited
          LookupField = 'ID'
          LookupDisplay = 'CODIGO;NOME'
          LookupDisplayIndex = 1
          LookupSource = dsListaTipoProduto
          TabOrder = 10
        end
        object clkID_CATEGORIA: TDBLookupComboBox
          Left = 112
          Top = 129
          Width = 185
          Height = 24
          DataField = 'ID_CATEGORIA'
          DataSource = dsCadastro
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsListaCategoria
          TabOrder = 13
        end
        object btnCategoria: TJvXPButton
          Left = 298
          Top = 129
          Width = 23
          Height = 24
          TabOrder = 14
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          OnClick = btnCategoriaClick
        end
        object btnPesquisaTributacao: TJvXPButton
          Left = 369
          Top = 157
          Width = 23
          Height = 23
          TabOrder = 17
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          Visible = False
        end
        object clkID_TRIBUTACAO: TJvDBLookupCombo
          Left = 112
          Top = 157
          Width = 256
          Height = 23
          DeleteKeyClear = False
          DataField = 'ID_TRIBUTACAO'
          DataSource = dsCadastroTributacaoProduto
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsListaTributaao
          TabOrder = 16
        end
        object edtPRECO_COMPRA: TJvDBCalcEdit
          Left = 112
          Top = 184
          Width = 95
          Height = 24
          DisplayFormat = '#,##0.00'
          ShowButton = False
          TabOrder = 20
          DecimalPlacesAlwaysShown = False
          DataField = 'PRECO_COMPRA'
          DataSource = dsCadastro
        end
        object edtPRECO: TJvDBCalcEdit
          Left = 543
          Top = 186
          Width = 95
          Height = 24
          DisplayFormat = '#,##0.00'
          ShowButton = False
          TabOrder = 21
          DecimalPlacesAlwaysShown = False
          DataField = 'PRECO'
          DataSource = dsCadastro
        end
        object clkID_GRUPOPRODUTO: TDBLookupComboBox
          Left = 543
          Top = 158
          Width = 185
          Height = 24
          DataField = 'ID_GRUPOPRODUTO'
          DataSource = dsCadastro
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsGrupoProduto
          TabOrder = 18
        end
        object btnPesquisaGrupo: TJvXPButton
          Left = 729
          Top = 158
          Width = 23
          Height = 24
          TabOrder = 19
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          Visible = False
          OnClick = btnPesquisaGrupoClick
        end
        object cbbESTADO: TJvDBComboBox
          Left = 543
          Top = 130
          Width = 121
          Height = 24
          DataField = 'ESTADO'
          DataSource = dsCadastro
          Items.Strings = (
            'Novo'
            'Usado')
          TabOrder = 15
          Values.Strings = (
            'N'
            'U')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object clkID_VASILHAME: TDBLookupComboBox
          Left = 543
          Top = 102
          Width = 185
          Height = 24
          DataField = 'ID_VASILHAME'
          DataSource = dsCadastro
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsListaVasilhame
          TabOrder = 11
        end
        object btnPesquisaVasilhame: TJvXPButton
          Left = 729
          Top = 102
          Width = 23
          Height = 24
          TabOrder = 12
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          OnClick = btnPesquisaVasilhameClick
        end
        object btnPesquisaArmazem: TJvXPButton
          Left = 729
          Top = 74
          Width = 23
          Height = 24
          TabOrder = 9
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          OnClick = btnPesquisaArmazemClick
        end
        object clkID_DEPARTAMENTO: TDBLookupComboBox
          Left = 543
          Top = 74
          Width = 185
          Height = 24
          DataField = 'ID_DEPARTAMENTO'
          DataSource = dsCadastro
          KeyField = 'ID'
          ListField = 'NOME'
          ListSource = dsListaDepartamento
          TabOrder = 8
        end
        object clkID_UNIDADE: TDBLookupComboBox
          Left = 543
          Top = 46
          Width = 185
          Height = 24
          DataField = 'ID_UNIDADE'
          DataSource = dsCadastro
          KeyField = 'ID'
          ListField = 'CODIGO'
          ListSource = dsListaUnidade
          TabOrder = 4
        end
        object btnPesquisaUnidade: TJvXPButton
          Left = 729
          Top = 46
          Width = 23
          Height = 24
          TabOrder = 5
          TabStop = False
          Glyph.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
            001008060000001FF3FF610000001974455874536F6674776172650041646F62
            6520496D616765526561647971C9653C000003134944415478DA63B4AFDFC380
            0A187D818414036EB097E1FFFF3B0C0CFF190E34BA3030DAD7A11BC09035BFD8
            7EEAF75F7F18FEFDFBCFF0F7CF3F86BF7FFF03F5FC67B8FDF015C38C3D0FB281
            6A809AFEDF821AB01BDD80DC1979B6933E7CFD0E36E0D7AF7F40FC97E1F7EF7F
            0CCF5EBC66F076D06588EAD8930754B70B68C04D46FBDA9DE80614CE28B0EFFB
            F8F507D8566443CE5CBC0957B4FBFC9325FB7B226319ED6BB6A31B50D69769DD
            F9E6FD57064626460656662606666666B037602E9110E666289E7DB4FC40B347
            17A37DD516A4F00313D51561FA2D3CBC9C0CAC2CCC60578034FFFB0F0C8B3F0C
            60434404B8188A661CAA39D0E2D5CA685FB909C900464D7559A1DC780F8DB47D
            C7AF3E3D73E9DE5B90B0A1B6A2B083859634132323F3DFBF0C0C823C9C0CF953
            F7351D68F5A9071AB011D9F9698D89B625C72EDCFCFFE0F1BB0B29BE666C8C40
            57CDDD72FA979438BF819385A6DABF7FFF180479B9187226EC6E3FD0E657C568
            5FBE1ED980960555BEC5C51336EEF2B333FCC1CECAC20512646366F8B364C769
            A6B22467BFEF3F7E32880BF13164F5ECE83DD01150C2685FB606D980AE05D501
            79A5D3762E8B70D0E5D39215E003093E7BF7EDF7F4CD675F96C65A277EF8F48D
            414E429021B36BEBE4039DC1798C0EA52B910D28A94D72CCB9F4F0EDCDB76FBF
            5F4C7456D3676262645E76F0CE45364E161D334D71B7AFC0E855941261C8ECDC
            386B7F57583AA36DEE1C60A204A62B20018CF288D440EB66734305993DE79EEC
            387EF5C55990B88596B8B1B9A6A8C7CB17EF39642484188405781892EA97AEDF
            DF1717C468993E156C0030C17838996BF6E4463969EF387CF9B9B4B820878A9C
            382FC859771EBDFCBC72FBA9FBF79FBEF98A1463E7F64F4A2D001B0004B10EA6
            1A5539514E1A5396EFBB79E4CC8D2E6646060BA0B83A54392809AE006ADA0FD4
            F91F620013C3FEC9690C8C7226DE0C72265EC756F665594E5BBEEFCEA68D9BF3
            3F3DBFBD8D112D797E78769BE1C3D35B60B680B41A10AB33DC3FB9099CF6B875
            3CD3738515F4825EDF3BBFFADACE39A0B40D4C730CBF80F83794FE85C407C9FD
            630087DB7F0600418D58F05DEC91BF0000000049454E44AE426082}
          OnClick = btnPesquisaUnidadeClick
        end
        object edtGTIN: TDBEdit
          Left = 543
          Top = 18
          Width = 149
          Height = 24
          DataField = 'GTIN'
          DataSource = dsCadastro
          TabOrder = 1
          OnExit = edtGTINExit
        end
        object ckbBLOQUEADO: TJvDBCheckBox
          Left = 112
          Top = 214
          Width = 97
          Height = 17
          Caption = 'Bloqueado?'
          DataField = 'BLOQUEADO'
          DataSource = dsCadastro
          TabOrder = 22
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object JvgGroupBox1: TJvgGroupBox
        Left = 0
        Top = 272
        Width = 765
        Height = 116
        Align = alBottom
        Caption = 'Estoque'
        TabOrder = 1
        Border.Inner = bvSpace
        Border.Outer = bvNone
        Border.Bold = False
        CaptionAlignment = fcaWidth
        CaptionBorder.Inner = bvSpace
        CaptionBorder.Outer = bvNone
        CaptionBorder.Bold = False
        CaptionGradient.Active = False
        CaptionGradient.Orientation = fgdHorizontal
        CaptionShift.X = 8
        CaptionShift.Y = 0
        Colors.Text = clHighlightText
        Colors.TextActive = clHighlightText
        Colors.Caption = clBtnShadow
        Colors.CaptionActive = clBtnShadow
        Colors.Client = clBtnFace
        Colors.ClientActive = clBtnFace
        Gradient.FromColor = clBlack
        Gradient.ToColor = clGray
        Gradient.Active = False
        Gradient.Orientation = fgdHorizontal
        Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
        FullHeight = 0
        object dbgrdEstoque: TJvDBGrid
          Left = 2
          Top = 19
          Width = 761
          Height = 95
          Align = alClient
          DataSource = dsEstoque
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Courier New'
          TitleFont.Style = []
          PostOnEnterKey = True
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 20
          TitleRowHeight = 20
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_FILIAL'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ID_PRODUTO'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE_QTD'
              Title.Caption = 'Estoque Atual'
              Width = 143
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE_MIN'
              Title.Caption = 'Estoque M'#237'nimo'
              Width = 144
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTOQUE_MAX'
              Title.Caption = 'Estoque M'#225'ximo'
              Width = 153
              Visible = True
            end>
        end
      end
    end
    object tsNFCe: TTabSheet
      Caption = 'NFCe'
      ImageIndex = 1
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 161
        Width = 765
        Height = 227
        Align = alClient
        DataSource = dsProduto_Tributacao_NFCe
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        Visible = False
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 20
        TitleRowHeight = 20
        Columns = <
          item
            Expanded = False
            FieldName = 'COD_SIT_TRIB'
            Title.Caption = 'Cod. Sit. NFC-e'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CFOP'
            Title.Caption = 'CFOP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IAT'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IPPT'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST_ECF'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ICMS_PDV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESAVEL'
            Title.Caption = 'Pesavel?'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXPORTA_PDV'
            Title.Caption = 'Exporta PDV?'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 161
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lbl82: TLabel
          Left = 5
          Top = 69
          Width = 120
          Height = 16
          Alignment = taRightJustify
          Caption = 'Sit. Tribut'#225'ria'
        end
        object lbl90: TLabel
          Left = 101
          Top = 42
          Width = 24
          Height = 16
          Alignment = taRightJustify
          Caption = 'IAT'
          FocusControl = cbbIAT
        end
        object lbl1: TLabel
          Left = 5
          Top = 13
          Width = 120
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cod. Sit. NFC-e'
        end
        object lblCFOP: TLabel
          Left = 461
          Top = 13
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'CFOP'
        end
        object lbl91: TLabel
          Left = 461
          Top = 42
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'IPPT'
          FocusControl = cbbIPPT
        end
        object lbl103: TLabel
          Left = 413
          Top = 69
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Aliq. ICMS'
          FocusControl = edtICMS_PDV
        end
        object ckbPESAVEL: TJvDBCheckBox
          Left = 131
          Top = 98
          Width = 129
          Height = 17
          Caption = 'Pes'#225'vel?'
          DataField = 'PESAVEL'
          DataSource = dsCadastro
          TabOrder = 0
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object cbbSIT_ECF: TJvDBComboBox
          Left = 131
          Top = 66
          Width = 185
          Height = 24
          DataField = 'ST_ECF'
          DataSource = dsCadastro
          Items.Strings = (
            'I - Isento'
            'N - N'#227'o Tributado'
            'F - Substitui'#231#227'o Tribut'#225'ria'
            'T - Tributada pelo ICMS '
            'S - Tributada pelo ISSQN')
          TabOrder = 1
          Values.Strings = (
            'I'
            'N'
            'F'
            'T'
            'S')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object cbbIAT: TJvDBComboBox
          Left = 131
          Top = 38
          Width = 185
          Height = 24
          DataField = 'IAT'
          DataSource = dsCadastro
          Items.Strings = (
            'A - Arredonda'
            'T - Trucamento')
          TabOrder = 2
          Values.Strings = (
            'A'
            'T')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtCOD_SIT_TRIB: TJvDBComboBox
          Left = 131
          Top = 10
          Width = 110
          Height = 24
          DataField = 'COD_SIT_TRIB'
          DataSource = dsCadastro
          Items.Strings = (
            '000'
            '060'
            '041'
            '101'
            '102'
            '201'
            '202'
            '400'
            '500')
          TabOrder = 3
          Values.Strings = (
            '000'
            '060'
            '041'
            '101'
            '102'
            '201'
            '202'
            '400'
            '500')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtID_CFOP: TDBEdit
          Left = 500
          Top = 10
          Width = 77
          Height = 24
          DataField = 'ID_CFOP'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object cbbIPPT: TJvDBComboBox
          Left = 500
          Top = 38
          Width = 182
          Height = 24
          DataField = 'IPPT'
          DataSource = dsCadastro
          Items.Strings = (
            'P - Proprio'
            'T - Terceiro')
          TabOrder = 5
          Values.Strings = (
            'P'
            'T')
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object edtICMS_PDV: TJvDBCalcEdit
          Left = 500
          Top = 66
          Width = 95
          Height = 24
          DisplayFormat = '#,##0.00'
          ShowButton = False
          TabOrder = 6
          DecimalPlacesAlwaysShown = False
          DataField = 'ICMS_PDV'
          DataSource = dsCadastro
        end
        object ckbEXPORTA_PDV: TJvDBCheckBox
          Left = 500
          Top = 96
          Width = 197
          Height = 17
          Caption = 'Exportar p/ PDV?'
          DataField = 'EXPORTA_PDV'
          DataSource = dsCadastro
          TabOrder = 7
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object JvDBNavigator1: TJvDBNavigator
          Left = 1
          Top = 133
          Width = 327
          Height = 25
          DataSource = dsProduto_Tributacao_NFCe
          VisibleButtons = [nbEdit, nbPost, nbCancel]
          TabOrder = 8
          Visible = False
        end
      end
    end
    object tsProdutoFornecedor: TTabSheet
      Caption = 'Refer'#234'ncia do Fornecedor'
      ImageIndex = 2
      TabVisible = False
      object pnl11: TPanel
        Left = 0
        Top = 0
        Width = 765
        Height = 89
        Align = alTop
        ParentColor = True
        TabOrder = 0
        object Label1: TLabel
          Left = 48
          Top = 7
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Fornecedor'
        end
        object lbl80: TLabel
          Left = 8
          Top = 35
          Width = 120
          Height = 16
          Alignment = taRightJustify
          Caption = 'Cod. do Produto'
        end
        object cbbFornecedor: TJvDBLookupCombo
          Left = 134
          Top = 3
          Width = 331
          Height = 23
          DeleteKeyClear = False
          DataField = 'ID_CONTATO'
          DataSource = dsProdutoFornecedor
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = dsFornecedores
          TabOrder = 0
        end
        object edtCODIGO_EXTERNO: TDBEdit
          Left = 132
          Top = 32
          Width = 331
          Height = 24
          DataField = 'CODIGO_EXTERNO'
          DataSource = dsProdutoFornecedor
          TabOrder = 1
        end
        object dbnvgr1: TDBNavigator
          Left = 132
          Top = 58
          Width = 329
          Height = 25
          DataSource = dsProdutoFornecedor
          VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          TabOrder = 2
        end
      end
      object grd1: TJvDBGrid
        Left = 0
        Top = 89
        Width = 765
        Height = 299
        Align = alClient
        DataSource = dsProdutoFornecedor
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 20
        TitleRowHeight = 20
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_CONTATO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO_EXTERNO'
            Title.Alignment = taCenter
            Title.Caption = 'Codigo do Produto'
            Width = 258
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_FORNECEDOR'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Fornecedor'
            Width = 581
            Visible = True
          end>
      end
    end
    object tsHistoricoVendas: TTabSheet
      Caption = 'Hist'#243'rico de Vendas'
      ImageIndex = 3
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 0
        Width = 765
        Height = 388
        Align = alClient
        DataSource = dsHistoricoVendas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        PopupMenu = pmOpe
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Courier New'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 20
        TitleRowHeight = 20
        Columns = <
          item
            Expanded = False
            FieldName = 'EMISSAO'
            Title.Caption = 'Dt. Pedido'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Title.Caption = 'N'#250'm. Pedido'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome do cliente'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA'
            Title.Caption = 'Num. Nota'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Quantidade'
            Width = 89
            Visible = True
          end>
      end
    end
  end
  object dsListaUnidade: TDataSource [3]
    DataSet = dmAcesso.QyLKPUnidades
    Left = 560
    Top = 256
  end
  object dsListaDepartamento: TDataSource [4]
    DataSet = dmAcesso.QyLKPDepartamento
    Left = 544
    Top = 320
  end
  object dsListaVasilhame: TDataSource [5]
    DataSet = dmAcesso.QyLKPVasilhames
    Left = 648
    Top = 256
  end
  object dsListaTipoProduto: TDataSource [6]
    DataSet = dmAcesso.QyLKPTipoProdutos
    Left = 648
    Top = 320
  end
  object dsListaCategoria: TDataSource [7]
    DataSet = dmAcesso.QyLKPCategoria
    Left = 544
    Top = 384
  end
  object dsGrupoProduto: TDataSource [8]
    DataSet = dmAcesso.QyLKPGrupoProduto
    Left = 648
    Top = 384
  end
  object dsListaMarcas: TDataSource [9]
    DataSet = dmAcesso.QyLKPMarcas
    Left = 728
    Top = 248
  end
  object dsListaTributaao: TDataSource [10]
    DataSet = dmAcesso.QyLKPTributacao
    Left = 496
    Top = 376
  end
  object dsEstoque: TDataSource [11]
    DataSet = QyListaEstoque
    Left = 240
    Top = 328
  end
  inherited JvEnterAsTab1: TJvEnterAsTab
    Left = 464
    Top = 280
  end
  object dsCadastroTributacaoProduto: TDataSource
    DataSet = QyCadastroTributacaoProduto
    Left = 472
    Top = 112
  end
  object dsProdutoFornecedor: TDataSource
    DataSet = QyProdutoFornecedor
    Left = 264
    Top = 312
  end
  object dsFornecedores: TDataSource
    DataSet = dmAcesso.QyLKPFornecedores
    Left = 320
    Top = 296
  end
  object QyProdutoFornecedor: TFDQuery
    AfterInsert = QyProdutoFornecedorAfterInsert
    BeforePost = QyProdutoFornecedorBeforePost
    CachedUpdates = True
    IndexFieldNames = 'ID_PRODUTO'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    Connection = dmAcesso.FDConnection1
    SchemaAdapter = dmAcesso.FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM PRODUTO_FORNECEDOR')
    Left = 200
    Top = 272
    object QyProdutoFornecedorNOME_FORNECEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_FORNECEDOR'
      LookupDataSet = dmAcesso.QyLKPFornecedores
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CONTATO'
      Size = 120
      Lookup = True
    end
    object QyProdutoFornecedorID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyProdutoFornecedorID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyProdutoFornecedorID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QyProdutoFornecedorID_CONTATO: TIntegerField
      FieldName = 'ID_CONTATO'
      Origin = 'ID_CONTATO'
      Required = True
    end
    object QyProdutoFornecedorCODIGO_EXTERNO: TStringField
      FieldName = 'CODIGO_EXTERNO'
      Origin = 'CODIGO_EXTERNO'
      Required = True
    end
  end
  object QyListaEstoque: TFDQuery
    AfterInsert = QyListaEstoqueAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'ID_PRODUTO'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    DetailFields = 'ID_PRODUTO'
    Connection = dmAcesso.FDConnection1
    SchemaAdapter = dmAcesso.FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM ESTOQUE WHERE ID_PRODUTO=:ID')
    Left = 200
    Top = 344
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QyListaEstoqueID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
      Required = True
    end
    object QyListaEstoqueID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyListaEstoqueID_DEPARTAMENTO: TIntegerField
      FieldName = 'ID_DEPARTAMENTO'
      Origin = 'ID_DEPARTAMENTO'
      Required = True
    end
    object QyListaEstoqueID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object QyListaEstoqueESTOQUE_QTD: TBCDField
      FieldName = 'ESTOQUE_QTD'
      Origin = 'ESTOQUE_QTD'
      Precision = 15
      Size = 3
    end
    object QyListaEstoqueESTOQUE_MIN: TBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Precision = 15
      Size = 3
    end
    object QyListaEstoqueESTOQUE_MAX: TBCDField
      FieldName = 'ESTOQUE_MAX'
      Origin = 'ESTOQUE_MAX'
      Precision = 15
      Size = 3
    end
    object QyListaEstoqueESTOQUE_EMPENHO: TBCDField
      FieldName = 'ESTOQUE_EMPENHO'
      Origin = 'ESTOQUE_EMPENHO'
      Precision = 15
      Size = 3
    end
  end
  object QyCadastroTributacaoProduto: TFDQuery
    AfterInsert = QyCadastroTributacaoProdutoAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'ID_PRODUTO'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    DetailFields = 'ID_PRODUTO'
    Connection = dmAcesso.FDConnection1
    SchemaAdapter = dmAcesso.FDSchemaAdapter1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM TRIBUTACAO_PRODUTO'
      'WHERE ID_PRODUTO=:ID')
    Left = 344
    Top = 256
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QyCadastroTributacaoProdutoID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Origin = 'ID_FILIAL'
    end
    object QyCadastroTributacaoProdutoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QyCadastroTributacaoProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QyCadastroTributacaoProdutoID_TRIBUTACAO: TIntegerField
      FieldName = 'ID_TRIBUTACAO'
      Origin = 'ID_TRIBUTACAO'
      Required = True
    end
  end
  object QyProduto_Tributacao_NFCe: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ID_PRODUTO'
    MasterSource = dsCadastro
    MasterFields = 'ID'
    DetailFields = 'ID_PRODUTO'
    Connection = dmAcesso.FDConnection1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'SELECT * FROM TRIBUTACAO_PRODUTO_NFCE'
      'WHERE ID_PRODUTO=:ID')
    Left = 80
    Top = 264
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsProduto_Tributacao_NFCe: TDataSource
    DataSet = QyProduto_Tributacao_NFCe
    Left = 80
    Top = 328
  end
  object QyHistoricoVenda: TFDQuery
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      
        'SELECT VENDA.EMISSAO, D.ID_VENDA, C.NOME, FMT_CHAVENFE(VENDA.CHA' +
        'VENFE) AS NOTA,  D.ID_PRODUTO, D.QUANTIDADE FROM DETALHE_VENDA D' +
        ' '
      'INNER JOIN VENDA ON VENDA.ID = D.ID_VENDA'
      'INNER JOIN CONTATO C ON C.ID = VENDA.ID_CONTATO'
      'WHERE D.ID_PRODUTO = 1'
      'AND D.ID_FILIAL = 1'
      'AND VENDA.TIPO IN ('#39'N'#39','#39'V'#39','#39'K'#39','#39'F'#39')')
    Left = 176
    Top = 152
  end
  object dsHistoricoVendas: TDataSource
    DataSet = QyHistoricoVenda
    Left = 256
    Top = 144
  end
  object pmOpe: TPopupMenu
    Left = 484
    Top = 169
    object ImprimirEspelho1: TMenuItem
      Caption = 'Imprimir Espelho'
      OnClick = ImprimirEspelho1Click
    end
  end
end
