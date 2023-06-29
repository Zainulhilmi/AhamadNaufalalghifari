unit Kalkulator_Sederhana;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn1: TButton;
    grp1: TGroupBox;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    btn2: TButton;
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

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);

begin
edt3.Text := intTostr(strToint(edt1.Text) + strtoint(edt2.Text));
edt4.Text := intTostr(strToint(edt1.Text) * strtoint(edt2.Text));
edt5.Text := intTostr(strToint(edt1.Text) - strtoint(edt2.Text));
edt6.Text := FloatToStr(StrToFloat(edt1.Text) / StrToFloat(edt2.Text));
ShowMessage('Inputan Sudah Di Proses');
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
edt1.clear;
edt2.clear;
edt3.clear;
edt4.clear;
edt5.clear;
edt6.clear;
ShowMessage('Inputan Telah Di Hapus');
end;

end.                                            
