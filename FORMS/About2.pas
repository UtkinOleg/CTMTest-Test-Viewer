unit About2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RXCtrls, jpeg;

type
  TAbout2Form = class(TForm)
    Image1: TImage;
    RxLabel1: TRxLabel;
    Label2: TRxLabel;
    RxLabel2: TRxLabel;
    RxLabel3: TRxLabel;
    RxLabel4: TRxLabel;
    RxLabel5: TRxLabel;
    RxLabel6: TRxLabel;
    RxLabel7: TRxLabel;
    RxLabel8: TRxLabel;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxLabel1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure RxLabel2Click(Sender: TObject);
    procedure RxLabel3Click(Sender: TObject);
    procedure RxLabel4Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Sec : integer;
  end;

var
  About2Form: TAbout2Form;

implementation

{$R *.DFM}

procedure TAbout2Form.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 Close;
end;

procedure TAbout2Form.Image1Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout2Form.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 Close;
end;

procedure TAbout2Form.RxLabel1Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout2Form.Label2Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout2Form.RxLabel2Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout2Form.RxLabel3Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout2Form.RxLabel4Click(Sender: TObject);
begin
 Close;
end;

procedure TAbout2Form.Timer1Timer(Sender: TObject);
begin
 inc(Sec);
end;

end.
