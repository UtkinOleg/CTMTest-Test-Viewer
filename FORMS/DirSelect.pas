unit DirSelect;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, HtmlHlp;

type
  TDirSelectForm = class(TForm)
    DirEdit: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    OpenDialog: TOpenDialog;
    Label2: TLabel;
    Button3: TButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DirSelectForm: TDirSelectForm;

implementation

{$R *.DFM}

procedure TDirSelectForm.SpeedButton1Click(Sender: TObject);
begin
 OpenDialog.Title := 'Выбор файла изображения...';
 OpenDialog.Filter := 'Формат Jpeg (*.jpg)|*.jpg|Формат BMP (*.bmp)|*.bmp';
 OpenDialog.InitialDir := ExtractFilePath(paramstr(0)) + 'chart';
 OpenDialog.FileName := DirEdit.Text;
 if OpenDialog.Execute then
   DirEdit.Text := ExtractFileName(OpenDialog.FileName);
end;

procedure TDirSelectForm.FormShow(Sender: TObject);
begin
 DirEdit.SetFocus;
end;

procedure TDirSelectForm.Button3Click(Sender: TObject);
begin
 if DirSelectForm.Caption = 'Изображение' then
  HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/info.htm'), HH_DISPLAY_TOC, 0);
end;

end.
