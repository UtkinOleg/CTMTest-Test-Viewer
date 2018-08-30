unit About4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg;

type
  TAbout4Form = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About4Form: TAbout4Form;

implementation

{$R *.DFM}

procedure TAbout4Form.Image1Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout4Form.FormClick(Sender: TObject);
begin
 Close;
end;

procedure TAbout4Form.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Close;
end;

end.
