object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 80
    Top = 112
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object lbl2: TLabel
    Left = 80
    Top = 144
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object lbl3: TLabel
    Left = 80
    Top = 176
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object lbl4: TLabel
    Left = 480
    Top = 128
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object lbl5: TLabel
    Left = 480
    Top = 160
    Width = 34
    Height = 13
    Caption = 'GRADE'
  end
  object pnl1: TPanel
    Left = 168
    Top = 56
    Width = 89
    Height = 41
    Caption = 'NILAI'
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 320
    Top = 56
    Width = 89
    Height = 41
    Caption = 'BOBOT'
    TabOrder = 1
  end
  object edt1: TEdit
    Left = 128
    Top = 112
    Width = 137
    Height = 21
    TabOrder = 2
  end
  object edt2: TEdit
    Left = 128
    Top = 144
    Width = 137
    Height = 21
    TabOrder = 3
  end
  object edt3: TEdit
    Left = 128
    Top = 176
    Width = 137
    Height = 21
    TabOrder = 4
  end
  object edt4: TEdit
    Left = 304
    Top = 112
    Width = 129
    Height = 21
    TabOrder = 5
    Text = '30'
  end
  object edt5: TEdit
    Left = 304
    Top = 144
    Width = 129
    Height = 21
    TabOrder = 6
    Text = '30'
  end
  object edt6: TEdit
    Left = 304
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 7
    Text = '40'
  end
  object edt7: TEdit
    Left = 528
    Top = 128
    Width = 153
    Height = 21
    TabOrder = 8
  end
  object edt8: TEdit
    Left = 528
    Top = 160
    Width = 153
    Height = 21
    TabOrder = 9
  end
  object btn1: TButton
    Left = 144
    Top = 224
    Width = 105
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 10
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 320
    Top = 224
    Width = 105
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 560
    Top = 208
    Width = 105
    Height = 33
    Caption = 'KELUAR'
    TabOrder = 12
    OnClick = btn3Click
  end
end
