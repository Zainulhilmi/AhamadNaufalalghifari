program Project2;

uses
  Forms,
  Data_Grafik in 'Data_Grafik.pas' {Form1},
  U_Jadwal in 'U_Jadwal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
