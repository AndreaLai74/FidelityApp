program pfidelity;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  frmCard in 'frmCard.pas' {FormCard},
  Unit5 in 'Unit5.pas' {Form5},
  UnitA in 'UnitA.pas' {FormA};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormCard, FormCard);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TFormA, FormA);
  Application.Run;
end.
