unit ExtResult;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ImgList, ExtCtrls, Placemnt, Menus, bzip2, ComObj,
  Mask, ToolEdit, ShellAPI, ShlObj, inidata, Registry, comtypes,
  RXCtrls, StrUtils, HtmlHlp, TB97Ctls;

type
  TExtResultForm = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lv: TListView;
    PopupMenu1: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    bzip21: Tbzip2;
    N7: TMenuItem;
    N8: TMenuItem;
    Panel5: TPanel;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    BitBtn1: TToolbarButton97;
    ImageList2: TImageList;
    Label3: TLabel;
    Label4: TLabel;
    TestNameBox: TComboEdit;
    Button1: TToolbarButton97;
    Label5: TLabel;
    ComboBox1: TComboEdit;
    ComboBox3: TComboEdit;
    ComboBox2: TComboEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    N12: TMenuItem;
    PopupMenu2: TPopupMenu;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    PopupMenu3: TPopupMenu;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    ImageList3: TImageList;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    Memo1: TMemo;
    Panel6: TPanel;
    Panel4: TRxLabel;
    N1: TMenuItem;
    DateBegin: TDateTimePicker;
    DateEnd: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lvDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TestNameBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure TestNameBoxMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure TestNameBoxButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1ButtonClick(Sender: TObject);
    procedure ComboBox3ButtonClick(Sender: TObject);
    procedure ComboBox2ButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure lvColumnClick(Sender: TObject; Column: TListColumn);
    procedure lvCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure N12Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure ToolbarButton974Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure lvKeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure lvCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    NameStrings : TStringList;
    FioStrings : TStringList;
    WorkStrings : TStringList;
    SubStrings : TStringList;
    Divider : integer;
    DirText : string;
    BaseText : string;
    SaveBase, ParamsChanged : boolean;
    function  ScanDB : boolean;
    function  RestructureBase(Fname : string;F1 : TFilestream):boolean;
    function  RestructureBase4(Fname : string;F1 : TFilestream):boolean;
    function  RestructureBase5(Fname : string;FOut : TFilestream):boolean;
    function  AddComments(index : integer;p : string):integer;
    function  AddQuestions(index : integer;p : string):integer;
    function  AddGroups(index : integer;p : string):integer;
    procedure CopyDB;
    function  RestoreDB : boolean;
    procedure SortData(Index : longint);
    function  GlobalRestructurizeBase(BasePath : string):boolean;
  end;

  TestIndex = record
   Index : integer;
  end;

  PTestIndex = ^TestIndex;

var
  ExtResultForm: TExtResultForm;
  TestList : TList;
  PTI : PTestIndex;
  ColumnToSort: Integer;

implementation

uses Main, Personal, CommentForm, Select, ImportExport, InfoDat, Loading,
  ImportUnit, SearchUnit, BaseParamUnit;

{$R *.DFM}

function TExtResultForm.GlobalRestructurizeBase(BasePath : string):boolean;
var
 F,F1 : TFileStream;
 ver, len : integer;
begin
 try
  if not fileexists(BasePath+'Prtest.dt3') then
  begin
   F := TFileStream.Create(BasePath+'Prtest.dt3',fmCreate);
   len := DB_Version;
   F.Write(len,4);
   F.Free;
  end;
 except
  ShowMessage('Невозможно создать базу данных результатов.');
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessage('Невозможно открыть базу данных результатов.');
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
  if ver=1 then
   begin
     ShowMessage('В данной версии программы "M-Тест Локальное тестирование" не поддерживается работа с базой данных версии 1.0. Будет произведена очистка базы данных.');
     F := TFileStream.Create(BasePath+'Prtest.dt3',fmCreate);
     len := 2;
     F.Write(len,4);
     F.Free;
   end
 except
  Screen.Cursor := crDefault;
  ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessage('Невозможно открыть базу данных результатов.');
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
  if ver=2 then
   begin
     ShowMessage('Внимание! Устаревшая версия базы данных. Будет произведена реструктуризация базы до версии 3.0');
     F.Free;
     try
      F := TFileStream.Create(BasePath+'tmp.dt3',fmCreate);
      len := 3;
      F.Write(len,4);
      if not RestructureBase(BasePath+'Prtest.dt3',F) then
       begin
        F.Free;
        Screen.Cursor := crDefault;
        ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
        Result := False;
        Exit;
       end;
      F.Free;
      F := TFileStream.Create(BasePath+'Prtest.dt3',fmCreate);
      F1 := TFileStream.Create(BasePath+'tmp.dt3',fmOpenReadWrite);
      F.CopyFrom(F1,F1.Size);
      F1.Free;
      F.Free;
     except
      Screen.Cursor := crDefault;
      ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
      Result := False;
      Exit;
     end;
   end;
 except
  Screen.Cursor := crDefault;
  ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessage('Невозможно открыть базу данных результатов.');
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
 if ver = 3 then
   begin
     try
      F := TFileStream.Create(BasePath+'tmp.dt3',fmCreate);
      len := 4;
      F.Write(len,4);
      if not RestructureBase4(BasePath+'Prtest.dt3',F) then
       begin
        F.Free;
        Screen.Cursor := crDefault;
        ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
        Result := False;
        Exit;
       end;
      F.Free;
      F := TFileStream.Create(BasePath+'Prtest.dt3',fmCreate);
      F1 := TFileStream.Create(BasePath+'tmp.dt3',fmOpenReadWrite);
      F.CopyFrom(F1,F1.Size);
      F1.Free;
      F.Free;
     except
      Screen.Cursor := crDefault;
      ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
      Result := False;
      Exit;
     end;
   end;
 except
  Screen.Cursor := crDefault;
  ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessage('Невозможно открыть базу данных результатов.');
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
 if ver = 4 then
   begin
     try
      F := TFileStream.Create(BasePath+'tmp.dt3',fmCreate);
      len := DB_Version;
      F.Write(len,4);
      if not RestructureBase5(BasePath+'Prtest.dt3',F) then
       begin
        F.Free;
        Screen.Cursor := crDefault;
        ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
        Result := False;
        Exit;
       end;
      F.Free;
      F := TFileStream.Create(BasePath+'Prtest.dt3',fmCreate);
      F1 := TFileStream.Create(BasePath+'tmp.dt3',fmOpenReadWrite);
      F.CopyFrom(F1,F1.Size);
      F1.Free;
      F.Free;
     except
      Screen.Cursor := crDefault;
      ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
      Result := False;
      Exit;
     end;
   end;
 except
  Screen.Cursor := crDefault;
  ShowMessage('Реструктуризация базы данных не произведена. Удалите старую базу данных.');
  Result := False;
  Exit;
 end;
 Result := True;
end;

procedure TExtResultForm.CopyDB;
var
   F,FA: TFileStream;
   buffer : PByte;
begin
   if LoadingForm=nil then
    LoadingForm := TLoadingForm.Create(Application);
   LoadingForm.Caption := 'Создание резервной копии базы данных...';
   LoadingForm.Panel1.Caption := '';
   LoadingForm.Show;
   Screen.Cursor := crHourGlass;
   try
      F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenRead);
      FA := TFileStream.Create(DirText+'Prtest.arc',fmCreate);
      GetMem(buffer,F.Size);
      F.Read(buffer^,F.Size);
      FA.Write(buffer^,F.Size);
      FreeMem(buffer);
      F.Free;
      FA.Free;
      LoadingForm.PB.Position := 25;
   except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Ошибка ввода/вывода.');
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      mf.QuestionStream.Position := 0;
      FA := TFileStream.Create(DirText+'questions.arc',fmCreate);
      GetMem(buffer,mf.QuestionStream.Size);
      mf.QuestionStream.Read(buffer^,mf.QuestionStream.Size);
      FA.Write(buffer^,mf.QuestionStream.Size);
      FreeMem(buffer);
      FA.Free;
      LoadingForm.PB.Position := 50;
   except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Ошибка ввода/вывода.');
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      mf.CommentStream.Position := 0;
      FA := TFileStream.Create(DirText+'comments.arc',fmCreate);
      GetMem(buffer,mf.CommentStream.Size);
      mf.CommentStream.Read(buffer^,mf.CommentStream.Size);
      FA.Write(buffer^,mf.CommentStream.Size);
      FreeMem(buffer);
      FA.Free;
      LoadingForm.PB.Position := 75;
   except
      Screen.Cursor := crDefault;
      LoadingForm.Close;
      ShowMessage('Ошибка ввода/вывода.');
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      mf.GroupStream.Position := 0;
      FA := TFileStream.Create(DirText+'groups.arc',fmCreate);
      GetMem(buffer,mf.GroupStream.Size);
      mf.GroupStream.Read(buffer^,mf.GroupStream.Size);
      FA.Write(buffer^,mf.GroupStream.Size);
      FreeMem(buffer);
      FA.Free;
      LoadingForm.PB.Position := 100;
   except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Ошибка ввода/вывода.');
      Exit;
   end;
   LoadingForm.Close;
   Screen.Cursor := crDefault;
end;

function TExtResultForm.RestoreDB;
var
   F,FA: TFileStream;
   buffer : PByte;
begin
   if LoadingForm=nil then
    LoadingForm := TLoadingForm.Create(Application);
   LoadingForm.Caption := 'Восстановление данных из резервной копии базы данных...';
   LoadingForm.Panel1.Caption := '';
   LoadingForm.Show;
   Screen.Cursor := crHourGlass;
   try
      F := TFileStream.Create(DirText+'Prtest.arc',fmOpenRead);
      FA := TFileStream.Create(DirText+'Prtest.dt3',fmCreate);
      GetMem(buffer,F.Size);
      F.Read(buffer^,F.Size);
      FA.Write(buffer^,F.Size);
      FreeMem(buffer);
      F.Free;
      FA.Free;
      LoadingForm.PB.Position := 25;
   except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      Result := False;
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      F := TFileStream.Create(DirText+'questions.arc',fmOpenRead);
      mf.QuestionStream.Free;
      mf.QuestionStream := TFileStream.Create(DirText+'questions.dat',fmCreate);
      GetMem(buffer,F.Size);
      F.Read(buffer^,F.Size);
      mf.QuestionStream.Write(buffer^,F.Size);
      FreeMem(buffer);
      F.Free;
      LoadingForm.PB.Position := 50;
   except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      Result := False;
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      F := TFileStream.Create(DirText+'comments.arc',fmOpenRead);
      mf.CommentStream.Free;
      mf.CommentStream := TFileStream.Create(DirText+'comments.dat',fmCreate);
      GetMem(buffer,F.Size);
      F.Read(buffer^,F.Size);
      mf.CommentStream.Write(buffer^,F.Size);
      FreeMem(buffer);
      F.Free;
      LoadingForm.PB.Position := 75;
   except
      Screen.Cursor := crDefault;
      LoadingForm.Close;
      Result := False;
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      F := TFileStream.Create(DirText+'groups.arc',fmOpenRead);
      mf.GroupStream.Free;
      mf.GroupStream := TFileStream.Create(DirText+'groups.dat',fmCreate);
      GetMem(buffer,F.Size);
      F.Read(buffer^,F.Size);
      mf.GroupStream.Write(buffer^,F.Size);
      FreeMem(buffer);
      F.Free;
      LoadingForm.PB.Position := 100;
   except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      Result := False;
      Exit;
   end;
   LoadingForm.Close;
   Screen.Cursor := crDefault;
   Result := True;
end;

function TExtResultForm.ScanDB;
var
 F,F1 : TFileStream;
 z, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist : boolean;
 DT : TDateTime;
 Index, QCount, i : integer;
 b : byte;
 p1,p2 : pchar;
begin
 for I := 0 to (lv.Items.Count - 1) do
 begin
   PTI := lv.Items[I].Data;
   Dispose(PTI);
 end;
 if lv.Items.Count >0 then
   lv.Visible := False;
 lv.Items.Clear;
{ if NameStrings <> nil then
  NameStrings.Clear
 else}
  NameStrings := TStringList.Create;
 {if FioStrings <> nil then
  FioStrings.Clear
 else}
  FioStrings := TStringList.Create;
{ if WorkStrings <> nil then
  WorkStrings.Clear
 else}
  WorkStrings := TStringList.Create;
{ if SubStrings <> nil then
  SubStrings.Clear
 else}
  SubStrings := TStringList.Create;
 Screen.Cursor := crHourGlass;
 try
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
  F.Read(len,4);
  Caption := 'Результаты тестирования (Версия '+IntToStr(len)+'.3): '+BaseText;
  Index := 0;
  DateBegin.Date := Date;
  if F.Size=4 then
   DateEnd.Date := Date
  else
   DateEnd.Date := Date;

  while F.Position < F.Size do
   begin
    // Начнем сканирование БД
    F.Read(len,4);
    // Комментарий (линк)
    F.Read(len,4);
    // ФИО
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    exist := false;
    for i := 0 to FioStrings.Count-1 do
     if FioStrings.Strings[i] = StrPas(buffer2) then
       exist := true;
    if not exist then FioStrings.Add(StrPas(buffer2));
    FreeMem(buffer2);

    // Название теста
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    exist := false;
    for i := 0 to NameStrings.Count-1 do
     if NameStrings.Strings[i] = StrPas(buffer2) then
       exist := true;
    if not exist then NameStrings.Add(StrPas(buffer2));
    FreeMem(buffer2);

    // Подразделения
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    exist := false;
    for i := 0 to SubStrings.Count-1 do
     if SubStrings.Strings[i] = StrPas(buffer2) then
       exist := true;
    if not exist then SubStrings.Add(StrPas(buffer2));
    FreeMem(buffer2);

    // Должности
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    exist := false;
    for i := 0 to WorkStrings.Count-1 do
     if WorkStrings.Strings[i] = StrPas(buffer2) then
       exist := true;
    if not exist then WorkStrings.Add(StrPas(buffer2));
    FreeMem(buffer2);

    F.Read(DT,8);
    if DT < DateBegin.Date then
     DateBegin.Date := DT;
    if DT > DateEnd.Date then
     DateEnd.Date := DT;
    F.Read(DT,8);
    F.Seek(20,soFromCurrent);
    F.Read(QCount,4);
    F.Read(len,4);
    for i:=0 to (QCount-1) do
     begin
       F.Seek(36,soFromCurrent);
       F.Read(len,4);
       F.Seek(len,soFromCurrent);
     end;
    // Для версии 4.0 Начало
    F.Read(b,1);
    F.Read(b,1);
    F.Read(b,1);
    F.Read(len,4);
    if len>0 then
      F.Seek(len,soFromCurrent);
    F.Read(len,4);
    if len>0 then
      F.Seek(len,soFromCurrent);
    // Для версии 4.0 конец
    Inc(Index);
   end;
  F.Free;
  Caption := Caption + ' (Всего результатов в базе данных: ' + IntToStr(Index) + ')';
  lv.Visible := True;
 except
   DateBegin.Date := Date;
   DateEnd.Date := Date;
   Screen.Cursor := crDefault;
   lv.Visible := True;
   Result := False;
 end;
 Screen.Cursor := crDefault;
 Result := True;
end;

function TExtResultForm.RestructureBase;
var
 F : TFileStream;
 len : integer;
 ball : double;
 buffer : PByte;
 b : byte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 Index, QCount, i : integer;
begin
 try
  F := TFileStream.Create(Fname,fmOpenReadWrite);
  F.Read(len,4);
  Index := 0;
  Screen.Cursor := crHourGlass;
  while F.Position < F.Size do
   begin
    Application.ProcessMessages;
    // Начнем сканирование БД
    // Комментарий (линк)
    F.Read(len,4);
    F1.Write(len,4);
    // ФИО
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    // Название теста
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    FreeMem(buffer2);

    // Подразделения
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    // Должности
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    F.Read(DT,8);
    F1.Write(DT,8);
    F.Read(DT,8);
    F1.Write(DT,8);

    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(QCount,4);
    F1.Write(QCount,4);
    F.Read(len,4);
    F1.Write(len,4);

    for i:=0 to (QCount-1) do
     begin
      {номер вопроса}
       F.Read(len,4);
       F1.Write(len,4);
      {реальный id вопроса в базе}
       F.Read(len,4);
       F1.Write(len,4);
      {балл полученный за вопрос}
       F.Read(ball,8);
       F1.Write(ball,8);
       F.Read(ball,8);
       F1.Write(ball,8);
       // Вопрос (линк)
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       GetMem(buffer,len);
       F.Read(buffer^,len);
       F1.Write(buffer^,len);
       FreeMem(buffer);
     end;
    // Добавим новое - запишем длину буфера результата
    b := 1; // отображать оценку
    F1.Write(b,1);
    b := 0; // не отображать анализ
    F1.Write(b,1);
    len := 0;
    F1.Write(len,4);
    // Конец
    Inc(Index);
   end;
  F.Free;
  Screen.Cursor := crDefault;
  Result := True;
 except
  Screen.Cursor := crDefault;
  Result := False;
 end;
end;

function TExtResultForm.RestructureBase4;
var
 F : TFileStream;
 len : integer;
 ball : double;
 buffer : PByte;
 b : byte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 Index, QCount, i : integer;
 M, Mout : TMemoryStream;
begin
 try
  F := TFileStream.Create(Fname,fmOpenReadWrite);
  F.Read(len,4);
  Index := 0;
  Screen.Cursor := crHourGlass;
  if LoadingForm=nil then
   LoadingForm := TLoadingForm.Create(Application);
  LoadingForm.Caption := 'Реструктуризация БД до 4 версии...';
  LoadingForm.Panel1.Caption := '';
  LoadingForm.Show;
  while F.Position < F.Size do
   begin
    LoadingForm.PB.Position := Trunc((F.Position/F.Size)*100);
    Application.ProcessMessages;
    // Начнем сканирование БД
    // Комментарий (линк)
    F.Read(len,4);
    F1.Write(len,4);
    // ФИО
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    // Название теста
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    FreeMem(buffer2);

    // Подразделения
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    // Должности
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    F.Read(DT,8);
    F1.Write(DT,8);
    F.Read(DT,8);
    F1.Write(DT,8);

    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(QCount,4);
    F1.Write(QCount,4);
    F.Read(len,4);
    F1.Write(len,4);

    for i:=0 to (QCount-1) do
     begin
      {номер вопроса}
       F.Read(len,4);
       F1.Write(len,4);
      {реальный id вопроса в базе}
       F.Read(len,4);
       F1.Write(len,4);
      {балл полученный за вопрос}
       F.Read(ball,8);
       F1.Write(ball,8);
       F.Read(ball,8);
       F1.Write(ball,8);
       // Вопрос (линк)
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       GetMem(buffer,len);
       F.Read(buffer^,len);
       F1.Write(buffer^,len);
       FreeMem(buffer);
     end;
    F.Read(b,1);
    F1.Write(b,1);
    F.Read(b,1);
    F1.Write(b,1);
    // Версия 4
    b := 0;
    F1.Write(b,1);
    // Версия 4
    F.Read(len,4);
    if len>0 then
    begin
     GetMem(buffer,len);
     F.Read(buffer^,len);
     M := TMemoryStream.Create;
     MOut := TMemoryStream.Create;
     M.Write(buffer^,len);
     M.Position := 0;
     FreeMem(buffer);
     mf.bz.CompressStream(M,Mout);
     MOut.Position := 0;
     len := Mout.Size;
     GetMem(buffer, len);
     F1.Write(len,4);
     MOut.Read(buffer^,len);
     F1.Write(buffer^,len);
     FreeMem(buffer);
     M.Free;
     Mout.Free;
    end
    else
     F1.Write(len,4);
    // Версия 4
    len := 0;
    F1.Write(len,4);
    // Версия 4
    // Конец
    Inc(Index);
   end;
  F.Free;
  LoadingForm.Close;
  Screen.Cursor := crDefault;
  Result := True;
 except
  LoadingForm.Close;
  ShowMessage('Реструктуризация базы не выполнена.');
  Screen.Cursor := crDefault;
  Result := False;
 end;
end;

function TExtResultForm.RestructureBase5;
var
 F : TFileStream;
 len : integer;
 ball : double;
 buffer : PByte;
 b : byte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 Index, QCount, i : integer;
 F1, M, Mout : TMemoryStream;
begin
 try
  F := TFileStream.Create(Fname,fmOpenReadWrite);
  F1 := TMemoryStream.Create;
  F.Read(len,4);
  Index := 0;
  Screen.Cursor := crHourGlass;
  if LoadingForm=nil then
   LoadingForm := TLoadingForm.Create(Application);
  LoadingForm.Caption := 'Реструктуризация БД до 5 версии...';
  LoadingForm.Panel1.Caption := '';
  LoadingForm.Show;
  while F.Position < F.Size do
   begin
    LoadingForm.PB.Position := Trunc((F.Position/F.Size)*100);
    Application.ProcessMessages;
    // Начнем сканирование БД
    // Комментарий (линк)
    F.Read(len,4);
    F1.Write(len,4);
    // ФИО
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    // Название теста
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    FreeMem(buffer2);

    // Подразделения
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    // Должности
    F.Read(len,4);
    F1.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    F1.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    F.Read(DT,8);
    F1.Write(DT,8);
    F.Read(DT,8);
    F1.Write(DT,8);

    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(len,4);
    F1.Write(len,4);
    F.Read(QCount,4);
    F1.Write(QCount,4);
    F.Read(len,4);
    F1.Write(len,4);

    for i:=0 to (QCount-1) do
     begin
      {номер вопроса}
       F.Read(len,4);
       F1.Write(len,4);
      {реальный id вопроса в базе}
       F.Read(len,4);
       F1.Write(len,4);
      {балл полученный за вопрос}
       F.Read(ball,8);
       F1.Write(ball,8);
       F.Read(ball,8);
       F1.Write(ball,8);
       // Вопрос (линк)
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       F.Read(len,4);
       F1.Write(len,4);
       GetMem(buffer,len);
       F.Read(buffer^,len);
       F1.Write(buffer^,len);
       FreeMem(buffer);
     end;
    F.Read(b,1);
    F1.Write(b,1);
    F.Read(b,1);
    F1.Write(b,1);
    F.Read(b,1);
    F1.Write(b,1);
    F.Read(len,4);
    F1.Write(len,4);
    if len>0 then
    begin
     GetMem(buffer,len);
     F.Read(buffer^,len);
     F1.Write(buffer^,len);
     FreeMem(buffer);
    end;
    F.Read(len,4);
    F1.Write(len,4);
    if len>0 then
    begin
     GetMem(buffer,len);
     F.Read(buffer^,len);
     F1.Write(buffer^,len);
     FreeMem(buffer);
    end;
    // Конец
    Inc(Index);

    len := F1.Size;
    Fout.Write(len,4);
    F1.Position := 0;
    GetMem(buffer,len);
    F1.Read(buffer^,len);
    FOut.Write(buffer^,len);
    FreeMem(buffer);
    F1.Clear;
   end;

  F.Free;
  F1.Free;
  LoadingForm.Close;
  Screen.Cursor := crDefault;
  Result := True;
 except
  LoadingForm.Close;
  ShowMessage('Реструктуризация базы не выполнена.');
  Screen.Cursor := crDefault;
  Result := False;
 end;
end;


procedure TExtResultForm.FormShow(Sender: TObject);
var
 Registry : TMyStream;
 F : TFileStream;
 cnt, i, len : integer;
 bb, b : byte;
 BT : string;
 buffer2 : PChar;
begin
 mf.isRemoteTest := False;
 ParamsChanged := False;
 Divider := 5;
 N33.Checked := True;
 N34.Checked := False;
 N35.Checked := False;
 N29.Checked := True;
 N30.Checked := False;
 N31.Checked := False;
 Lv.Columns[10].Caption := 'Оценка(5)';
 Panel4.Caption := 'Средний балл('+IntToStr(Divider)+'):';
 ComboBox1.Text := '';
 ComboBox2.Text := '';
 ComboBox3.Text := '';
 TestNameBox.Text := '';

 if FileExists(ExtractFilePath(paramstr(0))+'resultbase.cfg') then
 begin
 try
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'resultbase.cfg',fmOpenRead);
   b := Registry.ReadByte;
   BT := Registry.ReadString;
   if b=1 then
    DirText := ExtractFilePath(paramstr(0))
   else
   begin
    DirText:=BT+'\';
    mf.CommentStream.Free;
    mf.QuestionStream.Free;
    mf.GroupStream.Free;
    try
     if not fileexists(DirText+'comments.dat') then
      mf.CommentStream := TFileStream.Create(DirText+'comments.dat',fmCreate)
     else
      mf.CommentStream := TFileStream.Create(DirText+'comments.dat',fmOpenReadWrite);
     if not fileexists(DirText+'questions.dat') then
      mf.QuestionStream := TFileStream.Create(DirText+'questions.dat',fmCreate)
     else
      mf.QuestionStream := TFileStream.Create(DirText+'questions.dat',fmOpenReadWrite);
     if not fileexists(DirText+'groups.dat') then
      mf.groupStream := TFileStream.Create(DirText+'groups.dat',fmCreate)
     else
      mf.groupStream := TFileStream.Create(DirText+'groups.dat',fmOpenReadWrite);
    except
     ShowMessage('Ошибка ввода/вывода.');
     Application.Terminate;
    end;
    if not GlobalRestructurizeBase(DirText) then
     begin
      Registry.Free;
      Close;
     end;
   end;
   BT := Registry.ReadString;
   if b=1 then
    BaseText:='Локальная база'
   else
    BaseText:=BT;
   b := Registry.ReadByte;
   SaveBase := b=1;
   Registry.Free;
 except
   DirText := ExtractFilePath(paramstr(0));
   SaveBase := True;
 end;
 end
 else
 begin
  try
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'resultbase.cfg',fmCreate);
   b := 1;
   Registry.WriteByte(b);
   Registry.WriteString('');
   Registry.WriteString('');
   Registry.WriteByte(b);
   Registry.Free;
   DirText := ExtractFilePath(paramstr(0));
   SaveBase := True;
  except
   DirText := ExtractFilePath(paramstr(0));
   SaveBase := True;
   ShowMessage('Ошибка при сохранении параметров.');
  end;
 end;

 if not ScanDB then
 begin
   if MessageBox(Application.Handle, PChar('Невозможно открыть базу данных. Восстановить базу данных? '), PCHAR('Тестирование'), MB_YesNo) =
   IDYes then
   begin
    if not RestoreDB then
    begin
     ShowMessage('Базу данных невозможно восстановить. Будет создана новая база данных результатов.');
     try
      Caption := 'Результаты тестирования';
      F := TFileStream.Create(DirText+'Prtest.dt3',fmCreate);
      len := DB_Version;
      F.Write(len,4);
      F.Free;
      mf.CommentStream.Free;
      mf.CommentStream := TFileStream.Create(DirText+'comments.dat',fmCreate);
      mf.QuestionStream.Free;
      mf.QuestionStream := TFileStream.Create(DirText+'questions.dat',fmCreate);
      mf.GroupStream.Free;
      mf.GroupStream := TFileStream.Create(DirText+'groups.dat',fmCreate);
     except
      Screen.Cursor := crDefault;
      ShowMessage('Невозможно создать файл базы данных.');
     end;
    end;
    ScanDB;
   end;
   Exit;
 end;
 try
  Registry:=TMyStream.Create(DirText+'spr.cf2',fmOpenRead);
  Label6.Caption:=Registry.ReadString+':';
  Label4.Caption:=Registry.ReadString+':';
  Registry.Free;
 except
 end;
 if (Length(Label4.Caption)=0) or (Length(Label6.Caption)=0) then
  ShowMessage('Не установлены параметры справочников!');
 lv.Columns[2].Caption := Label4.Caption;
 lv.Columns[3].Caption := Label6.Caption;
end;

procedure TExtResultForm.Button5Click(Sender: TObject);
begin
 ComboBox1.text := '';
end;

procedure TExtResultForm.Button7Click(Sender: TObject);
begin
 ComboBox3.text := '';
end;

procedure TExtResultForm.Button6Click(Sender: TObject);
begin
 ComboBox2.text := '';
end;

procedure TExtResultForm.Button8Click(Sender: TObject);
begin
  TestNameBox.text := '';
end;

procedure TExtResultForm.BitBtn1Click(Sender: TObject);
var
 AnalizStr, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 F : TFileStream;
 buf1l, buf2l, len : integer;
 ResBuffer1, ResBuffer2, buffer : PByte;
 buffer2 : PChar;
 ResOcenka, ResGrpAnaliz, ResBuf1Alloc, ResBuf2Alloc, ResAnaliz, Exist : boolean;
 DB,DE, DT,dt2 : TDateTime;
 b1, b2, MaxBall, Ball : real;
 AMaxBall, ABall : real;
 ARightCount : longint;
 AQCount: longint;
 b : byte;
 RightCount, index, QCount, i, kk : integer;
 DateEqual, WorkEqual, SubEqual, TNameEqual, FIOEqual : boolean;

procedure AddData(Ind : integer; ResOcenka, ResAnaliz, ResGrpAnaliz : boolean; Buf1 : PByte; Buf1Len: integer);
var
 ListItem : TListItem;
 MM,MOut : TMemoryStream;
 S : TStringList;
begin
      Inc(KK);
      New(PTI);
      PTI^.Index := Ind;
      ListItem := lv.Items.Add;
      ListItem.Data := PTI;
      ListItem.Caption := IntToStr(KK);
      ListItem.Subitems.Add(FIO);
      ListItem.Subitems.Add(Work);
      ListItem.Subitems.Add(Sub);
      ListItem.Subitems.Add(TName);
      ListItem.Subitems.Add(DateToStr(DT));
      ListItem.Subitems.Add(IntToStr(QCount));
      ListItem.Subitems.Add(IntToStr(RightCount));
      ListItem.Subitems.Add(FormatFloat('0.00',MaxBall));
      ListItem.Subitems.Add(FormatFloat('0.00',Ball));
      ABall := ABall + Ball;
      AMaxBall := AMaxBall + MaxBall;
      AQCount := AQCount + QCount;
      ARightCount := ARightCount + RightCount;
      if ResAnaliz and (Buf1Len > 0) then
      begin
       try
         ListItem.ImageIndex := 1;
         MM := TMemoryStream.Create;
         MM.Write(buf1^,Buf1Len);
         MM.Position := 0;
         Mout := TMemoryStream.Create;
         bzip21.DecompressStream(MM,Mout);
         Mout.Position := 0;
         PersonalForm.ROResult.Lines.Clear;
         PersonalForm.ROResult.Lines.LoadFromStream(Mout);
         Mout.Free;
         MM.Free;
         PersonalForm.ROResult.SelectAll;
         PersonalForm.ROResult.CopyToClipboard;
         Memo1.Clear;
         Memo1.PasteFromClipboard;
         Memo1.Text := ReplaceStr(Memo1.Text,Chr(13),' ');
         Memo1.Text := ReplaceStr(Memo1.Text,Chr(10),' ');
         ListItem.Subitems.Add(Trim(Memo1.Text));
       except
         ListItem.ImageIndex := 1;
         if ResOcenka then
           ListItem.Subitems.Add(FormatFloat('0.00',Ball*Divider / MaxBall))
         else
           ListItem.Subitems.Add('');
       end;
      end
      else
      if ResGrpAnaliz then
      begin
         ListItem.ImageIndex := 2;
         if ResOcenka then
           ListItem.Subitems.Add(FormatFloat('0.00',Ball*Divider / MaxBall))
         else
           ListItem.Subitems.Add('');
      end
      else
      begin
       ListItem.ImageIndex := 0;
       if MaxBall>0 then
        ListItem.Subitems.Add(FormatFloat('0.00',Ball*Divider / MaxBall))
       else
        ListItem.Subitems.Add('0');
      end;
end;

begin
 if LoadingForm=nil then
   LoadingForm := TLoadingForm.Create(Application);
 LoadingForm.Caption := 'Поиск данных...';
 LoadingForm.Panel1.Caption := '';
 LoadingForm.Show;
 if DateBegin.Date > DateEnd.Date then
 begin
   Screen.Cursor := crDefault;
   LoadingForm.Close;
   ShowMessage('Неверный период тестирования');
   Exit;
 end;
 Panel4.Caption := '';
 ABall:=0;
 AMaxBall:=0;
 ARightCount:=0;
 AQCount:=0;
 for I := 0 to (lv.Items.Count - 1) do
  begin
   PTI := lv.Items[I].Data;
   Dispose(PTI);
  end;
 Screen.Cursor := crHourGlass;
 lv.Visible := False;
 lv.Items.Clear;
 try
  F := TFileStream.Create(DirText+'\Prtest.dt3',fmOpenReadWrite);
  F.Read(len,4);
  Index := 0;
  KK := 0;
  while F.Position < F.Size do
   begin
    Inc(Index);
    LoadingForm.PB.Position := Trunc((F.Position/F.Size)*100);

    F.Read(len,4);
    // Начнем сканирование БД
    F.Read(len,4);

    // ФИО
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    fio := StrPas(buffer2);
    FIOEqual := False;
    if ComboBox1.Text = StrPas(buffer2) then
     FIOEqual := True;
    FreeMem(buffer2);

    // Название теста
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    TName := StrPas(buffer2);
    TNameEqual := False;
    if TestNameBox.Text = StrPas(buffer2) then
     TNameEqual := True;
    FreeMem(buffer2);

    // Подразделения
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    Sub := StrPas(buffer2);
    SubEqual := False;
    if ComboBox2.Text = StrPas(buffer2) then
     SubEqual := True;
    FreeMem(buffer2);

    // Должности
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    Work := StrPas(buffer2);
    WorkEqual := False;
    if ComboBox3.Text = StrPas(buffer2) then
     WorkEqual := True;
    FreeMem(buffer2);

    F.Read(DT,8);
    DateEqual := False;
    if (DT >= DateBegin.Date) and (DT <= DateEnd.Date) then
     DateEqual := True;

//    F.Seek(28,soFromCurrent);
    F.Read(DT2,8);
    F.Read(Ball,8);
    F.Read(MaxBall,8);
    F.Read(len,4);

    F.Read(QCount,4);
    F.Seek(4,soFromCurrent);
    RightCount := 0;

    for i:=0 to (QCount-1) do
     begin
       F.Seek(8,soFromCurrent);
       F.Read(b1,8);
       if b1>0 then Inc(RightCount);
       F.Seek(20,soFromCurrent);
       F.Read(len,4);
       F.Seek(len,soFromCurrent);
     end;
      // Для версии 4.0 Начало
      F.Read(b,1);
      ResOcenka := b=1;
      F.Read(b,1);
      ResAnaliz := b=1;
      F.Read(b,1);
      ResGrpAnaliz := b=1;
      F.Read(len,4);
      ResBuf1Alloc := False;
      Buf1L := 0;
      if len>0 then
      begin
         Resbuffer1 := AllocMem(len);
         Buf1L := len;
         F.Read(Resbuffer1^,len);
         ResBuf1Alloc := True;
      end;
      F.Read(len,4);
      if len>0 then
        F.Seek(len,soFromCurrent);
      // Для версии 4.0 конец

     if DateEqual then
     begin
      //////////////////////////////////////////////////////////////////
      // Поиск
      //////////////////////////////////////////////////////////////////
      if (ComboBox3.Text<>'') and (TestNameBox.Text='') and (ComboBox1.Text='') and
      (ComboBox2.Text='') then
      begin
       if WorkEqual then
         AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);
      end
      else
      if TestNameBox.Text='' then
      begin
       if ComboBox1.Text='' then
       begin
        if ComboBox2.Text='' then
        begin
         if ComboBox3.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox3.Text='' then
        begin
         if SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if SubEqual and WorkEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox2.Text='' then
       begin
        if ComboBox1.Text='' then
        begin
         if ComboBox3.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox3.Text='' then
        begin
         if FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if FioEqual and WorkEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox3.Text='' then
       begin
        if ComboBox1.Text='' then
        begin
         if ComboBox2.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox2.Text='' then
        begin
         if FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if FioEqual and SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
        if FioEqual and WorkEqual and SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
      end
      //////////////////////////////////////////////////////////////////
      else
      if ComboBox1.Text='' then
      begin
       if TestNameBox.Text='' then
       begin
        if ComboBox2.Text='' then
        begin
         if ComboBox3.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox3.Text='' then
        begin
         if SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if SubEqual and WorkEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox2.Text='' then
       begin
        if TestNameBox.Text='' then
        begin
         if ComboBox3.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox3.Text='' then
        begin
         if TNameEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if TNameEqual and WorkEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox3.Text='' then
       begin
        if TestNameBox.Text='' then
        begin
         if ComboBox2.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox2.Text='' then
        begin
         if TNameEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if TNameEqual and SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
        if TNameEqual and WorkEqual and SubEqual then
         AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
      end
      //////////////////////////////////////////////////////////////////
      else
      if ComboBox2.Text='' then
      begin
       if TestNameBox.Text='' then
       begin
        if ComboBox1.Text='' then
        begin
         if ComboBox3.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox3.Text='' then
        begin
         if FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if WorkEqual and FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox3.Text='' then
       begin
        if TestNameBox.Text='' then
        begin
         if ComboBox1.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox1.Text='' then
        begin
         if TNameEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if TNameEqual and FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox1.Text='' then
       begin
        if TestNameBox.Text='' then
        begin
         if ComboBox3.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox3.Text='' then
        begin
         if TNameEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if TNameEqual and WorkEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
        if TNameEqual and FioEqual and WorkEqual then
         AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
      end
      //////////////////////////////////////////////////////////////////
      else
      if ComboBox3.Text='' then
      begin
       if TestNameBox.Text='' then
       begin
        if ComboBox1.Text='' then
        begin
         if ComboBox2.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox2.Text='' then
        begin
         if FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if SubEqual and FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox1.Text='' then
       begin
        if TestNameBox.Text='' then
        begin
         if ComboBox2.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox2.Text='' then
        begin
         if TNameEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if TNameEqual and SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
       if ComboBox2.Text='' then
       begin
        if TestNameBox.Text='' then
        begin
         if ComboBox1.Text='' then
         begin
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
         end;
        end
        else
        if ComboBox1.Text='' then
        begin
         if TNameEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
        end
        else
         if TNameEqual and FioEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
       end
       else
        if TNameEqual and FioEqual and SubEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
      end
      else
      if TNameEqual and FIOEqual and SubEqual and WorkEqual then
          AddData(Index, ResOcenka, ResAnaliz, ResGrpAnaliz, Resbuffer1, Buf1L);;
     end;
     if ResBuf1Alloc then
      FreeMem(ResBuffer1);
   end;
  F.Free;
  Panel4.Caption := '';
  if N29.Checked then
   if AMaxBall <> 0 then
    Panel4.Caption := Panel4.Caption + 'Средний балл('+IntToStr(Divider)+'): ' + FormatFloat('0.00',ABall*Divider / AMaxBall);
  if N30.Checked then
    Panel4.Caption := Panel4.Caption + ' Количество набранных баллов: ' + FormatFloat('0.00',ABall) + ' из ' + FormatFloat('0.00',AMaxBall);
  if N31.Checked then
    Panel4.Caption := Panel4.Caption + ' Количество правильных ответов: ' + IntToStr(ARightCount) + ' из ' + IntToStr(AQCount);
  lv.Visible := True;
  LoadingForm.Close;
  Screen.Cursor := crDefault;
 except
  LoadingForm.Close;
  Screen.Cursor := crDefault;
  ShowMessage('Невозможно открыть файл базы данных.');
  Exit;
 end;
end;

procedure TExtResultForm.lvDblClick(Sender: TObject);
var
 OldGrpName, GrpName, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 F : TFileStream;
 BaseVersion, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 UserBall, MaxBall, Ball : real;
 index, QCount, i, kk : integer;
 AllQ, RightQ, Keyboard, Equals, Variant, Sequent : integer;
 Old1,Old2, Old3, Old4, Old5, Old6 : integer;
 ListItem : TListItem;
 M : TMemoryStream;
 b : byte;
begin
if lv.SelCount <> 0 then
 begin
 try
  Screen.Cursor := crHourGlass;
  M := TMemoryStream.Create;
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
  F.Read(len,4);
  BaseVersion := len;
  Index := 0;
  while F.Position < F.Size do
  begin
    Inc(index);

    F.Read(len,4);
    PTI := lv.Selected.Data;
    if PTI^.Index <> Index then
      F.Seek(len,soFromCurrent)
    else
    begin
    // Начнем сканирование БД
    F.Read(len,4);
    M.Write(len,4);

    // ФИО
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    fio := StrPas(buffer2);
    FreeMem(buffer2);

    // Название теста
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    TName := StrPas(buffer2);
    FreeMem(buffer2);

    // Подразделения
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    Sub := StrPas(buffer2);
    FreeMem(buffer2);

    // Должности
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    buffer2[len]:=Chr(0);
    Work := StrPas(buffer2);
    FreeMem(buffer2);

    F.Read(DT,8);
    M.Write(DT,8);
    F.Read(DT,8);
    M.Write(DT,8);

    F.Read(Ball,8);
    M.Write(Ball,8);
    F.Read(MaxBall,8);
    M.Write(MaxBall,8);
    F.Read(len,4);
    M.Write(len,4);
    F.Read(QCount,4);
    M.Write(QCount,4);
    F.Read(len,4);
    M.Write(len,4);
    for i:=0 to (QCount-1) do
     begin
       {номер вопроса}
        GetMem(buffer,36);
        F.Read(buffer^,36);
        M.Write(buffer^,36);
        FreeMem(buffer);
        F.Read(len,4);
        M.Write(len,4);
        GetMem(buffer,len);
        F.Read(buffer^,len);
        M.Write(buffer^,len);
        FreeMem(buffer);
     end;
      // Для версии 4.0 Начало
      F.Read(b,1);
      M.Write(b,1);
      F.Read(b,1);
      M.Write(b,1);
      F.Read(b,1);
      M.Write(b,1);
      F.Read(len,4);
      M.Write(len,4);
      if len>0 then
      begin
       buffer := AllocMem(len);
       F.Read(buffer^,len);
       M.Write(buffer^,len);
       FreeMem(buffer);
      end;
      F.Read(len,4);
      M.Write(len,4);
      if len>0 then
      begin
       buffer := AllocMem(len);
       F.Read(buffer^,len);
       M.Write(buffer^,len);
       FreeMem(buffer);
      end;
      // Для версии 4.0 конец
      PersonalForm.Admin_entered := true;
      PersonalForm.M := TMemoryStream.Create;
      GetMem(buffer,M.Size);
      M.Position := 0;
      M.Read(buffer^,M.Size);
      PersonalForm.M.Write(buffer^,M.Size);
      FreeMem(buffer);
      PersonalForm.M.Position := 0;
//      PersonalForm.DBButton.Enabled := True;
      PersonalForm.BitBtn2.Enabled := True;
      PersonalForm.Ver := BaseVersion;
      PersonalForm.ShowModal;
      PersonalForm.M.Free;
      break;
    end;
    M.Clear;
  end;
  F.Free;
  M.Free;
  Screen.Cursor := crDefault;
 except
  Screen.Cursor := crDefault;
  ShowMessage('Невозможно открыть файл базы данных.');
  Exit;
 end;
 end;
end;

procedure TExtResultForm.Button1Click(Sender: TObject);
var
 F, F2 : TFileStream;
 c, buflen, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 QCount, i : integer;
 M, M2 : TMemoryStream;
 tstr : string;
 b : byte;
begin
 if length(testnamebox.text) <> 0 then
 begin
 try
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
  F.Read(len,4);
  while F.Position < F.Size do
   begin
    F.Read(len,4);
    // Начнем сканирование БД
    F.Read(buflen,4);
    // ФИО
    F.Read(len,4);
    F.Seek(len,soFromCurrent);

    // Название теста
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    exist := false;
    tstr := StrPas(buffer2);
    FreeMem(buffer2);
    if TestNameBox.Text = tstr then
    begin
     exist := True;
     Break;
    end;

    // Подразделения
    F.Read(len,4);
    F.Seek(len,soFromCurrent);
    // Должности
    F.Read(len,4);
    F.Seek(len,soFromCurrent);

    F.Seek(36,soFromCurrent);

    F.Read(QCount,4);
    F.Seek(4,soFromCurrent);

    for i:=0 to (QCount-1) do
     begin
       F.Seek(36,soFromCurrent);
       F.Read(len,4);
       F.Seek(len,soFromCurrent);
     end;
      // Для версии 4.0 Начало
      F.Seek(3,soFromCurrent);
      F.Read(len,4);
      if len>0 then
       F.Seek(len,soFromCurrent);
      F.Read(len,4);
      if len>0 then
       F.Seek(len,soFromCurrent);
      // Для версии 4.0 конец
   end;
  F.Free;
  if Exist then
  begin
    M := TMemoryStream.Create;
    M2 := TMemoryStream.Create;
    c:=0;
    mf.CommentStream.Position := 0;
    while mf.CommentStream.Position < mf.CommentStream.Size do
     begin
       inc(c);
       mf.CommentStream.Read(len,4);
       buffer2 := AllocMem(len+1);
       mf.CommentStream.Read(buffer2^,len);
       buffer2[len] := Chr(0);
       tstr := StrPas(buffer2);
       FreeMem(buffer2);
       mf.CommentStream.Read(len,4);
       GetMem(buffer,len);
       mf.CommentStream.Read(buffer^,len);
       if (c=buflen) and (tstr=TestNameBox.Text) then
        begin
          M.Write(buffer^,len);
          FreeMem(buffer);
          break;
        end;
       FreeMem(buffer);
     end;
    M.Position := 0;
    if M.Size > 0 then
    begin
     bzip21.DecompressStream(M,M2);
     M2.Position := 0;
     CommentDlg.Caption := 'Комментарий к тесту '+ TestNameBox.Text;
     CommentDlg.RO.Lines.LoadFromStream(M2);
     CommentDlg.BitBtn1.Enabled := False;
     CommentDlg.ShowModal;
    end;
    M.Free;
    M2.Free;
  end;
 except
  ShowMessage('Невозможно открыть файл базы данных.');
  Exit;
 end;
 end;
end;

procedure TExtResultForm.TestNameBoxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , Chr(149) + ' ' + (Control as TComboBox).Items[Index]);
   len := strlen(buf);
   (Control as TComboBox).Canvas.DrawFocusRect(r);
   (Control as TComboBox).Canvas.FillRect(r);
   DrawText((Control as TComboBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure TExtResultForm.TestNameBoxMeasureItem(Control: TWinControl;
  Index: Integer; var Height: Integer);
var
 k,i : integer;
begin
  with (Control as TComboBox).Canvas do
  //for i := 0 to (Control as TComboBox).Items.Count-1 do
  begin
   Height := 20;
    k := TextWidth((Control as TComboBox).Items[Index]);
    while K > (Control as TComboBox).Width do
    begin
     k := k - (Control as TComboBox).Width;
     Height := Height + 20;
    end;
  end;
end;

function TExtResultForm.AddComments(index : integer;p : string):integer;
var
 len, c : integer;
 CS : TFileStream;
 MComment : TMemoryStream;
 ErrOutOfDiskSize, CommentFound : boolean;
 varname : array [1..5000] of char;
 buffer2 : PChar;
 psent, buffer : Pbyte;
 TestName : string;
begin
try
 ErrOutOfDiskSize:=False;
 c:=0;
 CS := TFileStream.Create(p,fmOpenRead);
 CS.Position := 0;
 MComment := TMemoryStream.Create;
 CommentFound := False;
 while CS.Position < CS.Size do
  begin
       inc(c);
       CS.Read(len,4);
       buffer2 := AllocMem(len+1);
       CS.Read(buffer2^,len);
       buffer2[len] := Chr(0);
       TestName := StrPas(buffer2);
       FreeMem(buffer2);
       CS.Read(len,4);
       GetMem(buffer,len);
       CS.Read(buffer^,len);
       if c=index then
        begin
          MComment.Write(buffer^,len);
          FreeMem(buffer);
          CommentFound := True;
          break;
        end;
       FreeMem(buffer);
  end;
 CS.Free;
 if not CommentFound then
  begin
   MComment.Free;
   Result := -3;
   Exit;
  end;
CommentFound := False;
c:=0;
mf.CommentStream.Position :=0;
while mf.CommentStream.Position<mf.CommentStream.Size do
begin
  inc(c);
  mf.CommentStream.Read(len,4);
  buffer2 := AllocMem(len+1);
  mf.CommentStream.Read(buffer2^,len);
  buffer2[len]:=Chr(0);
  mf.CommentStream.Read(len,4);
  if TestName=StrPas(buffer2) then
   begin
    FreeMem(buffer2);
    if len=MComment.Size then
    begin
     CommentFound:=True;
     break;
    end;
   end
   else
    FreeMem(buffer2);
  GetMem(psent,len);
  mf.CommentStream.Read(psent^,len);
  FreeMem(psent);
end;

if CommentFound then
 begin
  MComment.Free;
  Result := c;
 end
else
 begin
  inc(c);
  len := Length(TestName);
  StrPCopy(@varname, TestName);
  varname[len+1] := chr(0);
  if mf.CommentStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
  if mf.CommentStream.Write(varname,len)<>len then
      ErrOutOfDiskSize:=True;
  len := MComment.Size;
  if mf.CommentStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
  MComment.Position := 0;
  GetMem(psent,MComment.Size);
  MComment.Read(psent^,MComment.Size);
  if mf.CommentStream.Write(psent^,MComment.Size)<>MComment.Size then
   ErrOutOfDiskSize:=True;
  FreeMem(psent);
  MComment.Free;
  if ErrOutOfDiskSize then
   Result := -2
  else
   Result := c;
 end;
except
  Result := -1;
end;
end;

function TExtResultForm.AddQuestions(index : integer;p : string):integer;
var
 rbuffer, psent : pbyte;
 r, len, ii, c, qlen : integer;
 QS : TFileStream;
 mout, mt : TMemoryStream;
 ErrOutOfDiskSize:boolean;
 QuestionFound:boolean;
begin
try
  ErrOutOfDiskSize:=False;
  QS := TFileStream.Create(p,fmOpenRead);
  QS.Position := 0;
  ii := 0;
  while QS.Position<QS.Size do
  begin
    inc(ii);
    if ii=index then break;
    QS.Read(len,4);
    GetMem(rbuffer,len);
    QS.Read(rbuffer^,len);
    FreeMem(rbuffer);
  end;
  if ii=index then
  begin
    QS.Read(qlen,4);
    GetMem(rbuffer,qlen);
    QS.Read(rbuffer^,qlen);
    mout := TMemoryStream.Create;
    mout.Write(rbuffer^,qlen);
    FreeMem(rbuffer);
    QS.Free;
  end
  else
  begin
   QS.Free;
   Result := -3;
   Exit;
  end;
  QuestionFound := False;
  c:=0;
  mf.QuestionStream.Position :=0;
  while mf.QuestionStream.Position<mf.QuestionStream.Size do
    begin
    inc(c);
    mf.QuestionStream.Read(len,4);
    if len = qlen then
     begin
      GetMem(psent,len);
      mf.QuestionStream.Read(psent^,len);
      mt := TMemoryStream.Create;
      mt.Write(psent^,len);
      FreeMem(psent);
      mt.Position := 0;
      mout.Position := 0;
      if mf.Equal(mout,mt) then
      begin
       mt.Free;
       QuestionFound:=True;
       r := c;
       break;
      end
      else
       mt.Free;
     end
     else
      mf.QuestionStream.Seek(len,soFromCurrent);
    end;
  if QuestionFound then
   begin
    mout.Free;
    Result := r;
   end
   else
   begin
    inc(c);
    if mf.QuestionStream.Write(qlen,4)<>4 then
      ErrOutOfDiskSize:=True;
    GetMem(rbuffer,qlen);
    mout.Position := 0;
    mout.Read(rbuffer^,qlen);
    if mf.QuestionStream.Write(rbuffer^,qlen)<>qlen then
      ErrOutOfDiskSize:=True;
    FreeMem(rbuffer);
    mout.Free;
    if ErrOutOfDiskSize then
     Result := -2
    else
     Result := c;
   end;
except
  Result := -1;
end;
end;


function TExtResultForm.AddGroups(index : integer;p : string):integer;
var
 TROString, buffer2 : pchar;
 buffer : pbyte;
 r, len, ii, c : integer;
 QS : TFileStream;
 ErrOutOfDiskSize:boolean;
 GroupFound:boolean;
 GroupName : string;
begin
try
  ErrOutOfDiskSize:=False;
  QS := TFileStream.Create(p,fmOpenRead);
  QS.Position := 0;
  ii := 0;
   while QS.Position<QS.Size do
       begin
          inc(ii);
          if ii=index then
            break;
          QS.Read(len,4);
          QS.Seek(len,soFromCurrent);
       end;
   if ii=index then
      begin
          QS.Read(len,4);
          buffer2 := AllocMem(len+1);
          QS.Read(buffer2^,len);
          GroupName := StrPas(buffer2);
          FreeMem(buffer2);
          QS.Free;
      end
   else
      begin
       QS.Free;
       Result := -3;
       Exit;
      end;
  GroupFound := False;
  c:=0;
  mf.GroupStream.Position := 0;
   while mf.GroupStream.Position<mf.GroupStream.Size do
    begin
    inc(c);
    mf.GroupStream.Read(len,4);
    if len = Length(GroupName) then
     begin
      TROString := AllocMem(len+1);
      mf.GroupStream.Read(TROString^,len);
      if StrPas(TROString)=GroupName then
      begin
       FreeMem(TROString);
       GroupFound:=True;
       r := c;
       break;
      end
      else
       FreeMem(TROString);
     end
     else
      mf.GroupStream.Seek(len,soFromCurrent);
    end;

   if GroupFound then
   begin
     Result := r;
   end
   else
   begin
    inc(c);
    len := Length(GroupName);
    if mf.GroupStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
    TROString := AllocMem(Len+1);
    StrPCopy(TROString, GroupName);
    if mf.GroupStream.Write(TROString^,len)<>len then
      ErrOutOfDiskSize:=True;
    FreeMem(TROString);
    if ErrOutOfDiskSize then
     Result := -2
    else
     Result := c;
   end;
except
  Result := -1;
end;
end;

procedure TExtResultForm.N9Click(Sender: TObject);
var
 F,M: TFileStream;
 buffer : PByte;
 i, QCount, len : integer;
 Sub, Work, TName, fio, DirSel, TitleName : string;
 lpItemID : PItemIDList;
 BrowseInfo : TBrowseInfo;
 DisplayName : array[0..MAX_PATH] of char;
 TempPath : array[0..MAX_PATH] of char;
 w : word;
 buffer2 : PChar;
 DT : TDateTime;
 Ball, MaxBall, UserBall : real;
 ListItem : TListItem;
 b : byte;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := ExtResultForm.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберете директорию для импорта базы данных:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
    begin
     SHGetPathFromIDList(lpItemID, TempPath);
     GlobalFreePtr(lpItemID);
     try
      if (not FileExists(TempPath+'\Prtest.dt3')) or
      (not FileExists(TempPath+'\comments.dat')) or
      (not FileExists(TempPath+'\questions.dat')) or
      (not FileExists(TempPath+'\groups.dat')) then
      begin
        ShowMessage('Файлы для импорта данных не найдены.');
        Exit;
      end;
      w := MessageBox(Application.Handle, PChar('Удалить старые записи?'), PCHAR('Тестирование'), MB_YesNoCancel);
      case w of
       idYes: begin
               M := TFileStream.Create(DirText+'Prtest.dt3',fmCreate);
               len := DB_Version;
               M.Write(len,4);
              end;
       idNo: begin
              M := TFileStream.Create(DirText+'Prtest.dt3',fmOpenWrite);
              M.Position := M.Size;
             end;
       idCancel : Exit;
      end;
      if LoadingForm=nil then
        LoadingForm := TLoadingForm.Create(Application);
      LoadingForm.Caption := 'Импорт результатов...';
      LoadingForm.Panel1.Caption := '';
      LoadingForm.Show;
      ImportForm.LV.Items.Clear;
      Screen.Cursor := crHourGlass;
      F := TFileStream.Create(TempPath+'\Prtest.dt3',fmOpenRead);
      F.Read(len,4);
      if len<>DB_Version then
      begin
        Screen.Cursor := crDefault;
        F.Free;
        M.Free;
        LoadingForm.Close;
        ShowMessage('Внутренняя ошибка №1 (Несоответствие версий). Импорт базы данных не поддерживается.');
        Exit;
      end;
      Index := 0;
      while F.Position < F.Size do
       begin
        Inc(index);
        // 5.0
        F.Read(len,4);
        M.Write(len,4);
        // Начнем сканирование импортируемой БД
        F.Read(len,4);
        len := AddComments(len,TempPath+'\comments.dat');
        if len>=0 then
          M.Write(len,4)
        else
        begin
          Screen.Cursor := crDefault;
          LoadingForm.Close;
          case len of
          -1: ShowMessage('Ошибка ввода/вывода. Невозможно импортировать данные.');
          -2: ShowMessage('Переполнение диска. Невозможно импортировать данные.');
          -3: ShowMessage('Внутренняя ошибка №2 (Комментарий не найден). Невозможно импортировать данные.');
          end;
          F.Free;
          M.Free;
          Exit;
        end;
        // ФИО
        F.Read(len,4);
        M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        fio := StrPas(buffer2);
        FreeMem(buffer2);

        // Название теста
        F.Read(len,4);
        M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        TName := StrPas(buffer2);
        FreeMem(buffer2);

        // Подразделения
        F.Read(len,4);
        M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        Sub := StrPas(buffer2);
        FreeMem(buffer2);

        // Должности
        F.Read(len,4);
        M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        Work := StrPas(buffer2);
        FreeMem(buffer2);

        F.Read(DT,8);
        M.Write(DT,8);
        F.Read(DT,8);
        M.Write(DT,8);

        F.Read(Ball,8);
        M.Write(Ball,8);
        F.Read(MaxBall,8);
        M.Write(MaxBall,8);
        F.Read(len,4);
        M.Write(len,4);
        F.Read(QCount,4);
        M.Write(QCount,4);
        F.Read(len,4);
        M.Write(len,4);

        ListItem := ImportForm.lv.Items.Add;
        ListItem.Caption := IntToStr(index);
        ListItem.Subitems.Add(FIO);
        ListItem.Subitems.Add(TName);
        if MaxBall>0 then
         ListItem.Subitems.Add(FormatFloat('0.00',Ball*5 / MaxBall))
        else
         ListItem.Subitems.Add('0');

        for i:=0 to (QCount-1) do
        begin
        LoadingForm.PB.Position := Trunc(i/(QCount)*100);
        LoadingForm.Repaint;
       {номер вопроса}
        F.Read(len,4);
        M.Write(len,4);
       {реальный id вопроса в базе}
        F.Read(len,4);
        M.Write(len,4);
        {балл полученный за вопрос}
        F.Read(UserBall,8);
        M.Write(UserBall,8);
        F.Read(UserBall,8);
        M.Write(UserBall,8);

        F.Read(len,4);
        len := AddQuestions(len,TempPath+'\questions.dat');
        if len>=0 then
          M.Write(len,4)
        else
        begin
          Screen.Cursor := crDefault;
          LoadingForm.Close;
          case len of
          -1: ShowMessage('Ошибка ввода/вывода. Невозможно импортировать данные.');
          -2: ShowMessage('Переполнение диска. Невозможно импортировать данные.');
          -3: ShowMessage('Внутренняя ошибка №3 (Вопрос не найден). Невозможно импортировать данные.');
          end;
          F.Free;
          M.Free;
          Exit;
        end;

        F.Read(len,4);
        len := AddGroups(len,TempPath+'\groups.dat');
        if len>=0 then
          M.Write(len,4)
        else
        begin
          Screen.Cursor := crDefault;
          LoadingForm.Close;
          case len of
          -1: ShowMessage('Ошибка ввода/вывода. Невозможно импортировать данные.');
          -2: ShowMessage('Переполнение диска. Невозможно импортировать данные.');
          -3: ShowMessage('Внутренняя ошибка №4 (Группа не найдена). Невозможно импортировать данные.');
          end;
          F.Free;
          M.Free;
          Exit;
        end;

        F.Read(len,4);
        M.Write(len,4);
        F.Read(len,4);
        M.Write(len,4);
        GetMem(buffer,len);
        F.Read(buffer^,len);
        M.Write(buffer^,len);
        FreeMem(buffer);
        end;

       // Для версии 4.0 Начало
       F.Read(b,1);
       M.Write(b,1);
       F.Read(b,1);
       M.Write(b,1);
       F.Read(b,1);
       M.Write(b,1);
       F.Read(len,4);
       M.Write(len,4);
       if len>0 then
       begin
        buffer := AllocMem(len);
        F.Read(buffer^,len);
        M.Write(buffer^,len);
        FreeMem(buffer);
       end;
       F.Read(len,4);
       M.Write(len,4);
       if len>0 then
       begin
        buffer := AllocMem(len);
        F.Read(buffer^,len);
        M.Write(buffer^,len);
        FreeMem(buffer);
       end;
       // Для версии 4.0 конец

      end;
      F.Free;
      M.Free;
      Screen.Cursor := crDefault;
      LoadingForm.Close;
      ImportForm.Label1.Caption := 'Импорт результатов завершен. Импортировано записей: '+IntToStr(Index);
      ImportForm.ShowModal;
      FormShow(Sender);
     except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Ошибка ввода/вывода или файл не найден.');
     end;
    end;
end;

procedure TExtResultForm.N10Click(Sender: TObject);

function FoundInOriginal(F : TFileStream;FIO,TName,Sub,Work:string;Dt,Dt2:TDateTime;Ball,MaxBall:real;QCount:integer): boolean;
var
  R : boolean;
  OriginalFIO,OriginalTName,OriginalSub,OriginalWork:string;
  OriginalDt,OriginalDt2:TDateTime;
  OriginalBall,OriginalMaxBall:real;
  i,len,Index,OriginalQCount:integer;
  buffer2 : pchar;
  UserBall : real;
  buffer : pbyte;
  b : byte;
begin
  R := False;
  F.Position := 0;
  F.Read(len,4);
  Index := 0;
  while F.Position < F.Size do
    begin
        Inc(index);
        F.Read(len,4);

        F.Read(len,4);
        // ФИО
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        originalfio := StrPas(buffer2);
        FreeMem(buffer2);

        // Название теста
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        originalTName := StrPas(buffer2);
        FreeMem(buffer2);

        // Подразделения
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        originalSub := StrPas(buffer2);
        FreeMem(buffer2);

        // Должности
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        originalWork := StrPas(buffer2);
        FreeMem(buffer2);

        F.Read(originalDT,8);
        F.Read(originalDT2,8);
        F.Read(originalBall,8);
        F.Read(originalMaxBall,8);
        F.Read(len,4);

        F.Read(originalQCount,4);
        F.Read(len,4);
        for i:=0 to (originalQCount-1) do
        begin
         F.Seek(36,soFromCurrent);
         F.Read(len,4);
         F.Seek(len,soFromCurrent);
        end;

       // Для версии 4.0 Начало
       F.Read(b,1);
       F.Read(b,1);
       F.Read(b,1);
       F.Read(len,4);
       if len>0 then
        F.Seek(len,soFromCurrent);
       F.Read(len,4);
       if len>0 then
        F.Seek(len,soFromCurrent);
       // Для версии 4.0 конец

       if (FIO=OriginalFIO) and (TName=OriginalTName) and
       (Sub=OriginalSub) and (Work=OriginalWork) and (Dt=OriginalDt) and (Dt2=OriginalDt2) and
       (Ball=OriginalBall) and (MaxBall=OriginalMaxBall) and (QCount=OriginalQCount) then
       begin
        R := True;
        Break;
       end;
   end;
 Result := R;
end;

var
 F,M: TFileStream;
 TempM : TMemoryStream;
 buffer : PByte;
 i, QCount, len : integer;
 Sub, Work, TName, fio, DirSel, TitleName : string;
 lpItemID : PItemIDList;
 BrowseInfo : TBrowseInfo;
 DisplayName : array[0..MAX_PATH] of char;
 TempPath : array[0..MAX_PATH] of char;
 w : word;
 buffer2 : PChar;
 DT,DT2 : TDateTime;
 Ball, MaxBall, UserBall : real;
 ListItem : TListItem;
 bb, b : byte;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := ExtResultForm.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберете директорию для импорта базы данных:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
    begin
     SHGetPathFromIDList(lpItemID, TempPath);
     GlobalFreePtr(lpItemID);
     try
      if (not FileExists(TempPath+'\Prtest.dt3')) or
      (not FileExists(TempPath+'\comments.dat')) or
      (not FileExists(TempPath+'\questions.dat')) or
      (not FileExists(TempPath+'\groups.dat')) then
      begin
        ShowMessage('Файлы для импорта данных не найдены.');
        Exit;
      end;
      M := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
      M.Position := 0;
      if LoadingForm=nil then
        LoadingForm := TLoadingForm.Create(Application);
      LoadingForm.Caption := 'Импорт результатов...';
      LoadingForm.Panel1.Caption := '';
      LoadingForm.Show;
      ImportForm.LV.Items.Clear;
      Screen.Cursor := crHourGlass;
      F := TFileStream.Create(TempPath+'\Prtest.dt3',fmOpenRead);
      TempM := TMemoryStream.Create;
      // Заполним буфер соответствий
      F.Read(len,4);
      if len<>DB_Version then
      begin
        Screen.Cursor := crDefault;
        F.Free;
        M.Free;
        LoadingForm.Close;
        ShowMessage('Внутренняя ошибка №1 (Несоответствие версий). Импорт базы данных не поддерживается.');
        Exit;
      end;
      Index := 0;
      while F.Position < F.Size do
       begin
        Inc(index);
        // 5.0
        F.Read(len,4);
        // Начнем сканирование импортируемой БД
        F.Read(len,4);
        // ФИО
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        fio := StrPas(buffer2);
        FreeMem(buffer2);

        // Название теста
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        TName := StrPas(buffer2);
        FreeMem(buffer2);

        // Подразделения
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        Sub := StrPas(buffer2);
        FreeMem(buffer2);

        // Должности
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        Work := StrPas(buffer2);
        FreeMem(buffer2);

        F.Read(DT,8);
        F.Read(DT2,8);
        F.Read(Ball,8);
        F.Read(MaxBall,8);
        F.Read(len,4);

        F.Read(QCount,4);
        F.Read(len,4);
        for i:=0 to (QCount-1) do
        begin
         F.Seek(36,soFromCurrent);
         F.Read(len,4);
         F.Seek(len,soFromCurrent);
        end;
        // Для версии 4.0 Начало
        F.Read(b,1);
        F.Read(b,1);
        F.Read(b,1);
        F.Read(len,4);
        if len>0 then
         F.Seek(len,soFromCurrent);
        F.Read(len,4);
        if len>0 then
         F.Seek(len,soFromCurrent);
        // Для версии 4.0 конец
        if FoundInOriginal(M,FIO,TName,Sub,Work,Dt,Dt2,Ball,MaxBall,QCount) then
        begin
          b := 1;
          TempM.Write(b,1);
        end
        else
        begin
          b := 0;
          TempM.Write(b,1);
        end
      end;
      F.Position := 0;
      F.Read(len,4);
      if len<>DB_Version then
      begin
        Screen.Cursor := crDefault;
        F.Free;
        M.Free;
        LoadingForm.Close;
        ShowMessage('Внутренняя ошибка №1 (Несоответствие версий). Импорт базы данных не поддерживается.');
        Exit;
      end;
      M.Position := M.Size;
      TempM.Position := 0;
      Index := 0;
      while F.Position < F.Size do
       begin
        TempM.Read(b,1);
        if b=0 then Inc(index);
        // Начнем сканирование импортируемой БД
        F.Read(len,4);
        if b=0 then M.Write(len,4);

        F.Read(len,4);
        if b=0 then
        begin
        len := AddComments(len,TempPath+'\comments.dat');
        if len>=0 then
          M.Write(len,4)
        else
        begin
          Screen.Cursor := crDefault;
          LoadingForm.Close;
          case len of
           -1: ShowMessage('Ошибка ввода/вывода. Невозможно импортировать данные.');
           -2: ShowMessage('Переполнение диска. Невозможно импортировать данные.');
           -3: ShowMessage('Внутренняя ошибка №2 (Комментарий не найден). Невозможно импортировать данные.');
          end;
          F.Free;
          M.Free;
          Exit;
        end;
        end;
        // ФИО
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        if b=0 then M.Write(buffer2^,len);
        fio := StrPas(buffer2);
        FreeMem(buffer2);

        // Название теста
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        if b=0 then M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        TName := StrPas(buffer2);
        FreeMem(buffer2);

        // Подразделения
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        if b=0 then M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        Sub := StrPas(buffer2);
        FreeMem(buffer2);

        // Должности
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        if b=0 then M.Write(buffer2^,len);
        buffer2[len]:=Chr(0);
        Work := StrPas(buffer2);
        FreeMem(buffer2);

        F.Read(DT,8);
        if b=0 then M.Write(DT,8);
        F.Read(DT,8);
        if b=0 then M.Write(DT,8);

        F.Read(Ball,8);
        if b=0 then M.Write(Ball,8);
        F.Read(MaxBall,8);
        if b=0 then M.Write(MaxBall,8);
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        F.Read(QCount,4);
        if b=0 then M.Write(QCount,4);
        F.Read(len,4);
        if b=0 then M.Write(len,4);

        if b=0 then
        begin
        ListItem := ImportForm.lv.Items.Add;
        ListItem.Caption := IntToStr(index);
        ListItem.Subitems.Add(FIO);
        ListItem.Subitems.Add(TName);
        if MaxBall>0 then
         ListItem.Subitems.Add(FormatFloat('0.00',Ball*5 / MaxBall))
        else
         ListItem.Subitems.Add('0');
        end;

        for i:=0 to (QCount-1) do
        begin
        LoadingForm.PB.Position := Trunc(i/(QCount)*100);
        LoadingForm.Repaint;
       {номер вопроса}
        F.Read(len,4);
        if b=0 then M.Write(len,4);
       {реальный id вопроса в базе}
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        {балл полученный за вопрос}
        F.Read(UserBall,8);
        if b=0 then M.Write(UserBall,8);
        F.Read(UserBall,8);
        if b=0 then M.Write(UserBall,8);

        F.Read(len,4);
        if b=0 then
        begin
        len := AddQuestions(len,TempPath+'\questions.dat');
        if len>=0 then
          M.Write(len,4)
        else
        begin
          Screen.Cursor := crDefault;
          LoadingForm.Close;
          case len of
           -1: ShowMessage('Ошибка ввода/вывода. Невозможно импортировать данные.');
           -2: ShowMessage('Переполнение диска. Невозможно импортировать данные.');
           -3: ShowMessage('Внутренняя ошибка №3 (Вопрос не найден). Невозможно импортировать данные.');
          end;
          F.Free;
          M.Free;
          Exit;
        end;
        end;
        F.Read(len,4);
        if b=0 then
        begin
        len := AddGroups(len,TempPath+'\groups.dat');
        if len>=0 then
          M.Write(len,4)
        else
        begin
          Screen.Cursor := crDefault;
          LoadingForm.Close;
          case len of
           -1: ShowMessage('Ошибка ввода/вывода. Невозможно импортировать данные.');
           -2: ShowMessage('Переполнение диска. Невозможно импортировать данные.');
           -3: ShowMessage('Внутренняя ошибка №4 (Группа не найдена). Невозможно импортировать данные.');
          end;
          F.Free;
          M.Free;
          Exit;
        end;
        end;
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        GetMem(buffer,len);
        F.Read(buffer^,len);
        if b=0 then M.Write(buffer^,len);
        FreeMem(buffer);
        end;
        // Для версии 4.0 Начало
        F.Read(bb,1);
        if b=0 then M.Write(bb,1);
        F.Read(bb,1);
        if b=0 then M.Write(bb,1);
        F.Read(bb,1);
        if b=0 then M.Write(bb,1);
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        if len>0 then
        begin
         buffer := AllocMem(len);
         F.Read(buffer^,len);
         if b=0 then M.Write(buffer^,len);
         FreeMem(buffer);
        end;
        F.Read(len,4);
        if b=0 then M.Write(len,4);
        if len>0 then
        begin
         buffer := AllocMem(len);
         F.Read(buffer^,len);
         if b=0 then M.Write(buffer^,len);
         FreeMem(buffer);
        end;
        // Для версии 4.0 конец

      end;
      F.Free;
      M.Free;
      TempM.Free;
      Screen.Cursor := crDefault;
      LoadingForm.Close;
      ImportForm.Label1.Caption := 'Импорт результатов завершен. Импортировано новых записей: '+IntToStr(Index);
      ImportForm.ShowModal;
      FormShow(Sender);
     except
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      ShowMessage('Ошибка ввода/вывода или файл не найден.');
     end;
    end;
end;

procedure TExtResultForm.TestNameBoxButtonClick(Sender: TObject);
begin
 SelectForm.LB.Items.Clear;
 SelectForm.LB.Items.AddStrings(NameStrings);
 SelectForm.Caption := 'Наименование теста';
 if SelectForm.ShowModal=mrOk then
  if SelectForm.LB.ItemIndex<>-1 then
   TestNameBox.Text := SelectForm.LB.Items[SelectForm.LB.ItemIndex];
end;

procedure TExtResultForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not ParamsChanged then
   if SaveBase then
    CopyDB;
 mf.CommentStream.Free;
 mf.CommentStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'comments.dat',fmOpenReadWrite);
 mf.QuestionStream.Free;
 mf.QuestionStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'questions.dat',fmOpenReadWrite);
 mf.GroupStream.Free;
 mf.GroupStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'groups.dat',fmOpenReadWrite);
 NameStrings.Free;
 FioStrings.Free;
 WorkStrings.Free;
 SubStrings.Free;
end;

procedure TExtResultForm.ComboBox1ButtonClick(Sender: TObject);
begin
 SelectForm.LB.Items.Clear;
 SelectForm.LB.Items.AddStrings(FioStrings);
 SelectForm.Caption := 'Фамилия, Имя, Отчество';
 if SelectForm.ShowModal=mrOk then
  if SelectForm.LB.ItemIndex<>-1 then
   ComboBox1.Text := SelectForm.LB.Items[SelectForm.LB.ItemIndex];
end;

procedure TExtResultForm.ComboBox3ButtonClick(Sender: TObject);
var
 Registry:TmyStream;
begin
 SelectForm.LB.Items.Clear;
 SelectForm.LB.Items.AddStrings(WorkStrings);
 try
  Registry:=TMyStream.Create(DirText+'spr1.cfg',fmOpenRead);
  SelectForm.Caption:=Registry.ReadString+':';
  Registry.Free;
 except
 end;
 if SelectForm.ShowModal=mrOk then
  if SelectForm.LB.ItemIndex<>-1 then
   ComboBox3.Text := SelectForm.LB.Items[SelectForm.LB.ItemIndex];
end;

procedure TExtResultForm.ComboBox2ButtonClick(Sender: TObject);
var
 Registry:TmyStream;
begin
 SelectForm.LB.Items.Clear;
 SelectForm.LB.Items.AddStrings(SubStrings);
 try
  Registry:=TMyStream.Create(DirText+'spr2.cfg',fmOpenRead);
  SelectForm.Caption:=Registry.ReadString+':';
  Registry.Free;
 except
 end;
 if SelectForm.ShowModal=mrOk then
  if SelectForm.LB.ItemIndex<>-1 then
   ComboBox2.Text := SelectForm.LB.Items[SelectForm.LB.ItemIndex];
end;

procedure TExtResultForm.FormResize(Sender: TObject);
begin
 TestNameBox.Width := Width-785+649;
 Button1.Left := Width-785+680;
 BitBtn1.Left := Width-785+680;
 ComboBox1.Width := Width-785+337;
 ComboBox3.Width := Width-785+337;
 ComboBox2.Left := Width-785+376;
 Label6.Left := Width-785+376;
 Label7.Left := Width-785+376;
 Label1.Left := Width-785+376;
 DateBegin.Left := Width-785+392;
 Label2.Left := Width-785+533;
 DateEnd.Left := Width-785+552;
end;

procedure TExtResultForm.SortData(Index : longint);
var
 MinValue, Counter, MinIndex, i : longint;
 s0, s1, s2, s3 , s4, s5, s6, s7, s8 , s9, s10, s11 : TStringList;
 D : TList;
 LI : TListItem;
 MinData : TDateTime;
 MinDValue : Double;
begin
if lv.Items.Count > 0 then
 begin
  s0 := TStringList.Create;
  s1 := TStringList.Create;
  s2 := TStringList.Create;
  s3 := TStringList.Create;
  s4 := TStringList.Create;
  s5 := TStringList.Create;
  s6 := TStringList.Create;
  s7 := TStringList.Create;
  s8 := TStringList.Create;
  s9 := TStringList.Create;
  s10 := TStringList.Create;
  s11 := TStringList.Create;
  D := TList.Create;
  Screen.Cursor := crHourGlass;
  Counter := 0;
  lv.Visible := False;
  case Index of
  5: begin
      // Сортировка по дате
      while lv.Items.Count > 0 do
      begin
       MinData := StrToDate(DateToStr(Now));
       for i:=0 to lv.Items.Count-1 do
        if StrToDate(lv.Items[i].Subitems[4]) <= MinData then
         begin
          MinData := StrToDate(lv.Items[i].Subitems[4]);
          MinIndex := i;
         end;
       s1.Add(lv.Items[MinIndex].Caption);
       s0.Add(IntToStr(lv.Items[MinIndex].ImageIndex));
       s2.Add(lv.Items[MinIndex].Subitems[0]);
       s3.Add(lv.Items[MinIndex].Subitems[1]);
       s4.Add(lv.Items[MinIndex].Subitems[2]);
       s5.Add(lv.Items[MinIndex].Subitems[3]);
       s6.Add(lv.Items[MinIndex].Subitems[4]);
       s7.Add(lv.Items[MinIndex].Subitems[5]);
       s8.Add(lv.Items[MinIndex].Subitems[6]);
       s9.Add(lv.Items[MinIndex].Subitems[7]);
       s10.Add(lv.Items[MinIndex].Subitems[8]);
       s11.Add(lv.Items[MinIndex].Subitems[9]);
       D.Add(lv.Items[MinIndex].Data);
       lv.Items.Delete(MinIndex);
       Inc(Counter);
      end;
     end;
  0,6,7 : begin
      // Сортировка по N п.п и др.
      while lv.Items.Count > 0 do
      begin
       MinValue := 2147483647;
       for i:=0 to lv.Items.Count-1 do
        case Index of
        0 : if StrToInt(lv.Items[i].Caption) <= MinValue then
              begin
               MinValue := StrToInt(lv.Items[i].Caption);
               MinIndex := i;
              end;
        else
             if StrToInt(lv.Items[i].Subitems[Index-1]) <= MinValue then
              begin
               MinValue := StrToInt(lv.Items[i].Subitems[Index-1]);
               MinIndex := i;
              end;
        end;
       s1.Add(lv.Items[MinIndex].Caption);
       s0.Add(IntToStr(lv.Items[MinIndex].ImageIndex));
       s2.Add(lv.Items[MinIndex].Subitems[0]);
       s3.Add(lv.Items[MinIndex].Subitems[1]);
       s4.Add(lv.Items[MinIndex].Subitems[2]);
       s5.Add(lv.Items[MinIndex].Subitems[3]);
       s6.Add(lv.Items[MinIndex].Subitems[4]);
       s7.Add(lv.Items[MinIndex].Subitems[5]);
       s8.Add(lv.Items[MinIndex].Subitems[6]);
       s9.Add(lv.Items[MinIndex].Subitems[7]);
       s10.Add(lv.Items[MinIndex].Subitems[8]);
       s11.Add(lv.Items[MinIndex].Subitems[9]);
       D.Add(lv.Items[MinIndex].Data);
       lv.Items.Delete(MinIndex);
       Inc(Counter);
      end;
     end;
  8,9 : begin
      // Сортировка по баллам
      while lv.Items.Count > 0 do
      begin
       MinDValue := 2147483647;
       for i:=0 to lv.Items.Count-1 do
        try
        if StrToFloat(lv.Items[i].Subitems[Index-1]) <= MinDValue then
          begin
            try
             MinDValue := StrToFloat(lv.Items[i].Subitems[Index-1]);
            except
            end;
            MinIndex := i;
          end;
        except
        end;
       s1.Add(lv.Items[MinIndex].Caption);
       s0.Add(IntToStr(lv.Items[MinIndex].ImageIndex));
       s2.Add(lv.Items[MinIndex].Subitems[0]);
       s3.Add(lv.Items[MinIndex].Subitems[1]);
       s4.Add(lv.Items[MinIndex].Subitems[2]);
       s5.Add(lv.Items[MinIndex].Subitems[3]);
       s6.Add(lv.Items[MinIndex].Subitems[4]);
       s7.Add(lv.Items[MinIndex].Subitems[5]);
       s8.Add(lv.Items[MinIndex].Subitems[6]);
       s9.Add(lv.Items[MinIndex].Subitems[7]);
       s10.Add(lv.Items[MinIndex].Subitems[8]);
       s11.Add(lv.Items[MinIndex].Subitems[9]);
       D.Add(lv.Items[MinIndex].Data);
       lv.Items.Delete(MinIndex);
       Inc(Counter);
      end;
     end;
  10 : begin
      // Сортировка по оценке
      while lv.Items.Count > 0 do
      begin
       MinDValue := 2147483647;
       for i:=0 to lv.Items.Count-1 do
//        if lv.Items[i].ImageIndex = 0 then
        try
        if StrToFloat(lv.Items[i].Subitems[Index-1]) <= MinDValue then
          begin
            try
             MinDValue := StrToFloat(lv.Items[i].Subitems[Index-1]);
            except
            end;
            MinIndex := i;
          end;
        except
         MinIndex := i;
        end;
//        else
//         MinIndex := i;

       s1.Add(lv.Items[MinIndex].Caption);
       s0.Add(IntToStr(lv.Items[MinIndex].ImageIndex));
       s2.Add(lv.Items[MinIndex].Subitems[0]);
       s3.Add(lv.Items[MinIndex].Subitems[1]);
       s4.Add(lv.Items[MinIndex].Subitems[2]);
       s5.Add(lv.Items[MinIndex].Subitems[3]);
       s6.Add(lv.Items[MinIndex].Subitems[4]);
       s7.Add(lv.Items[MinIndex].Subitems[5]);
       s8.Add(lv.Items[MinIndex].Subitems[6]);
       s9.Add(lv.Items[MinIndex].Subitems[7]);
       s10.Add(lv.Items[MinIndex].Subitems[8]);
       s11.Add(lv.Items[MinIndex].Subitems[9]);
       D.Add(lv.Items[MinIndex].Data);
       lv.Items.Delete(MinIndex);
       Inc(Counter);
      end;
     end;
  end;

  lv.Items.Clear;
  for i:=0 to Counter-1 do
       begin
        LI := lv.Items.Add;
        LI.ImageIndex := StrToInt(s0.Strings[i]);
        LI.Caption := s1.Strings[i];
        LI.SubItems.Add(s2.Strings[i]);
        LI.SubItems.Add(s3.Strings[i]);
        LI.SubItems.Add(s4.Strings[i]);
        LI.SubItems.Add(s5.Strings[i]);
        LI.SubItems.Add(s6.Strings[i]);
        LI.SubItems.Add(s7.Strings[i]);
        LI.SubItems.Add(s8.Strings[i]);
        LI.SubItems.Add(s9.Strings[i]);
        LI.SubItems.Add(s10.Strings[i]);
        LI.SubItems.Add(s11.Strings[i]);
        LI.Data := D.Items[i];
       end;
  lv.Visible := True;
  Screen.Cursor := crDefault;
  s0.Free;
  s1.Free;
  s2.Free;
  s3.Free;
  s4.Free;
  s5.Free;
  s6.Free;
  s7.Free;
  s8.Free;
  s9.Free;
  s10.Free;
  s11.Free;
  D.Free;
 end;
end;

procedure TExtResultForm.lvColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  if (Column.Index>0) and (Column.Index<5) then
  begin
   ColumnToSort := Column.Index;
   (Sender as TCustomListView).AlphaSort;
  end
  else
  if Column.Index=10 then
  begin
   ColumnToSort := Column.Index;
   (Sender as TCustomListView).AlphaSort;
   SortData(Column.Index);
  end
  else
   SortData(Column.Index);
end;

procedure TExtResultForm.lvCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  ix: Integer;
begin
  if ColumnToSort = 0 then
    Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
   ix := ColumnToSort - 1;
   Compare := CompareText(Item1.SubItems[ix],Item2.SubItems[ix]);
  end;
end;

procedure TExtResultForm.N12Click(Sender: TObject);
var
   F : TFileStream;
   len : integer;
begin
   if MessageBox(Application.Handle, PChar('Удалить все записи из базы данных? '), PCHAR('Тестирование'), MB_YesNo)=IDYES then
   begin
   lv.Visible := False;
   lv.Items.Clear;
   lv.Visible := True;
   TestNameBox.Text := '';
   ComboBox1.Text := '';
   ComboBox2.Text := '';
   ComboBox3.Text := '';
   Panel4.Caption := '';
   NameStrings.Clear;
   FioStrings.Clear;
   WorkStrings.Clear;
   SubStrings.Clear;
   try
    Caption := 'Общие результаты тестирования';
    F := TFileStream.Create(DirText+'Prtest.dt3',fmCreate);
    len := DB_Version;
    F.Write(len,4);
    F.Free;
    mf.CommentStream.Free;
    mf.CommentStream := TFileStream.Create(DirText+'comments.dat',fmCreate);
    mf.QuestionStream.Free;
    mf.QuestionStream := TFileStream.Create(DirText+'questions.dat',fmCreate);
    mf.GroupStream.Free;
    mf.GroupStream := TFileStream.Create(DirText+'groups.dat',fmCreate);
   except
    ShowMessage('Ошибка ввода/вывода.');
   end;
   end;
end;

procedure TExtResultForm.N15Click(Sender: TObject);
var
  F,FA: TFileStream;
  buffer : PByte;
  len : integer;
  DirSel, TitleName : string;
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
  ErrOutOfDiskSize : boolean;
begin
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := ExtResultForm.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберете директорию для экспорта базы данных:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
    begin
     SHGetPathFromIDList(lpItemID, TempPath);
     GlobalFreePtr(lpItemID);
     try
      ErrOutOfDiskSize := False;
      Screen.Cursor := crHourGlass;
      F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenRead);
      if F.Size>4 then
      begin
       FA := TFileStream.Create(TempPath+'\prtest.dt3',fmCreate);
       GetMem(buffer,F.Size);
       F.Read(buffer^,F.Size);
       if FA.Write(buffer^,F.Size)<>F.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       F.Free;
       FA.Free;
       FA := TFileStream.Create(TempPath+'\comments.dat',fmCreate);
       GetMem(buffer,mf.CommentStream.Size);
       mf.CommentStream.Position := 0;
       mf.CommentStream.Read(buffer^,mf.CommentStream.Size);
       if FA.Write(buffer^,mf.CommentStream.Size)<>mf.CommentStream.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       FA.Free;
       FA := TFileStream.Create(TempPath+'\questions.dat',fmCreate);
       GetMem(buffer,mf.QuestionStream.Size);
       mf.QuestionStream.Position := 0;
       mf.QuestionStream.Read(buffer^,mf.QuestionStream.Size);
       if FA.Write(buffer^,mf.QuestionStream.Size)<>mf.QuestionStream.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       FA.Free;
       FA := TFileStream.Create(TempPath+'\groups.dat',fmCreate);
       GetMem(buffer,mf.GroupStream.Size);
       mf.GroupStream.Position := 0;
       mf.GroupStream.Read(buffer^,mf.GroupStream.Size);
       if FA.Write(buffer^,mf.GroupStream.Size)<>mf.GroupStream.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       FA.Free;
       Screen.Cursor := crDefault;
       if ErrOutOfDiskSize then
         ShowMessage('Недостаточно места на диске. Выберете другой диск и повторите экспорт.')
       else
         ShowMessage('Экспорт данных завершен.');
      end
      else
      begin
       F.Free;
       Screen.Cursor := crDefault;
       ShowMessage('Экспорт пустой базы данных невозможен.');
      end;
      except
       Screen.Cursor := crDefault;
       ShowMessage('Ошибка ввода/вывода.');
      end;
    end;
end;

procedure TExtResultForm.N17Click(Sender: TObject);

procedure WriteStreamToExportFile(F: TFileStream; Mem : TMemoryStream; var ErrOutOfDiskSize:boolean);
var
   len : integer;
   buffer : PByte;
begin
   Mem.Position :=0;
   GetMem(buffer,Mem.Size);
   Mem.Read(buffer^,Mem.Size);
   if F.Write(buffer^,Mem.Size)<>Mem.Size then
    ErrOutOfDiskSize := True;
   FreeMem(buffer);
end;

var
 OldGrpName, GrpName, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 FA, F : TFileStream;
 BaseVersion, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 UserBall, MaxBall, Ball : real;
 index, QCount, i, kk : integer;
 AllQ, RightQ, Keyboard, Equals, Variant, Sequent : integer;
 Old1,Old2, Old3, Old4, Old5, Old6 : integer;
 ListItem : TListItem;
 M : TMemoryStream;
 DirSel, TitleName : string;
 lpItemID : PItemIDList;
 BrowseInfo : TBrowseInfo;
 DisplayName : array[0..MAX_PATH] of char;
 TempPath : array[0..MAX_PATH] of char;
 ErrOutOfDiskSize : boolean;
 bb : byte;
begin
  ErrOutOfDiskSize := false;
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  BrowseInfo.hwndOwner := ExtResultForm.Handle;
  BrowseInfo.pszDisplayName := @DisplayName;
  TitleName := 'Выберете директорию для экспорта базы данных:';
  BrowseInfo.lpszTitle := PChar(TitleName);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
  SHGetPathFromIDList(lpItemID, TempPath);
  GlobalFreePtr(lpItemID);
  try
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
  FA := TFileStream.Create(TempPath+'\Prtest.dt3',fmCreate);
  F.Read(len,4);
  BaseVersion := len;
  FA.Write(len,4);
  Index := 0;
  while F.Position < F.Size do
   begin
    M := TMemoryStream.Create;
    Inc(index);
    // 5.0
    F.Read(len,4);
    M.Write(len,4);
    // Начнем сканирование БД
    F.Read(len,4);
    M.Write(len,4);
    // ФИО
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    FreeMem(buffer2);
    // Название теста
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    FreeMem(buffer2);
    // Подразделения
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    FreeMem(buffer2);
    // Должности
    F.Read(len,4);
    M.Write(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    M.Write(buffer2^,len);
    FreeMem(buffer2);

    F.Read(DT,8);
    M.Write(DT,8);
    F.Read(DT,8);
    M.Write(DT,8);

    F.Read(Ball,8);
    M.Write(Ball,8);
    F.Read(MaxBall,8);
    M.Write(MaxBall,8);
    F.Read(len,4);
    M.Write(len,4);
    F.Read(QCount,4);
    M.Write(QCount,4);
    F.Read(len,4);
    M.Write(len,4);
    for i:=0 to (QCount-1) do
     begin
       {номер вопроса}
        F.Read(len,4);
        M.Write(len,4);
       {реальный id вопроса в базе}
        F.Read(len,4);
        M.Write(len,4);
        {балл полученный за вопрос}
        F.Read(UserBall,8);
        M.Write(UserBall,8);
        F.Read(UserBall,8);
        M.Write(UserBall,8);

        F.Read(len,4);
        M.Write(len,4);

        F.Read(len,4);
        M.Write(len,4);

        F.Read(len,4);
        M.Write(len,4);
        F.Read(len,4);
        M.Write(len,4);
        GetMem(buffer,len);
        F.Read(buffer^,len);
        M.Write(buffer^,len);
        FreeMem(buffer);
     end;

     // Для версии 4.0 Начало
     F.Read(bb,1);
     M.Write(bb,1);
     F.Read(bb,1);
     M.Write(bb,1);
     F.Read(bb,1);
     M.Write(bb,1);
     F.Read(len,4);
     M.Write(len,4);
     if len>0 then
        begin
         buffer := AllocMem(len);
         F.Read(buffer^,len);
         M.Write(buffer^,len);
         FreeMem(buffer);
        end;
     F.Read(len,4);
     M.Write(len,4);
     if len>0 then
        begin
         buffer := AllocMem(len);
         F.Read(buffer^,len);
         M.Write(buffer^,len);
         FreeMem(buffer);
        end;
     // Для версии 4.0 конец

     for i:=0 to lv.Items.Count-1 do
     begin
      PTI := lv.Items[i].Data;
      if PTI^.Index = Index then
      begin
       M.Position := 0;
       WriteStreamToExportFile(FA,M,ErrOutOfDiskSize);
       break;
      end;
     end;
     M.Free;
   end;
  F.Free;
  FA.Free;
  // Временный код +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  // Экспортируем все базы ссылок
       FA := TFileStream.Create(TempPath+'\comments.dat',fmCreate);
       GetMem(buffer,mf.CommentStream.Size);
       mf.CommentStream.Position := 0;
       mf.CommentStream.Read(buffer^,mf.CommentStream.Size);
       if FA.Write(buffer^,mf.CommentStream.Size)<>mf.CommentStream.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       FA.Free;
       FA := TFileStream.Create(TempPath+'\questions.dat',fmCreate);
       GetMem(buffer,mf.QuestionStream.Size);
       mf.QuestionStream.Position := 0;
       mf.QuestionStream.Read(buffer^,mf.QuestionStream.Size);
       if FA.Write(buffer^,mf.QuestionStream.Size)<>mf.QuestionStream.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       FA.Free;
       FA := TFileStream.Create(TempPath+'\groups.dat',fmCreate);
       GetMem(buffer,mf.GroupStream.Size);
       mf.GroupStream.Position := 0;
       mf.GroupStream.Read(buffer^,mf.GroupStream.Size);
       if FA.Write(buffer^,mf.GroupStream.Size)<>mf.GroupStream.Size then
         ErrOutOfDiskSize := True;
       FreeMem(buffer);
       FA.Free;
  // Временный код -------------------------------------------------------------
  if ErrOutOfDiskSize then
    ShowMessage('Недостаточно места на диске. Выберете другой диск и повторите экспорт.')
  else
    ShowMessage('Экспорт выбранных записей завершен.')
 except
  ShowMessage('Невозможно открыть файл базы данных.');
  Exit;
 end;
 end;
end;

procedure TExtResultForm.N13Click(Sender: TObject);
var
 s, OldGrpName, GrpName, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 F : TFileStream;
 BaseVersion, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist : boolean;
 DT : TDateTime;
 UserBall, MaxBall, Ball : real;
 JJ, deletedindex, index, QCount, i, kk : integer;
 AllQ, RightQ, Keyboard, Equals, Variant, Sequent : integer;
 RecordSize, Old1,Old2, Old3, Old4, Old5, Old6 : integer;
 ListItem : TListItem;
 M : TMemoryStream;
 bb : byte;
 Founded : boolean;
 PL : TList;
begin
if lv.SelCount <> 0 then
 begin
  if lv.SelCount = 1 then
   s := 'Удалить выбранную запись?'
  else
   s := 'Удалить выбранные записи?';
  if MessageBox(Application.Handle, PChar(s), PCHAR('Тестирование'), MB_YesNo)=IDYES then
  begin
  try
  Screen.Cursor := crHourGlass;
  if LoadingForm=nil then
   LoadingForm := TLoadingForm.Create(Application);
  LoadingForm.Caption := 'Сжатие базы данных...';
  LoadingForm.Panel1.Caption := '';
  LoadingForm.Show;
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
  M := TMemoryStream.Create;
  F.Read(len,4);
  M.Write(len,4);
  BaseVersion := len;
  Index := 0;
  PL := TList.Create;
  for JJ :=0 to lv.Items.Count-1 do
  begin
   PTI := lv.items[JJ].Data;
   if lv.items[JJ].Selected then
    PL.Add(PTI);
  end;
  while F.Position < F.Size do
   begin
    Inc(Index);
    F.Read(RecordSize,4);
    Founded := false;
    LoadingForm.PB.Position := Trunc((F.Position/F.Size)*100);
    for JJ :=0 to PL.Count-1 do
    begin
     PTI := PTestIndex(PL.Items[JJ]);
     DeletedIndex := PTI^.Index;
     if DeletedIndex=Index then
     begin
      Founded := true;
      break;
     end;
    end;
    Application.ProcessMessages;
    if not Founded then
    begin
     // Начнем сканирование БД
     M.Write(RecordSize,4);
     buffer := AllocMem(RecordSize);
     F.Read(buffer^,RecordSize);
     M.Write(buffer^,RecordSize);
     FreeMem(buffer);
    end
    else
     // Просто прогоним эту запись
     F.Seek(RecordSize,soFromCurrent);
   end;
  PL.Free;
  F.Free;
  M.Position := 0;
  if M.Size>4 then
  begin
   F := TFileStream.Create(DirText+'Prtest.dt3',fmCreate);
   GetMem(buffer,M.Size);
   M.Read(buffer^,M.Size);
   F.Write(buffer^,M.Size);
   FreeMem(buffer);
   F.Free;
  end
  else
  begin
   F := TFileStream.Create(DirText+'Prtest.dt3',fmCreate);
   len := DB_Version;
   F.Write(len,4);
   F.Free;
   mf.CommentStream.Free;
   mf.CommentStream := TFileStream.Create(DirText+'comments.dat',fmCreate);
   mf.QuestionStream.Free;
   mf.QuestionStream := TFileStream.Create(DirText+'questions.dat',fmCreate);
   mf.GroupStream.Free;
   mf.GroupStream := TFileStream.Create(DirText+'groups.dat',fmCreate);
  end;
  M.Free;
  LoadingForm.Close;
  Screen.Cursor := crDefault;
 except
  LoadingForm.Close;
  Screen.Cursor := crDefault;
  ShowMessage('Невозможно открыть файл базы данных.');
  Exit;
 end;
 NameStrings.Free;
 FioStrings.Free;
 WorkStrings.Free;
 SubStrings.Free;
 ScanDB;
 BitBtn1Click(Sender);
 end;
 end;
end;

procedure TExtResultForm.N18Click(Sender: TObject);
begin
 lvDblClick(Sender);
end;

procedure TExtResultForm.ToolbarButton971Click(Sender: TObject);
begin
// Application.HelpFile := ExtractFilePath(paramstr(0))+'qeditor.hlp';
// Application.HelpJump('results');
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/19ss3.htm'), HH_DISPLAY_TOC, 0);
end;

procedure TExtResultForm.N20Click(Sender: TObject);
var
 F : TFileStream;
 len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 Index, QCount, i : integer;
 AllSize : longint;
 DatEnd, DatBegin : string;
 bb : byte;
begin
 try
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenRead);
  F.Read(len,4);
  Index := 0;
  DatBegin := DateToStr(Date);
  DatEnd := DateToStr(0);
  while F.Position < F.Size do
   begin
    Application.ProcessMessages;
    // Начнем сканирование БД
    F.Read(len,4);
    // Комментарий (линк)
    F.Read(len,4);

    // ФИО
    F.Read(len,4);
    F.Seek(len,soFromCurrent);

    // Название теста
    F.Read(len,4);
    F.Seek(len,soFromCurrent);

    // Подразделения
    F.Read(len,4);
    F.Seek(len,soFromCurrent);

    // Должности
    F.Read(len,4);
    F.Seek(len,soFromCurrent);

    F.Read(DT,8);
    if DT<StrToDate(DatBegin) then
     DatBegin := DateToStr(DT);
    if DT>StrToDate(DatEnd) then
     DatEnd := DateToStr(DT);
    F.Read(DT,8);

    F.Seek(20,soFromCurrent);

    F.Read(QCount,4);
    F.Read(len,4);

    for i:=0 to (QCount-1) do
     begin
        F.Seek(36,soFromCurrent);
        F.Read(len,4);
        F.Seek(len,soFromCurrent);
     end;
     // Для версии 4.0 Начало
     F.Read(bb,1);
     F.Read(bb,1);
     F.Read(bb,1);
     F.Read(len,4);
     if len>0 then
      F.Seek(len,soFromCurrent);
     F.Read(len,4);
     if len>0 then
      F.Seek(len,soFromCurrent);
     // Для версии 4.0 конец
    Inc(Index);
   end;
  AllSize := F.Size;
  F.Free;
  InfoData.Label9.Caption := IntToStr(Index);
  InfoData.Label10.Caption := DatBegin;
  InfoData.Label11.Caption := DatEnd;
  InfoData.Label12.Caption := IntToStr(AllSize div 1024)+' кб.';
  InfoData.Label13.Caption := IntToStr(mf.CommentStream.Size div 1024)+' кб.';
  InfoData.Label14.Caption := IntToStr(mf.QuestionStream.Size div 1024)+' кб.';
  InfoData.Label15.Caption := IntToStr(mf.GroupStream.Size div 1024)+' кб.';
  InfoData.Label16.Caption := IntToStr((AllSize+mf.GroupStream.Size+mf.QuestionStream.Size+mf.CommentStream.Size) div 1024)+' кб.';
  InfoData.ShowModal;
 except
  ShowMessage('Невозможно открыть базу данных.');
 end;
end;

procedure TExtResultForm.N22Click(Sender: TObject);
var
  NewDoc, WordTable, MSWord: OleVariant;
  i : integer;

Function ConvertString(S:string):string;
Begin
  Result := StringReplace(S, '-', #173,[]);
end;

begin
  try
    MsWord := GetActiveOleObject('Word.Application');
  except
    try
      MsWord := CreateOleObject('Word.Application');
      MsWord.Visible := True;
    except
      Exception.Create('Невозможно запустить приложение');
      Exit;
    end;
  end;
  Application.ProcessMessages;
  NewDoc := MSWord.Documents.Add;
  NewDoc.PageSetup.Orientation := 1;
  MSWord.Selection.Font.Bold := true;
  MSWord.Selection.TypeText(#13+#10+'Итоговая ведомость проведения тестирования');
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.TypeText(#13+#10+'Период c '+ DatetoStr(DateBegin.Date) + ' по '+ DatetoStr(DateEnd.Date));
  MSWord.Selection.Font.Bold := true;
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.Font.Color := $FF0000;
//  for i:=0 to Panel4.Lines.Count-1 do
   MSWord.Selection.TypeText(#13+#10+Panel4.Caption);
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.Font.Bold := False;
  MSWord.Selection.Font.Color := $000000;
  WordTable := NewDoc.Tables.Add(MSWord.Selection.Range, lv.Items.Count+1, 11);
  WordTable.Cell(1, 1).Range.Font.Bold := True;
  WordTable.Cell(1, 1).Range.Text := 'N п.п';
  WordTable.Cell(1, 2).Range.Font.Bold := True;
  WordTable.Cell(1, 2).Range.Text := Label3.Caption;
  WordTable.Cell(1, 3).Range.Font.Bold := True;
  WordTable.Cell(1, 3).Range.Text := Label4.Caption;
  WordTable.Cell(1, 4).Range.Font.Bold := True;
  WordTable.Cell(1, 4).Range.Text := Label6.Caption;
  WordTable.Cell(1, 5).Range.Font.Bold := True;
  WordTable.Cell(1, 5).Range.Text := 'Тест';
  WordTable.Cell(1, 6).Range.Font.Bold := True;
  WordTable.Cell(1, 6).Range.Text := 'Дата';
  WordTable.Cell(1, 7).Range.Font.Bold := True;
  WordTable.Cell(1, 7).Range.Text := 'Всего вопросов';
  WordTable.Cell(1, 8).Range.Font.Bold := True;
  WordTable.Cell(1, 8).Range.Text := 'Правильных ответов';
  WordTable.Cell(1, 9).Range.Font.Bold := True;
  WordTable.Cell(1, 9).Range.Text := 'Всего баллов';
  WordTable.Cell(1, 10).Range.Font.Bold := True;
  WordTable.Cell(1, 10).Range.Text := 'Количество баллов';
  WordTable.Cell(1, 11).Range.Font.Bold := True;
  WordTable.Cell(1, 11).Range.Text := 'Оценка ('+IntToStr(Divider)+')';
  for i:=0 to lv.Items.Count-1 do
  begin
   Application.ProcessMessages;
   WordTable.Cell(i+2, 1).Range.Font.Bold := False;
   WordTable.Cell(i+2, 1).Range.Text := IntToStr(i+1);
   WordTable.Cell(i+2, 2).Range.Text := lv.Items.Item[i].Subitems[0];
   WordTable.Cell(i+2, 3).Range.Text := lv.Items.Item[i].Subitems[1];
   WordTable.Cell(i+2, 4).Range.Text := lv.Items.Item[i].Subitems[2];
   WordTable.Cell(i+2, 5).Range.Text := lv.Items.Item[i].Subitems[3];
   WordTable.Cell(i+2, 6).Range.Text := lv.Items.Item[i].Subitems[4];
   WordTable.Cell(i+2, 7).Range.Text := lv.Items.Item[i].Subitems[5];
   WordTable.Cell(i+2, 8).Range.Text := lv.Items.Item[i].Subitems[6];
   WordTable.Cell(i+2, 9).Range.Text := lv.Items.Item[i].Subitems[7];
   WordTable.Cell(i+2, 10).Range.Text := lv.Items.Item[i].Subitems[8];
   WordTable.Cell(i+2, 11).Range.Text := lv.Items.Item[i].Subitems[9];
  end;
end;

procedure TExtResultForm.ToolbarButton974Click(Sender: TObject);
begin
 lvDblClick(Sender);
end;

procedure TExtResultForm.N26Click(Sender: TObject);
begin
 N13Click(Sender);
end;

procedure TExtResultForm.N29Click(Sender: TObject);
begin
 N29.Checked := not N29.Checked;
 Panel4.Caption := '';
 if N29.Checked then Panel4.Caption := Panel4.Caption + ' Средний балл('+IntToStr(Divider)+'): ';
 if N30.Checked then Panel4.Caption := Panel4.Caption + ' Количество набранных баллов: ';
 if N31.Checked then Panel4.Caption := Panel4.Caption + ' Количество правильных ответов: ';
 BitBtn1Click(Sender);
end;

procedure TExtResultForm.N30Click(Sender: TObject);
begin
 N30.Checked := not N30.Checked;
 Panel4.Caption := '';
 if N29.Checked then Panel4.Caption := Panel4.Caption + ' Средний балл('+IntToStr(Divider)+'): ';
 if N30.Checked then Panel4.Caption := Panel4.Caption + ' Количество набранных баллов: ';
 if N31.Checked then Panel4.Caption := Panel4.Caption + ' Количество правильных ответов: ';
 BitBtn1Click(Sender);
end;

procedure TExtResultForm.N31Click(Sender: TObject);
begin
 N31.Checked := not N31.Checked;
 Panel4.Caption := '';
 if N29.Checked then Panel4.Caption := Panel4.Caption + ' Средний балл('+IntToStr(Divider)+'): ';
 if N30.Checked then Panel4.Caption := Panel4.Caption + ' Количество набранных баллов: ';
 if N31.Checked then Panel4.Caption := Panel4.Caption + ' Количество правильных ответов: ';
 BitBtn1Click(Sender);
end;

procedure TExtResultForm.N33Click(Sender: TObject);
begin
 N33.Checked := True;
 N34.Checked := False;
 N35.Checked := False;
 Divider := 5;
 Lv.Columns[10].Caption := 'Оценка(5)';
 BitBtn1Click(Sender);
end;

procedure TExtResultForm.N34Click(Sender: TObject);
begin
 N33.Checked := False;
 N34.Checked := True;
 N35.Checked := False;
 Divider := 10;
 Lv.Columns[10].Caption := 'Оценка(10)';
 BitBtn1Click(Sender);
end;

procedure TExtResultForm.N35Click(Sender: TObject);
begin
 N33.Checked := False;
 N34.Checked := False;
 N35.Checked := True;
 Divider := 20;
 Lv.Columns[10].Caption := 'Оценка(20)';
 BitBtn1Click(Sender);
end;

procedure TExtResultForm.N37Click(Sender: TObject);
var
 i : integer;
begin
 Memo1.Clear;
 Memo1.Lines.Add(lv.Columns[0].Caption+chr(9)+
 lv.Columns[1].Caption+chr(9)+
 lv.Columns[2].Caption+chr(9)+
 lv.Columns[3].Caption+chr(9)+
 lv.Columns[4].Caption+chr(9)+
 lv.Columns[5].Caption+chr(9)+
 lv.Columns[6].Caption+chr(9)+
 lv.Columns[7].Caption+chr(9)+
 lv.Columns[8].Caption+chr(9)+
 lv.Columns[9].Caption+chr(9)+
 lv.Columns[10].Caption);
 for i:=0 to lv.Items.Count-1 do
  if lv.Items[i].Selected then
     Memo1.Lines.Add(lv.Items[i].Caption+chr(9)+
     lv.Items[i].Subitems[0]+chr(9)+lv.Items[i].Subitems[1]+chr(9)+
     lv.Items[i].Subitems[2]+chr(9)+lv.Items[i].Subitems[3]+chr(9)+
     lv.Items[i].Subitems[4]+chr(9)+lv.Items[i].Subitems[5]+chr(9)+
     lv.Items[i].Subitems[6]+chr(9)+lv.Items[i].Subitems[7]+chr(9)+
     lv.Items[i].Subitems[8]+chr(9)+lv.Items[i].Subitems[9]);
 Memo1.SelectAll;
 Memo1.CopyToClipboard;
end;

procedure TExtResultForm.N24Click(Sender: TObject);
var
 NewDoc, WordTable, MSWord: OleVariant;
 lnk, ResCount, ii, GrpCount, kk, i : integer;
 OldGrpName, GrpName, tdata, qall , qball, ocenka : string;
 F : TFileStream;
 AllQ,RightQ,len2, JJ, GrpNameIndex, BaseVersion, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 UserScore,UserOcenka,UserAllScore,UserBall, MaxBall, Ball : real;
 index, QCount : integer;
 M,Mout,MM : TMemoryStream;
 b : byte;
 GrpNames : TStringList;
 ResIndexes : TStringList;
 AllGrpNames : TStringList;
 AllResIndexes : TStringList;
 AllQStr : TStringList;
 RightQStr : TStringList;
 UserOcenkaStr, UserResultStr : TStringList;
 UserAllScoreStr : TStringList;
 SuperAllQStr : TStringList;
 SuperRightQStr : TStringList;
 SuperUserOcenkaStr : TStringList;
 SuperUserAllScoreStr, SuperUserResultStr : TStringList;
 ContinueRead : boolean;
 resocenka : byte;
 restest : byte;
 resgrp : byte;

function ConvertString(S:string):string;
Begin
  Result := StringReplace(S, '-', #173,[]);
end;

begin
 try
  Screen.Cursor := crHourGlass;
  F := TFileStream.Create(DirText+'Prtest.dt3',fmOpenReadWrite);
  F.Read(len,4);
  BaseVersion := len;
  Index := 0;
  GrpCount := 0;
  GrpNames := TStringList.Create;
  ResIndexes := TStringList.Create;
  AllGrpNames := TStringList.Create;
  AllResIndexes := TStringList.Create;
  AllQStr := TStringList.Create;
  RightQStr := TStringList.Create;
  UserOcenkaStr := TStringList.Create;
  UserAllScoreStr := TStringList.Create;
  UserResultStr := TStringList.Create;
  SuperAllQStr := TStringList.Create;
  SuperRightQStr := TStringList.Create;
  SuperUserOcenkaStr := TStringList.Create;
  SuperUserAllScoreStr := TStringList.Create;
  SuperUserResultStr := TStringList.Create;
  while F.Position < F.Size do
   begin
    F.Read(len,4);
    Inc(index);
    for JJ:=0 to lv.Items.Count-1 do
     begin
      PTI := lv.Items[JJ].Data;
      ContinueRead := PTI^.Index = Index;
      if ContinueRead then break;
     end;
    if not ContinueRead then
     F.Seek(len,soFromCurrent)
    else
    begin
    F.Read(len,4);
    // ФИО
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);
    // Название теста
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);
    // Подразделения
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);
    // Должности
    F.Read(len,4);
    buffer2 := AllocMem(len+1);
    F.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    FreeMem(buffer2);

    F.Read(DT,8);
    F.Read(DT,8);

    F.Read(Ball,8);
    F.Read(MaxBall,8);
    F.Read(len,4);
    F.Read(QCount,4);
    F.Read(len,4);
    KK := 0;
    GrpNameIndex := -1;
    GrpNames.Clear;
    ResIndexes.Clear;
    AllQ:=0;
    RightQ:=0;
    UserOcenka := 0;
    UserAllScore := 0;
    AllQStr.Clear;
    RightQStr.Clear;
    UserOcenkaStr.Clear;
    UserAllScoreStr.Clear;
    UserResultStr.Clear;
    for i:=0 to (QCount-1) do
     begin
       {номер вопроса}
        F.Read(len,4);
       {реальный id вопроса в базе}
        F.Read(len,4);
        {балл полученный за вопрос}
        F.Read(UserBall,8);
        F.Read(UserScore,8);

        F.Read(len,4);

        F.Read(len2,4);
        mf.GroupStream.Position := 0;
        ii := 0;
        while mf.GroupStream.Position<mf.GroupStream.Size do
         begin
          inc(ii);
          if ii=len2 then break;
          mf.GroupStream.Read(len,4);
          GetMem(buffer,len);
          mf.GroupStream.Read(buffer^,len);
          FreeMem(buffer);
         end;
        if ii=len2 then
         begin
          mf.GroupStream.Read(len,4);
          buffer2 := AllocMem(len+1);
          mf.GroupStream.Read(buffer2^,len);
          buffer2[len]:=Chr(0);
          OldGrpName := GrpName;
          GrpName := StrPas(buffer2);
          FreeMem(buffer2);
         end
        else
         begin
          OldGrpName := GrpName;
          GrpName := 'Группа не найдена';
         end;

        if len2<>GrpNameIndex then
        begin
         Inc(KK);
         if KK>1 then
         begin
           AllQStr.Add(IntToStr(AllQ));
           RightQStr.Add(IntToStr(RightQ));
           UserAllScoreStr.Add(FormatFloat('0.00',UserAllScore));
           UserOcenkaStr.Add(FormatFloat('0.00',UserOcenka));
           UserResultStr.Add(FormatFloat('0.00',UserOcenka*Divider/UserAllScore));
         end;
         AllQ:=0;
         RightQ:=0;
         UserOcenka := 0;
         UserAllScore := 0;
         GrpNames.Add(GrpName);
         ResIndexes.Add(IntToStr(Index));
        end;
        GrpNameIndex := len2;
        UserOcenka := UserOcenka + UserBall;
        UserAllScore := UserAllScore + UserScore;
        Inc(AllQ);
        if UserBall>0 then begin
         Inc(RightQ);
        end;

        F.Read(len,4);
        F.Read(len,4);
        GetMem(buffer,len);
        F.Read(buffer^,len);
        FreeMem(buffer);
     end;
      // Для версии 4.0 Начало
      AllQStr.Add(IntToStr(AllQ));
      RightQStr.Add(IntToStr(RightQ));
      UserAllScoreStr.Add(FormatFloat('0.00',UserAllScore));
      UserOcenkaStr.Add(FormatFloat('0.00',UserOcenka));
      UserResultStr.Add(FormatFloat('0.00',UserOcenka*Divider/UserAllScore));

      F.Read(resocenka,1);
      F.Read(restest,1);
      F.Read(resgrp,1);
      if (restest=1) and (resocenka=0) then
       for KK := 0 to UserOcenkaStr.Count-1 do
        UserResultStr[kk] := '';
      F.Read(len,4);
      if len>0 then
       F.Seek(len,soFromCurrent);
      F.Read(len,4);
      if len>0 then
        begin
          F.Read(ResCount,4);
          for jj:=0 to ResCount-1 do
           begin
            F.Read(lnk,4);
            buffer2 := AllocMem(lnk+1);
            F.Read(buffer2^,lnk);
            buffer2[lnk]:=Chr(0);
            GrpName := StrPas(buffer2);
            FreeMem(buffer2);

            F.Read(lnk,4);
            buffer := AllocMem(lnk);
            F.Read(buffer^,lnk);
            MM := TMemoryStream.Create;
            MM.Write(buffer^,lnk);
            MM.Position := 0;
            Mout := TMemoryStream.Create;
            bzip21.DecompressStream(MM,Mout);
            Mout.Position := 0;
            for KK:=0 to GrpNames.Count -1 do
             if GrpName = GrpNames[KK] then
             begin
              PersonalForm.RO.Lines.Clear;
              PersonalForm.RO.Lines.LoadFromStream(Mout);
              if (resgrp=1) and (resocenka=0) then UserResultStr[KK] := PersonalForm.RO.Lines.Text
              else
              if (resgrp=1) and (resocenka=1) then UserResultStr[KK] := UserResultStr[KK] + ' ' + PersonalForm.RO.Lines.Text;
             end;
            FreeMem(buffer);
            Mout.Free;
            MM.Free;
           end;
        end;
      // Для версии 4.0 конец
      for JJ:=0 to lv.Items.Count-1 do
      begin
       PTI := lv.Items[JJ].Data;
       if PTI^.Index = Index then
        begin
         GrpCount := GrpCount + KK;
         AllResIndexes.AddStrings(ResIndexes);
         AllGrpNames.AddStrings(GrpNames);
         SuperAllQStr.AddStrings(AllQStr);
         SuperRightQStr.AddStrings(RightQStr);
         SuperUserAllScoreStr.AddStrings(UserAllScoreStr);
         SuperUserOcenkaStr.AddStrings(UserOcenkaStr);
         SuperUserResultStr.AddStrings(UserResultStr);
         Break;
        end;
      end;
     end;
   end;
  F.Free;
 except
  Screen.Cursor := crDefault;
  ShowMessage('Невозможно открыть файл базы данных.');
  Exit;
 end;

 try
    MsWord := GetActiveOleObject('Word.Application');
  except
    try
      MsWord := CreateOleObject('Word.Application');
      MsWord.Visible := True;
    except
      Screen.Cursor := crDefault;
      Exception.Create('Невозможно запустить приложение');
      Exit;
    end;
 end;
 try
  Application.ProcessMessages;
  NewDoc := MSWord.Documents.Add;
  NewDoc.PageSetup.Orientation := 1;
  MSWord.Selection.Font.Bold := true;
  MSWord.Selection.TypeText(#13+#10+'Итоговая ведомость проведения тестирования (расширенная форма)');
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.TypeText(#13+#10+'Период c ' + DatetoStr(DateBegin.Date) + ' по '+ DatetoStr(DateEnd.Date));
  MSWord.Selection.Font.Bold := true;
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.Font.Color := $FF0000;
//  for i:=0 to Panel4.Lines.Count-1 do
   MSWord.Selection.TypeText(#13+#10+Panel4.Caption);
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.TypeText(#13+#10);
  MSWord.Selection.Font.Bold := False;
  MSWord.Selection.Font.Color := $000000;
  WordTable := NewDoc.Tables.Add(MSWord.Selection.Range, lv.Items.Count+1+GrpCount, 11);
  WordTable.Cell(1, 1).Range.Font.Bold := True;
  WordTable.Cell(1, 1).Range.Text := 'N п.п';
  WordTable.Cell(1, 2).Range.Font.Bold := True;
  WordTable.Cell(1, 2).Range.Text := Label3.Caption;
  WordTable.Cell(1, 3).Range.Font.Bold := True;
  WordTable.Cell(1, 3).Range.Text := Label4.Caption;
  WordTable.Cell(1, 4).Range.Font.Bold := True;
  WordTable.Cell(1, 4).Range.Text := Label6.Caption;
  WordTable.Cell(1, 5).Range.Font.Bold := True;
  WordTable.Cell(1, 5).Range.Text := 'Тест';
  WordTable.Cell(1, 6).Range.Font.Bold := True;
  WordTable.Cell(1, 6).Range.Text := 'Дата';
  WordTable.Cell(1, 7).Range.Font.Bold := True;
  WordTable.Cell(1, 7).Range.Text := 'Всего вопросов';
  WordTable.Cell(1, 8).Range.Font.Bold := True;
  WordTable.Cell(1, 8).Range.Text := 'Правильных ответов';
  WordTable.Cell(1, 9).Range.Font.Bold := True;
  WordTable.Cell(1, 9).Range.Text := 'Всего баллов';
  WordTable.Cell(1, 10).Range.Font.Bold := True;
  WordTable.Cell(1, 10).Range.Text := 'Количество баллов';
  WordTable.Cell(1, 11).Range.Font.Bold := True;
  WordTable.Cell(1, 11).Range.Text := 'Оценка ('+IntToStr(Divider)+')';
  kk := 2;
  for i:=0 to lv.Items.Count-1 do
  begin
   Application.ProcessMessages;
   WordTable.Cell(kk, 1).Range.Font.Size := 12;
   WordTable.Cell(kk, 1).Range.Font.Bold := False;
   WordTable.Cell(kk, 1).Range.Text := IntToStr(i+1);
   WordTable.Cell(kk, 2).Range.Text := lv.Items.Item[i].Subitems[0];
   WordTable.Cell(kk, 3).Range.Text := lv.Items.Item[i].Subitems[1];
   WordTable.Cell(kk, 4).Range.Text := lv.Items.Item[i].Subitems[2];
   WordTable.Cell(kk, 5).Range.Text := lv.Items.Item[i].Subitems[3];
   WordTable.Cell(kk, 6).Range.Text := lv.Items.Item[i].Subitems[4];
   WordTable.Cell(kk, 7).Range.Text := lv.Items.Item[i].Subitems[5];
   WordTable.Cell(kk, 8).Range.Text := lv.Items.Item[i].Subitems[6];
   WordTable.Cell(kk, 9).Range.Text := lv.Items.Item[i].Subitems[7];
   WordTable.Cell(kk, 10).Range.Text := lv.Items.Item[i].Subitems[8];
   WordTable.Cell(kk, 11).Range.Text := lv.Items.Item[i].Subitems[9];
   Inc(kk);
   PTI := lv.Items[i].Data;
   for JJ:=0 to AllResIndexes.Count - 1 do
    if PTI^.Index = StrToInt(AllResIndexes[jj]) then
    begin
      WordTable.Cell(kk, 5).Range.Font.Size := 8;
      WordTable.Cell(kk, 5).Range.Text := AllGrpNames[jj];
      WordTable.Cell(kk, 7).Range.Font.Size := 8;
      WordTable.Cell(kk, 7).Range.Text := SuperAllQStr[jj];
      WordTable.Cell(kk, 8).Range.Font.Size := 8;
      WordTable.Cell(kk, 8).Range.Text := SuperRightQStr[jj];
      WordTable.Cell(kk, 9).Range.Font.Size := 8;
      WordTable.Cell(kk, 9).Range.Text := SuperUserAllScoreStr[jj];
      WordTable.Cell(kk, 10).Range.Font.Size := 8;
      WordTable.Cell(kk, 10).Range.Text := SuperUserOcenkaStr[jj];
      WordTable.Cell(kk, 11).Range.Font.Size := 8;
      WordTable.Cell(kk, 11).Range.Text := SuperUserResultStr[jj];
      Inc(kk);
    end;
  end;
  except
   Screen.Cursor := crDefault;
  end;
  GrpNames.Free;
  ResIndexes.Free;
  AllGrpNames.Free;
  AllResIndexes.Free;
  AllQStr.Free;
  RightQStr.Free;
  UserOcenkaStr.Free;
  UserResultStr.Free;
  UserAllScoreStr.Free;
  SuperAllQStr.Free;
  SuperRightQStr.Free;
  SuperUserOcenkaStr.Free;
  SuperUserAllScoreStr.Free;
  SuperUserResultStr.Free;
  Screen.Cursor := crDefault;
end;

procedure TExtResultForm.lvKeyPress(Sender: TObject; var Key: Char);
begin
if Key<>#13 then
begin
 SearchForm.Edit1.Text := SearchForm.Edit1.Text + Key;
 SearchForm.Show;
end
else
 lvDblClick(Sender);
end;

procedure TExtResultForm.N1Click(Sender: TObject);
begin
 if BaseParamForm.ShowModal= mrOk then
 begin
  Close;
  mf.Close;
 end;
end;

procedure TExtResultForm.lvCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
{  if Item.Index mod 2=0 then TListView(Sender).Canvas.Brush.Color:=clBtnFace
  else TListView(Sender).Canvas.Brush.Color:=clWindow;}
end;

end.
