program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {x2Coef};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tx2Coef, x2Coef);
  Application.Run;
end.
