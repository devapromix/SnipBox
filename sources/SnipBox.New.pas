unit SnipBox.New;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    procedure btOKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewForm: TNewForm;

implementation

{$R *.dfm}

procedure TNewForm.btOKClick(Sender: TObject);
begin
  if Self.edSnipLanguage.Items.IndexOf(Self.edSnipLanguage.Text) < 0 then
    Self.edSnipLanguage.Items.Append(Self.edSnipLanguage.Text);
end;

procedure TNewForm.FormCreate(Sender: TObject);
begin
  //Self.edSnipLanguage.Items.LoadFromFile('', TEncoding.UTF8);
end;

procedure TNewForm.FormDestroy(Sender: TObject);
begin
  //Self.edSnipLanguage.Items.SaveToFile('', TEncoding.UTF8);
end;

end.
