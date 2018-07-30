program SnipBox;

uses
  Vcl.Forms,
  SnipBox.Main in 'SnipBox.Main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
