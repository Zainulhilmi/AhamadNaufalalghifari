object Form2: TForm2
  Left = 210
  Top = 149
  Width = 928
  Height = 537
  Caption = 'Form TAMBAHAN DATA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 64
    Top = 8
    Width = 817
    Height = 265
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object lbl1: TLabel
      Left = 40
      Top = 32
      Width = 52
      Height = 13
      Caption = 'JAM AWAL'
    end
    object lbl2: TLabel
      Left = 176
      Top = 32
      Width = 54
      Height = 13
      Caption = 'JAM AKHIR'
    end
    object lbl: TLabel
      Left = 24
      Top = 72
      Width = 99
      Height = 13
      Caption = 'HARI PELAKSANAAN'
    end
    object lbl3: TLabel
      Left = 40
      Top = 104
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object lbl4: TLabel
      Left = 40
      Top = 136
      Width = 35
      Height = 13
      Caption = 'RUANG'
    end
    object lbl5: TLabel
      Left = 40
      Top = 168
      Width = 39
      Height = 13
      Caption = 'MATKUL'
    end
    object lbl6: TLabel
      Left = 40
      Top = 200
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object lbl7: TLabel
      Left = 24
      Top = 232
      Width = 66
      Height = 13
      Caption = 'TOTAL AKHIR'
    end
    object edt1: TEdit
      Left = 104
      Top = 32
      Width = 57
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 240
      Top = 32
      Width = 57
      Height = 21
      TabOrder = 1
    end
    object cbb1: TComboBox
      Left = 128
      Top = 72
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUM'#39'AT'
        'SABTU'
        'MINGGU')
    end
    object dtp1: TDateTimePicker
      Left = 96
      Top = 104
      Width = 217
      Height = 17
      Date = 45072.635625231480000000
      Time = 45072.635625231480000000
      TabOrder = 3
    end
    object edt3: TEdit
      Left = 96
      Top = 136
      Width = 217
      Height = 21
      TabOrder = 4
    end
    object edt4: TEdit
      Left = 96
      Top = 168
      Width = 217
      Height = 21
      TabOrder = 5
    end
    object edt5: TEdit
      Left = 96
      Top = 200
      Width = 217
      Height = 21
      TabOrder = 6
    end
    object edt6: TEdit
      Left = 96
      Top = 232
      Width = 209
      Height = 21
      TabOrder = 7
    end
    object btn1: TButton
      Left = 576
      Top = 48
      Width = 105
      Height = 33
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 576
      Top = 112
      Width = 105
      Height = 33
      Caption = 'HAPUS'
      TabOrder = 9
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 576
      Top = 176
      Width = 105
      Height = 33
      Caption = 'BATAL'
      TabOrder = 10
    end
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 296
    Width = 817
    Height = 185
    DataSource = Form1.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
