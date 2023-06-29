unit Kondisional_Nilai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
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

procedure TForm1.btn1Click(Sender: TObject);
var
  nil1,nil2,nil3,hasil : real;
  bil1,bil2,bil3 : real;
  grade : string;
begin
  nil1:= strToFloat(edt1.Text);
  nil2:= strToFloat(edt2.Text);
  nil3:= strToFloat(edt3.Text);
  bil1:= strToFloat(edt4.Text)/100;
  bil2:= strToFloat(edt5.Text)/100;
  bil3:= strToFloat(edt6.Text)/100;
  hasil :=   nil1*bil1 + nil2*bil2 + nil3*bil3;

  if(hasil >=80) then
  grade := 'A'
  else
  if(hasil >=70) then
  grade := 'B'
  else
  if(hasil >=60) then
  grade := 'C'
  else
  if(hasil >=50) then
  grade := 'D'
  else
  grade := 'E';
  edt7.Text := FloatToStr(hasil);
  edt8.text := grade ;
  showmessage('Inputan Sudah Di Hitung');
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
edt1.clear;
edt2.clear;
edt3.clear;
edt4.clear;
edt5.clear;
edt6.clear;
edt7.clear;
edt8.clear;
showmessage('Inputan Sudah DiHapus');

end;

procedure TForm1.btn3Click(Sender: TObject);
begin
close;
showmessage('Anda Telah Keluar');
end;

end.
