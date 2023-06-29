unit U_Jadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl: TLabel;
    lbl3: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    lbl4: TLabel;
    edt3: TEdit;
    lbl5: TLabel;
    edt4: TEdit;
    lbl6: TLabel;
    edt5: TEdit;
    lbl7: TLabel;
    edt6: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Data_Grafik;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  a: integer;
begin
  a := Form1.qry1.RecordCount + 1;

  with Form1.qry1 do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO Tjadwal VALUES (' + IntToStr(a) + ', "' + edt1.Text + '", "' +
      edt2.Text + '", "' + cbb1.Text + '", "' + FormatDateTime('yyyy-mm-dd', dtp1.Date) +
      '", "' + edt3.Text + '", "' + edt4.Text + '", "' + edt5.Text + '", "' + edt6.Text + '")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT * FROM Tjadwal');
    Open;
    ShowMessage('Data Telah Disimpan');
  end;
end;


procedure TForm2.btn2Click(Sender: TObject);
begin
edt1.clear;
edt2.clear;
edt3.clear;
edt4.clear;
edt5.clear;
edt6.clear;
showmessage('Data Telah DiHapus');
end;

end.
