program SnipBox;

uses
  Vcl.Forms,
  SnipBox.Main in 'SnipBox.Main.pas' {MainForm},
  SnipBox.New in 'SnipBox.New.pas' {NewForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TNewForm, NewForm);
  Application.Run;
end.
