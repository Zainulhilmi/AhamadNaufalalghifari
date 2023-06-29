unit Grafik_Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    cbb2: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    strngrd1: TStringGrid;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
strngrd1.RowCount := 1;
  strngrd1.ColCount := 4;
  strngrd1.Cells[0, 0] := 'No';
  strngrd1.Cells[1, 0] := 'Jumlah Terdaftar';
  strngrd1.Cells[2, 0] := 'Fakultas';
  strngrd1.Cells[3, 0] := 'Tahun Angkatan';

  strngrd1.ColWidths[0] := 20;
  strngrd1.ColWidths[1] := 70;
  strngrd1.ColWidths[2] := 170;
  strngrd1.ColWidths[3] := 100;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
strngrd1.rowcount := strngrd1.rowcount +1;
strngrd1.cells[0,strngrd1.rowcount -1] := inttostr(strngrd1.rowcount -1);
strngrd1.cells[1,strngrd1.rowcount -1] := edt1.text;
strngrd1.cells[2,strngrd1.rowcount -1] := cbb2.text;
strngrd1.cells[3,strngrd1.rowcount -1] := cbb1.text;
showmessage('Data Telah Ditambah');
end;

procedure TForm1.btn2Click(Sender: TObject);
var i :integer;
begin
for i := 1 to strngrd1.rowcount -1 do
begin
cht1.series[0].Add(strToFloat(strngrd1.cells[1,i]),strngrd1.cells[2,i]);
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
edt1.Clear;
showmessage('Data TelahDihapus');
end;

end.
