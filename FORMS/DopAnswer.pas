unit DopAnswer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, Richole, ExtCtrls, RxRichEd, ShellApi;

type
  TDopForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    RO: TRxRichEdit;
    procedure ROURLClick(Sender: TObject; const URLText: String;
      Button: TMouseButton);
    procedure FormClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DopForm: TDopForm;

implementation

{$R *.DFM}

procedure TDopForm.ROURLClick(Sender: TObject; const URLText: String;
  Button: TMouseButton);
begin
  if Button = mbLeft then
    ShellExecute(Handle, nil, PChar(URLText), nil, nil, SW_SHOW);
end;

procedure TDopForm.FormClick(Sender: TObject);
begin
 Close;
end;

procedure TDopForm.Panel1Click(Sender: TObject);
begin
 Close;
end;

procedure TDopForm.Panel2Click(Sender: TObject);
begin
 Close;
end;

procedure TDopForm.FormResize(Sender: TObject);
begin
 position := poMainFormCenter;
end;

end.
