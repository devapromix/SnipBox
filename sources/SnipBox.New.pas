unit SnipBox.New;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TNewForm = class(TForm)
    btOK: TBitBtn;
    btCancel: TBitBtn;
    RichEdit: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    edSnipName: TEdit;
    Label3: TLabel;
    edSnipLanguage: TComboBox;
    edSnipCategory: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
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
