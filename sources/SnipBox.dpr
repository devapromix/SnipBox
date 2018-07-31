program SnipBox;

uses
  Vcl.Forms,
  SnipBox.Main in 'SnipBox.Main.pas' {MainForm},
  SnipBox.Snip in 'SnipBox.Snip.pas' {SnipForm},
  SnipBox.Util in 'SnipBox.Util.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TSnipForm, SnipForm);
  Application.Run;
end.
