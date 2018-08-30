unit Loading;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls;

type
  TLoadingForm = class(TForm)
    Panel1: TPanel;
    PB: TProgressBar;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoadingForm: TLoadingForm;

implementation

uses Main;

{$R *.DFM}

procedure TLoadingForm.Button1Click(Sender: TObject);
begin
 if Caption = '�������� ����� c �������...' then
  mf.ClientTestSocket.Close
 else
 if Caption = '�������� ������ ������ c �������...' then
  mf.ClientSocket.Close;
end;

end.
