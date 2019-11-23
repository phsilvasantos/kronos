object FrmHistoricoPedido: TFrmHistoricoPedido
  Left = 0
  Top = 0
  Caption = 'Historico do pedido'
  ClientHeight = 278
  ClientWidth = 590
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
  object dbgrd1: TJvDBGrid
    Left = 0
    Top = 0
    Width = 297
    Height = 278
    Align = alLeft
    DataSource = dsHistorico
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
        FieldName = 'ID'
        Title.Caption = 'Registro'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_HISTORICO'
        Title.Caption = 'Dt. Registro'
        Width = 182
        Visible = True
      end>
  end
  object dbmmoTEXTO: TDBMemo
    Left = 297
    Top = 0
    Width = 293
    Height = 278
    Align = alClient
    DataField = 'TEXTO'
    DataSource = dsHistorico
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    ExplicitLeft = 265
    ExplicitWidth = 325
  end
  object QyHistorico: TFDQuery
    Connection = dmAcesso.FDConnection1
    SQL.Strings = (
      'SELECT * FROM HISTORICO_USUARIO'
      'WHERE ID_VENDA =:pID'
      'ORDER BY ID DESC')
    Left = 184
    Top = 96
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsHistorico: TDataSource
    DataSet = QyHistorico
    Left = 192
    Top = 168
  end
end
