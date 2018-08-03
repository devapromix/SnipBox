unit SnipBox.Util;

interface

uses
  Forms;

type
  Util = class(TObject)
  public
    class function GetPath(SubDir: string): string;
    class function ShowForm(const Form: TForm;
      Show: Boolean = True): Integer;
  end;

implementation

uses SysUtils;

class function Util.GetPath(SubDir: string): string;
begin
  Result := ExtractFilePath(ParamStr(0));
  Result := IncludeTrailingPathDelimiter(Result + SubDir);
end;

class function Util.ShowForm(const Form: TForm;
  Show: Boolean = True): Integer;
begin
  Form.BorderStyle := bsDialog;
  Form.Position := poOwnerFormCenter;
  if Show then
    Result := Form.ShowModal;
end;

end.
