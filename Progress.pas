unit Progress;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type
  Tprogr = class(TForm)
    Bevel1: TBevel;
    prbar: TProgressBar;
    st: TStaticText;
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  progr: Tprogr;

implementation

{$R *.DFM}

procedure Tprogr.FormHide(Sender: TObject);
begin
  Screen.Cursor := crDefault;
end;

procedure Tprogr.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  prbar.Position := 0;
end;

procedure Tprogr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Screen.Cursor := crDefault;
end;

end.
