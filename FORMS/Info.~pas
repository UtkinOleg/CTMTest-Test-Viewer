unit Info;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Placemnt;

type
  TInfoForm = class(TForm)
    ScrollBox1: TScrollBox;
    Image1: TImage;
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FName : string;
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.DFM}

procedure TInfoForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Close;
end;

procedure TInfoForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Close;
end;

procedure TInfoForm.FormResize(Sender: TObject);
begin
 if Height < Image1.Picture.Height then
  ScrollBox1.AutoSize := False;
 if Width < Image1.Picture.Width then
  ScrollBox1.AutoSize := False;
end;

end.
