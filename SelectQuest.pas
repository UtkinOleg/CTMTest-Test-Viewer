unit SelectQuest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, CheckLst, ExtCtrls, ComCtrls, ImgList, HTTPGet, Registry,
  Buttons, Errors, RXCtrls, TB97Ctls, Placemnt, RxGrdCpt, ComProc, StrUtils,
  Menus;

type
  TBeginTest = class(TForm)
    Next: TButton;
    Cancel: TButton;
    Back: TButton;
    PageControl1: TPageControl;
    Group: TTabSheet;
    Student: TTabSheet;
    Test: TTabSheet;
    Confirmation: TTabSheet;
    GroupBox: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ImageList1: TImageList;
    TreeView: TTreeView;
    TreeList: TImageList;
    Panel1: TPanel;
    LabelGrp: TLabel;
    LabelFIO: TLabel;
    LabelTest: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    httpstud: THTTPGet;
    https2: THTTPGet;
    TestBtn: TBitBtn;
    AccessTimer: TTimer;
    spb: TProgressBar;
    Label7: TLabel;
    Label12: TLabel;
    Button2: TButton;
    RxGradientCaption1: TRxGradientCaption;
    Spec: TTabSheet;
    SpecBox: TComboBox;
    Label3: TLabel;
    Label14: TLabel;
    GetGroup: THTTPGet;
    LabelSpec: TLabel;
    Label15: TLabel;
    GetFolders: THTTPGet;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Panel5: TPanel;
    PopupMenuTree: TPopupMenu;
    N1: TMenuItem;
    GetProp: THTTPGet;
    Label9: TLabel;
    ReqMenu: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    Label10: TLabel;
    FacsBox: TComboBox;
    GetSpec: THTTPGet;
    ToolbarButton971: TToolbarButton97;
    GetPrepod: THTTPGet;
    LV: TListView;
    Bevel5: TBevel;
    ToolbarButton972: TToolbarButton97;
    procedure NextClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure BackClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GroupBoxChange(Sender: TObject);
    procedure TreeViewChange(Sender: TObject; Node: TTreeNode);
    procedure httpstudDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure httpstudError(Sender: TObject);
    procedure https2DoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure TestBtnClick(Sender: TObject);
    procedure AccessTimerTimer(Sender: TObject);
    procedure https2Progress(Sender: TObject; TotalSize, Readed: Integer);
    procedure https2Error(Sender: TObject);
    procedure httpstudProgress(Sender: TObject; TotalSize,
      Readed: Integer);
    procedure GetGroupDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure SpecBoxChange(Sender: TObject);
    procedure GetGroupProgress(Sender: TObject; TotalSize,
      Readed: Integer);
    procedure GetGroupError(Sender: TObject);
    procedure GetFoldersDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure GetFoldersError(Sender: TObject);
    procedure GetFoldersProgress(Sender: TObject; TotalSize,
      Readed: Integer);
    procedure GetPropError(Sender: TObject);
    procedure GetPropProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure GetPropDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FacsBoxChange(Sender: TObject);
    procedure GetSpecError(Sender: TObject);
    procedure GetSpecProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure GetSpecDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure GetPrepodDoneFile(Sender: TObject; FileName: String;
      FileSize: Integer);
    procedure GetPrepodError(Sender: TObject);
    procedure GetPrepodProgress(Sender: TObject; TotalSize,
      Readed: Integer);
    procedure Button2Click(Sender: TObject);
    procedure TreeViewDblClick(Sender: TObject);
    procedure LVDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    StudID : integer; // id студента
    idt : longint; // id выбранной дисциплины
    tester_id, idg : longint; // id тестера, id группы студентов
    Fam, Nam, Otch : string; // фамилия имя отчество студента
    PrepodLogin, PrepodFam, PrepodNam, PrepodOtch, PrepodPwd : string; // фамилия имя отчество преподавателя и пароль
    access : Boolean;
  end;

type
  Leaf = Record
   id : Longint;
//   obj_id : Longint;
//   typ : Longint;
//   parent : Longint;
   name : PChar;
   InTree : boolean;
  End;
  Group = Record
   id : longint;
   grp : PChar;
   inlist : boolean;
  End;
  Student = Record
   id : longint;
   fam : PChar;
   name : PChar;
   otch : PChar;
   spec_id : longint;
   grp_id : longint;
  End;
  Spec = Record
   id : longint;
   name : PChar;
   inlist : boolean;
  End;
  Fac = Record
   id : longint;
   name : PChar;
   inlist : boolean;
  End;
  TProp = Record
   TestName, Level, TimeLimit, BeginDate, EndDate,
   Creator, UpdateDate, Spec, Comment : PChar;
  End;
  PL = ^Leaf;
  PS = ^Student;
  PG = ^Group;
  PSP = ^Spec;
  PPR = ^TProp;
var
  BeginTest: TBeginTest;
  L: Array of Leaf;
  SS: Array of Student;
  GG: Array of Group;
  SP: Array of Spec;
  FA: Array of Fac;
  s : longint; {кол-во элементов в дереве}
  st : longint; {кол-во студентов}
  sg : longint; {кол-во групп}
  TC : Boolean;
  spec_count : longint; {кол-во специальностей}
  fac_count : longint; {кол-во факультетов}

implementation

uses FOptions, Main, Quick, Prop, Req;

{$R *.DFM}

procedure TBeginTest.NextClick(Sender: TObject);
var
  Registry: TRegistry;
  IP1t, IP2t, IP3t, IP4t, tname : string;
  TestFound, found, IsIp : boolean;
  TT : TTreeNode;
  i : integer;
  c, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24, s25 : string;
  MyL : PL;
  MyS : PS;

{procedure MakeChildren(temp : TTreeNode; p: longint);
var
  m : longint;
begin
  for m:=0 to s-1 do
   begin
     if (L[m].Parent = p) and (not L[m].InTree) then
      begin
       L[m].InTree := True;
       if L[m].typ = 0 then
        begin
           TT := TreeView.Items.AddChildObject(temp,L[m].name,@L[m]);
           TT.ImageIndex := 4;
           TT.SelectedIndex := 5;
           MakeChildren(TT,L[m].id);
        end
       else
        if (SP[SpecBox.ItemIndex].id = L[m].typ) and (SpecBox.ItemIndex <> -1) then
         begin
           TT := TreeView.Items.AddChildObject(temp,'Тест: '+L[m].name,@L[m]);
           TT.ImageIndex := 6;
           TT.SelectedIndex := 6;
           MakeChildren(TT,L[m].id);
         end;
     end;
   end;
end;}

begin
 if PageControl1.ActivePage = Test then
 begin
 if TreeView.Selected <> nil then
 begin
  Label9.Caption := 'Факультет: '+ FacsBox.Text;
  LabelSpec.Caption := 'Специальность: '+ SpecBox.Text;
  LabelGrp.Caption := 'Группа: '+ GroupBox.Text;
  LabelTest.Caption := 'Дисциплина: ' + TreeView.Selected.Text;
  found := false;
  MyS := LV.Selected.Data;
  LabelFIO.Caption := 'Cтудент: '+ StrPas(MyS.fam)+ ' ' + StrPas(MyS.name) + ' ' + StrPas(MyS.otch);
  Fam := StrPas(MyS.fam);
  Nam := StrPas(MyS.name);
  Otch := StrPas(MyS.otch);
  StudID := MyS.id;
  MyL := TreeView.Selected.Data;
  mf.ClientSocket.Socket.SendText('test'+IntToStr(MyS.id)+Chr(1)+
  IntToStr(MyL.id)+Chr(2)+
  ' Группа: '+GroupBox.Text+', Ф.И.О.: '+StrPas(MyS.fam)+ ' ' + StrPas(MyS.name) +
  ' ' + StrPas(MyS.otch)+', Специальность: '+ SpecBox.Text +', Дисциплина: '+TreeView.Selected.Text);
  PageControl1.SelectNextPage(True);
  if mf.TestDeny then N3Click(Sender);
 end
 else
    MessageDlg('Не выбрана дисциплина.',
      mtWarning, [mbOK], 0);
 end;
 if PageControl1.ActivePage = Confirmation then
 begin
   if access then
   begin
    TestBtn.Enabled:=True;
    N2.Enabled:=False;
   end
   else
   begin
    TestBtn.Enabled:=False;
    N2.Enabled:=True;
   end;
   Next.Enabled := False;
 end;
 if PageControl1.ActivePage = Student then
 begin
  if LV.SelCount = 1 then
   begin
   TC := False;
   TreeView.Items.Clear;
   for i:=0 to s-1 do
     L[i].InTree := False;
  {построение дерева}
   for i:=0 to s-1 do
    begin
     TT := TreeView.Items.AddObject(nil,L[i].name,@L[i]);
     TT.ImageIndex := 2;
     TT.SelectedIndex := 3;
    end;
    TreeView.FullExpand;
    PageControl1.SelectNextPage(True);
   end
   else
    MessageDlg('Неверно введены данные.',
      mtWarning, [mbOK], 0);
 end;
 if PageControl1.ActivePage = Group then
  begin
  if (GroupBox.ItemIndex<>-1) or (Length(GroupBox.Text)<>0) then
  begin
  Back.Enabled:=True;
  Registry:=TRegistry.Create;
  Registry.RootKey:=HKEY_LOCAL_MACHINE;
  if Registry.OpenKey('\Software\PrTest',True) then
   Begin
    if Registry.ValueExists('IP1') then
     IP1t := Decrypt(Registry.ReadString('IP1'));
    if Registry.ValueExists('IP2') then
     IP2t:= Decrypt(Registry.ReadString('IP2'));
    if Registry.ValueExists('IP3') then
     IP3t:= Decrypt(Registry.ReadString('IP3'));
    if Registry.ValueExists('IP4') then
     IP4t:= Decrypt(Registry.ReadString('IP4'));
    if Registry.ValueExists('TestURL') then
     tname:= Decrypt(Registry.ReadString('TestURL'));
    if Registry.ValueExists('IsIp') then
     IsIp:=Registry.ReadBool('IsIp')
    else
     IsIp := False;
   end;
  Registry.CloseKey;
  Registry.Free;
  DeleteFile('stud.bin');
   s1 := '/';
   s2 := 'c';
   s3 := 'g';
   s4 := 'i';
   s5 := '-';
   s6 := 'b';
   s7 := 'i';
   s8 := 'n';
   s9 := '/';
   s10 := 'g';
   s11 := 'e';
   s12 := 't';
   s13 := 's';
   s14 := 't';
   s15 := 'u';
   s16 := 'd';
   s17 := '.';
   s18 := 'h';
   s19 := 't';
   s20 := 'm';
   s21 := '?';
   s22 := 'g';
   s23 := 'r';
   s24 := 'p';
   s25 := '=';
   c:=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15+s16+s17+
   s18+s19+s20+s21+s22+s23+s24+s25;
  https2.FileName := 'stud.bin';
  if IsIp then
  begin
   if (Length(IP1t) <> 0) and
     (Length(IP2t) <> 0) and (Length(IP3t) <> 0) and
     (Length(IP4t) <> 0) then
       Begin
        https2.URL := 'http://'+IP1t+'.'+IP2t+'.'+IP3t+'.'+IP4t+c+
        IntToStr(GG[GroupBox.ItemIndex].id)+'&a='+IntToStr(191175);
        https2.GetFile;
       end;
   end
   else
   begin
        https2.URL := 'http://'+tname+c+
        IntToStr(GG[GroupBox.ItemIndex].id)+'&a='+IntToStr(191175);
        https2.GetFile;
   end;
  end
  else
    MessageDlg('Выберете группу.',
      mtWarning, [mbOK], 0);
 end;
 if PageControl1.ActivePage = Spec then
  begin
  if SpecBox.ItemIndex <> -1 then
  begin
  Registry:=TRegistry.Create;
  Registry.RootKey:=HKEY_LOCAL_MACHINE;
  IsIp := False;
  if Registry.OpenKey('\Software\PrTest',True) then
   Begin
    if Registry.ValueExists('IP1') then
     IP1t := Decrypt(Registry.ReadString('IP1'));
    if Registry.ValueExists('IP2') then
     IP2t:= Decrypt(Registry.ReadString('IP2'));
    if Registry.ValueExists('IP3') then
     IP3t:= Decrypt(Registry.ReadString('IP3'));
    if Registry.ValueExists('IP4') then
     IP4t:= Decrypt(Registry.ReadString('IP4'));
    if Registry.ValueExists('TestURL') then
     tname:= Decrypt(Registry.ReadString('TestURL'));
    if Registry.ValueExists('IsIp') then
     IsIp:=Registry.ReadBool('IsIp')
    else
     IsIp := False;
   end;
  Registry.CloseKey;
  Registry.Free;
  DeleteFile('groups.bin');
   s1 := '/';
   s2 := 'c';
   s3 := 'g';
   s4 := 'i';
   s5 := '-';
   s6 := 'b';
   s7 := 'i';
   s8 := 'n';
   s9 := '/';
   s10 := 'g';
   s11 := 'e';
   s12 := 't';
   s13 := 'g';
   s14 := 'r';
   s15 := 'o';
   s16 := 'u';
   s17 := 'p';
   s18 := 's';
   s19 := '.';
   s20 := 'h';
   s21 := 't';
   s22 := 'm';
   s23 := '?';
   s24 := 'a';
   s25 := '=';
   c:=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15+s16+s17+
   s18+s19+s20+s21+s22+s23+s24+s25;
  GetGroup.FileName := 'groups.bin';
  if IsIp then
  begin
  if (Length(IP1t) <> 0) and
     (Length(IP2t) <> 0) and (Length(IP3t) <> 0) and
     (Length(IP4t) <> 0) then
       Begin
        GetGroup.URL := 'http://'+IP1t+'.'+IP2t+'.'+IP3t+'.'+
        IP4t+c+IntToStr(191175)+
        '&s='+IntToStr(SP[SpecBox.ItemIndex].id)+
        '&f='+IntToStr(FA[FacsBox.ItemIndex].id);
        GetGroup.GetFile;
       end;
   end
   else
   begin
    GetGroup.URL := 'http://'+tname+c+IntToStr(191175)+
    '&s='+IntToStr(SP[SpecBox.ItemIndex].id)+
    '&f='+IntToStr(FA[FacsBox.ItemIndex].id);
    GetGroup.GetFile;
   end;
   end
   else
    MessageDlg('Выберете специальность',
    mtWarning, [mbOK], 0);
  end;
end;

procedure TBeginTest.CancelClick(Sender: TObject);
begin
 mf.ClientSocket.Socket.SendText('test'+IntToStr(0)+Chr(1)+
 IntToStr(0)+Chr(2)+
 ' Группа, Фамилия, Имя, Отчетство и Тест не выбраны.');
 ModalResult := mrCancel;
end;

procedure TBeginTest.BackClick(Sender: TObject);
begin
TC := False;
access := False;
mf.ClientSocket.Socket.SendText('deny test permited');
TestBtn.Enabled := False;
if PageControl1.ActivePage = Spec then
 Back.Enabled:=False
else
 begin
  if PageControl1.ActivePage = Group then
  begin
   PageControl1.ActivePage := Spec;
  end
  else
  if PageControl1.ActivePage = Student then
  begin
   PageControl1.ActivePage := Group;
  end
  else
  if PageControl1.ActivePage = Test then
  begin
   PageControl1.ActivePage := Student;
  end
  else
  if PageControl1.ActivePage = Confirmation then
  begin
   PageControl1.ActivePage := Test;
  end;
  Next.Enabled:=True;
 end;
end;

procedure TBeginTest.FormShow(Sender: TObject);
var
  f : TFileStream;
  i,id,j,LenName : longint;
  h : boolean;
begin
 GroupBox.Clear;
 FacsBox.Clear;
 SpecBox.Clear;
 st:=0;
 sg:=0;
 s:=0;
 spec_count := 0;
 fac_count := 0;
 TestBtn.Caption := 'Тест';
 access := False;
 Back.Enabled:=False;
 Next.Enabled:=False;
 TestBtn.Enabled:=False;
 PageControl1.ActivePage := Spec;
 TreeView.Items.Clear;
 LV.Items.Clear;
 TC := False;
 try
  f := TFileStream.Create('facs.bin',fmOpenRead);
 except
    DeleteFile('facs.bin');
    Error.Send(0);
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 if id <> 1911 then
 begin
    ErrorEx.Send('facs.bin');
    DeleteFile('facs.bin');
//    Error.Send(1);
    f.Free;
    Exit;
 end;
 i:=0;
 while f.Position < f.Size do
 begin
   Inc(i);
   SetLength(FA,i);
   fac_count := i;
   f.Read(FA[i-1].id,4);
   f.Read(LenName,4);
   GetMem(FA[i-1].name,LenName+1);
   f.Read(FA[i-1].name^,LenName);
   FA[i-1].name[LenName] := Chr(0);
 end;
 f.Free;
 DeleteFile('facs.bin');
 SpecBox.Clear;
 SpecBox.Enabled := False;
 FacsBox.Clear;
 spec_count := 0;
 for i:=0 to fac_count-1 do
   FA[i].inlist := False;
 for i:=0 to fac_count-1 do
  begin
   FacsBox.Items.Add(FA[i].name);
   FA[i].inlist := True;
  end;
end;


procedure TBeginTest.FormClose(Sender: TObject; var Action: TCloseAction);
var
 i,j : longint;
 PL1: PL;
begin
 Back.Enabled:=False;
 TestBtn.Enabled := False;
 if TreeView.Selected <> nil then
 begin
  PL1 := TreeView.Selected.Data;
  idt := PL1.id;
 end;
 if GroupBox.ItemIndex <> -1 then
  idg := GG[GroupBox.ItemIndex].id;
 for i:=1 to s do begin
  Freemem(L[i-1].name);
 end;
 for i:=1 to spec_count do begin
  Freemem(SP[i-1].name);
 end;
 for i:=1 to fac_count do begin
  Freemem(FA[i-1].name);
 end;
 for j:=1 to st do Freemem(SS[j-1].fam);
 for j:=1 to st do Freemem(SS[j-1].name);
 for j:=1 to st do Freemem(SS[j-1].otch);
 for i:=0 to sg-1 do begin
  Freemem(GG[i].grp);
 end;
 st:=0;
 sg:=0;
 s:=0;
 spec_count := 0;
 fac_count := 0;
end;

procedure TBeginTest.GroupBoxChange(Sender: TObject);
begin
 Next.Enabled := True;
 NextClick(Sender);
end;

procedure TBeginTest.TreeViewChange(Sender: TObject; Node: TTreeNode);
begin
 TC := True;
end;

procedure TBeginTest.httpstudDoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
  f : TFileStream;
  id : longint;
begin
 spb.Position := 0;
 mf.ClientSocket.Socket.SendText('deny test permited');
 try
  f := TFileStream.Create('stud.res',fmOpenRead);
 except
    Error.Send(0);
    DeleteFile('stud.res');
    ModalResult := mrOk;
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 if id <> 1911 then
 begin
    Error.Send(1);
    f.Free;
    DeleteFile('stud.res');
    ModalResult := mrOk;
    Exit;
 end
 else
 begin
  f.Read(id,4);
  Stud.id := id;
 end;
 f.Free;
 DeleteFile('stud.res');
 ModalResult := mrOk;
end;

procedure TBeginTest.httpstudError(Sender: TObject);
begin
    Error.Send(2);
    DeleteFile('stud.res');
    ModalResult := mrCancel;
end;

procedure TBeginTest.https2DoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
  f : TFileStream;
  LenName,j,i,id : longint;
  en : boolean;
  LI : TListItem;
begin
 spb.Position := 0;
 try
  f := TFileStream.Create('stud.bin',fmOpenRead);
 except
    Error.Send(0);
    DeleteFile('stud.bin');
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 st:=0;
 if id = 1911 then
 begin
 i:=0;
 while f.Position < f.Size do
 begin
   Inc(i);
   SetLength(SS,i);
   st := i;
   f.Read(SS[i-1].id,4);
   f.Read(LenName,4);
   GetMem(SS[i-1].fam,LenName+1);
   f.Read(SS[i-1].fam^,LenName);
   SS[i-1].fam[LenName] := Chr(0);
   f.Read(LenName,4);
   GetMem(SS[i-1].name,LenName+1);
   f.Read(SS[i-1].name^,LenName);
   SS[i-1].name[LenName] := Chr(0);
   f.Read(LenName,4);
   GetMem(SS[i-1].otch,LenName+1);
   f.Read(SS[i-1].otch^,LenName);
   SS[i-1].otch[LenName] := Chr(0);
   f.Read(SS[i-1].grp_id,4);
 end;
 {заполнение списка}
 LV.Items.Clear;
 for i:=0 to st-1 do
  begin
   LI := LV.Items.Add;
   LI.Caption := SS[i].fam;
   LI.SubItems.Add(SS[i].name);
   LI.SubItems.Add(SS[i].otch);
   LI.Data := @SS[i];
  end;
 end
 else
 begin
  LV.Items.Clear;
  MessageDlg('Ошибка при приеме данных о студентах, либо список студентов пуст...',
  mtWarning, [mbOK], 0);
 end;
 f.Free;
 DeleteFile('stud.bin');
 PageControl1.SelectNextPage(True);
end;

procedure TBeginTest.TestBtnClick(Sender: TObject);
begin
  Next.Enabled:=False;
  access := False;
  mf.ClientSocket.Socket.SendText('begin test');
  ModalResult := mrOk;
end;

procedure TBeginTest.AccessTimerTimer(Sender: TObject);
begin
 if PageControl1.ActivePage = Confirmation then
   if access then
   begin
    TestBtn.Enabled:=True;
    N2.Enabled:=False;
   end
   else
   begin
    TestBtn.Enabled:=False;
    N2.Enabled:=True;
   end;
end;

procedure TBeginTest.https2Progress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.https2Error(Sender: TObject);
begin
    Error.Send(2);
    DeleteFile('stud.bin');
    ModalResult := mrCancel;
end;

procedure TBeginTest.httpstudProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.GetGroupDoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
 f : TFileStream;
 LenName, id, i : integer;
 Registry: TRegistry;
 IP1t, IP2t, IP3t, IP4t, tname : string;
 IsIp : boolean;
 s, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24, s25, s26 : string;
 st, st1,st2,st3,st4, st5, st6, st7 : string;
begin
 spb.Position := 0;
 try
  f := TFileStream.Create('groups.bin',fmOpenRead);
 except
    Error.Send(0);
    DeleteFile('groups.bin');
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 if id <> 1911 then
 begin
    Error.Send(1);
    f.Free;
    DeleteFile('groups.bin');
    Exit;
 end;
 {чтение групп}
 i := 0;
 while f.Position < f.Size do
 begin
  Inc(i);
  SetLength(GG,i);
  f.Read(id,4);
  GG[i-1].id := id;
  f.Read(LenName,4);
  GetMem(GG[i-1].grp,LenName+1);
  f.Read(GG[i-1].grp^,LenName);
  GG[i-1].grp[LenName] := Chr(0);
  GG[i-1].inlist :=False;
 end;
 f.Free;
 DeleteFile('groups.bin');
 {заполнение списка групп}
 GroupBox.Clear;
 GroupBox.Text := '';
 sg := i;
 for i:=0 to sg-1 do
 begin
  GroupBox.Items.Add(GG[i].grp);
  GG[i].inlist := True;
 end;
 Registry:=TRegistry.Create;
 Registry.RootKey:=HKEY_LOCAL_MACHINE;
 IsIp := False;
  if Registry.OpenKey('\Software\PrTest',True) then
   Begin
    if Registry.ValueExists('IP1') then
     IP1t := Decrypt(Registry.ReadString('IP1'));
    if Registry.ValueExists('IP2') then
     IP2t:= Decrypt(Registry.ReadString('IP2'));
    if Registry.ValueExists('IP3') then
     IP3t:= Decrypt(Registry.ReadString('IP3'));
    if Registry.ValueExists('IP4') then
     IP4t:= Decrypt(Registry.ReadString('IP4'));
    if Registry.ValueExists('TestURL') then
     tname:= Decrypt(Registry.ReadString('TestURL'));
    if Registry.ValueExists('IsIp') then
     IsIp:=Registry.ReadBool('IsIp')
    else
     IsIp := False;
   end;
  Registry.CloseKey;
  Registry.Free;
   DeleteFile('tree.bin'); // getFolders
   s1 := '/';
   s2 := 'c';
   s3 := 'g';
   s4 := 'i';
   s5 := '-';
   s6 := 'b';
   s7 := 'i';
   s8 := 'n';
   s9 := '/';
   s10 := 'g';
   s11 := 'e';
   s12 := 't';
   s13 := 'f';
   s14 := 'o';
   s15 := 'l';
   s16 := 'd';
   s17 := 'e';
   s18 := 'r';
   s19 := 's';
   s20 := '.';
   s21 := 'h';
   s22 := 't';
   s23 := 'm';
   s24 := '?';
   s25 := 'a';
   s26 := '=';
   s:=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15+s16+s17+
   s18+s19+s20+s21+s22+s23+s24+s25+s26;
   GetFolders.FileName := 'tree.bin';
    if IsIp then
    begin
     if (Length(IP1t) <> 0) and
        (Length(IP2t) <> 0) and (Length(IP3t) <> 0) and
        (Length(IP4t) <> 0) then
       begin
        GetFolders.URL := 'http://'+IP1t+'.'+IP2t+'.'+IP3t+'.'+
        IP4t+s+IntToStr(191175);
        GetFolders.GetFile;
       end;
    end
    else begin
     GetFolders.URL := 'http://'+tname+s+
     IntToStr(191175);
     GetFolders.GetFile;
    end;
end;

procedure TBeginTest.SpecBoxChange(Sender: TObject);
begin
 Next.Enabled := True;
 NextClick(Sender);
end;

procedure TBeginTest.GetGroupProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.GetGroupError(Sender: TObject);
begin
 Error.Send(2);
 DeleteFile('groups.bin');
 ModalResult := mrCancel;
end;

procedure TBeginTest.GetFoldersDoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
  f : TFileStream;
  i,id,j,LenName : longint;
begin
 Back.Enabled := True;
 spb.Position := 0;
 try
  f := TFileStream.Create('tree.bin',fmOpenRead);
 except
    Error.Send(0);
    DeleteFile('tree.bin');
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 if id <> 1911 then
 begin
    Error.Send(1);
    f.Free;
    DeleteFile('tree.bin');
    Exit;
 end;
 {чтение дерева}
 i:=0;
 while f.Position < f.Size do
 begin
   Inc(i);
   SetLength(L,i);
   s := i;
   f.Read(L[i-1].id,4);
   f.Read(LenName,4);
   GetMem(L[i-1].name,LenName+1);
   f.Read(L[i-1].name^,LenName);
   L[i-1].name[LenName] := Chr(0);
   L[i-1].InTree := False;
 end;
 f.Free;
 DeleteFile('tree.bin');
 PageControl1.ActivePage := Group;
end;

procedure TBeginTest.GetFoldersError(Sender: TObject);
begin
 Error.Send(2);
 DeleteFile('tree.bin');
 ModalResult := mrCancel;
end;

procedure TBeginTest.GetFoldersProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.GetPropError(Sender: TObject);
begin
 Error.Send(2);
 DeleteFile('prop.bin');
end;

procedure TBeginTest.GetPropProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.GetPropDoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
  TestProp : TProp;
  f : TFileStream;
  i,id,j,LenName : longint;
begin
 spb.Position := 0;
 try
  f := TFileStream.Create('prop.bin',fmOpenRead);
 except
    Error.Send(0);
    DeleteFile('prop.bin');
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 if id <> 1911 then
 begin
    Error.Send(1);
    f.Free;
    DeleteFile('prop.bin');
    Exit;
 end;
 {чтение свойств}
 f.Read(LenName,4);
 GetMem(TestProp.TestName,LenName+1);
 f.Read(TestProp.TestName^,LenName);
 TestProp.TestName[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.Level,LenName+1);
 f.Read(TestProp.Level^,LenName);
 TestProp.Level[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.TimeLimit,LenName+1);
 f.Read(TestProp.TimeLimit^,LenName);
 TestProp.TimeLimit[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.BeginDate,LenName+1);
 f.Read(TestProp.BeginDate^,LenName);
 TestProp.BeginDate[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.EndDate,LenName+1);
 f.Read(TestProp.EndDate^,LenName);
 TestProp.EndDate[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.Creator,LenName+1);
 f.Read(TestProp.Creator^,LenName);
 TestProp.Creator[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.UpdateDate,LenName+1);
 f.Read(TestProp.UpdateDate^,LenName);
 TestProp.UpdateDate[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.Spec,LenName+1);
 f.Read(TestProp.Spec^,LenName);
 TestProp.Spec[LenName] := Chr(0);
 f.Read(LenName,4);
 GetMem(TestProp.Comment,LenName+1);
 f.Read(TestProp.Comment^,LenName);
 TestProp.Comment[LenName] := Chr(0);
 f.Free;
 DeleteFile('prop.bin');
 with PropDlg do
  begin
   Name.Text := StrPas(TestProp.TestName);
   Level.Text := StrPas(TestProp.Level);
   TimeLimit.Text := StrPas(TestProp.TimeLimit);
   BeginDate.Text := StrPas(TestProp.BeginDate);
   EndDate.Text := StrPas(TestProp.EndDate);
   Creator.Text := StrPas(TestProp.Creator);
   UpdateDate.Text := StrPas(TestProp.UpdateDate);
   Spec.Text := StrPas(TestProp.Spec);
   Comment.Text := StrPas(TestProp.Comment);
   ShowModal;
  end;
 FreeMem(TestProp.TestName);
 FreeMem(TestProp.Level);
 FreeMem(TestProp.TimeLimit);
 FreeMem(TestProp.BeginDate);
 FreeMem(TestProp.EndDate);
 FreeMem(TestProp.Creator);
 FreeMem(TestProp.UpdateDate);
 FreeMem(TestProp.Spec);
 FreeMem(TestProp.Comment);
end;

procedure TBeginTest.N3Click(Sender: TObject);
var
  Registry: TRegistry;
  IP1t, IP2t, IP3t, IP4t, tname : string;
  TestFound, found, IsIp : boolean;
  TT : TTreeNode;
  i : integer;
  c, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24, s25 : string;
  MyL : PL;
  MyS : PS;
begin
 ReqDlg.Login.Text := '';
 ReqDlg.Fam.Text := '';
 ReqDlg.Name.Text := '';
 ReqDlg.Otch.Text := '';
 ReqDlg.Pwd.Text := '';
 ReqDlg.Caption := 'Запрос на тестирование...';
 ReqDlg.Label7.Caption := 'Позовите преподавателя или лаборанта для подтверждения тестирования.';
 if ReqDlg.ShowModal = mrOk then
  begin
  Registry:=TRegistry.Create;
  Registry.RootKey:=HKEY_LOCAL_MACHINE;
  if Registry.OpenKey('\Software\PrTest',True) then
   Begin
    if Registry.ValueExists('IP1') then
     IP1t := Decrypt(Registry.ReadString('IP1'));
    if Registry.ValueExists('IP2') then
     IP2t:= Decrypt(Registry.ReadString('IP2'));
    if Registry.ValueExists('IP3') then
     IP3t:= Decrypt(Registry.ReadString('IP3'));
    if Registry.ValueExists('IP4') then
     IP4t:= Decrypt(Registry.ReadString('IP4'));
    if Registry.ValueExists('TestURL') then
     tname:= Decrypt(Registry.ReadString('TestURL'));
    if Registry.ValueExists('IsIp') then
     IsIp:=Registry.ReadBool('IsIp')
    else
     IsIp := False;
   end;
  Registry.CloseKey;
  Registry.Free;
  DeleteFile('prepod.bin');
   s1 := '/';
   s2 := 'c';
   s3 := 'g';
   s4 := 'i';
   s5 := '-';
   s6 := 'b';
   s7 := 'i';
   s8 := 'n';
   s9 := '/';
   s10 := 'g';
   s11 := 'e';
   s12 := 't';
   s13 := 'p';
   s14 := 'r';
   s15 := 'e';
   s16 := 'p';
   s17 := 'o';
   s18 := 'd';
   s19 := '.';
   s20 := 'h';
   s21 := 't';
   s22 := 'm';
   s23 := '?';
   s24 := 'f';
   s25 := '=';
   c:=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15+s16+s17+
   s18+s19+s20+s21+s22+s23+s24+s25;
  GetPrepod.FileName := 'prepod.bin';
  MyL := TreeView.Selected.Data;
  MyS := LV.Selected.Data;
  if IsIp then
  begin
   if (Length(IP1t) <> 0) and
     (Length(IP2t) <> 0) and (Length(IP3t) <> 0) and
     (Length(IP4t) <> 0) then
       Begin
        GetPrepod.URL := 'http://'+IP1t+'.'+IP2t+'.'+IP3t+'.'+IP4t+c+
        ReqDlg.Fam.Text+'&n='+ReqDlg.Name.Text+'&o='+ReqDlg.Otch.Text+
        '&p='+ReqDlg.Pwd.Text+'&fc='+IntToStr(FA[FacsBox.ItemIndex].id)+
        '&gr='+IntToStr(GG[GroupBox.ItemIndex].id)+
        '&st='+IntToStr(MyS.id)+'&su='+IntToStr(MyL.id)+
        '&a='+IntToStr(191175)+'&l='+ReqDlg.Login.Text;
        GetPrepod.GetFile;
       end;
   end
   else
   begin
        GetPrepod.URL := 'http://'+tname+c+
        ReqDlg.Fam.Text+'&n='+ReqDlg.Name.Text+'&o='+ReqDlg.Otch.Text+
        '&p='+ReqDlg.Pwd.Text+'&fc='+IntToStr(FA[FacsBox.ItemIndex].id)+
        '&gr='+IntToStr(GG[GroupBox.ItemIndex].id)+
        '&st='+IntToStr(MyS.id)+'&su='+IntToStr(MyL.id)+
        '&a='+IntToStr(191175)+'&l='+ReqDlg.Login.Text;
        GetPrepod.GetFile;
   end;
  end;
end;

procedure TBeginTest.N2Click(Sender: TObject);
begin
 mf.ClientSocket.Socket.SendText('request');
end;

procedure TBeginTest.FacsBoxChange(Sender: TObject);
var
  Registry: TRegistry;
  IP1t, IP2t, IP3t, IP4t, tname : string;
  IsIp : boolean;
  s, s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24 : string;
begin
  SpecBox.Enabled := True;
  Back.Enabled:=False;
  Next.Enabled:=False;
  Registry:=TRegistry.Create;
  Registry.RootKey:=HKEY_LOCAL_MACHINE;
  IsIp := False;
  if Registry.OpenKey('\Software\PrTest',True) then
   Begin
    if Registry.ValueExists('IP1') then
     IP1t := Decrypt(Registry.ReadString('IP1'));
    if Registry.ValueExists('IP2') then
     IP2t:= Decrypt(Registry.ReadString('IP2'));
    if Registry.ValueExists('IP3') then
     IP3t:= Decrypt(Registry.ReadString('IP3'));
    if Registry.ValueExists('IP4') then
     IP4t:= Decrypt(Registry.ReadString('IP4'));
    if Registry.ValueExists('TestURL') then
     tname:= Decrypt(Registry.ReadString('TestURL'));
    if Registry.ValueExists('IsIp') then
     IsIp:=Registry.ReadBool('IsIp')
    else
     IsIp := False;
   end;
  Registry.CloseKey;
  Registry.Free;
  DeleteFile('specs.bin');    // getspecs
  s1 := '/';
  s2 := 'c';
  s3 := 'g';
  s4 := 'i';
  s5 := '-';
  s6 := 'b';
  s7 := 'i';
  s8 := 'n';
  s9 := '/';
  s10 := 'g';
  s11 := 'e';
  s12 := 't';
  s13 := 's';
  s14 := 'p';
  s15 := 'e';
  s16 := 'c';
  s17 := 's';
  s18 := '.';
  s19 := 'h';
  s20 := 't';
  s21 := 'm';
  s22 := '?';
  s23 := 'a';
  s24 := '=';
  s:=s1+s2+s3+s4+s5+s6+s7+s8+s9+s10+s11+s12+s13+s14+s15+s16+s17+
  s18+s19+s20+s21+s22+s23+s24;
  GetSpec.FileName := 'specs.bin';
  spb.Position := 0;
    if IsIp then
    begin
     if (Length(IP1t) <> 0) and
        (Length(IP2t) <> 0) and (Length(IP3t) <> 0) and
        (Length(IP4t) <> 0) then
       begin
        GetSpec.URL := 'http://'+IP1t+'.'+IP2t+'.'+IP3t+'.'+IP4t+s+
        IntToStr(191175)+
        '&f='+IntToStr(FA[FacsBox.ItemIndex].id);
        GetSpec.GetFile;
       end;
    end
    else begin
        GetSpec.URL := 'http://'+tname+s+
        IntToStr(191175)+
        '&f='+IntToStr(FA[FacsBox.ItemIndex].id);
        GetSpec.GetFile;
    end;
end;

procedure TBeginTest.GetSpecError(Sender: TObject);
begin
 spb.Position := 0;
 Error.Send(2);
 DeleteFile('specs.bin');
end;

procedure TBeginTest.GetSpecProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.GetSpecDoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
 f : TFileStream;
 LenName, i, id : integer;
begin
 spb.Position := 0;
 try
  f := TFileStream.Create('specs.bin',fmOpenRead);
 except
    DeleteFile('specs.bin');
    Error.Send(0);
    Exit;
 end;
 f.Position :=0;
 f.Read(id,4);
 if id <> 1911 then
 begin
    ErrorEx.Send('specs.bin');
    f.Free;
    Exit;
 end;
 for i:=1 to spec_count do begin
  Freemem(SP[i-1].name);
 end;
 spec_count := 0;
 SetLength(SP,0);
 i:=0;
 while f.Position < f.Size do
 begin
   Inc(i);
   SetLength(SP,i);
   spec_count := i;
   f.Read(SP[i-1].id,4);
   f.Read(LenName,4);
   GetMem(SP[i-1].name,LenName+1);
   f.Read(SP[i-1].name^,LenName);
   SP[i-1].name[LenName] := Chr(0);
 end;
 f.Free;
 DeleteFile('specs.bin');
 {заполнение списка специальностей}
 SpecBox.Clear;
 for i:=0 to spec_count-1 do
   SP[i].inlist := False;
 for i:=0 to spec_count-1 do
 begin
   SpecBox.Items.Add(SP[i].name);
   SP[i].inlist := True;
 end;
 if spec_count = 0 then SpecBox.Enabled := False;
end;

procedure TBeginTest.GetPrepodDoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
var
 f : TFileStream;
 timelimit, id : integer;
 end_date : TDateTime;
begin
 spb.Position := 0;
 try
  f := TFileStream.Create('prepod.bin',fmOpenRead);
 except
    DeleteFile('prepod.bin');
    Error.Send(0);
 end;
 tester_id := 0;
 PrepodLogin := '';
 PrepodFam := '';
 PrepodNam := '';
 PrepodOtch := '';
 PrepodPwd := '';
 f.Position :=0;
 f.Read(id,4);
 case id of
//  MessageDlg('Доступ к тестированию разрешен.',
//  mtInformation, [mbOK], 0);
 1000, 1001:
 begin
  Beep;
  f.Read(tester_id,4);
  f.Read(timelimit,4);
  PrepodLogin := Trim(ReqDlg.Login.Text);
  PrepodFam := Trim(ReqDlg.Fam.Text);
  PrepodNam := Trim(ReqDlg.Name.Text);
  PrepodOtch := Trim(ReqDlg.Otch.Text);
  PrepodPwd := Trim(ReqDlg.Pwd.Text);
  TestBtn.Caption := 'Тест ('+IntToStr(Timelimit div 60)+' час. '+
  IntToStr(Timelimit mod 60)+' мин.)';
  access := True;
 end;
//  MessageDlg('Доступ к тестированию разрешен. Преподаватель имеет право на разрешение повторного тестирования.',
//  mtInformation, [mbOK], 0);
 2000:
  MessageDlg('Ошибка при обращении к тест-серверу. Общий запрет тестирования.',
  mtError, [mbOK], 0);
 2001:
  MessageDlg('Преподаватель не зарегестрировался в системе.',
  mtError, [mbOK], 0);
 2002:
  MessageDlg('Пароль неверен.',
  mtError, [mbOK], 0);
 2003:
  MessageDlg('У Вас нет прав на разрешение тестирования.',
  mtError, [mbOK], 0);
 2004:
  MessageDlg('У Вас нет прав на разрешение тестирования студенту факультета: ' + FacsBox.Text,
  mtError, [mbOK], 0);
 2005:
  MessageDlg('Шаблон теста для выбранной дисциплины не найден.',
  mtError, [mbOK], 0);
 2006:
  MessageDlg('Запрет тестирования. Студент один раз уже протестировался по данной дисциплине.',
  mtError, [mbOK], 0);
 2007:
  begin
   f.Read(end_date,8);
   MessageDlg('Тестирование запрещено, так как время, отведенное для прохождения тестирования, закончилось.'+
   ' Вы должны были пройти тестирование по выбранной дисциплине не позднее '+DateTimeToStr(end_date)+'.',
   mtError, [mbOK], 0);
  end;
 2008:
  begin
   f.Read(end_date,8);
   MessageDlg('Тестирование запрещено, так как время, отведенное для прохождения тестирования, еще не наступило.'+
   ' Вы должны пройти тестирование по выбранной дисциплине не ранее '+DateTimeToStr(end_date)+'.',
   mtError, [mbOK], 0);
  end;
 else
  Error.Send(1);
 end;
 DeleteFile('prepod.bin');
 f.Free;
end;

procedure TBeginTest.GetPrepodError(Sender: TObject);
begin
 spb.Position := 0;
 Error.Send(2);
 DeleteFile('prepod.bin');
end;

procedure TBeginTest.GetPrepodProgress(Sender: TObject; TotalSize,
  Readed: Integer);
begin
if TotalSize <> 0 then
 spb.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure TBeginTest.Button2Click(Sender: TObject);
begin
 Application.HelpFile := 'prtest.hlp';
 if PageControl1.ActivePage = Spec then
  Application.HelpJump('facsspecs')
 else
 if PageControl1.ActivePage = Group then
  Application.HelpJump('grp')
 else
 if PageControl1.ActivePage = Student then
  Application.HelpJump('students')
 else
 if PageControl1.ActivePage = Test then
  Application.HelpJump('subjects')
 else
 if PageControl1.ActivePage = Confirmation then
  Application.HelpJump('done');
end;

procedure TBeginTest.TreeViewDblClick(Sender: TObject);
begin
 NextClick(Sender);
end;

procedure TBeginTest.LVDblClick(Sender: TObject);
begin
 NextClick(Sender);
end;

end.
