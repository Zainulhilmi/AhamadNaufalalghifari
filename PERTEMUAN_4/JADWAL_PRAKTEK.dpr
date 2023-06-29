program JADWAL_PRAKTEK;

uses
  Forms,
  Uviewjadwal in 'Uviewjadwal.pas' {Form1},
  Ujadwal in 'Ujadwal.pas' {Form2},
  Umenu in 'Umenu.pas' {Fmenu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmenu, Fmenu);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
