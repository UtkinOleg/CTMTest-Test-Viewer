unit Personal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, TeEngine, Series, TeeProcs, Chart, ExtCtrls, StdCtrls, ImgList,
  Placemnt, Buttons, Richole, bzip2, TB97Ctls, RXSplit, ComObj, Registry,
  Menus, inidata, RxRichEd, comtypes, Results, htmlhlp, mdCONTROLS;

const
  questr = '\par \viewkind4\uc1\pard\ql\f0\fs24\'+Chr($27)+'c2\'+Chr($27)+'ee\'+Chr($27)+'ef\'+Chr($27)+'f0\'+Chr($27)+'ee\'+Chr($27)+'f1 \'+Chr($27)+'b9 ';

type
  TPersonalForm = class(TForm)
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    bzip21: Tbzip2;
    Panel2: TPanel;
    BitBtn2: TButton;
    ToolbarButton973: TButton;
    Button1: TButton;
    Button5: TButton;
    TabControl1: TTabControl;
    GroupBox2: TXPGroupBox;
    Label7: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    GroupBox3: TXPGroupBox;
    Label15: TLabel;
    ROResult: TRxRichEdit;
    GroupBox4: TXPGroupBox;
    Label23: TLabel;
    Label19: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    TabControl2: TTabControl;
    Label4: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    TabControl3: TTabControl;
    lv: TXPListView;
    TabControl4: TTabControl;
    Chart1: TChart;
    Series1: TPieSeries;
    TabControl5: TTabControl;
    Label26: TLabel;
    ProtocolButton: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure lvDblClick(Sender: TObject);
    procedure lvClick(Sender: TObject);
    procedure ToolbarButton972Click(Sender: TObject);
    procedure ROResultDblClick(Sender: TObject);
    procedure lvColumnClick(Sender: TObject; Column: TListColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolbarButton973Click(Sender: TObject);
    procedure lvKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure ProtocolButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Admin_entered : boolean;
    ZZ, M : TMemoryStream;
    TestName : string;
    Ver : integer; // версия БД
    ResOcenka, ResAnaliz, ResGrpAnaliz : byte;
    // Групповые результаты
    GroupResult : TList;
    procedure ExtResults(Extend : boolean);
    procedure AddGroupResult(M : TMemoryStream; S : string);
    procedure DelGroupResult(N : Integer);
  end;

var
  PersonalForm: TPersonalForm;
  SUserAllScore, SUserOcenka : Real;
  AAllQ, ARightQ : Integer;

implementation

uses CommentForm, Main, Loading;

{$R *.DFM}

procedure TPersonalForm.ExtResults(Extend : boolean);

procedure WriteString(MD:TMemoryStream;S:String);
var
 J : Longint;
 C : Char;
begin
  for J:=1 to Length(S) do
  begin
   C := S[J];
   MD.Write(C,1);
  end;
end;

procedure CompleteBeginData(RO: TRxRichEdit;var MZ:TMemoryStream);
var
 I, FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 bufferz : PByte;
 B : Byte;
 tstr : string;
begin
     M1 := TMemoryStream.Create;
     RO.Lines.SaveToStream(M1);
     bufferz := AllocMem(M1.Size);
     M1.Position := 0;
     M1.Read(bufferz^,M1.Size);
     FF := 0;
     M1.Position := 0;
     J := 0;
     K := 0;
     while J<M1.Size-1 do
     begin
       M1.Read(B,1);
       if Chr(B) = '{' then Inc(K);
       if Chr(B) = '}' then
       begin
        Dec(K);
        if K=1 then
         break;
       end;
       Inc(J);
     end;
     MZ.Write(bufferz^,M1.Position);
     FreeMem(bufferz);
     WriteString(Mz,'\par ');
     PS := M1.Position;
     M1.Read(C,1);
     if C<>'}' then
     begin
      M1.Position := PS;
      bufferz := AllocMem(M1.Size);
      M1.Read(bufferz^,M1.Size-PS-4);
      MZ.Write(bufferz^,M1.Size-PS-4);
      FreeMem(bufferz);
     end
     else
     begin
      bufferz := AllocMem(M1.Size);
      M1.Read(bufferz^,M1.Size-PS-5);
      MZ.Write(bufferz^,M1.Size-PS-5);
      FreeMem(bufferz);
     end;
     M1.Free;
end;

procedure CompleteData(RO: TRxRichEdit;var Mz:TMemoryStream);
var
 I, FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 bufferz : PByte;
 B : Byte;
 tstr : string;
begin
     M1 := TMemoryStream.Create;
     RO.Lines.SaveToStream(M1);
     M1.Position := 0;
     J := 0;
     K := 0;
     while J<M1.Size-1 do
     begin
       M1.Read(B,1);
       if Chr(B) = '{' then Inc(K);
       if Chr(B) = '}' then
       begin
        Dec(K);
        if K=1 then
         break;
       end;
       Inc(J);
     end;
     WriteString(Mz,'\par ');
     PS := M1.Position;
     M1.Read(C,1);
     if C<>'}' then
     begin
      M1.Position := PS;
      bufferz := AllocMem(M1.Size);
      M1.Read(bufferz^,M1.Size-PS-4);
      Mz.Write(bufferz^,M1.Size-PS-4);
      FreeMem(bufferz);
     end
     else
     begin
      bufferz := AllocMem(M1.Size);
      M1.Read(bufferz^,M1.Size-PS-5);
      Mz.Write(bufferz^,M1.Size-PS-5);
      FreeMem(bufferz);
     end;
     M1.Free;
end;

procedure GenerateName(M:TMemoryStream;ResOcenka,ResAnaliz:byte);
var
 I, FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 buffer : PByte;
 B : Byte;
 tstr : string;
 alltime, hour, atime : integer;
 MB, MS : real;
begin
     CommentDlg.RO.Lines.Clear;
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.Lines.Add(Label26.Caption);
     CommentDlg.RO.Lines.Add('');
     CommentDlg.RO.SelAttributes.Style := [];
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.Lines.Add('Фамилия, Имя, Отчество: '+Label18.Caption);
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.Lines.Add(Label4.Caption+' '+Label16.Caption);
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.Lines.Add(Label5.Caption+' '+Label17.Caption);
     CommentDlg.RO.Lines.Add('');
     CommentDlg.RO.SelAttributes.Style := [];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.Lines.Add('Данные по разделам (темам):');
     CommentDlg.RO.Lines.Add('');

     MB := 0;
     MS := 0;
     for i:=0 to lv.Items.Count-1 do
      begin
       CommentDlg.RO.SelAttributes.Size := 11;
       CommentDlg.RO.SelAttributes.Color := clBlue;
       CommentDlg.RO.Lines.Add('№'+lv.Items[i].Caption + '. '+lv.Items[i].SubItems[0]);
       CommentDlg.RO.SelAttributes.Color := clBlack;
       CommentDlg.RO.SelAttributes.Size := 11;
       try
        tstr := ' Количество баллов : '+lv.Items[i].SubItems[4]+
        ' ('+FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])/StrToFloat(lv.Items[i].SubItems[3])*100)+'%) из '+
        lv.Items[i].SubItems[3];
       except
       end;
       if ResOcenka = 1 then
        CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: '+lv.Items[i].SubItems[9])
       else
        CommentDlg.RO.Lines.Add(tstr);
       CommentDlg.RO.Lines.Add('');
       MB := MB + StrToFloat(lv.Items[i].SubItems[4]);
       MS := MS + StrToFloat(lv.Items[i].SubItems[3]);
      end;
     CommentDlg.RO.Lines.Add('');
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     if ResOcenka = 1 then
      CommentDlg.RO.Lines.Add('Итоговая оценка по всем разделам(темам): '+Label23.Caption);
     CommentDlg.RO.SelAttributes.Style := [];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     tstr := 'Итоговое количество баллов : '+FloatToStr(MB)+
     ' ('+FormatFloat('0.00',MB/MS*100)+'%) из '+
     FloatToStr(MS);
     if ResOcenka = 1 then
     begin
      if lv.Column[10].Caption = 'Оценка(5)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label20.Caption + ' (5)')
      else
      if lv.Column[10].Caption = 'Оценка(10)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label21.Caption + ' (10)')
      else
      if lv.Column[10].Caption = 'Оценка(20)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label22.Caption + ' (20)')
      else
      if lv.Column[10].Caption = 'Оценка(100)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label25.Caption + ' (100)');
     end
     else
      CommentDlg.RO.Lines.Add(tstr);
     if ResAnaliz = 1 then
      CommentDlg.RO.Lines.Add('Результат теста:');

     CompleteBeginData(CommentDlg.RO,M);
end;

procedure GenerateName2(M:TMemoryStream;ResOcenka:byte);
var
 I, FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 buffer : PByte;
 B : Byte;
 tstr : string;
 alltime, hour, atime : integer;
 MB, MS : real;
begin
     CommentDlg.RO.Lines.Clear;
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.Lines.Add(Label26.Caption);
     CommentDlg.RO.Lines.Add('');
     CommentDlg.RO.SelAttributes.Style := [];
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.Lines.Add('Фамилия, Имя, Отчество: '+Label18.Caption);
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.Lines.Add(Label4.Caption+' '+Label16.Caption);
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.Lines.Add(Label5.Caption+' '+Label17.Caption);
     CommentDlg.RO.Lines.Add('');
     CommentDlg.RO.SelAttributes.Style := [];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.Lines.Add('Данные по разделам (темам):');
     CommentDlg.RO.Lines.Add('');
     CompleteBeginData(CommentDlg.RO,M);
end;

procedure GenerateGroup2(M:TMemoryStream;i : integer;ResOcenka:byte);
var
 FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 buffer : PByte;
 B : Byte;
 tstr : string;
begin
     CommentDlg.RO.Lines.Clear;
     CommentDlg.RO.SelAttributes.Size := 11;
     CommentDlg.RO.SelAttributes.Color := clBlue;
     CommentDlg.RO.Lines.Add('№'+lv.Items[i].Caption + '. '+lv.Items[i].SubItems[0]);
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     tstr := ' Количество баллов : '+lv.Items[i].SubItems[4]+
     ' ('+FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])/StrToFloat(lv.Items[i].SubItems[3])*100)+'%) из '+
     lv.Items[i].SubItems[3];
     if ResOcenka = 1 then
      CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: '+lv.Items[i].SubItems[9])
     else
      CommentDlg.RO.Lines.Add(tstr);
     CompleteData(CommentDlg.RO,M);
end;


procedure GenerateItog(M:TMemoryStream;ResOcenka:byte);
var
 I, FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 buffer : PByte;
 B : Byte;
 tstr : string;
 alltime, hour, atime : integer;
 MB, MS : real;
begin
     CommentDlg.RO.Lines.Clear;
     MB := 0;
     MS := 0;
     for i:=0 to lv.Items.Count-1 do
      begin
       MB := MB + StrToFloat(lv.Items[i].SubItems[4]);
       MS := MS + StrToFloat(lv.Items[i].SubItems[3]);
      end;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     if ResOcenka = 1 then
      CommentDlg.RO.Lines.Add('Итоговая оценка по всем разделам(темам): '+Label23.Caption);
     CommentDlg.RO.SelAttributes.Style := [];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 11;
     tstr := 'Итоговое количество баллов : '+FloatToStr(MB)+
     ' ('+FormatFloat('0.00',MB/MS*100)+'%) из '+
     FloatToStr(MS);
     if ResOcenka = 1 then
     begin
      if lv.Column[10].Caption = 'Оценка(5)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label20.Caption)
      else
      if lv.Column[10].Caption = 'Оценка(10)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label21.Caption)
      else
      if lv.Column[10].Caption = 'Оценка(20)' then
       CommentDlg.RO.Lines.Add(tstr + '. Итоговая оценка: ' + Label22.Caption);
     end
     else
      CommentDlg.RO.Lines.Add(tstr);
     if ResAnaliz = 1 then
      CommentDlg.RO.Lines.Add('Результат теста:');
     CompleteData(CommentDlg.RO,M);
end;

procedure GenerateTestName(M:TMemoryStream; Nam : string);
var
 FF, PS, K, J : Longint;
 C : Char;
 M1 : TMemoryStream;
 buffer : PByte;
 B : Byte;
 tstr : string;
 alltime, hour, atime : integer;
begin
     CommentDlg.RO.Lines.Clear;
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.Lines.Add(Nam);
     CompleteBeginData(CommentDlg.RO,M);
end;

procedure GenerateGroup(M:TMemoryStream; Nam : string);
begin
     CommentDlg.RO.Lines.Clear;
     CommentDlg.RO.defAttributes.name := 'Arial';
     CommentDlg.RO.defAttributes.Style := [];
     CommentDlg.RO.defAttributes.Size := 11;
     CommentDlg.RO.defAttributes.Color := clBlue;
     CommentDlg.RO.Lines.Add(Nam);
     CompleteData(CommentDlg.RO,M);
end;

procedure GenerateResult(M:TMemoryStream;MR:TMemoryStream);
begin
     CommentDlg.RO.Lines.Clear;
     CommentDlg.RO.selAttributes.name := 'Arial';
     CommentDlg.RO.selAttributes.Style := [];
     CommentDlg.RO.selAttributes.Size := 11;
     CommentDlg.RO.selAttributes.Color := clBlack;
     MR.Position := 0;
     CommentDlg.RO.Lines.LoadFromStream(MR);
     CompleteData(CommentDlg.RO,M);
end;

Procedure GenerateQuestion(Mem:TMemoryStream; blen : integer; RBuf :Pbyte ; Ans : string; Scor1 : real; Scor2 : real; Num1: integer);
var
 RichText, M1 : TMemoryStream;
 j, k, z, ver, len, i : integer;
 buffer2 : PChar;
 FF, PS : Longint;
 C : Char;
 rbuffer : pbyte;
 B : Byte;
begin
try
  CommentDlg.RO.Lines.Clear;
  CommentDlg.RO.defAttributes.name := 'Arial';
  CommentDlg.RO.defAttributes.Style := [];
  CommentDlg.RO.defAttributes.Color := clBlack;
  CommentDlg.RO.defAttributes.Size := 12;
  RichText := TMemoryStream.Create;
  RichText.Write(rbuf^,blen);
  RichText.Position := 0;
  M1 := TMemoryStream.Create;
  bzip21.DecompressStream(RichText,M1);
  M1.Position := 0;
  CommentDlg.RO.Lines.LoadFromStream(M1);
  M1.Free;
  RichText.Free;

  M1 := TMemoryStream.Create;
  CommentDlg.RO.Lines.SaveToStream(M1);
  M1.Position := 0;
  J := 0;
  K := 0;
  while J<M1.Size-1 do
     begin
       M1.Read(B,1);
       if Chr(B) = '{' then Inc(K);
       if Chr(B) = '}' then
       begin
        Dec(K);
        if K=1 then
         break;
       end;
       Inc(J);
     end;
     WriteString(Mem,questr);
     WriteString(Mem,IntToStr(Num1));
     WriteString(Mem,'\b0\f1\fs16');
     WriteString(Mem,'\par ');
     PS := M1.Position;
     M1.Read(C,1);
     if C<>'}' then
     begin
      M1.Position := PS;
      rbuffer := AllocMem(M1.Size);
      M1.Read(rbuffer^,M1.Size-PS-4);
      Mem.Write(rbuffer^,M1.Size-PS-4);
      FreeMem(rbuffer);
     end
     else
     begin
      rbuffer := AllocMem(M1.Size);
      M1.Read(rbuffer^,M1.Size-PS-5);
      Mem.Write(rbuffer^,M1.Size-PS-5);
      FreeMem(rbuffer);
     end;
     M1.Free;
except
 Screen.Cursor := crDefault;
end;
end;

Procedure GenerateScore(Mem:TMemoryStream; Ans : string; Scor1 : real; Scor2 : real; Num1: integer);
begin
try
  CommentDlg.RO.Lines.Clear;
  CommentDlg.RO.DefAttributes.name := 'Times New Roman';
  CommentDlg.RO.DefAttributes.Style := [fsBold];
  CommentDlg.RO.DefAttributes.Color := clBlack;
  CommentDlg.RO.DefAttributes.Size := 12;
  if Scor1=Scor2 then
   CommentDlg.RO.Lines.Add('Ответ правильный.')
  else
   CommentDlg.RO.Lines.Add('Ответ неправильный.');
  CommentDlg.RO.defAttributes.name := 'Arial';
  CommentDlg.RO.defAttributes.Style := [];
  CommentDlg.RO.defAttributes.Color := clBlack;
  CommentDlg.RO.defAttributes.Size := 11;
  CommentDlg.RO.Lines.Add(Ans);
  CompleteData(CommentDlg.RO,Mem);
except
 Screen.Cursor := crDefault;
end;
end;

var
 QueName, AnswerName, OldGrpName, GrpName, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 QueNames : TStringList;
 MemRes, MemBuf, Mem : TMemoryStream;
 CTime, QCount, link, len : integer;
 bufferz, buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 UserAllScore, UserOcenka, UserScore, UserBall, MaxBall, Ball : real;
 ii, lnk, index, i, kk : integer;
 C : Char;
 StartPos, ToEnd, FoundAt :integer;
 bb : byte;
 FT : TRichSearchType;
begin
    FT := (stMatchCase);
    if LoadingForm=nil then
     LoadingForm := TLoadingForm.Create(Application);
    LoadingForm.Caption := 'Формирование результатов...';
    LoadingForm.Panel1.Caption := '';
    Screen.Cursor := crHourGlass;
    LoadingForm.Show;
    // Комм
    MemBuf := TMemoryStream.Create;

    ZZ.Position := 0;

    // ФИО
    ZZ.Read(len,4);
    buffer2 := AllocMem(len+1);
    ZZ.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    fio := strpas(buffer2);
    FreeMem(buffer2);

    // Название теста
    ZZ.Read(len,4);
    buffer2 := AllocMem(len+1);
    ZZ.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    tname := strpas(buffer2);
    FreeMem(buffer2);

    // Подразделения
    ZZ.Read(len,4);
    buffer2 := AllocMem(len+1);
    ZZ.Read(buffer2^,len);
    FreeMem(buffer2);

    // Должности
    ZZ.Read(len,4);
    buffer2 := AllocMem(len+1);
    ZZ.Read(buffer2^,len);
    FreeMem(buffer2);

    ZZ.Read(DT,8);
    ZZ.Read(DT,8);

    ZZ.Read(Ball,8);
    ZZ.Read(MaxBall,8);
    ZZ.Read(CTime,4);
    ZZ.Read(QCount,4);
    ZZ.Read(len,4);
    OldGrpName := '';
    GrpName := '';

    if ResGrpAnaliz=1 then
     begin
      GenerateName2(MemBuf, ResOcenka);
      for i:=0 to lv.Items.Count-1 do
       begin
        GenerateGroup2(MemBuf, i, ResOcenka);
        for ii:=0 to GroupResult.Count-1 do
        if TGroupResult(GroupResult.Items[ii]).GName = lv.items[i].SubItems[0] then
          begin
           ROResult.Lines.Clear;
           TGroupResult(GroupResult.Items[ii]).ResultMem.Position := 0;
           ROResult.Lines.LoadFromStream(TGroupResult(GroupResult.Items[ii]).ResultMem);
           MemRes := TMemoryStream.Create;
           ROResult.Lines.SaveToStream(MemRes);
           GenerateResult(MemBuf,MemRes);
           MemRes.Free;
           break;
          end;
       end;
      GenerateItog(MemBuf, ResOcenka);
      GenerateGroup(MemBuf,'Анализ ответов:')
     end
    else
     begin
      GenerateName(MemBuf, ResOcenka, ResAnaliz);
      if ResAnaliz=1 then
      begin
       MemRes := TMemoryStream.Create;
       ROResult.Lines.SaveToStream(MemRes);
       GenerateResult(MemBuf,MemRes);
       MemRes.Free;
      end;
      GenerateGroup(MemBuf,'Анализ ответов:')
     end;

    for i:=0 to (QCount-1) do
     begin
        LoadingForm.PB.Position := Trunc(i/(QCount)*100);
        LoadingForm.Repaint;
       {номер вопроса}
        ZZ.Read(len,4);
       {реальный id вопроса в базе}
        ZZ.Read(len,4);
        {балл полученный за вопрос}
        ZZ.Read(UserBall,8);
        ZZ.Read(UserScore,8);
        // вопрос
        ZZ.Read(link,4);
        bufferz := AllocMem(link);
        ZZ.Read(bufferz^,link);
        // группа
        ZZ.Read(len,4);
        buffer2 := AllocMem(len+1);
        ZZ.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        OldGrpName := GrpName;
        GrpName := StrPas(buffer2);
        FreeMem(buffer2);


        ZZ.Read(len,4);
        ZZ.Read(len,4);
        buffer2 := AllocMem(len+1);
        ZZ.Read(buffer2^,len);
        buffer2[len]:=Chr(0);
        AnswerName := StrPas(buffer2);
        FreeMem(buffer2);

        if OldGrpName<>GrpName then
          GenerateGroup(MemBuf,'Раздел (тема): ' + GrpName);

        GenerateQuestion(MemBuf,Link,bufferz,AnswerName,UserBall,UserScore,i+1);
        FreeMem(bufferz);

        GenerateScore(MemBuf,AnswerName,UserBall,UserScore,i+1);
     end;

     // Для версии 4.0 Начало
     ZZ.Read(bb,1);
     ZZ.Read(bb,1);
     ZZ.Read(bb,1);
     ZZ.Read(len,4);
     if len>0 then
        begin
         buffer := AllocMem(len);
         ZZ.Read(buffer^,len);
         FreeMem(buffer);
        end;
     ZZ.Read(len,4);
     if len>0 then
        begin
         buffer := AllocMem(len);
         ZZ.Read(buffer^,len);
         FreeMem(buffer);
        end;
     // Для версии 4.0 конец

    C := '}';
    MemBuf.Write(C,1);
    CommentDlg.Caption := 'Результаты тестирования';
    CommentDlg.RO.Lines.Clear;
    MemBuf.Position:=0;
    CommentDlg.BitBtn1.Enabled := False;
    if DeleteFile(ExtractFilePath(paramstr(0))+'temp.rtf') then
    begin
     try
      MemBuf.SaveToFile(ExtractFilePath(paramstr(0))+'temp.rtf');
      CommentDlg.BitBtn1.Enabled := True;
     except
      CommentDlg.BitBtn1.Enabled := False;
     end;
    end;
    MemBuf.Position:=0;
    CommentDlg.RO.Lines.LoadFromStream(MemBuf);
    MemBuf.Free;

    StartPos := 0;
    FoundAt := 0;
    while FoundAt<>-1 do
    begin
     ToEnd := Length(CommentDlg.RO.Text) - StartPos;
     FoundAt := CommentDlg.RO.FindText('Раздел (тема):', StartPos, ToEnd, [stMatchCase]);
     CommentDlg.RO.SelStart := FoundAt;
     CommentDlg.RO.SelLength := Length('Раздел (тема):');
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.SelAttributes.Color := clBlue;
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     StartPos := FoundAt + Length('Раздел (тема):');
    end;

    StartPos := 0;
    FoundAt := 0;
    while FoundAt<>-1 do
    begin
     ToEnd := Length(CommentDlg.RO.Text) - StartPos;
     FoundAt := CommentDlg.RO.FindText('Вопрос №', StartPos, ToEnd, [stMatchCase]);
     CommentDlg.RO.SelStart := FoundAt;
     CommentDlg.RO.SelLength := Length('Вопрос №');
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.SelAttributes.Style := [fsBold];
     StartPos := FoundAt + Length('Вопрос №');
    end;

    StartPos := 0;
    FoundAt := 0;
    while FoundAt<>-1 do
    begin
     ToEnd := Length(CommentDlg.RO.Text) - StartPos;
     FoundAt := CommentDlg.RO.FindText('Ответ правильный.', StartPos, ToEnd, [stMatchCase]);
     CommentDlg.RO.SelStart := FoundAt;
     CommentDlg.RO.SelLength := Length('Ответ правильный.');
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.SelAttributes.Style := [fsUnderline];
     StartPos := FoundAt + Length('Ответ правильный.');
    end;

    StartPos := 0;
    FoundAt := 0;
    while FoundAt<>-1 do
    begin
     ToEnd := Length(CommentDlg.RO.Text) - StartPos;
     FoundAt := CommentDlg.RO.FindText('Ответ неправильный.', StartPos, ToEnd, [stMatchCase]);
     CommentDlg.RO.SelStart := FoundAt;
     CommentDlg.RO.SelLength := Length('Ответ неправильный.');
     CommentDlg.RO.SelAttributes.name := 'Arial';
     CommentDlg.RO.SelAttributes.Color := clBlack;
     CommentDlg.RO.SelAttributes.Size := 12;
     CommentDlg.RO.SelAttributes.Style := [fsUnderline];
     StartPos := FoundAt + Length('Ответ неправильный.');
    end;

    Screen.Cursor := crDefault;
    LoadingForm.Close;
    CommentDlg.ShowModal;
end;


procedure TPersonalForm.AddGroupResult;
var
TT : TGroupResult;
begin
  TT := TGroupResult.Create;
  M.Position := 0;
  TT.GName := S;
  TT.ResultMem.LoadFromStream(M);
  GroupResult.Add(TT);
end;

procedure TPersonalForm.DelGroupResult;
begin
  TGroupResult(GroupResult.Items[N]).Free;
  GroupResult.Delete(N);
end;

procedure TPersonalForm.FormShow(Sender: TObject);
var
 OldGrpName, GrpName, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 c, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT,DT2 : TDateTime;
 UserScore, UserBall, MaxBall, Ball : real;
 cnt, ii, index, QCount, i, kk : integer;
 j, CTime, AllQ, RightQ, Keyboard, Equals, Variants, Sequent : integer;
 ResCount, lnk, AKeyboard, AEquals, AVariants, ASequent : integer;
 AnsCount, Old1,Old2, Old3, Old4, Old5, Old6 : integer;
 ListItem : TListItem;
 bb : byte;
 Mout, MM : TMemoryStream;
 Registry:TMyStream;
 F : TFileStream;
 HoleOcenka, UserAllScore, UserOcenka : Real;
begin
label1.Font.Color := clBlue;
label2.Font.Color := clWindowText;
label3.Font.Color := clWindowText;
label23.Caption := '';
GroupResult := TList.Create;
SUserAllScore :=0;
SUserOcenka :=0;

 try
  if mf.IsRemoteTest then
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmOpenRead)
  else
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'spr.cf2',fmOpenRead);
  Label4.Caption:=Registry.ReadString+':';
  Label5.Caption:=Registry.ReadString+':';
  Registry.Free;
 except
 end;

 BitBtn2.Enabled := AppOptions.RegDone;

 AAllQ := 0;
 ARightQ := 0;
 lv.Items.Clear;

//    M.Read(len,4);

    if mf.IsRemoteTest then
    begin
     if not temporarytest then
      M.Read(len,4);
     M.Read(len,4);
     M.Seek(len,soFromCurrent);
    end
    else
     M.Read(len,4);

    // ФИО
    M.Read(len,4);
    buffer2 := AllocMem(len+1);
    M.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    Label18.Caption := StrPas(buffer2);
    FreeMem(buffer2);

    // Название теста
    M.Read(len,4);
    buffer2 := AllocMem(len+1);
    M.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    TestName := StrPas(buffer2);
    Label26.Caption := 'Контрольный тест' + chr(10) + chr(13) + TestName;
    FreeMem(buffer2);

    // Спр 1
    M.Read(len,4);
    buffer2 := AllocMem(len+1);
    M.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    Label16.Caption := StrPas(buffer2);
    FreeMem(buffer2);

    // Спр 2
    M.Read(len,4);
    buffer2 := AllocMem(len+1);
    M.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    Label17.Caption := StrPas(buffer2);
    FreeMem(buffer2);

    M.Read(DT,8);
    M.Read(DT2,8);

    M.Read(Ball,8);
    M.Read(MaxBall,8);
    M.Read(CTime,4);
    M.Read(QCount,4);
    M.Read(len,4);
    OldGrpName := '';
    GrpName := '';
    AKeyBoard := 0;
    AVariants := 0;
    AEquals := 0;
    ASequent := 0;
    AllQ:=0;
    RightQ:=0;
    KeyBoard := 0;
    Variants := 0;
    Equals := 0;
    Sequent := 0;
    UserOcenka := 0;
    UserAllScore := 0;
    AnsCount := 0;
    for i:=0 to (QCount-1) do
     begin
       {номер вопроса}
        M.Read(len,4);
       {реальный id вопроса в базе}
        M.Read(len,4);
        {балл полученный за вопрос}
        M.Read(UserBall,8);
        M.Read(UserScore,8);

        M.Read(len,4);
        if mf.IsRemoteTest then
        begin
         GetMem(buffer,len);
         M.Read(buffer^,len);
         FreeMem(buffer);
        end;
        // Link
        M.Read(lnk,4);
        if mf.IsRemoteTest then
        begin
          buffer2 := AllocMem(lnk+1);
          m.Read(buffer2^,lnk);
          buffer2[lnk]:=Chr(0);
          OldGrpName := GrpName;
          GrpName := StrPas(buffer2);
          FreeMem(buffer2);
        end
        else
        begin
        mf.GroupStream.Position := 0;
        ii := 0;
        while mf.GroupStream.Position<mf.GroupStream.Size do
         begin
          inc(ii);
          if ii=Lnk then break;
          mf.GroupStream.Read(len,4);
          GetMem(buffer,len);
          mf.GroupStream.Read(buffer^,len);
          FreeMem(buffer);
         end;
        if ii=lnk then
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
        end;
        M.Read(c,4);
        M.Read(len,4);
        if len>0 then Inc(AnsCount);
        GetMem(buffer,len);
        M.Read(buffer^,len);
        FreeMem(buffer);

        if OldGrpName<>GrpName then
        begin
          Inc(KK);
          if KK>1 then
          begin
           lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(AllQ));
           lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(RightQ));
           lv.Items[lv.Items.Count-1].SubItems.Add(FormatFloat('0.00',UserAllScore));
           lv.Items[lv.Items.Count-1].SubItems.Add(FormatFloat('0.00',UserOcenka));
           lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Variants));
           lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Keyboard));
           lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Equals));
           lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Sequent));
           lv.Items[lv.Items.Count-1].SubItems.Add(FormatFloat('0.00',UserOcenka*5/UserAllScore));
          end;
          ListItem := lv.Items.Add;
          ListItem.Caption := IntToStr(KK);
          ListItem.SubItems.Add(GrpName);
///          if i <> QCount-1 then
//          begin
           AllQ:=0;
           RightQ:=0;
           KeyBoard := 0;
           Variants := 0;
           Equals := 0;
           Sequent := 0;
           UserOcenka := 0;
           UserAllScore := 0;
//          end;
        end;
        UserOcenka := UserOcenka + UserBall;
        UserAllScore := UserAllScore + UserScore;
        SUserOcenka := SUserOcenka + UserBall;
        SUserAllScore := SUserAllScore + UserScore;
        Inc(AllQ);
        Inc(AAllQ);
        if UserBall>0 then begin
         Inc(RightQ);
         Inc(ARightQ);
        end;
        case c of
         1: begin
         if UserBall>0 then
            Inc(Keyboard);
           Inc(AKeyboard);
         end;

         2: begin
            if UserBall>0 then
              Inc(Equals);
            Inc(AEquals);
         end;
         3: begin
            if UserBall>0 then
             Inc(Variants);
            Inc(AVariants);
         end;
         4: begin
            if UserBall>0 then
              Inc(Sequent);
            Inc(ASequent);
         end;
        end;
     end;

     lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(AllQ));
     lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(RightQ));
     lv.Items[lv.Items.Count-1].SubItems.Add(FormatFloat('0.00',UserAllScore));
     lv.Items[lv.Items.Count-1].SubItems.Add(FormatFloat('0.00',UserOcenka));
     lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Variants));
     lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Keyboard));
     lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Equals));
     lv.Items[lv.Items.Count-1].SubItems.Add(IntToStr(Sequent));
     if UserScore<>0 then
      lv.Items[lv.Items.Count-1].SubItems.Add(FormatFloat('0.00',UserOcenka*5/UserAllScore));

     // Для версии 3.0 Начало
     M.Read(bb,1); // ResOcenka
     ResOcenka := bb;
     M.Read(bb,1); // ResAnaliz
     ResAnaliz := bb;
     M.Read(bb,1); // ResGrpAnaliz
     ResGrpAnaliz := bb;
     M.Read(len,4);
     ROResult.Lines.Clear;
     if len>0 then
        begin
         buffer := AllocMem(len);
         M.Read(buffer^,len);
         MM := TMemoryStream.Create;
         MM.Write(buffer^,len);
         MM.Position := 0;
         Mout := TMemoryStream.Create;
         bzip21.DecompressStream(MM,Mout);
         Mout.Position := 0;
         ROResult.Lines.LoadFromStream(Mout);
         Mout.Free;
         MM.Free;
         FreeMem(buffer);
        end;
     // ResGrpAnaliz
     M.Read(len,4);
     if len>0 then
        begin
          M.Read(ResCount,4);
          for j:=0 to ResCount-1 do
           begin
            M.Read(lnk,4);
            buffer2 := AllocMem(lnk+1);
            M.Read(buffer2^,lnk);
            buffer2[lnk]:=Chr(0);
            GrpName := StrPas(buffer2);
            FreeMem(buffer2);

            M.Read(lnk,4);
            buffer := AllocMem(lnk);
            M.Read(buffer^,lnk);
            MM := TMemoryStream.Create;
            MM.Write(buffer^,lnk);
            MM.Position := 0;
            Mout := TMemoryStream.Create;
            bzip21.DecompressStream(MM,Mout);
            Mout.Position := 0;
            AddGroupResult(Mout,GrpName);
            FreeMem(buffer);
            Mout.Free;
            MM.Free;
           end;
        end;
     if ResAnaliz=1 then
     begin
       Label15.Visible := False;
       ROResult.Visible := True;
       GroupBox3.Caption := 'Результат теста';
     end
     else
     begin
       Label15.Visible := True;
       ROResult.Visible := False;
       GroupBox3.Caption := 'Примечание';
     end;
     if ResOcenka=1 then
     begin
       GroupBox4.Visible := True;
       GroupBox4.Left := Panel6.Width - GroupBox4.Width - 5;
       GroupBox3.Width := GroupBox4.Left - GroupBox3.Left - 5;
       lv.Columns[10].Caption := 'Оценка(5)';
     end
     else
     begin
       GroupBox4.Visible := False;
       GroupBox3.Width := Panel6.Width - GroupBox3.Left - 5;
       lv.Columns[10].Caption := '';
       for i:=0 to lv.Items.Count-1 do
        lv.Items[i].SubItems[9] := '';
     end;
     // Для версии 3.0 конец

     Chart1.Series[0].Clear;
     Chart1.Series[0].Add(SUserAllScore-SUserOcenka, 'Неправильно' ,clBlue);
     Chart1.Series[0].Add(SUserOcenka, 'Правильно',clLime);

     Label11.Caption := IntToStr(AVariants);
     Label12.Caption := IntToStr(AKeyboard);
     Label13.Caption := IntToStr(AEquals);
     Label14.Caption := IntToStr(ASequent);
     if MaxBall <> 0 then
     begin
      Label20.Caption := FormatFloat('0.00',Ball*5 / MaxBall);
      Label21.Caption := FormatFloat('0.00',Ball*10 / MaxBall);
      Label22.Caption := FormatFloat('0.00',Ball*20 / MaxBall);
      Label25.Caption := FormatFloat('0.00',Ball*100 / MaxBall);

      if MaxBall > 0 then
      begin
       HoleOcenka := Ball*5 / MaxBall;
       if HoleOcenka < 2.5 then
        Label23.Caption := 'Неудовлетворительно'
       else
       if (HoleOcenka >= 2.5) and  (HoleOcenka < 3.49) then
        Label23.Caption := 'Удовлетворительно'
       else
       if (HoleOcenka >= 3.5) and  (HoleOcenka < 4.49) then
        Label23.Caption := 'Хорошо'
       else
       if HoleOcenka >= 4.5 then
        Label23.Caption := 'Отлично';
      end
      else
       Label23.Caption := '';

{      case Round(Ball*5 / MaxBall) of
       0,1,2 : Label23.Caption := 'Неудовлетворительно';
       3 : Label23.Caption := 'Удовлетворительно';
       4 : Label23.Caption := 'Хорошо';
       5 : Label23.Caption := 'Отлично';
      end;}

     end;
 Resize;
end;

procedure TPersonalForm.FormResize(Sender: TObject);
begin
 if GroupBox4.Visible then
 begin
  GroupBox4.Left := Panel6.Width - GroupBox4.Width - 12;
  GroupBox3.Width := GroupBox4.Left - GroupBox3.Left - 8;
 end
 else
  GroupBox3.Width := Panel6.Width - GroupBox3.Left - 8;
 Panel6.Repaint;
end;

procedure TPersonalForm.BitBtn2Click(Sender: TObject);
var
 MSWord: Variant;
 QueName, AnswerName, OldGrpName, GrpName, fio, work, sub, tname, tdata, qall , qball, ocenka : string;
 ii, len : integer;
 buffer : PByte;
 buffer2 : PChar;
 exist:boolean;
 DT : TDateTime;
 UserAllScore, UserOcenka, UserScore, UserBall, MaxBall, Ball : real;
 index, QCount, i, kk : integer;
 CTime, AllQ, RightQ, AAllQ, ARightQ, Keyboard, Equals, Variants, Sequent : integer;
 AKeyboard, AEquals, AVariants, ASequent : integer;
 MS, MB : real;
 tstr : string;
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
  MSWord.Documents.Add;
  MSWord.Selection.Font.Size := 14;
  MSWord.Selection.Font.Bold := true;
  MSWord.Selection.Font.Color := 0;
  MSWord.Selection.TypeText(#13+#10+Label26.Caption);
  MSWord.Selection.TypeText(#13+#10+'Фамилия, Имя, Отчество: '+Label18.Caption);
  MSWord.Selection.TypeText(#13+#10+Label4.Caption+' '+Label16.Caption);
  MSWord.Selection.TypeText(#13+#10+Label5.Caption+' '+Label17.Caption);
  MSWord.Selection.Font.Color := $FF0000;
  MSWord.Selection.TypeText(#13+#10+#13+#10+'Данные по разделам (темам):');
  Mb := 0;
  Ms := 0;
  for i:=0 to lv.Items.Count-1 do
  begin
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.Font.Size := 14;
   MSWord.Selection.Font.Underline := false;
   MSWord.Selection.Font.Bold := true;
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.TypeText(#13+#10+'№'+lv.Items[i].Caption + '. ');
   MSWord.Selection.Font.Color := $FF0000;
   MSWord.Selection.TypeText(lv.Items[i].SubItems[0]+' ');
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.Font.Size := 11;
   MSWord.Selection.Font.Bold := true;
   if ResOcenka = 1 then
   begin
    try
     MSWord.Selection.TypeText(#13+#10+'Количество баллов : '+lv.Items[i].SubItems[4]+
     ' ('+FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])/StrToFloat(lv.Items[i].SubItems[3])*100)+'%) из '+
     lv.Items[i].SubItems[3]+ '. Итоговая оценка: ');
     MSWord.Selection.Font.Color := $0000FF;
     MSWord.Selection.Font.Size := 14;
     MSWord.Selection.TypeText(lv.Items[i].SubItems[9]);
     MSWord.Selection.Font.Color := 0;
    except
    end;
   end
   else
   begin
    MSWord.Selection.TypeText(#13+#10+'Количество баллов : '+lv.Items[i].SubItems[4]+
    ' ('+FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])/StrToFloat(lv.Items[i].SubItems[3])*100)+'%) из '+
    lv.Items[i].SubItems[3]);
   end;
   if ResGrpAnaliz=1 then
   begin
     for ii:=0 to GroupResult.Count-1 do
        if TGroupResult(GroupResult.Items[ii]).GName = lv.items[i].SubItems[0] then
          begin
           CommentDlg.RO.Lines.Clear;
           TGroupResult(GroupResult.Items[ii]).ResultMem.Position := 0;
           CommentDlg.RO.Lines.LoadFromStream(TGroupResult(GroupResult.Items[ii]).ResultMem);
           buffer2 := AllocMem(CommentDlg.RO.GetTextLen+1);
           CommentDlg.RO.GetTextBuf(buffer2,CommentDlg.RO.GetTextLen);
           MSWord.Selection.Font.Color := 0;
           MSWord.Selection.Font.Size := 14;
           MSWord.Selection.Font.Bold := true;
           MSWord.Selection.TypeText(#13+#10+StrPas(buffer2));
           FreeMem(buffer2);
           break;
          end;
   end;
   MB := MB + StrToFloat(lv.Items[i].SubItems[4]);
   MS := MS + StrToFloat(lv.Items[i].SubItems[3]);
  end;
  if ResOcenka=1 then
  begin
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.TypeText(#13+#10+#13+#10+'Итоговая оценка по всем разделам(темам): ');
   MSWord.Selection.Font.Color := $0000FF;
   MSWord.Selection.TypeText(Label23.Caption);
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.Font.Size := 11;
   MSWord.Selection.Font.Bold := true;
   MSWord.Selection.TypeText(#13+#10+'Итоговое количество баллов : '+FloatToStr(MB)+
   ' ('+FormatFloat('0.00',MB/MS*100)+'%) из '+
   FloatToStr(MS)+ '. Итоговая оценка: ');
   MSWord.Selection.Font.Color := $0000FF;
   if lv.Columns[10].Caption = 'Оценка(5)' then
    MSWord.Selection.TypeText(Label20.Caption)
   else
   if lv.Columns[10].Caption = 'Оценка(10)' then
    MSWord.Selection.TypeText(Label21.Caption)
   else
   if lv.Columns[10].Caption = 'Оценка(20)' then
    MSWord.Selection.TypeText(Label22.Caption)
   else
   if lv.Columns[10].Caption = 'Оценка(100)' then
    MSWord.Selection.TypeText(Label25.Caption+' (100)');
  end
  else
  begin
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.Font.Size := 11;
   MSWord.Selection.Font.Bold := true;
   MSWord.Selection.TypeText(#13+#10+'Итоговое количество баллов : '+FloatToStr(MB)+
   ' ('+FormatFloat('0.00',MB/MS*100)+'%) из '+
   FloatToStr(MS));
  end;
  if ResAnaliz=1 then
  begin
   MSWord.Selection.Font.Size := 14;
   MSWord.Selection.Font.Bold := false;
   MSWord.Selection.Font.Color := $0000FF;
   MSWord.Selection.TypeText(#13+#10+#13+#10+'Результат теста : ');
   buffer2 := AllocMem(ROResult.GetTextLen+1);
   ROResult.GetTextBuf(buffer2,ROResult.GetTextLen);
   MSWord.Selection.Font.Color := 0;
   MSWord.Selection.Font.Size := 14;
   MSWord.Selection.Font.Bold := true;
   MSWord.Selection.TypeText(#13+#10+StrPas(buffer2));
   FreeMem(buffer2);
  end;
end;

procedure TPersonalForm.lvDblClick(Sender: TObject);
var
 i : integer;
begin
if lv.Selected=nil then
begin
 Chart1.Series[0].Clear;
 Chart1.Series[0].Add(SUserAllScore-SUserOcenka, 'Неправильно' ,clBlue);
 Chart1.Series[0].Add(SUserOcenka, 'Правильно',clLime);
 if ResGrpAnaliz=1 then
  begin
   Label15.Visible := True;
   ROResult.Visible := False;
   GroupBox3.Caption := 'Примечание';
  end;
end
else
begin
 Chart1.Series[0].Clear;
 Chart1.Series[0].Add(StrToFloat(lv.Selected.Subitems[3])-StrToFloat(lv.Selected.Subitems[4]), 'Неправильно' ,clBlue);
 Chart1.Series[0].Add(StrtoFloat(lv.Selected.Subitems[4]), 'Правильно',clLime);
 if ResGrpAnaliz=1 then
  begin
   Label15.Visible := True;
   ROResult.Visible := False;
   GroupBox3.Caption := 'Примечание';
   for i:=0 to GroupResult.Count-1 do
    if TGroupResult(GroupResult.Items[i]).GName = lv.Selected.SubItems[0] then
    begin
     Label15.Visible := False;
     ROResult.Lines.Clear;
     TGroupResult(GroupResult.Items[i]).ResultMem.Position := 0;
     ROResult.Lines.LoadFromStream(TGroupResult(GroupResult.Items[i]).ResultMem);
     ROResult.Visible := True;
     GroupBox3.Caption := 'Результат по разделу (теме)';
     break;
    end;
  end;
end;
end;

procedure TPersonalForm.lvClick(Sender: TObject);
begin
 lvDblClick(Sender);
end;

procedure TPersonalForm.ToolbarButton972Click(Sender: TObject);
begin
// Application.HelpFile := ExtractFilePath(paramstr(0))+'qeditor.hlp';
// Application.HelpJump('results');
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/19ss3.htm'), HH_DISPLAY_TOC, 0);
end;

procedure TPersonalForm.ROResultDblClick(Sender: TObject);
begin
 ROResult.SelectAll;
 ROResult.CopyToClipboard;
 CommentDlg.Caption := 'Результаты тестирования';
 CommentDlg.RO.Lines.Clear;
 CommentDlg.RO.ReadOnly := False;
 CommentDlg.RO.PasteFromClipboard;
 CommentDlg.RO.ReadOnly := True;
 CommentDlg.BitBtn1.Enabled := False;
 CommentDlg.ShowModal;
end;

procedure TPersonalForm.lvColumnClick(Sender: TObject;
  Column: TListColumn);
begin
 if Column.Index = 10 then
  ToolbarButton973Click(Sender);
end;

procedure TPersonalForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
 i : integer;
begin
 if GroupResult.Count > 0 then
  for i:=0 to GroupResult.Count-1 do
   TGroupResult(GroupResult.Items[i]).Free;
 GroupResult.Free;
end;

procedure TPersonalForm.ToolbarButton973Click(Sender: TObject);
var
 i : integer;
begin
  if lv.Column[10].Caption = 'Оценка(5)' then
  begin
   lv.Column[10].Caption := 'Оценка(10)';
   label1.Font.Color := clWindowText;
   label2.Font.Color := clBlue;
   label3.Font.Color := clWindowText;
   label24.Font.Color := clWindowText;
   for i:=0 to lv.Items.Count-1 do
    lv.Items[i].SubItems[9] := FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])*10/StrToFloat(lv.Items[i].SubItems[3]));
  end
  else
  if lv.Column[10].Caption = 'Оценка(10)' then
  begin
   lv.Column[10].Caption := 'Оценка(20)';
   label1.Font.Color := clWindowText;
   label2.Font.Color := clWindowText;
   label3.Font.Color := clBlue;
   label24.Font.Color := clWindowText;
   for i:=0 to lv.Items.Count-1 do
    lv.Items[i].SubItems[9] := FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])*20/StrToFloat(lv.Items[i].SubItems[3]));
  end
  else
  if lv.Column[10].Caption = 'Оценка(20)' then
  begin
   lv.Column[10].Caption := 'Оценка(100)';
   label1.Font.Color := clWindowText;
   label2.Font.Color := clWindowText;
   label3.Font.Color := clWindowText;
   label24.Font.Color := clBlue;
   for i:=0 to lv.Items.Count-1 do
    lv.Items[i].SubItems[9] := FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])*100/StrToFloat(lv.Items[i].SubItems[3]));
  end
  else
  if lv.Column[10].Caption = 'Оценка(100)' then
  begin
   lv.Column[10].Caption := 'Оценка(5)';
   label1.Font.Color := clBlue;
   label2.Font.Color := clWindowText;
   label3.Font.Color := clWindowText;
   label24.Font.Color := clWindowText;
   for i:=0 to lv.Items.Count-1 do
    lv.Items[i].SubItems[9] := FormatFloat('0.00',StrToFloat(lv.Items[i].SubItems[4])*5/StrToFloat(lv.Items[i].SubItems[3]));
  end;
end;

procedure TPersonalForm.lvKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (KEY=VK_UP) or (KEY=VK_DOWN) or (KEY=VK_HOME) or (KEY=VK_END) or
 (KEY=VK_PRIOR) or (KEY=VK_NEXT) or (KEY=VK_LEFT) or (KEY=VK_RIGHT)
 then
  lvDblClick(Sender);
end;

procedure TPersonalForm.Button1Click(Sender: TObject);
begin
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/19ss3.htm'), HH_DISPLAY_TOC, 0);
end;

procedure TPersonalForm.ProtocolButtonClick(Sender: TObject);
begin
 ExtResults(True);
end;

end.
