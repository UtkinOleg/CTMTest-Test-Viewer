program Prtest;

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Registry,
  Main in 'Main.pas' {mf},
  Progress in 'Progress.pas' {progr},
  Check in 'Check.pas',
  Errors in 'Errors.pas',
  Quick in 'Quick.pas' {Access},
  Prop in 'Prop.pas' {PropDlg},
  Req in 'Req.pas' {ReqDlg},
  FIO in 'FIO.pas' {FIOForm},
  cpuid in 'FORMS\cpuid.pas',
  reg in 'FORMS\reg.pas' {Registration},
  inidata in 'FORMS\inidata.pas',
  comtypes in 'FORMS\comtypes.pas',
  Personal in 'FORMS\Personal.pas' {PersonalForm},
  DopAnswer in 'FORMS\DopAnswer.pas' {DopForm},
  Select in 'FORMS\Select.pas' {SelectForm},
  About2 in 'FORMS\About2.pas' {About2Form},
  About3 in 'FORMS\About3.pas' {About3Form},
  DirSelect in 'FORMS\DirSelect.pas' {DirSelectForm},
  Info in 'FORMS\Info.pas' {InfoForm},
  FOptions in 'FOptions.pas' {Options},
  CloseTest in 'FORMS\CloseTest.pas' {CloseTestForm},
  Intro in 'Intro.pas' {IntroForm},
  Loading in 'FORMS\Loading.pas' {LoadingForm},
  IdeSN in 'FORMS\IdeSN.pas',
  LoadTestUnit in 'FORMS\LoadTestUnit.pas' {LoadTestForm},
  stopiceunit in 'FORMS\stopiceunit.pas',
  Results in 'Units\Results.pas',
  tunit in 'FORMS\tunit.pas' {tf},
  OpenF in 'Units\openf.pas',
  About4 in 'FORMS\About4.pas' {About4Form},
  DopAnswer2 in 'FORMS\DopAnswer2.pas' {DopForm2},
  Info2Unit in 'FORMS\Info2Unit.pas' {Info2Form},
  HtmlHlp in 'Units\HtmlHlp.pas',
  eshardwareid in 'Units\eshardwareid.pas',
  EditServerUnit in 'FORMS\EditServerUnit.pas' {EditServerForm},
  CommentForm in 'FORMS\CommentForm.pas' {CommentDlg},
  comproc in 'FORMS\comproc.pas';

{$R *.RES}

var
  blockf : TFileStream;

function isRunning(aUniqueString:String): Boolean;
var
  hMutex: THandle;
begin
   Result := False;
   hMutex := CreateMutex(nil,False,PChar(aUniqueString));
   if GetLastError = ERROR_ALREADY_EXISTS then
   begin
     ShowMessage('СТ "М-Тест" Тестирование уже запущено.');
     Result := True;
     CloseHandle(hMutex);
   end;
end;

begin
  if isRunning('Mcity PrTest') then Exit;
  Application.Initialize;
  Application.HelpFile := 'PRTEST.HLP';
  Application.CreateForm(Tmf, mf);
  Application.CreateForm(Tprogr, progr);
  Application.CreateForm(TAccess, Access);
  Application.CreateForm(TPropDlg, PropDlg);
  Application.CreateForm(TReqDlg, ReqDlg);
  Application.CreateForm(TFIOForm, FIOForm);
  Application.CreateForm(TRegistration, Registration);
  Application.CreateForm(TPersonalForm, PersonalForm);
  Application.CreateForm(TDopForm, DopForm);
  Application.CreateForm(TSelectForm, SelectForm);
  Application.CreateForm(TAbout2Form, About2Form);
  Application.CreateForm(TAbout3Form, About3Form);
  Application.CreateForm(TDirSelectForm, DirSelectForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TOptions, Options);
  Application.CreateForm(TCloseTestForm, CloseTestForm);
  Application.CreateForm(TIntroForm, IntroForm);
  Application.CreateForm(TLoadingForm, LoadingForm);
  Application.CreateForm(TLoadTestForm, LoadTestForm);
  Application.CreateForm(Ttf, tf);
  Application.CreateForm(TAbout4Form, About4Form);
  Application.CreateForm(TDopForm2, DopForm2);
  Application.CreateForm(TInfo2Form, Info2Form);
  Application.CreateForm(TEditServerForm, EditServerForm);
  Application.CreateForm(TCommentDlg, CommentDlg);
  Application.Run;
//  blockf.free;
end.
