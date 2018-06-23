program DemoSQL;

uses
  Vcl.Forms,
  uPrinc in 'uPrinc.pas' {form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform1, form1);
  Application.Run;
end.
