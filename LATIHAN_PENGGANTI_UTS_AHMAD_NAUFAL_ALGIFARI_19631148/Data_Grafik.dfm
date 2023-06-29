object Form1: TForm1
  Left = 191
  Top = 172
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
  object dbgrd1: TDBGrid
    Left = 16
    Top = 56
    Width = 865
    Height = 113
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cht1: TChart
    Left = 16
    Top = 176
    Width = 865
    Height = 257
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'GRAFIK')
    TabOrder = 1
    object brsrsSeries1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object btn1: TButton
    Left = 800
    Top = 16
    Width = 75
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 632
    Top = 16
    Width = 65
    Height = 25
    Caption = 'LOAD DATA'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 712
    Top = 16
    Width = 75
    Height = 25
    Caption = 'VIEW REPORT'
    TabOrder = 4
  end
  object btn4: TButton
    Left = 528
    Top = 16
    Width = 91
    Height = 25
    Caption = 'TAMBAH DATA'
    TabOrder = 5
    OnClick = btn4Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\User\Docum' +
      'ents\lATIHAN_PENGGANTI_UTS\Db_latihan.mdb;Persist Security Info=' +
      'False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from Tjadwal')
    Left = 80
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 8
  end
  object qry2: TADOQuery
    Parameters = <>
    Left = 360
    Top = 8
  end
end
