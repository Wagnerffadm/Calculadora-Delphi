object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 210
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnCreate = FormCreate
  OnKeyPress = FormeKeyPress
  TextHeight = 15
  object moResultado: TMemo
    Left = 200
    Top = 64
    Width = 169
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object btn01: TButton
    Left = 8
    Top = 67
    Width = 33
    Height = 25
    Caption = '1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn01Click
  end
  object btn02: TButton
    Left = 56
    Top = 67
    Width = 33
    Height = 25
    Caption = '2'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Btn02Click
  end
  object btn03: TButton
    Left = 102
    Top = 67
    Width = 33
    Height = 25
    Caption = '3'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn03Click
  end
  object btn07: TButton
    Left = 8
    Top = 129
    Width = 33
    Height = 25
    Caption = '7'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn07Click
  end
  object btn04: TButton
    Left = 8
    Top = 98
    Width = 33
    Height = 25
    Caption = '4'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btn04Click
  end
  object btn05: TButton
    Left = 56
    Top = 98
    Width = 33
    Height = 25
    Caption = '5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btn05Click
  end
  object btn06: TButton
    Left = 102
    Top = 98
    Width = 33
    Height = 25
    Caption = '6'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btn06Click
  end
  object btn08: TButton
    Left = 56
    Top = 129
    Width = 33
    Height = 25
    Caption = '8'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn08Click
  end
  object btn09: TButton
    Left = 102
    Top = 129
    Width = 33
    Height = 25
    Caption = '9'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btn09Click
  end
  object btn00: TButton
    Left = 8
    Top = 160
    Width = 33
    Height = 25
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btn00Click
  end
  object btnIgual: TButton
    Left = 102
    Top = 160
    Width = 33
    Height = 25
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = btnIgualClick
  end
  object btnSoma: TButton
    Left = 150
    Top = 67
    Width = 33
    Height = 25
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = btnSomaClick
  end
  object btnSubtrair: TButton
    Left = 150
    Top = 98
    Width = 33
    Height = 25
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = btnSubtrairClick
  end
  object btnMultiplicar: TButton
    Left = 150
    Top = 129
    Width = 33
    Height = 25
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = btnMultiplicarClick
  end
  object Button5: TButton
    Left = -146
    Top = 512
    Width = 33
    Height = 25
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object btnDividir: TButton
    Left = 150
    Top = 160
    Width = 33
    Height = 25
    Caption = '/'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = btnDividirClick
  end
  object edtVisor: TEdit
    Left = 8
    Top = 8
    Width = 361
    Height = 33
    TabOrder = 17
  end
  object bntLimpar: TButton
    Left = 56
    Top = 160
    Width = 33
    Height = 25
    Caption = 'C'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = bntLimparClick
  end
end
