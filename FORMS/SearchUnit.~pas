unit SearchUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtREsult;

type
  TSearchForm = class(TForm)
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SearchForm: TSearchForm;

implementation

{$R *.DFM}

procedure TSearchForm.Edit1Change(Sender: TObject);
var
 i : integer;
 s : string;
begin
if ExtResultForm.lv.Items.Count > 0 then
 for i:=0 to ExtResultForm.lv.Items.Count - 1 do
  begin
    if Trim(AnsiLowerCase(Edit1.Text)) = AnsiLowerCase(Copy(ExtResultForm.lv.Items[i].SubItems[0],1,Length(Trim(Edit1.Text)))) then
    begin
     ExtResultForm.lv.Selected := ExtResultForm.lv.Items[i];
     ExtResultForm.lv.Selected.MakeVisible(True);
     ExtResultForm.lv.Selected.Focused := True;
     break;
    end
    else
    begin
     ExtResultForm.lv.Items[i].Selected := False;
     ExtResultForm.lv.Items[i].Focused := False;
    end;
  end;
end;

procedure TSearchForm.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_ESCAPE then Close;
 if Key=VK_RETURN then Close;
end;

procedure TSearchForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_ESCAPE then Close;
 if Key=VK_RETURN then Close;
end;

procedure TSearchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Edit1.Text := '';
end;

end.
