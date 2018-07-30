unit SnipBox.New;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TNewForm = class(TForm)
    btOK: TBitBtn;
    btCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewForm: TNewForm;

implementation

{$R *.dfm}

end.
