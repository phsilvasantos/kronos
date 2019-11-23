object FrmAlterarSenha: TFrmAlterarSenha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Alterar Senha'
  ClientHeight = 260
  ClientWidth = 376
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object gbx1: TJvgGroupBox
    Left = 6
    Top = 8
    Width = 361
    Height = 185
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
    object edtUsuario: TLabeledEdit
      Left = 19
      Top = 33
      Width = 320
      Height = 24
      TabStop = False
      Color = clBtnFace
      EditLabel.Width = 56
      EditLabel.Height = 16
      EditLabel.Caption = 'Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtSenha: TLabeledEdit
      Left = 18
      Top = 141
      Width = 201
      Height = 24
      EditLabel.Width = 312
      EditLabel.Height = 16
      EditLabel.Caption = 'Nova Senha (6 digitos, somente n'#250'meros)'
      MaxLength = 6
      NumbersOnly = True
      PasswordChar = '*'
      TabOrder = 2
      OnChange = edtSenhaAtualChange
    end
    object edtSenhaAtual: TLabeledEdit
      Left = 18
      Top = 85
      Width = 201
      Height = 24
      EditLabel.Width = 88
      EditLabel.Height = 16
      EditLabel.Caption = 'Senha Atual'
      MaxLength = 6
      NumbersOnly = True
      PasswordChar = '*'
      TabOrder = 1
      OnChange = edtSenhaAtualChange
    end
  end
  object JvgGroupBox1: TJvgGroupBox
    Left = 6
    Top = 199
    Width = 361
    Height = 53
    Caption = 'Op'#231#245'es'
    TabOrder = 1
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
    object btnOK: TBitBtn
      Left = 225
      Top = 18
      Width = 126
      Height = 25
      Caption = 'OK'
      Enabled = False
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
      TabOrder = 0
    end
    object btnCancel: TBitBtn
      Left = 105
      Top = 18
      Width = 114
      Height = 25
      Caption = 'Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object JvEnterAsTab1: TJvEnterAsTab
    Left = 176
    Top = 128
  end
end
