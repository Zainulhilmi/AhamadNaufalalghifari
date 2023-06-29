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
    Left = 248
    Top = 120
    Width = 94
    Height = 13
    Caption = 'MASUKAN NILAI 1 :'
  end
  object lbl2: TLabel
    Left = 240
    Top = 168
    Width = 101
    Height = 13
    Caption = 'MASUKAN ANGKA 2 :'
  end
  object lbl3: TLabel
    Left = 272
    Top = 224
    Width = 36
    Height = 13
    Caption = 'HASIL :'
  end
  object edt1: TEdit
    Left = 352
    Top = 120
    Width = 193
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 352
    Top = 168
    Width = 193
    Height = 21
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 352
    Top = 224
    Width = 217
    Height = 21
    TabOrder = 2
    Text = 'edt3'
  end
  object btn1: TButton
    Left = 600
    Top = 120
    Width = 97
    Height = 33
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 600
    Top = 184
    Width = 97
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = btn2Click
  end
end
