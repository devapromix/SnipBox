unit SnipBox.Snip;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.ComCtrls,
  Vcl.StdActns,
  System.Actions,
  Vcl.ActnList,
  Vcl.Menus;

type
  TSnipForm = class(TForm)
    btOK: TBitBtn;
    btCancel: TBitBtn;
    RichEdit: TRichEdit;
    Label1: TLabel;
    Label2: TLabel;
    edSnipName: TEdit;
    Label3: TLabel;
    edSnipLanguage: TComboBox;
    edSnipCategory: TComboBox;
    PopupMenu1: TPopupMenu;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    Undo1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Paste1: TMenuItem;
    Delete1: TMenuItem;
    SelectAll1: TMenuItem;
    procedure btOKClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure MakeFiles;
  public
    { Public declarations }
    procedure Clear;
  end;

var
  SnipForm: TSnipForm;

implementation

{$R *.dfm}

uses
  SnipBox.Util;

procedure TSnipForm.btOKClick(Sender: TObject);
begin
  if Self.edSnipLanguage.Items.IndexOf(Self.edSnipLanguage.Text) < 0 then
    Self.edSnipLanguage.Items.Append(Self.edSnipLanguage.Text);
  if Self.edSnipCategory.Items.IndexOf(Self.edSnipCategory.Text) < 0 then
    Self.edSnipCategory.Items.Append(Self.edSnipCategory.Text);
  MakeFiles;
end;

procedure TSnipForm.Clear;
begin
  edSnipLanguage.ItemIndex := 0;
  edSnipCategory.ItemIndex := 0;
  edSnipName.Text := '';
  RichEdit.Clear;
end;

procedure TSnipForm.FormCreate(Sender: TObject);
begin
  Self.edSnipLanguage.Items.LoadFromFile(Util.GetPath('resources') + 'languages.txt', TEncoding.UTF8);
  Self.edSnipCategory.Items.LoadFromFile(Util.GetPath('resources') + 'categories.txt', TEncoding.UTF8);
end;

procedure TSnipForm.FormDestroy(Sender: TObject);
begin
  Self.edSnipLanguage.Items.WriteBOM := False;
  Self.edSnipLanguage.Items.SaveToFile(Util.GetPath('resources') + 'languages.txt', TEncoding.UTF8);
  Self.edSnipCategory.Items.WriteBOM := False;
  Self.edSnipCategory.Items.SaveToFile(Util.GetPath('resources') + 'categories.txt', TEncoding.UTF8);
end;

procedure TSnipForm.MakeFiles;
var
  I: Integer;
  SL: TStringList;
  S: string;
begin
  SL := TStringList.Create;
  SL.WriteBOM := False;
  try
    for I := 0 to Self.edSnipLanguage.Items.Count - 1 do
    begin
      S := Trim(LowerCase(Self.edSnipLanguage.Items[I]));
      if (S <> '') and not FileExists(Util.GetPath('resources') + S + '.txt') then
        SL.SaveToFile(Util.GetPath('resources') + S + '.txt', TEncoding.UTF8);
    end;
  finally
    FreeAndNil(SL);
  end;
end;

end.
