unit FOptions;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls, Mask, Registry, NMUDP, TB97Ctls, Buttons,
  RxLogin, StrUtils, comproc, comtypes, ToolEdit, ClipBrd, ComObj, OpenF, HtmlHlp,
  mdCONTROLS, ToolWin, ImgList;

type
  TOptions = class(TForm)
    btnOK: TButton;
    btnCancel: TButton;
    Button1: TButton;
    PageControl1: TXPPageControl;
    TabSheet1: TXPTabSheet;
    TabSheet2: TXPTabSheet;
    Label15: TLabel;
    Label6: TLabel;
    UserName: TEdit97;
    Label7: TLabel;
    Password: TEdit97;
    Label8: TLabel;
    ConfirmPass: TEdit97;
    ImageList1: TImageList;
    CoolBar1: TCoolBar;
    XPToolBar1: TXPToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    LV: TXPListView;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure LVDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Options: TOptions;

implementation

uses Main, DirSelect, EditServerUnit;

{$R *.DFM}

procedure TOptions.btnOKClick(Sender: TObject);
var
  Reg: TMyStream;
  s : string;
  i : integer;
begin
 if (CompStr(Password.Text,ConfirmPass.Text)=0) or (UserName.Text = '') then
 begin
    try
      Reg:=TMyStream.Create(ExtractFilePath(paramstr(0))+'user.cfg',fmCreate);
      Reg.WriteString(Crypt(UserName.Text));
      Reg.Free;
      Reg:=TMyStream.Create(ExtractFilePath(paramstr(0))+'pass.cfg',fmCreate);
      Reg.WriteString(Crypt(Password.Text));
      Reg.Free;
      Reg:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cf2',fmCreate);
      for i := 0 to LV.Items.Count-1 do
      begin
       Reg.WriteString(LV.Items[i].SubItems[0]);
       Reg.WriteString(LV.Items[i].SubItems[1]);
       Reg.WriteString(LV.Items[i].SubItems[2]);
       Reg.WriteString(LV.Items[i].SubItems[3]);
       Reg.WriteString(LV.Items[i].SubItems[4]);
      end;
      Reg.Free;
    except
    end;
  Close;
 end
 else
 begin
  ShowMessage('Поля заполнены неправильно.');
 end;
end;

procedure TOptions.btnCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TOptions.FormShow(Sender: TObject);
var
  Registry: TMyStream;
  F: TFileStream;
  StrList: TStringList;
  len, i : integer;
  buffer : PChar;
  LI : TListItem;
begin
  UserName.Text:= '';
  Password.Text:='';
  ConfirmPass.Text:='';
  PageControl1.ActivePageIndex := 0;
  LV.Items.Clear;
  try
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'user.cfg',fmOpenRead);
   UserName.Text:=DeCrypt(Registry.ReadString);
   Registry.Free;
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'pass.cfg',fmOpenRead);
   Password.Text:=DeCrypt(Registry.ReadString);
   ConfirmPass.Text:=Password.Text;
   Registry.Free;
   Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cf2',fmOpenRead);
   i := 0;
   while Registry.Position < Registry.Size do
     begin
      LI := LV.Items.Add;
      Inc(I);
      LI.Caption := IntToStr(i);
      LI.SubItems.Add(Registry.ReadString);
      LI.SubItems.Add(Registry.ReadString);
      LI.SubItems.Add(Registry.ReadString);
      LI.SubItems.Add(Registry.ReadString);
      LI.SubItems.Add(Registry.ReadString);
     end;
   Registry.Free;
  except
  end;
  btnCancel.SetFocus;
end;

procedure TOptions.Button1Click(Sender: TObject);
begin
if PageControl1.ActivePageIndex=0 then
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/183ub.htm'), HH_DISPLAY_TOC, 0)
else
 HtmlHelp(Application.Handle, PChar(ExtractFilePath(paramstr(0))+'qeditor.chm::/html/183ua.htm'), HH_DISPLAY_TOC, 0);
end;



procedure TOptions.ToolButton1Click(Sender: TObject);
var
 LI : TListItem;
begin
 with EditServerForm do
 begin
  RadioButton1.Checked := True;
  Caption := 'Новый сервер удаленного тестирования';
  Edit1.Text := '';
  I1 := '';
  I2 := '';
  I3 := '';
  I4 := '';
  ServerName.Text := '';
  MainPort1.Text := '500';
  MainPort2.Text := '501';
  ServerName.Enabled := False;
 end;
 if EditServerForm.ShowModal=mrOk then
  begin
     with EditServerForm do
     begin
      LI := LV.Items.Add;
      LI.Caption := IntToStr(LV.Items.Count);
      LI.SubItems.Add(Trim(Edit1.Text));
      LI.SubItems.Add(Trim(IP1.Text)+'.'+Trim(IP2.Text)+'.'+Trim(IP3.Text)+'.'+Trim(IP4.Text));
      LI.SubItems.Add(Trim(ServerName.Text));
      LI.SubItems.Add(Trim(MainPort1.Text));
      LI.SubItems.Add(Trim(MainPort2.Text));
     end;
  end;
end;

procedure TOptions.ToolButton2Click(Sender: TObject);
var
 s1, s : string;
begin
if LV.Selected <> nil then
begin
 with EditServerForm do
 begin
  Caption := 'Изменить данные сервера №'+LV.Selected.Caption;
  Edit1.Text := LV.Selected.Subitems[0];
  s := LV.Selected.Subitems[1];
  I1 := Copy(s,1,Pos('.',s)-1);
  s := Copy(s,Pos('.',s)+1,Length(s)-Pos('.',s));
  I2 := Copy(s,1,Pos('.',s)-1);
  s := Copy(s,Pos('.',s)+1,Length(s)-Pos('.',s));
  I3 := Copy(s,1,Pos('.',s)-1);
  I4 := Copy(s,Pos('.',s)+1,Length(s));
  ServerName.Text := LV.Selected.Subitems[2];
  MainPort1.Text := LV.Selected.Subitems[3];
  MainPort2.Text := LV.Selected.Subitems[4];
 end;
 if EditServerForm.ShowModal=mrOk then
  begin
     with EditServerForm do
     begin
      LV.Selected.SubItems[0] := Trim(Edit1.Text);
      LV.Selected.SubItems[1] := Trim(IP1.Text)+'.'+Trim(IP2.Text)+'.'+Trim(IP3.Text)+'.'+Trim(IP4.Text);
      LV.Selected.SubItems[2] := Trim(ServerName.Text);
      LV.Selected.SubItems[3] := Trim(MainPort1.Text);
      LV.Selected.SubItems[4] := Trim(MainPort2.Text);
     end;
  end;
end;
end;

procedure TOptions.ToolButton5Click(Sender: TObject);
begin
 if MessageBOX(Application.Handle,PChar('Удалить все настройки?'),PCHAR('Тестирование'), mb_YesNo)=IDYes then
   LV.Items.Clear;
end;

procedure TOptions.ToolButton3Click(Sender: TObject);
begin
if LV.Selected <> nil then
 if MessageBOX(Application.Handle,PChar('Удалить выбранный удаленный сервер из списка?'),PCHAR('Тестирование'), mb_YesNo)=IDYes then
   LV.Selected.Delete;
end;

procedure TOptions.LVDblClick(Sender: TObject);
begin
 ToolButton2Click(Sender);
end;

end.
