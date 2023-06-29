object Form1: TForm1
  Left = 248
  Top = 221
  Width = 928
  Height = 575
  Caption = 'VIEW DATA JADWAL PRAKTIKUM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 8
    Top = 56
    Width = 777
    Height = 201
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cht1: TChart
    Left = 8
    Top = 264
    Width = 873
    Height = 233
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
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
    Left = 736
    Top = 16
    Width = 75
    Height = 33
    Caption = 'VIEW GRAFIK'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 512
    Top = 16
    Width = 97
    Height = 33
    Caption = 'LOAD DATA'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 624
    Top = 16
    Width = 91
    Height = 33
    Caption = 'VIEW REPORT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 16
    Width = 123
    Height = 33
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=crud_db.mdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 112
    Top = 8
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from jadwal_table')
    Left = 160
    Top = 8
  end
  object qry2: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from jadwal_table')
    Left = 208
    Top = 8
  end
  object frxrprtjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44709.543992581000000000
    ReportOptions.LastChange = 44709.578115324100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxrprtjadwalClickObject
    Left = 360
    Top = 128
    Datasets = <
      item
        DataSet = frxdbdtstjadwal
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Width = 0.500000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstjadwal
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 64.252010000000000000
          Width = 177.637910000000000000
          Height = 34.015770000000000000
          ShowHint = False
          TagStr = '[frxDBDataset1."kelas"]'
          DataField = 'kelas'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 241.889920000000000000
          Width = 177.637910000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 548.031850000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'total_kehadiran'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."total_kehadiran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 419.527830000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 64.251963620000000000
        Top = 71.811070000000000000
        Width = 718.110700000000000000
      end
      object Memo1: TfrxMemoView
        Left = 18.897650000000000000
        Top = 60.472480000000000000
        Width = 45.354360000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'No.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Left = 64.252010000000000000
        Top = 60.472480000000000000
        Width = 177.637910000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'NAMA KELAS')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        Left = 241.889920000000000000
        Top = 60.472480000000000000
        Width = 177.637910000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'MATAKULIAH')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Left = 548.031850000000000000
        Top = 60.472480000000000000
        Width = 117.165430000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'JUMLAH KEHADIRAN')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 419.527830000000000000
        Top = 60.472480000000000000
        Width = 128.504020000000000000
        Height = 34.015770000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'TANGGAL')
        ParentFont = False
        VAlign = vaCenter
      end
      object PageFooter1: TfrxPageFooter
        Height = 309.921460000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
      end
      object Footer1: TfrxFooter
        Height = 52.913420000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 548.031850000000000000
          Width = 117.165430000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."total_kehadiran">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 419.527830000000000000
          Width = 128.504020000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo13: TfrxMemoView
        Left = 151.181200000000000000
        Top = 3.779530000000000000
        Width = 336.378170000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftTop, ftBottom]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'LAPORAN DATA PRAKTIKUM SEMESTER GANJIL 2019')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxdbdtstjadwal: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qry1
    BCDToCurrency = False
    Left = 360
    Top = 80
  end
  object frxrprtdetailjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44709.580294131900000000
    ReportOptions.LastChange = 44709.596380381900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 128
    Datasets = <
      item
        DataSet = frxdbdtstdetailjadwal
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtstdetailjadwal
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 49.133890000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'kelas'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 173.858380000000000000
          Width = 151.181200000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 563.149970000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'total_kehadiran'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."total_kehadiran"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 434.645950000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 325.039580000000000000
          Width = 56.692950000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'jam_awal'
          DataSet = frxdbdtstdetailjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jam_awal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Width = 52.913420000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'jam__akhir'
          DataSet = frxdbdtstdetailjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jam__akhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 34.015770000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 49.133890000000000000
          Width = 124.724490000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA KELAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 173.858380000000000000
          Width = 151.181200000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MATAKULIAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 563.149970000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH KEHADIRAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Width = 128.504020000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 325.039580000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'WAKTU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 325.039580000000000000
          Top = 15.118120000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'MULAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 377.953000000000000000
          Top = 15.118120000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'AKHIR')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 52.913420000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo11: TfrxMemoView
          Left = 548.031850000000000000
          Width = 117.165430000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."total_kehadiran">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 419.527830000000000000
          Width = 128.504020000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxdbdtstjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'TOTAL KEHADIRAN PRAKTEK')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo13: TfrxMemoView
        Left = 143.622140000000000000
        Top = 3.779530000000000000
        Width = 336.378170000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Width = 0.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'LAPORAN DETAIL DATA JADWAL PRAKTIKUM SEMESTER GANJIL 2019')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxdbdtstdetailjadwal: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qry2
    BCDToCurrency = False
    Left = 456
    Top = 80
  end
end
