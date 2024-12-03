object frmConsulta: TfrmConsulta
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 578
  ClientWidth = 777
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = btnFecharClick
  OnCreate = FormCreate
  TextHeight = 15
  object lblPesquisarNota: TLabel
    Left = 225
    Top = 64
    Width = 89
    Height = 15
    Caption = 'Numero da Nota'
  end
  object edtNota: TEdit
    Left = 320
    Top = 61
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object btnPesquisar: TButton
    Left = 447
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 1
  end
  object stgConsulta: TStringGrid
    Left = 212
    Top = 91
    Width = 320
    Height = 120
    ColCount = 4
    RowCount = 2
    TabOrder = 2
  end
  object btnFechar: TButton
    Left = 336
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = btnFecharClick
  end
end
