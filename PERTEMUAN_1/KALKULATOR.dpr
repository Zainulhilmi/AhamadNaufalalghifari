program KALKULATOR;

uses
  Forms,
  UASMULTI in 'C:\Program Files (x86)\Borland\Delphi7\Projects\UASMULTI.pas' {Form1},
  UAS in 'C:\Program Files (x86)\Borland\Delphi7\Projects\UAS.pas' {Form2},
  Unit3 in 'C:\Program Files (x86)\Borland\Delphi7\Projects\Unit3.pas' {Form3},
  Unit4 in 'C:\Program Files (x86)\Borland\Delphi7\Projects\Unit4.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
