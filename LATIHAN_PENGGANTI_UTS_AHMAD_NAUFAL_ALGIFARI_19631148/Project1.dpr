program Project1;

uses
  Forms,
  Data_Grafik in 'Data_Grafik.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
