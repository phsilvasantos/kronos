object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 247
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object JvgGroupBox1: TJvgGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 206
    Align = alClient
    Caption = 'Autentica'#231#227'o'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    Border.Inner = bvSpace
    Border.Outer = bvNone
    Border.Bold = False
    CaptionAlignment = fcaWidth
    CaptionBorder.Inner = bvSpace
    CaptionBorder.Outer = bvNone
    CaptionBorder.Bold = False
    CaptionGradient.FromColor = clBtnFace
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
    Gradient.BrushStyle = bsClear
    Options = [fgoCanCollapse, fgoFilledCaption, fgoFluentlyCollapse, fgoFluentlyExpand, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
    FullHeight = 0
    object JvgGroupBox2: TJvgGroupBox
      AlignWithMargins = True
      Left = 5
      Top = 22
      Width = 319
      Height = 179
      Align = alClient
      Caption = ''
      TabOrder = 0
      Border.Inner = bvSpace
      Border.Outer = bvNone
      Border.Bold = False
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
      object Label1: TLabel
        Left = 9
        Top = 121
        Width = 37
        Height = 16
        Caption = 'Filiais:'
      end
      object cbbFilial: TJvDBLookupCombo
        Left = 9
        Top = 141
        Width = 293
        Height = 25
        Hint = 'FANTASIA'
        DeleteKeyClear = False
        LookupField = 'ID'
        LookupDisplay = 'FANTASIA'
        LookupSource = dsFiliais
        TabOrder = 2
      end
      object edtSenha: TLabeledEdit
        Left = 9
        Top = 82
        Width = 293
        Height = 24
        EditLabel.Width = 41
        EditLabel.Height = 16
        EditLabel.Caption = 'Senha:'
        PasswordChar = '*'
        TabOrder = 1
        TextHint = 'senha do usu'#225'rio'
      end
      object edtUsuario: TLabeledEdit
        Left = 9
        Top = 26
        Width = 293
        Height = 24
        EditLabel.Width = 48
        EditLabel.Height = 16
        EditLabel.Caption = 'Usu'#225'rio:'
        TabOrder = 0
        Text = 'ADMIN'
        TextHint = 'login do usuario'
        OnExit = edtUsuarioExit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 206
    Width = 329
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btn1: TJvXPButton
      Left = 167
      Top = 5
      Width = 148
      Height = 32
      Caption = 'OK'
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn1Click
    end
    object JvXPButton1: TJvXPButton
      Left = 5
      Top = 5
      Width = 154
      Height = 32
      Caption = 'Cancelar'
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = JvXPButton1Click
    end
  end
  object dsFiliais: TDataSource
    DataSet = dmAcesso.QyFiliais
    Left = 264
    Top = 80
  end
  object JvLoginDialog1: TJvLoginDialog
    Caption = 'Senha do programador'
    Active = False
    AppTitleLabelCaption = 'Login do programador'
    PasswordLabelCaption = 'Senha:'
    UserNameLabelCaption = 'Usu'#225'rio:'
    UpdateCaption = ucAppTitle
    OnGetPassword = JvLoginDialog1GetPassword
    Left = 152
    Top = 120
  end
end
