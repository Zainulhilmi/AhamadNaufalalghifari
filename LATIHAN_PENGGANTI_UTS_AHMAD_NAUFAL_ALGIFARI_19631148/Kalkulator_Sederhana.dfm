object Form2: TForm2
  Left = 262
  Top = 155
  Width = 928
  Height = 480
  Caption = 'Form2'
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
    Left = 216
    Top = 80
    Width = 60
    Height = 13
    Caption = 'INPUTAN 1 :'
  end
  object lbl2: TLabel
    Left = 216
    Top = 128
    Width = 60
    Height = 13
    Caption = 'INPUTAN 2 :'
  end
  object edt1: TEdit
    Left = 280
    Top = 80
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 280
    Top = 128
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 528
    Top = 64
    Width = 113
    Height = 49
    Caption = 'PROSES SEMUA'
    TabOrder = 2
    OnClick = btn1Click
  end
  object grp1: TGroupBox
    Left = 200
    Top = 184
    Width = 545
    Height = 217
    Caption = 'NILAI PROSES'
    TabOrder = 3
    object lbl3: TLabel
      Left = 16
      Top = 32
      Width = 87
      Height = 13
      Caption = 'HASIL TAMBAHAN'
    end
    object lbl4: TLabel
      Left = 16
      Top = 64
      Width = 87
      Height = 13
      Caption = 'HASIL PERKALIAN'
    end
    object lbl5: TLabel
      Left = 16
      Top = 104
      Width = 87
      Height = 13
      Caption = 'HASIL KURANGAN'
    end
    object lbl6: TLabel
      Left = 16
      Top = 144
      Width = 90
      Height = 13
      Caption = 'HASIL PEMBAGIAN'
    end
    object lbl7: TLabel
      Left = 312
      Top = 40
      Width = 8
      Height = 13
      Caption = '+'
    end
    object lbl8: TLabel
      Left = 312
      Top = 72
      Width = 6
      Height = 13
      Caption = 'X'
    end
    object lbl9: TLabel
      Left = 312
      Top = 112
      Width = 4
      Height = 13
      Caption = '-'
    end
    object lbl10: TLabel
      Left = 312
      Top = 152
      Width = 4
      Height = 13
      Caption = '/'
    end
    object edt3: TEdit
      Left = 112
      Top = 32
      Width = 169
      Height = 21
      TabOrder = 0
    end
    object edt4: TEdit
      Left = 112
      Top = 64
      Width = 169
      Height = 21
      TabOrder = 1
    end
    object edt5: TEdit
      Left = 112
      Top = 104
      Width = 169
      Height = 21
      TabOrder = 2
    end
    object edt6: TEdit
      Left = 112
      Top = 144
      Width = 169
      Height = 21
      TabOrder = 3
    end
  end
  object btn2: TButton
    Left = 528
    Top = 120
    Width = 113
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn2Click
  end
end
