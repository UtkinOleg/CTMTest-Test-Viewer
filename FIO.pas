unit FIO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, IniFiles, StrUtils, ExtCtrls, comtypes,
  TB97Ctls, ButtonComps ;

const
  PassCode = '#8fiыц12"*92ывыв3sa3d32-04x)@*1';

type

 PwdStr = class(TObject)
  public
    S : string;
 end;

  TFIOForm = class(TForm)
    Panel1: TPanel;
    SelButton1: TSelButton;
    SelButton2: TSelButton;
    PanelSpr1: TPanel;
    Label1: TLabel;
    Spr1Edit: TEdit97;
    SB1: TSelButton;
    BtnClr1: TSelButton;
    PanelSpr2: TPanel;
    Label3: TLabel;
    Spr2Edit: TEdit97;
    SelButton3: TSelButton;
    SelButton4: TSelButton;
    PanelFam: TPanel;
    Label2: TLabel;
    FamEdit: TEdit97;
    SelButton5: TSelButton;
    SelButton6: TSelButton;
    PanelSpr3: TPanel;
    Label4: TLabel;
    Spr3Edit: TEdit97;
    Panel2: TPanel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Panel3: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure ToolbarButton972Click(Sender: TObject);
    procedure ToolbarButton973Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure SB1Click(Sender: TObject);
    procedure SelButton3Click(Sender: TObject);
    procedure SelButton5Click(Sender: TObject);
    procedure SelButton6Click(Sender: TObject);
    procedure BtnClr1Click(Sender: TObject);
    procedure SelButton4Click(Sender: TObject);
    procedure FamEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Spr2EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Spr1EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    PwdEdit : string;
  end;

  SprPIndex = ^SprTiIndex;
  SprTiIndex = record
    ID : integer;
    Name : string;
  end;

  PIndex = ^TiIndex;
  TiIndex = record
    ID : integer;
    FIO : string;
    Spr3 : string;
    Spr1_ID : integer;
    Spr2_ID : integer;
  end;

var
  TIndex : PIndex;
  SprTIndex : SprPIndex;
  Spr1TIndex : SprPIndex;
  Spr2TIndex : SprPIndex;
  Spr1List, Spr2List, UsersList : TList;
  FIOForm: TFIOForm;
  Selected1, Selected2 : integer;

implementation

uses Select, Main, Loading;

{$R *.DFM}

procedure TFIOForm.Button1Click(Sender: TObject);
begin
 if Spr3Edit.Enabled then
  if CompareStr(PwdEdit,Spr3Edit.Text) <> 0 then
  begin
   ShowMessage('Доступ закрыт.');
   Exit;
  end;
 if (Length(FamEdit.Text)=0) or ((Length(Spr1Edit.Text)=0) and Spr1Edit.Enabled)
 or ((Length(Spr2Edit.Text)=0) and (Spr2Edit.Enabled)) then
   ShowMessage('Регистрационные поля не заполнены.')
 else
  begin
  FamEdit.Text := Trim(FamEdit.Text);
  Spr1Edit.Text := Trim(Spr1Edit.Text);
  Spr2Edit.Text := Trim(Spr2Edit.Text);
  Spr3Edit.Text := Trim(Spr3Edit.Text);
  ModalResult := mrOK;
 end;
end;

procedure TFIOForm.Button2Click(Sender: TObject);
begin
 ModalResult := mrCancel;
end;

procedure TFIOForm.FormShow(Sender: TObject);

function DeCrypt(Source: PChar; len : integer): String;
var
  TmpRandom: Byte;
  TmpStr, Key: String;
  I, ResLength, B: Integer;
begin
  TmpStr := '';
  Key := PassCode;
  TmpRandom := not Ord(Source[0]);
  B := 0;
  for I := 1 to Len-1 do
  begin
    inc(B);
    if B > Length(Key) then b := 1;
    TmpStr := TmpStr + Chr(Ord(Source[I]) xor TmpRandom xor Ord(Key[B]));
  end;
  Result := TmpStr;
end;

var
  F: TFileStream;
  cnt, len, i : integer;
  buffer : PChar;
  Registry : TmyStream;
  b : byte;
  enable_spr1, enable_spr2, enable_spr3, edit_spr1, edit_spr2, edit_spr3 : byte;
begin
 Selected1 := -1;
 Selected2 := -1;
 UsersList := TList.Create;
 Spr1List := TList.Create;
 Spr2List := TList.Create;
 try
   if mf.IsRemoteTest then
    Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmOpenRead)
   else
    Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'spr.cf2',fmOpenRead);
   Label1.Caption:=Registry.ReadString+':';
   Label3.Caption:=Registry.ReadString+':';
   Label4.Caption:=Registry.ReadString+':';
   enable_spr1 := Registry.ReadByte;
   enable_spr2 := Registry.ReadByte;
   enable_spr3 := Registry.ReadByte;
   edit_spr1 := Registry.ReadByte;
   edit_spr2 := Registry.ReadByte;
   edit_spr3 := Registry.ReadByte;
   Registry.Free;
 except
   enable_spr1 := 1;
   enable_spr2 := 1;
   enable_spr3 := 1;
   edit_spr1 := 0;
   edit_spr2 := 0;
   edit_spr3 := 0;
   Screen.Cursor := crDefault;
 end;
 try
  Spr1List.Clear;
  Spr2List.Clear;
  if mf.IsRemoteTest then
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmOpenRead)
  else
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'spr1.dat',fmOpenRead);
  F.Position := 0;
  while F.Position < F.Size do
   begin
      New(SprTIndex);
      F.Read(len,4);
      SprTIndex^.ID := len;
      F.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      SprTIndex^.Name := StrPas(buffer);
      FreeMem(buffer);
      Spr1List.Add(SprTIndex);
   end;
  F.Free;
 except
   Screen.Cursor := crDefault;
 end;
 try
   if mf.IsRemoteTest then
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmOpenRead)
   else
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'spr2.dat',fmOpenRead);
   F.Position := 0;
   while F.Position < F.Size do
    begin
      New(SprTIndex);
      F.Read(len,4);
      SprTIndex^.ID := len;
      F.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F.Read(buffer^,len);
      buffer[len]:=Chr(0);
      SprTIndex^.Name := StrPas(buffer);
      FreeMem(buffer);
      Spr2List.Add(SprTIndex);
    end;
   F.Free;
 except
   Screen.Cursor := crDefault;
 end;
 try
   if mf.IsRemoteTest then
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmOpenRead)
   else
    F := TFileStream.Create(ExtractFilePath(paramstr(0))+'users2.dat',fmOpenRead);
   F.Position := 0;
   while F.Position < F.Size do
    begin
      Application.ProcessMessages;
      // Размер записи
      F.Read(len,4);

      F.Read(len,4);
      buffer := AllocMem(len);
      F.Read(buffer^,len);
      New(TIndex);
      TIndex^.ID := I;
      Inc(I);
      TIndex^.FIO := Decrypt(buffer,len);
      FreeMem(buffer);

      // Справочник 1
      F.Read(len,4);
      TIndex^.Spr1_ID := len;
      // Справочник 2
      F.Read(len,4);
      TIndex^.Spr2_ID := len;

      // Справочник 3
      F.Read(len,4);
      buffer := AllocMem(len);
      F.Read(buffer^,len);
      TIndex^.Spr3 := Decrypt(buffer,len);
      FreeMem(buffer);

      UsersList.Add(TIndex);
    end;
   F.Free;
 except
   Screen.Cursor := crDefault;
   ShowMessage('Ошибка ввода/вывода.');
 end;

 Height := 280;
 Panel1.Height := 209;
 Spr1Edit.Enabled := enable_spr1 = 1;
 Label1.Enabled := enable_spr1 = 1;
 SB1.Enabled := enable_spr1 = 1;
 BtnClr1.Enabled := enable_spr1 = 1;
 PanelSpr1.Visible := enable_spr1 = 1;
 if not PanelSpr1.Visible then
 begin
  Height := Height - 48;
  Panel1.Height := Panel1.Height - 48;
 end;

 Spr2Edit.Enabled := enable_spr2 = 1;
 Label3.Enabled := enable_spr2 = 1;
 SelButton3.Enabled := enable_spr2 = 1;
 SelButton4.Enabled := enable_spr2 = 1;
 PanelSpr2.Visible := enable_spr2 = 1;
 if not PanelSpr2.Visible then
 begin
  Height := Height - 48;
  Panel1.Height := Panel1.Height - 48;
 end;

 Spr3Edit.Enabled := enable_spr3 = 1;
 PanelSpr3.Visible := enable_spr3 = 1;
 if not PanelSpr3.Visible then
 begin
  Height := Height - 48;
  Panel1.Height := Panel1.Height - 48;
 end;

 FamEdit.ReadOnly := edit_spr1 = 1;
 Spr1Edit.ReadOnly := edit_spr2 = 1;
 Spr2Edit.ReadOnly := edit_spr3 = 1;

 if Spr1Edit.Enabled then
  Spr1Edit.SetFocus
 else
 if Spr2Edit.Enabled then
  Spr2Edit.SetFocus
 else
  FamEdit.SetFocus;
end;

procedure TFIOForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
 i : integer;
begin
 for i:=0 to UsersList.Count - 1 do
  Dispose(UsersList.Items[i]);
 for i:=0 to Spr1List.Count - 1 do
  Dispose(Spr1List.Items[i]);
 for i:=0 to Spr2List.Count - 1 do
  Dispose(Spr2List.Items[i]);
 UsersList.Free;
 Spr1List.Free;
 Spr2List.Free;
end;

procedure TFIOForm.ToolbarButton971Click(Sender: TObject);
begin
 Spr1Edit.Text := '';
 Selected1 := -1;
end;

procedure TFIOForm.ToolbarButton972Click(Sender: TObject);
begin
  Spr2Edit.Text := '';
  Selected2 := -1;
end;

procedure TFIOForm.ToolbarButton973Click(Sender: TObject);
begin
 FamEdit.Text := '';
end;

procedure TFIOForm.Button3Click(Sender: TObject);
begin
  Application.HelpFile := ExtractFilePath(paramstr(0))+'PRTEST.HLP';
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TFIOForm.SB1Click(Sender: TObject);
var
 i : integer;
begin
 if SelectForm = nil then
   SelectForm := TSelectForm.Create(Application);
 SelectForm.Caption:=Label1.Caption;
 SelectForm.LB.Sorted := False;
 SelectForm.LB.Items.Clear;
 for i:=0 to Spr1List.Count-1 do
 begin
   SprTIndex := Spr1List.Items[i];
   SelectForm.LB.Items.Add(SprTIndex^.Name);
 end;
 if SelectForm.ShowModal=mrOk then
  if SelectForm.LB.ItemIndex<>-1 then
  begin
   SprTIndex := Spr1List.Items[SelectForm.LB.ItemIndex];
   Spr1Edit.Text := SprTIndex^.Name;
   Selected1 := SprTIndex^.ID;
   FamEdit.Text := '';
  end;
end;

procedure TFIOForm.SelButton3Click(Sender: TObject);
var
 i : integer;
begin
 if SelectForm = nil then
   SelectForm := TSelectForm.Create(Application);
 SelectForm.Caption:=Label3.Caption;
 SelectForm.LB.Sorted := False;
 SelectForm.LB.Items.Clear;
 for i:=0 to Spr2List.Count-1 do
 begin
   SprTIndex := Spr2List.Items[i];
   SelectForm.LB.Items.Add(SprTIndex^.Name);
 end;
 if SelectForm.ShowModal=mrOk then
  if SelectForm.LB.ItemIndex<>-1 then
  begin
   SprTIndex := Spr2List.Items[SelectForm.LB.ItemIndex];
   Spr2Edit.Text := SprTIndex^.Name;
   Selected2 := SprTIndex^.ID;
   FamEdit.Text := '';
  end;
end;

procedure TFIOForm.SelButton5Click(Sender: TObject);
var
 i : integer;
 AddItem : boolean;
 PS : PwdStr;
begin
 if SelectForm = nil then
   SelectForm := TSelectForm.Create(Application);
 SelectForm.LB.Items.Clear;
 SelectForm.LB.Sorted := True;
 for i:=0 to UsersList.Count-1 do
  begin
     AddItem := False;
     TIndex := UsersList.Items[i];
     if (Selected1 = -1) and (Selected2 = -1) then
      AddItem := true
     else
     if (Selected1 >= 0) and (Selected2 >= 0) then
      AddItem := (Selected1 = TIndex^.Spr1_ID) and (Selected2 = TIndex^.Spr2_ID)
     else
     if Selected1 >= 0 then
      AddItem := Selected1 = TIndex^.Spr1_ID
     else
     if Selected2 >= 0 then
      AddItem := Selected2 = TIndex^.Spr2_ID;
     if AddItem then
     begin
      PS := PwdStr.Create;
      PS.S := TIndex^.Spr3;
      SelectForm.LB.Items.AddObject(TIndex^.FIO,TObject(PS));
     end;
  end;
 SelectForm.Caption := 'Фамилия, Имя, Отчество:';
 if SelectForm.ShowModal=mrOk then
 begin
  if SelectForm.LB.ItemIndex<>-1 then
  begin
   FamEdit.Text := SelectForm.LB.Items[SelectForm.LB.ItemIndex];
   PS := PwdStr(SelectForm.LB.Items.Objects[SelectForm.LB.ItemIndex]);
   PwdEdit := PS.S;
   for i:=0 to SelectForm.LB.Items.Count-1 do
    SelectForm.LB.Items.Objects[i].Free;
   if Spr3Edit.Enabled then Spr3Edit.SetFocus;  
  end
  else
  begin
   for i:=0 to SelectForm.LB.Items.Count-1 do
    SelectForm.LB.Items.Objects[i].Free;
  end;
 end
 else
  begin
   for i:=0 to SelectForm.LB.Items.Count-1 do
    SelectForm.LB.Items.Objects[i].Free;
  end;
end;

procedure TFIOForm.SelButton6Click(Sender: TObject);
begin
 FamEdit.Text := '';
end;

procedure TFIOForm.BtnClr1Click(Sender: TObject);
begin
 Spr1Edit.Text := '';
end;

procedure TFIOForm.SelButton4Click(Sender: TObject);
begin
 Spr2Edit.Text := '';
end;

procedure TFIOForm.FamEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if FamEdit.ReadOnly then SelButton5Click(Sender);
end;

procedure TFIOForm.Spr2EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Spr2Edit.ReadOnly then SelButton3Click(Sender);
end;

procedure TFIOForm.Spr1EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Spr1Edit.ReadOnly then SB1Click(Sender);
end;

end.
