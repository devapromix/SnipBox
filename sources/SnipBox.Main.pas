unit SnipBox.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  System.Generics.Collections,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  System.ImageList,
  Vcl.ImgList,
  Vcl.ToolWin,
  Vcl.Menus,
  System.Actions,
  Vcl.ActnList,
  Vcl.StdActns;

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
    procedure TreeViewClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Content: TList<string>;
  public
    { Public declarations }
    procedure LoadTreeView;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  IniFiles,
  SnipBox.Snip,
  SnipBox.Util;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Randomize;
  ForceDirectories(Util.GetPath('resources'));
  ForceDirectories(Util.GetPath('resources/snippets'));
  Content := TList<string>.Create();
  Content.Add('');
  LoadTreeView;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Content);
end;

procedure TMainForm.LoadTreeView;
var
  Name: string;
  ValuesList, SectionsList, LangList: TStrings;
  I, J, L, Idx: Integer;
  RootNode, LangNode: TTreeNode;
begin
  TreeView.Items.Clear;
  LangList := TStringList.Create;
  LangList.LoadFromFile(Util.GetPath('resources') + 'languages.txt', TEncoding.UTF8);
  try
    for L := 0 to LangList.Count - 1 do
    begin
      with TMemIniFile.Create(Util.GetPath('resources') + LowerCase(LangList[L]) + '.txt', TEncoding.UTF8) do
        try
          SectionsList := TStringList.Create;
          try
            ReadSections(SectionsList);
            ValuesList := TStringList.Create;
            try
              RootNode := TreeView.Items.Add(nil, Trim(LangList[L]));
              for I := 0 to SectionsList.Count - 1 do
              begin
                ValuesList.Clear;
                ReadSectionValues(SectionsList[I], ValuesList);
                LangNode := TreeView.Items.AddChild(RootNode, SectionsList[I]);
                for J := 0 to ValuesList.Count - 1 do
                begin
                  Name := ValuesList.Names[J];
                  if FileExists(Util.GetPath('resources/snippets') + Trim(ValuesList.Values[Name])) then
                  begin
                    Idx := Content.Add(ValuesList.Values[Name]);
                    TreeView.Items.AddChildObject(LangNode, Name, Pointer(Idx));
                  end
                  else
                    TreeView.Items.AddChild(LangNode, Name);
                end;
              end;
            finally
              FreeAndNil(ValuesList);
            end;
          finally
            FreeAndNil(SectionsList);
          end;
        finally
          Free;
        end;
    end;
  finally
    FreeAndNil(LangList);
  end;
end;

procedure TMainForm.ToolButton1Click(Sender: TObject);
begin
  SnipForm.Clear;
  Util.ShowForm(SnipForm);
end;

procedure TMainForm.TreeViewClick(Sender: TObject);
var
  FileName: string;
begin
  if (TreeView.Selected.Level > 1) and Assigned(TreeView.Selected.Data) then
  begin
    FileName := Util.GetPath('resources/snippets') + Trim(Content[Integer(TreeView.Selected.Data)]);
    if FileExists(FileName) then
      RichEdit.Lines.LoadFromFile(FileName, TEncoding.UTF8);
  end
  else
    RichEdit.Clear;
end;

end.
