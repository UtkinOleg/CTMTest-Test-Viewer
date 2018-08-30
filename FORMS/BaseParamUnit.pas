unit BaseParamUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, ExtCtrls, comtypes, FileCtrl, HtmlHlp;

type
  TBaseParamForm = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    Label2: TLabel;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BaseParamForm: TBaseParamForm;

implementation

uses ExtResult;

{$R *.DFM}

procedure TBaseParamForm.RadioButton2Click(Sender: TObject);
begin
 GroupBox1.Enabled := RadioButton2.Checked;
 Label1.Enabled := RadioButton2.Checked;
 Label2.Enabled := RadioButton2.Checked;
end;

procedure TBaseParamForm.RadioButton1Click(Sender: TObject);
begin
 GroupBox1.Enabled := RadioButton2.Checked;
 Label1.Enabled := RadioButton2.Checked;
 Label2.Enabled := RadioButton2.Checked;
 if RadioButton1.Checked then
  DirectoryEdit1.Text:='';
 if RadioButton1.Checked then
  Edit1.Text:='';
end;

procedure TBaseParamForm.FormShow(Sender: TObject);
var
  Registry : TMyStream;
  b : byte;
begin
  DirectoryEdit1.Text:='';
  Edit1.Text:='';
  CheckBox1.Checked := True;
  try
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'resultbase.cfg',fmOpenRead);
   b := Registry.ReadByte;
   if b=1 then RadioButton1.Checked := True
   else RadioButton1.Checked := False;
   RadioButton2.Checked := not RadioButton1.Checked;
   DirectoryEdit1.Text:=Registry.ReadString;
   Edit1.Text:=Registry.ReadString;
   b := Registry.ReadByte;
   if b=1 then CheckBox1.Checked := True
   else CheckBox1.Checked := False;
   Registry.Free;
  except
   RadioButton1.Checked := True;
   RadioButton2.Checked := False;
  end;
  GroupBox1.Enabled := RadioButton2.Checked;
  Label1.Enabled := RadioButton2.Checked;
  Label2.Enabled := RadioButton2.Checked;
end;

procedure TBaseParamForm.Button1Click(Sender: TObject);
var
  Reg : TMyStream;
begin
  if RadioButton2.Checked and (Length(Trim(DirectoryEdit1.Text))=0) then
  begin
   ShowMessage('Путь не указан.');
   ModalResult := mrNone;
   Exit;
  end;
  if RadioButton2.Checked and not DirectoryExists(DirectoryEdit1.Text) then
  begin
   ShowMessage('Путь указан неверно.');
   ModalResult := mrNone;
   Exit;
  end;
  try
   Reg:=TMyStream.Create(ExtractFilePath(paramstr(0))+'resultbase.cfg',fmCreate);
   Reg.WriteByte(Byte(RadioButton1.Checked));
   Reg.WriteString(DirectoryEdit1.Text);
   if Trim(Edit1.Text)='' then
    Edit1.Text := DirectoryEdit1.Text;
   Reg.WriteString(Edit1.Text);
   Reg.WriteByte(Byte(CheckBox1.Checked));
   Reg.Free;
   ExtResultForm.ParamsChanged := True;
  except
   ShowMessage('Ошибка при сохранении параметров.');
  end;
  ShowMessage('После установки параметров базы данных результатов необходимо перезапустить модуль результатов тестирования.');
  ModalResult := mrOk;
end;

procedure TBaseParamForm.Button3Click(Sender: TObject);
begin
// Application.HelpFile := ExtractFilePath(paramstr(0))+'qeditor.hlp';
// Application.HelpJump('parambase');
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/13smd.htm'), HH_DISPLAY_TOC, 0);
end;

end.
