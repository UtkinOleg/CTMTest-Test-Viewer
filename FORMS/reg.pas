unit reg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, inidata, cpuID, jpeg, ExtCtrls, ShellApi, IdeSN, eshardwareid ,StrUtils,
  ComCtrls, Registry, ComProc;

type
  TRegistration = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    TabControl1: TTabControl;
    Label1: TLabel;
    Personal: TEdit;
    Serial2: TLabel;
    Serial: TEdit;
    Label2: TLabel;
    TabControl2: TTabControl;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SerialKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Registration: TRegistration;

implementation

uses MAIN;

{$R *.DFM}

procedure TRegistration.Button2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TRegistration.Button1Click(Sender: TObject);
begin
  AppOptions.RegData := Trim(Serial.Text);
  AppOptions.SaveToReg;
  Mf.Timer5.Enabled := true;
  Mf.Serial := Serial.Text;
  Mf.Timer6.Enabled := true;
  ModalResult := mrOK;
end;

procedure TRegistration.FormShow(Sender: TObject);
begin
   Serial.Enabled := not AppOptions.RegDone3;
   Serial.Text := AppOptions.RegData;
   if (Mf.h12 > 0) and (Mf.h34 > 0) then
    Personal.Text := copy(IntToStr(Mf.h12),1,Trunc(Length(IntToStr(Mf.h12))/2)) + '-' +
    copy(IntToStr(Mf.h12),Trunc(Length(IntToStr(Mf.h12))/2)+1,Length(IntToStr(Mf.h12))-Trunc(Length(IntToStr(Mf.h12))/2)) +
    '-' + copy(IntToStr(Mf.h34),1,Trunc(Length(IntToStr(Mf.h34))/2)) + '-' +
    copy(IntToStr(Mf.h34),Trunc(Length(IntToStr(Mf.h34))/2)+1,Length(IntToStr(Mf.h34))-Trunc(Length(IntToStr(Mf.h34))/2))
   else Personal.Text := '';
end;

procedure TRegistration.Button3Click(Sender: TObject);
begin
 ModalResult := mrOK;
 ShellExecute(0, Nil, PChar('mailto:m-city@mail.ru?subject=�����������%20���������%20C�%20"�-����"&body='+
 '��������%20�����������:%0A'+
 '�������:%0A'+
 '�����%20�%20����%20��������%20��%20��������%20��%20"�-����":%0A���%20������������%20�����:%20'+Personal.Text), Nil, Nil, SW_NORMAL);
end;

procedure TRegistration.SerialKeyPress(Sender: TObject; var Key: Char);
begin
 if (key='0') or (key='1') or
 (key='2') or (key='3') or
 (key='4') or (key='5') or
 (key='6') or (key='7') or
 (key='8') or (key='9') then
 else
   key:=chr($0);
end;

end.
