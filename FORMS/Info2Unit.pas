unit Info2Unit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, HtmlHlp;

type
  TInfo2Form = class(TForm)
    ListBox4: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Info2Form: TInfo2Form;

implementation

uses DirSelect, Main;

{$R *.DFM}

procedure TInfo2Form.Button1Click(Sender: TObject);
var
  F: TFileStream;
  len, i : integer;
  buffer : PChar;
  TS : TStringList;
  exist : boolean;
  InputString : string;
begin
  if ListBox4.ItemIndex<>-1 then
  begin
  DirSelectForm.DirEdit.Text := ListBox4.Items.Strings[ListBox4.ItemIndex];
  if DirSelectForm.ShowModal = mrOk then
  begin
  InputString := DirSelectForm.DirEdit.Text;
  if length(trim(InputString))>0 then
  begin
  InputString := Trim(InputString);
  exist := False;
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmOpenReadWrite);
   F.Position := 0;
   TS := TstringList.Create;
   while F.Position < F.Size do
    begin
      F.Read(len,4);
      buffer := StrAlloc(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      TS.Add(StrPas(buffer));
      StrDispose(buffer);
    end;
   for i:=0 to TS.Count-1 do
     if (TS.Strings[i] = InputString) and (ListBox4.ItemIndex<>i) then exist := True;
   TS.Free;
   F.Position := 0;
   if not exist then
   begin
    i := 0;
    TS := TstringList.Create;
    while F.Position < F.Size do
    begin
      F.Read(len,4);
      buffer := StrAlloc(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      if i=ListBox4.ItemIndex then
        TS.Add(InputString)
      else
        TS.Add(StrPas(buffer));
      Inc(i);
      StrDispose(buffer);
    end;
    F.Free;
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmCreate);
    for i:=0 to TS.Count-1 do
     begin
      len := Length(TS.Strings[i]);
      F.Write(len,4);
      buffer := StrAlloc(len+1);
      buffer := StrPCopy(buffer, TS.Strings[i]);
      F.Write(buffer^,Length(TS.Strings[i]));
      StrDispose(buffer);
     end;
    F.Free;
    TS.Free;
    ListBox4.Items.Clear;
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmOpenRead);
    F.Position := 0;
    while F.Position < F.Size do
    begin
      F.Read(len,4);
      buffer := StrAlloc(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      ListBox4.Items.Add(StrPas(buffer));
      StrDispose(buffer);
    end;
    F.Free;
  end
  else
  begin
   F.Free;
   ShowMessage('Такое информационное изображение уже существует.');
  end;
 except
   ShowMessage('Ошибка ввода/вывода.');
 end;
 end;
 end;
 end;
end;

procedure TInfo2Form.FormShow(Sender: TObject);
var
 F : TFileStream;
 len : integer;
 buffer : PChar;
begin
 ListBox4.Items.Clear;
 try
  if fileexists(ExtractFilePath(paramstr(0))+'chart.cfg') then
  begin
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmOpenRead);
   F.Position := 0;
   while F.Position < F.Size do
    begin
      F.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      ListBox4.Items.Add(StrPas(buffer));
      FreeMem(buffer);
    end;
   F.Free;
  end;
  except
   ShowMessage('Ошибка ввода/вывода.');
  end;
end;

procedure TInfo2Form.Button2Click(Sender: TObject);
var
  F: TFileStream;
  len, i : integer;
  buffer : PChar;
  TS : TStringList;
begin
 if ListBox4.ItemIndex<>-1 then
 if MessageBOX(Application.Handle,PChar('Удалить имя файла '+ ListBox4.Items.Strings[ListBox4.ItemIndex] + ' ?'),PCHAR('Тестирование'), mb_YesNo)=IDYes then
  try
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmOpenReadWrite);
    F.Position := 0;
    i := 0;
    TS := TstringList.Create;
    while F.Position < F.Size do
    begin
      F.Read(len,4);
      buffer := StrAlloc(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      if i<>ListBox4.ItemIndex then
        TS.Add(StrPas(buffer));
      Inc(i);
      StrDispose(buffer);
    end;
    F.Free;
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmCreate);
    for i:=0 to TS.Count-1 do
     begin
      len := Length(TS.Strings[i]);
      F.Write(len,4);
      buffer := StrAlloc(len+1);
      buffer := StrPCopy(buffer, TS.Strings[i]);
      F.Write(buffer^,Length(TS.Strings[i]));
      StrDispose(buffer);
     end;
    F.Free;
    TS.Free;
    ListBox4.Items.Clear;
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmOpenRead);
    F.Position := 0;
    while F.Position < F.Size do
    begin
      F.Read(len,4);
      buffer := StrAlloc(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      ListBox4.Items.Add(StrPas(buffer));
      StrDispose(buffer);
    end;
    F.Free;
 except
    ShowMessage('Ошибка ввода/вывода.');
 end;
end;

procedure TInfo2Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MF.CreateInformationMenu;
end;

procedure TInfo2Form.Button4Click(Sender: TObject);
begin
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/info2.htm'), HH_DISPLAY_TOC, 0);
end;

end.
