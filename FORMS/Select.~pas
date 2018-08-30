unit Select;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, ExtCtrls;

type
  TSelectForm = class(TForm)
    LB: TListBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure LBDblClick(Sender: TObject);
    procedure LBDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure LBMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure FormPaint(Sender: TObject);
    procedure LBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectForm: TSelectForm;

implementation

{$R *.DFM}

procedure TSelectForm.LBDblClick(Sender: TObject);
begin
 ModalResult := mrOk;
end;

procedure TSelectForm.LBDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , IntToStr(Index+1) + ' ' + Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure TSelectForm.LBMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Height := 20;
   k := TextWidth(IntToStr(Index+1) + ' ' + Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure TSelectForm.FormPaint(Sender: TObject);
begin
 LB.Repaint;
end;

procedure TSelectForm.LBKeyPress(Sender: TObject; var Key: Char);
var
 i : integer;
begin
 for i:=0 to LB.Items.Count-1 do
  begin
    if AnsiUpperCase(Copy(LB.Items[i],0,1)) = AnsiUpperCase(Key) then
     begin
       LB.ItemIndex := i;
       break;
     end;
  end;
end;

end.
