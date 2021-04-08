program mainform;

uses
  Vcl.Forms,
  GlavnForma in 'GlavnForma.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
