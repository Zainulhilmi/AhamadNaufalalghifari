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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 168
    Top = 40
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object lbl2: TLabel
    Left = 160
    Top = 72
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object lbl3: TLabel
    Left = 192
    Top = 104
    Width = 46
    Height = 13
    Caption = 'JURUSAN'
  end
  object cbb1: TComboBox
    Left = 264
    Top = 40
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023')
  end
  object edt1: TEdit
    Left = 264
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object cbb2: TComboBox
    Left = 264
    Top = 104
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'TEKNOLOGI INFORMATIKA'
      'SISTEM INFORMATIKA')
  end
  object btn1: TButton
    Left = 136
    Top = 144
    Width = 97
    Height = 33
    Caption = 'ADD  DATA'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 144
    Width = 97
    Height = 33
    Caption = 'VIEW GRAFIK'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 376
    Top = 144
    Width = 97
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn3Click
  end
  object cht1: TChart
    Left = 16
    Top = 184
    Width = 881
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'GRAFIK')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 6
    object psrsSeries1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object strngrd1: TStringGrid
    Left = 480
    Top = 24
    Width = 425
    Height = 145
    TabOrder = 7
  end
end
