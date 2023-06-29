unit Data_Grafik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ADODB, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, StdCtrls;

type
  TForm1 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    cht1: TChart;
    brsrsSeries1: TBarSeries;
    btn1: TButton;
    qry2: TADOQuery;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses u_Jadwal;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=50;
dbgrd1.Columns[3].Width:=75;
dbgrd1.Columns[4].Width:=70;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=150;
dbgrd1.Columns[7].Width:=50;
cht1.Title.Text.Add('Grafik Kehadiran Praktikum');
end;

procedure TForm1.btn1Click(Sender: TObject);
var
  i: Integer;
begin
  // Mengatur koneksi database
  qry2.Close;
  qry2.Connection := con1;  
  qry2.SQL.Clear;
  qry2.SQL.Add('SELECT COUNT(No) AS jumlah_kelas, SUM(Kehadiran_total) AS total_siswa, kelas AS nama_kelas FROM Tjadwal GROUP BY kelas');

  try
    qry2.Open;
    cht1.Series[0].Clear;

    for i := 1 to qry2.RecordCount do
    begin
      cht1.Series[0].Add(StrToInt(qry2.FieldByName('total_siswa').AsString), qry2.FieldByName('nama_kelas').AsString);
      qry2.Next;
    end;
  finally
    qry2.Close;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select*from Tjadwal');
qry1.Open;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  Form2.showModal;
end;

end.
