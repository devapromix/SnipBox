unit SnipBox.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdActns;

type
  TMainForm = class(TForm)
    TreeView: TTreeView;
    RichEdit: TRichEdit;
    Splitter: TSplitter;
    ToolBar: TToolBar;
    ToolButton1: TToolButton;
    ImageList: TImageList;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    EditCopy1: TEditCopy;
    EditSelectAll1: TEditSelectAll;
    Copy1: TMenuItem;
    N1: TMenuItem;
    SelectAll1: TMenuItem;
    procedure ToolButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses SnipBox.Snip, SnipBox.Util;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Randomize;
  ForceDirectories(Util.GetPath('resources'));
  ForceDirectories(Util.GetPath('resources/snippets'));
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  SnipForm.Clear;
  Util.ShowForm(SnipForm);
end;

end.
