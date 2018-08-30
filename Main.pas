unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, ToolWin, StdCtrls, Richole, ExtCtrls, bzip2, Psock,
  NMHttp, HTTPGet, Buttons, CheckLst, ImgList, Registry, Grids, Gauges,
  ScktComp, Errors, TB97Tlwn, TB97Tlbr, TB97Ctls, TB97,
  RXClock, RXSplit, RxCalc, StrUtils, Comproc, OleCtnrs, Ole2, ComTypes, ShellApi,
  RXCtrls, RxGrdCpt, Placemnt, inidata, cpuid, IdeSN, Results, OpenF,
  ActnList, Digit, XPMenu, eshardwareid, CommCtrl;

const

  DB_Version = 5; // Версия локальной БД 5
  RemoteTesting = True; // Включить удаленное тестирование
  demostr = '$235421Д#3е5$333м421$5о$1н$с4$т$5р$6а421$ц4121$и$о$н24$н23$а3523$я$ 235$в$е32$р235$6с$234и$54656я$';
  regstr = '"№!_)(!"№З12а4р12ег4и12с"()("тр234иро"_)(!+_)!ва")(*)!*нн!_)(_)(ая к!()*)*о!(_(п!+_)+и!)(я';
  thstr = '4123С123п23а422с342и123б212о3211 21з23а 123р213412е42343г4и345с435т6346р76а234ц3423и324ю234 п3242р3о23423г234р234а23423м4234м234ы3.34';

{$IFDEF WIN32}
const
  BadDllLoad = 0;
{$ELSE}
const
  BadDllLoad = 32;
{$ENDIF}

type
  Tmf = class(TForm)
    SBar: TStatusBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Panel1: TPanel;
    Selectquestion1: TMenuItem;
    Tools1: TMenuItem;
    Options1: TMenuItem;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    TreeImageList: TImageList;
    ToolImageList: TImageList;
    Panel2: TPanel;
    N9: TMenuItem;
    ImageList1: TImageList;
    AccordImageList: TImageList;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    PopupMenu2: TPopupMenu;
    N14: TMenuItem;
    MenuImages: TImageList;
    Timer1: TTimer;
    N3: TMenuItem;
    N4: TMenuItem;
    N16: TMenuItem;
    Panel3: TPanel;
    Calc: TRxCalculator;
    N22: TMenuItem;
    ToolMenu: TPopupMenu;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N21: TMenuItem;
    N29: TMenuItem;
    tv: TTreeView;
    Splitter2: TSplitter;
    N32: TMenuItem;
    ListView1: TListView;
    ImageList2: TImageList;
    N1: TMenuItem;
    N15: TMenuItem;
    PopupMenu3: TPopupMenu;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N17: TMenuItem;
    N37: TMenuItem;
    bz: Tbzip2;
    N38: TMenuItem;
    Timer2: TTimer;
    Panel5: TPanel;
    Splitter1: TSplitter;
    ClientSocket: TClientSocket;
    ClientTestSocket: TClientSocket;
    ClientShablonSocket: TClientSocket;
    ClientSocket1: TClientSocket;
    ClientSocket2: TClientSocket;
    ClientSocket3: TClientSocket;
    ClientSocket4: TClientSocket;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    Timer3: TTimer;
    tb1: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    CheckButton: TToolButton;
    VideoButton: TToolButton;
    ToolbarButton971: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    XPMenu1: TXPMenu;
    TabControl1: TTabControl;
    Label1: TLabel;
    VariantBox: TListBox;
    TabControl2: TTabControl;
    Label2: TLabel;
    TabControl3: TTabControl;
    RxSplitter2: TRxSplitter;
    Panel4: TPanel;
    ALeft: TListBox;
    ACenter: TListBox;
    ARight: TListBox;
    CoolBar1: TCoolBar;
    ToolBar2: TToolBar;
    SetToolBtn: TToolButton;
    ResetToolBtn: TToolButton;
    Label3: TLabel;
    TabControl4: TTabControl;
    Label4: TLabel;
    Panel6: TPanel;
    CoolBar2: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    SeqListBox: TListBox;
    AccordList: TListBox;
    TabControl5: TTabControl;
    ro: TRichEditWithOle;
    timewindow: TTabControl;
    RxLabel6: TRxLabel;
    Digit1: TDigit;
    Digit2: TDigit;
    RxLabel1: TRxLabel;
    Digit3: TDigit;
    Digit4: TDigit;
    RxLabel2: TRxLabel;
    Digit5: TDigit;
    Digit6: TDigit;
    ToolButton3: TToolButton;
    quewindow: TTabControl;
    RxLabel4: TRxLabel;
    Digit10: TDigit;
    Digit11: TDigit;
    Digit12: TDigit;
    RxLabel5: TRxLabel;
    Digit7: TDigit;
    Digit8: TDigit;
    Digit9: TDigit;
    ToolButton5: TToolButton;
    N51: TMenuItem;
    N47: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    PageScroller1: TPageScroller;
    TabControl6: TTabControl;
    KbdPanel10: TPanel;
    KbdLabel10: TLabel;
    KbdPanel9: TPanel;
    KbdLabel9: TLabel;
    KbdPanel8: TPanel;
    KbdLabel8: TLabel;
    KbdPanel7: TPanel;
    KbdLabel7: TLabel;
    KbdPanel6: TPanel;
    KbdLabel6: TLabel;
    KbdPanel5: TPanel;
    KbdLabel5: TLabel;
    KbdPanel4: TPanel;
    KbdLabel4: TLabel;
    KbdPanel3: TPanel;
    KbdLabel3: TLabel;
    KbdPanel2: TPanel;
    KbdLabel2: TLabel;
    KbdPanel: TPanel;
    KbdLabel: TLabel;
    Panel7: TPanel;
    KbdEdit: TEdit;
    Panel8: TPanel;
    KbdEdit2: TEdit;
    Panel9: TPanel;
    KbdEdit3: TEdit;
    Panel10: TPanel;
    KbdEdit4: TEdit;
    Panel11: TPanel;
    KbdEdit5: TEdit;
    Panel12: TPanel;
    KbdEdit6: TEdit;
    Panel13: TPanel;
    KbdEdit7: TEdit;
    Panel14: TPanel;
    KbdEdit8: TEdit;
    Panel15: TPanel;
    KbdEdit9: TEdit;
    Panel16: TPanel;
    KbdEdit10: TEdit;
    AbortSocket: TClientSocket;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    PopupMenu4: TPopupMenu;
    N54: TMenuItem;
    PopupMenu5: TPopupMenu;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    procedure Exit1Click(Sender: TObject);

    procedure Options1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tvClick(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure SetToolBtnClick(Sender: TObject);
    procedure ResetToolBtnClick(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure http2Error(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ClientSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure FormShow(Sender: TObject);
    procedure http2Progress(Sender: TObject; TotalSize, Readed: Integer);
    procedure N16Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure reshttpError(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure VariantBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ALeftMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ACenterMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ARightMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AccordListMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N31Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure VariantBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure VariantBoxSingleDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure pcChange(Sender: TObject);
    procedure CheckButtonClick(Sender: TObject);
    procedure tvKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Splitter2Moved(Sender: TObject);
    procedure VariantBoxMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure VariantBoxSingleMeasureItem(Control: TWinControl;
      Index: Integer; var Height: Integer);
    procedure SeqListBoxDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure SeqListBoxMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ALeftDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ALeftMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ACenterDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ACenterMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ARightDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure ARightMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure AccordListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure AccordListMeasureItem(Control: TWinControl; Index: Integer;
      var Height: Integer);
    procedure ListView1DblClick(Sender: TObject);
    procedure VideoButtonClick(Sender: TObject);
    procedure ListView1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N9Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure ListView1InfoTip(Sender: TObject; Item: TListItem;
      var InfoTip: String);
    procedure N38Click(Sender: TObject);
    procedure VariantBoxMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VariantBoxClick(Sender: TObject);
    procedure VariantBoxKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VariantBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VariantBoxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientTestSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientTestSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientTestSocketError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure ClientTestSocketRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientShablonSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientShablonSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientShablonSocketError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure ClientShablonSocketRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket2Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket2Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket2Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket2Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket3Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket3Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket3Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket3Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket4Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket4Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket4Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket4Write(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure N40Click(Sender: TObject);
    procedure SeqListBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SeqListBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N41Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure SeqListBoxKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ALeftKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACenterKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ARightKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KbdEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure roKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N50Click(Sender: TObject);
    procedure tvCollapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure TabControl3Resize(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure KbdEdit2Change(Sender: TObject);
    procedure KbdEdit3Change(Sender: TObject);
    procedure KbdEdit4Change(Sender: TObject);
    procedure KbdEdit5Change(Sender: TObject);
    procedure KbdEdit6Change(Sender: TObject);
    procedure KbdEdit7Change(Sender: TObject);
    procedure KbdEdit8Change(Sender: TObject);
    procedure KbdEdit9Change(Sender: TObject);
    procedure KbdEdit10Change(Sender: TObject);
    procedure KbdEditChange(Sender: TObject);
    procedure AbortSocketConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure AbortSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure ALeftDblClick(Sender: TObject);
    procedure ACenterDblClick(Sender: TObject);
    procedure ARightDblClick(Sender: TObject);
    procedure AccordListDblClick(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure N57Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CommentStream : TFileStream;
    QuestionStream : TFileStream;
    GroupStream : TFileStream;
    // Удаленный тест, Сокет послал длину?
    IsRemoteTest, SocketSendLength,
    ExtResDeny, ParamsDeny, TestDeny :Boolean;
    Protocol, LimitTime, ResGrpAnaliz, TimeParam, ResOcenka, ResAnaliz, ResPercent : byte;
    // Параметры длины принятого файла теста
    RecievedLength, OriginalLength,
    GroupResultCount, ResultCount, TestVersion : Integer;
    // Результат теста
    TestResult : TList;
    // Групповые результаты
    GroupResult : TList;
    // Путь к удаленному тесту
    RemoteTest : string;
    // Анимация
    BitMap1 : TBitMap;
    BitMap2 : TBitMap;
    BitMap3 : TBitMap;
    BitMap4 : TBitMap;
    BitMap5 : TBitMap;
    AccordBmp : TBitMap;
    KeyBmp : TBitMap;
    ListBmp : TBitMap;
    Variant1Bmp : TBitMap;
    Variant2Bmp : TBitMap;

    zz, MS_OUT_FIFO : TMemoryStream;
    AxH, OldY, ItemSelected, OldItemIndex, NeedSend : Integer;
    SendEnable : boolean;
    // Процедуры и функции

    TimerRegDone : byte;
    Serial : string;
    h12, h34 : Int64;
    tstr, dstr, rstr : string;

    procedure ShowMessageD(s: string; t : byte);
    function  OpenFile(FileName : string; Counter:integer; Sender: TObject) : boolean;
    procedure DisableView;
    procedure ClearRAM;
    procedure CalculateResults;
    procedure CreateInformationMenu;
    procedure InfoAddPopupHandler(Sender: TObject);
    procedure InfoDelPopupHandler(Sender: TObject);
    procedure InfoPopupHandler(Sender: TObject);
    function  ReadStream(fname:string; Mem:TMemoryStream):boolean;
    function  Equal(M1,M2 : TMemoryStream):boolean;
    procedure AddTestResult(B1, B2 : integer; M : TMemoryStream);
    procedure DelTestResult(N : Integer);
    procedure AddGroupResult(B1, B2 : integer; M : TMemoryStream; Res : byte; S : string; GID : integer);
    procedure DelGroupResult(N : Integer);
    procedure UpDownItem(Index : integer; Up : Boolean);
    procedure InitDesktop;
    function  GlobalRestructurizeBase(BasePath : string):boolean;
    function  RestructureBase(Fname : string;F1 : TFilestream):boolean;
    function  RestructureBase4(Fname : string;F1 : TFilestream):boolean;
    function  RestructureBase5(Fname : string;FOut : TFilestream):boolean;
    procedure KbdChange;
    function  CheckStr(strcheck, strorig : string; keytype : byte):boolean;
    function  TranslateAnswer(StrOrig:string; keytype:byte):string;
  end;

  RandomList = class
   r1 : integer;
   r2 : integer;
  end;

  RandomClass = class
   data : array of RandomList;
   datalength : integer;
   current : integer;
  public
   procedure Create(length : integer);
   procedure Add(r1 : integer; r2 : integer);
   function Exist(r1 : integer; r2 : integer) : boolean;
  end;

  TTreeThread = class(TServerClientThread)
   procedure ClientExecute; override;
  end;

const
  gl = 4000;

type

  TPL = ^TLeaf;
  TLeaf = record
    Root : byte;
    ID : integer;
    Name : PChar;
    NameBuffer : PChar;
    Path : PChar;
    Parent : integer;
    TestType : byte;
    IsTest : byte;
    Enabled : byte;
    QuestionsCount : integer;
    TestTime : integer;
    TestSize : integer;
    Groups : string;
    Groups2 : string;
  end;

  Leaf = Record
   id : Longint;
   obj_id : Longint;
   parent : Longint;
   name : PChar;
   InTree : boolean;
  End;

  Student = Record
   Id : Longint;
   Test_id : Longint;
   Test_type : Longint;
   Place_id : Longint;
   Result : Real;
   Tester_id : Longint;
   Limit : Real;
  End;

  Question = Record
   Id : Longint;
   IdReal : Longint;
   IdT : Longint;
   IdS : Longint;
   // Имя вопроса
   QuestionName: PChar;
   // Вопрос в сжатом виде
   QuestionArray: PByte;
   QuestionLength: Longint;
   // Вопрос в расжатом виде
   DecompressQuestionArray: PByte;
   DecompressQuestionLength: Longint;
   // Пояснение к вопросу
   QuestionAddArray: PByte;
   QuestionAddLength: Longint;
   // Видеоролик
   QuestionVideoArray: PByte;
   QuestionVideoLength: Longint;
   KbdCount, QuestionTime : word;
   KeyType, EditAnsBall, QuestionVideoPlay: Byte;
   StopVideo : boolean;
   TempParam, RightVariants : word;

   QuestionIndex: Longint;
   // Вопрос задан?
   QuestionInTree: Boolean;
   SequentalSet: Boolean;
   AnswerStream: TMemoryStream;
   AnswerArray: PByte;
   AnswerRandom: PByte;
   AnswerRandomLength: Longint;
   AnswerLength: Longint;
   AnswerType: Longint;
   HasChildren: Longint;
   ParentType: Longint;
   QParent: Longint;
   AnsUserArray: PChar;
   AnsUserBinArray: PByte;
   AnsUserLength: Longint;
   AnsUserUpdate: Boolean;
   AnsUserBall: Real;
   AnsUserBallLimit: Real;
   AnsUserSelectPriznak: Byte;
   AnsUserMaxBall : Real;
   Answer_Time, Que_Type : Integer;
   Score, Percentage : Real;
   All, Min, Limit : Integer;
   ThemeID, Level : Integer;
   PluginName : string;
   GroupName : string;
   QuestionVideoName : string;
  End;

  QP = ^Question;
  PL = ^Leaf;

var
  TreeThread : TTreeThread;

  mf: Tmf;
  TemporaryTest, LocalTest, Transmission, NonCloseSocket : boolean;
  buffer : PByte;
  oldindex, QuestionTime, index, extsize, extcount : integer;
  resout : TMemoryStream;
  sout : TFileStream; // сжатый массив результата тестирования
  MComment, ResultStream : TMemoryStream; // массив результата тестирования
  L: Array of Leaf;
  Stud : Student;
  {количество вопросов в тесте}
  testcount : longint;
  LeafCount : longint;
  {кол-во времени отведенное для тестирвоания}
  currenttime, timelimit : longint;
  {индекс текущего вопроса}
  sectime, c_q, topitem : longint;
  {колво детей}
  QITCnt : longint;

  Q : TList;
  TempQ : TList;
  Q1 : TList;

  TQP : QP;
  TempQP : QP;
  TQP1 : QP;

  TestLevel, TestName, OldName, FamText, WorkText, SubText:string;

  showquestion, continuetest, reptest, Backward : boolean; // Возможен переход назад
  ExitType : integer; // Ответ на все вопросы либо нажал завершение

  LP : TPL;
  TL : TPL;

  si: Tstartupinfo;
  p: Tprocessinformation;

const
  MajorVersion = '1';
  MinorVersion = '8';
  ReleaseVersion = '1';

implementation

uses Progress, FOptions, SelectQuest, About, Intro, Quick, ExtRes, Result,
  FIO, reg, Personal, DopAnswer, About2, About3, Info, CloseTest,
  Loading, LoadTestUnit, tunit, About4, DopAnswer2, DirSelect, Info2Unit;

{$R *.DFM}
{$R manifest.res}
// {$R textres.res}

procedure Tmf.ShowMessageD(s: string; t : byte);
begin
 case t of
  0 : MessageBox(Application.Handle,PChar(s), PCHAR('Тестирование'), MB_OK + MB_ICONINFORMATION);
  1 : MessageBox(Application.Handle,PChar(s), PCHAR('Тестирование'), MB_OK + MB_ICONWARNING);
  2 : MessageBox(Application.Handle,PChar(s), PCHAR('Тестирование'), MB_OK + MB_ICONSTOP);
 end;
end;


function DebuggerPresent: boolean;
type
  TDebugProc = function: boolean; stdcall;
var
  Kernel32: HMODULE;
  DebugProc: TDebugProc;
begin
  Result := False;
  Kernel32 := GetModuleHandle('kernel32.dll');
  if Kernel32 <> 0 then
  begin
    @DebugProc := GetProcAddress(Kernel32, 'IsDebuggerPresent');
    if Assigned(DebugProc) then
      Result := DebugProc;
  end;
end;

procedure RandomizeEqualsCenter(var Buf : PByte; var BufLen : Integer; NN : Integer);
type
  PL = ^TLeaf;
  TLeaf = record
    ID : integer;
    Name : string;
    PLeft , PRight : Integer;
  end;
var
  TL : PL;
  CenterList : TList;
  varname : array [1..5000] of char;
  len, R1, R2, KK, J, RightCount, L1,L2,L3, I, AccStrLength, AccCount, VariantLen : integer;
  L,R,C : TStringList;
  m : TMemoryStream;
  buffer : PChar;
  found : boolean;
begin
 CenterList := TList.Create;
 L := TStringList.Create;
 C := TStringList.Create;
 R := TStringList.Create;
 m := TMemoryStream.Create;
 m.Write(Buf^,BufLen);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     L.Add(StrPas(@varname));
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     C.Add(StrPas(@varname));
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     R.Add(StrPas(@varname));
   end;
 end;
 m.Read(RightCount,4);
 for i:=1 to RightCount do
   begin
     m.Read(L1,4);
     m.Read(L2,4);
     m.Read(L3,4);
     for J:=0 to C.Count-1 do
      if J=L2 then
       begin
        New(TL);
        TL^.ID := J;
        TL^.Name := C.Strings[J];
        TL^.PLeft := L1;
        TL^.PRight := L3;
        CenterList.Add(TL);
        Break;
       end;
   end;
 m.Read(KK,4);
 for J:=0 to C.Count-1 do
  begin
   found := false;
   for I:=0 to CenterList.Count-1 do
    begin
     TL := CenterList.Items[I];
     if TL^.ID=J then
      found := true;
    end;
   if not found then
   begin
     New(TL);
     TL^.ID := J;
     TL^.Name := C.Strings[J];
     TL^.PLeft := -1;
     TL^.PRight := -1;
     CenterList.Add(TL);
   end;
  end;
 // перемешаем список
 if CenterList.Count>2 then
 begin
  Randomize;
  r1:=0;
  r2:=0;
  for I:=1 to CenterList.Count*NN do
   begin
    r1 := Random(CenterList.Count);
    while r1=r2 do r2 := Random(CenterList.Count);
    CenterList.Exchange(r1,r2);
   end;
 end
 else
 if CenterList.Count=2 then
  CenterList.Exchange(0,1);
 // сохраним списки
 m.Clear;
 m.Position := 0;
 m.Write(AccCount,4);
 if AccCount >= 1 then
  begin
   len := L.Count;
   m.Write(Len,4);
   for I:=0 to L.Count-1 do
      begin
       len := Length(L.Strings[I]);
       m.Write(len,4);
       buffer := AllocMem(len+1);
       buffer := StrPCopy(buffer, L.Strings[I]);
       m.Write(buffer^,len);
       FreeMem(buffer);
      end;
  end;
 if AccCount >= 2 then
  begin
   len := CenterList.Count;
   m.Write(Len,4);
   for I:=0 to CenterList.Count-1 do
      begin
       TL := CenterList.Items[i];
       len := Length(TL^.Name);
       m.Write(len,4);
       buffer := AllocMem(len+1);
       buffer := StrPCopy(buffer, TL^.Name);
       m.Write(buffer^,len);
       FreeMem(buffer);
      end;
  end;
 if AccCount >= 3 then
  begin
   len := R.Count;
   m.Write(Len,4);
   for I:=0 to R.Count-1 do
      begin
       len := Length(R.Strings[I]);
       m.Write(len,4);
       buffer := AllocMem(len+1);
       buffer := StrPCopy(buffer, R.Strings[I]);
       m.Write(buffer^,len);
       FreeMem(buffer);
      end;
  end;
 m.Write(RightCount,4);
 for I:=0 to CenterList.Count-1 do
   begin
     TL := CenterList.Items[I];
     if (TL^.PLeft <> -1) and (TL^.PRight <> -1) then
     begin
      len := TL^.PLeft;
      m.Write(len,4);
      len := I;
      m.Write(len,4);
      len := TL^.PRight;
      m.Write(len,4);
     end;
   end;

 m.Write(KK,4);
 // Запись в буффер
 FreeMem(Buf);
 BufLen := m.Size;
 Buf := AllocMem(BufLen);
 m.Position := 0;
 m.Read(Buf^,BufLen);
 m.Free;
 L.Free;
 C.Free;
 R.Free;
 for I:=0 to CenterList.Count-1 do
   begin
     TL := CenterList.Items[I];
     Dispose(TL);
   end;
 CenterList.Free;
end;

procedure RandomizeEqualsLeft(var Buf : PByte; var BufLen : Integer; NN : Integer);
type
  PL = ^TLeaf;
  TLeaf = record
    ID : integer;
    Name : string;
    PLeft , PRight : Integer;
  end;
var
  TL : PL;
  LeftList : TList;
  varname : array [1..5000] of char;
  len, R1, R2, KK, J, RightCount, L1,L2,L3, I, AccStrLength, AccCount, VariantLen : integer;
  L,R,C : TStringList;
  m : TMemoryStream;
  buffer : PChar;
  found : boolean;
begin
 LeftList := TList.Create;
 L := TStringList.Create;
 C := TStringList.Create;
 R := TStringList.Create;
 m := TMemoryStream.Create;
 m.Write(Buf^,BufLen);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     L.Add(StrPas(@varname));
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     C.Add(StrPas(@varname));
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     R.Add(StrPas(@varname));
   end;
 end;
 m.Read(RightCount,4);
 for i:=1 to RightCount do
   begin
     m.Read(L1,4);
     m.Read(L2,4);
     m.Read(L3,4);
     for J:=0 to L.Count-1 do
      if J=L1 then
       begin
        New(TL);
        TL^.ID := J;
        TL^.Name := L.Strings[J];
        TL^.PLeft := L2;
        TL^.PRight := L3;
        LeftList.Add(TL);
        Break;
       end;
   end;
 m.Read(KK,4);
 for J:=0 to L.Count-1 do
  begin
   found := false;
   for I:=0 to LeftList.Count-1 do
    begin
     TL := LeftList.Items[I];
     if TL^.ID=J then
      found := true;
    end;
   if not found then
   begin
     New(TL);
     TL^.ID := J;
     TL^.Name := L.Strings[J];
     TL^.PLeft := -1;
     TL^.PRight := -1;
     LeftList.Add(TL);
   end;
  end;
 // перемешаем список
 if LeftList.Count>2 then
 begin
  Randomize;
  r1:=0;
  r2:=0;
  for I:=1 to LeftList.Count*NN do
   begin
    r1 := Random(LeftList.Count);
    while r1=r2 do r2 := Random(LeftList.Count);
    LeftList.Exchange(r1,r2);
   end;
 end
 else
 if LeftList.Count=2 then
  LeftList.Exchange(0,1);
 // сохраним списки
 m.Clear;
 m.Position := 0;
 m.Write(AccCount,4);
 if AccCount >= 1 then
  begin
   len := LeftList.Count;
   m.Write(Len,4);
   for I:=0 to LeftList.Count-1 do
      begin
       TL := LeftList.Items[i];
       len := Length(TL^.Name);
       m.Write(len,4);
       buffer := AllocMem(len+1);
       buffer := StrPCopy(buffer, TL^.Name);
       m.Write(buffer^,len);
       FreeMem(buffer);
      end;
  end;
 if AccCount >= 2 then
  begin
   len := C.Count;
   m.Write(Len,4);
   for I:=0 to C.Count-1 do
      begin
       len := Length(C.Strings[I]);
       m.Write(len,4);
       buffer := AllocMem(len+1);
       buffer := StrPCopy(buffer, C.Strings[I]);
       m.Write(buffer^,len);
       FreeMem(buffer);
      end;
  end;
 if AccCount >= 3 then
  begin
   len := R.Count;
   m.Write(Len,4);
   for I:=0 to R.Count-1 do
      begin
       len := Length(R.Strings[I]);
       m.Write(len,4);
       buffer := AllocMem(len+1);
       buffer := StrPCopy(buffer, R.Strings[I]);
       m.Write(buffer^,len);
       FreeMem(buffer);
      end;
  end;
 m.Write(RightCount,4);
 for I:=0 to LeftList.Count-1 do
   begin
     TL := LeftList.Items[I];
     if (TL^.PLeft <> -1) and (TL^.PRight <> -1) then
     begin
      len := I;
      m.Write(len,4);
      len := TL^.PLeft;
      m.Write(len,4);
      len := TL^.PRight;
      m.Write(len,4);
     end;
   end;

 m.Write(KK,4);
 // Запись в буффер
 FreeMem(Buf);
 BufLen := m.Size;
 Buf := AllocMem(BufLen);
 m.Position := 0;
 m.Read(Buf^,BufLen);
 m.Free;
 L.Free;
 C.Free;
 R.Free;
 for I:=0 to LeftList.Count-1 do
   begin
     TL := LeftList.Items[I];
     Dispose(TL);
   end;
 LeftList.Free;
end;


procedure Tmf.AddTestResult;
var
TT : TTestResult;
begin
  TT := TTestResult.Create;
  Inc(ResultCount);
  TT.BeginBall := B1;
  TT.EndBall := B2;
  M.Position := 0;
  TT.ResultMem.LoadFromStream(M);
  TestResult.Add(TT);
end;

procedure Tmf.DelTestResult;
begin
  TTestResult(TestResult.Items[N]).Free;
  Dec(ResultCount);
  TestResult.Delete(N);
end;

procedure Tmf.AddGroupResult;
var
TT : TGroupResult;
begin
  TT := TGroupResult.Create;
  Inc(GroupResultCount);
  TT.BeginBall := B1;
  TT.EndBall := B2;
  M.Position := 0;
  TT.GName := S;
  TT.GroupID := GID;
  TT.ResPercent := Res;
  TT.ResultMem.LoadFromStream(M);
  GroupResult.Add(TT);
end;

procedure Tmf.DelGroupResult;
begin
  TGroupResult(GroupResult.Items[N]).Free;
  Dec(GroupResultCount);
  GroupResult.Delete(N);
end;

function Tmf.ReadStream(fname:string;Mem:TMemoryStream):boolean;
var
  F2 : TFileStream;
  len : integer;
  buffer : PByte;
  buffer2 : PChar;
begin
try
 if not fileexists(ExtractFilePath(paramstr(0))+fname) then
 begin
  F2 := TFileStream.Create(ExtractFilePath(paramstr(0))+fname,fmCreate);
  F2.Free;
  Result := True;
 end
 else
 begin
  F2 := TFileStream.Create(ExtractFilePath(paramstr(0))+fname,fmOpenReadWrite);
  while F2.Position < F2.Size do
   begin
    F2.Read(len,4);
    buffer2 := AllocMem(len+1);
    F2.Read(buffer2^,len);
    buffer2[len]:=Chr(0);
    Mem.Write(len,4);
    Mem.Write(buffer2^,len);
    FreeMem(buffer2);
    F2.Read(len,4);
    Mem.Write(len,4);
    GetMem(buffer,len);
    F2.Read(buffer^,len);
    FreeMem(buffer);
   end;
  F2.Free;
  Result := True;
 end;
except
 F2.Free;
 Result := False;
end;
end;


procedure Tmf.InfoPopupHandler(Sender: TObject);
var
  F : TFileStream;
  FName, s : string;
  i, len : integer;
  buffer : PChar;
  found : boolean;
begin
  with Sender as TMenuItem do begin
   s := Caption;
   s := ReplaceStr(s, '&', '');
   found := false;
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
      if s = Copy(StrPas(buffer),1,Length(StrPas(buffer))-4) then
      begin
        found := True;
        Fname := ExtractFilePath(paramstr(0)) + 'chart\'+StrPas(buffer);
        InfoForm.Caption := s;
      end;
      FreeMem(buffer);
    end;
   F.Free;
   if found then begin
    InfoForm.ScrollBox1.AutoSize := False;
    InfoForm.Image1.Picture.LoadFromFile(FName);
    InfoForm.Fname := FName;
    if InfoForm.Image1.Picture.Height<600 then
    begin
     InfoForm.ClientHeight := InfoForm.Image1.Picture.Height;
    end
    else
    begin
     InfoForm.ClientHeight := 600;
    end;
    if InfoForm.Image1.Picture.Width<800 then
    begin
     InfoForm.ClientWidth := InfoForm.Image1.Picture.Width;
    end
    else
    begin
     InfoForm.ClientWidth := 800;
    end;
    if InfoForm.Image1.Picture.Width<800 then
     if InfoForm.Image1.Picture.Height<600 then
        InfoForm.ScrollBox1.AutoSize := True;
    InfoForm.Repaint;
    InfoForm.Show;
   end;
   end;
   except
    ShowMessageD('Ошибка ввода/вывода.',2);
   end;
  end;
end;

procedure Tmf.InfoAddPopupHandler(Sender: TObject);
var
  F: TFileStream;
  len, i : integer;
  buffer : PChar;
  TS : TStringList;
  exist : boolean;
  InputString : string;
begin
 if Access.ShowModal = mrOk then
 begin
  DirSelectForm.DirEdit.Text := '';
  if DirSelectForm.ShowModal = mrOk then
  begin
    InputString := DirSelectForm.DirEdit.Text;
  if length(trim(InputString))>0 then
  begin
  InputString := Trim(InputString);
  exist := False;
  try
  if not fileexists(ExtractFilePath(paramstr(0))+'chart.cfg') then
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'chart.cfg',fmCreate)
  else
  begin
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
     if (TS.Strings[i] = InputString) and (InputString <> '-') then exist := True;
   TS.Free;
   F.Position := F.Size;
  end;
  if not exist then
   begin
    len := Length(InputString);
    F.Write(len,4);
    buffer := StrAlloc(len+1);
    buffer := StrPCopy(buffer, InputString);
    F.Write(buffer^,Length(InputString));
    StrDispose(buffer);
   end
   else
    ShowMessageD('Такое информационное изображение уже существует.',1);
  F.Free;
  CreateInformationMenu;
 except
   ShowMessageD('Ошибка ввода/вывода.',2);
 end;
 end;
 end;
 end;
end;

procedure Tmf.InfoDelPopupHandler(Sender: TObject);
begin
 if Access.ShowModal = mrOk then
  Info2Form.ShowModal;
end;

procedure Tmf.CreateInformationMenu;
var
 cnt, i, len : integer;
 F : TFileStream;
 NewItem : TMenuItem;
 buffer : PChar;
begin
  N36.Clear;
  NewItem := TMenuItem.Create(Self);
  NewItem.Caption := 'Добавить информацию...';
  NewItem.OnClick := InfoAddPopupHandler;
  NewItem.ImageIndex := 8;
  N36.Add(NewItem);
  NewItem := TMenuItem.Create(Self);
  NewItem.Caption := 'Удалить информацию...';
  NewItem.OnClick := InfoDelPopupHandler;
  NewItem.ImageIndex := 9;
  N36.Add(NewItem);
  cnt := 0;
//  N36.Visible := True;
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
      if Cnt=0 then
      begin
       NewItem := TMenuItem.Create(Self);
       NewItem.Caption := '-';
       N36.Add(NewItem);
      end;
      NewItem := TMenuItem.Create(Self);
      if Length(StrPas(buffer))>1 then
       begin
        NewItem.Caption := Copy(StrPas(buffer),1,Length(StrPas(buffer))-4);
        NewItem.OnClick := InfoPopupHandler;
       end
      else
      if StrPas(buffer)='-' then
        NewItem.Caption := StrPas(buffer);
      N36.Add(NewItem);
      inc(cnt);
      FreeMem(buffer);
    end;
   F.Free;
  end;
//   if cnt=0 then
//    N36.Visible := false;
  except
   ShowMessageD('Ошибка ввода/вывода.',2);
  end;
end;

procedure ShowQ;
var
 i : integer;
 s : string;
begin
 for i:=0 to (Q.Count-1) do
  begin
   TQP := Q.Items[i];
   s := s + 'ID:' + IntToStr(TQP^.ID)+' ';
   s := s + 'Child:' + IntToStr(TQP^.HasChildren)+' ';
   s := s + 'Content:' + StrPas(PChar(TQP^.AnswerArray))+' ';
   s := s + 'Parent:' + IntToStr(TQP^.QParent)+chr(10)+chr(13);
  end;
 MessageDlg(s, mtCustom, [mbOK], 0);
end;

procedure LoadQuestion(TQPZ : QP; QZ: TList; var F : TMemoryStream; Minutes: Integer; Ball:Integer; QParent:Integer; var Counter : Integer; GRP : string; ver :integer; AllowRandom : boolean; NoKoeff : byte; EditUBall : byte);
var
  strlist : TStringList;
  RBuffer: PByte;
  k, Item1,Item2,Item3, Richlen, RA, I: Integer;
  ro1, ro2, VariantLen,SeqLength,TScore,Limit, AccordListsCount, Cnt, J, L, len: Integer;
  B: Byte;
  L11 : word;
  buffer : PChar;
  s1, s2, s3, l1, l2, s : string;
//  fin : TFileStream;
  FolderSize, c, LenName: longint;
  zb, FolderBuf, slarray : PByte;
  r1,r2 : longint;
  m1, f1, mout, m,sm,t1 : TMemoryStream;
  RndList : RandomClass;
  Variants : TStringList;
  Score : Array [0..255] of Byte;
  kk, jj, r, ll, VariantCount : integer;
  varname : array [1..5000] of char;
  sl : string;
  ts : PChar;
  exist : Array [0..255] of integer;
  existfound : boolean;
  ps : array [0..2000] of Boolean;
  Language : TStringList;
begin
  TQPZ^.AnswerStream := TMemoryStream.Create;
  TQPZ^.EditAnsBall := EditUBall;
  TQPZ^.GroupName := GRP;
  f.Read(TQPZ^.QuestionLength,4);
  F.Read(Len,4);
  GetMem(TQPZ^.QuestionName,Len+1);
  f.Read(TQPZ^.QuestionName^,Len);
  TQPZ^.QuestionName[Len] := Chr(0);
  F.Read(TQPZ^.IDReal,4); // id
  F.Read(TQPZ^.QParent,4); // родитель
//  TQPZ^.QParent := QParent;
  F.Read(Error,1);

  GetMem(TQPZ^.QuestionArray,TQPZ^.QuestionLength);
  f.Read(TQPZ^.QuestionArray^,TQPZ^.QuestionLength);

  // Декомпрессируем в новый буфер
  m := TMemoryStream.Create;
  m.Write(TQPZ^.QuestionArray^,TQPZ^.QuestionLength);
  mout := TMemoryStream.Create;
  m.Position := 0;
  Mf.bz.DecompressStream(m,mout);
  mout.Position := 0;
//  FreeMem(TQPZ^.QuestionArray);
  TQPZ^.DecompressQuestionLength := mout.Size;
  GetMem(TQPZ^.DecompressQuestionArray,TQPZ^.DecompressQuestionLength);
  mout.Read(TQPZ^.DecompressQuestionArray^,TQPZ^.DecompressQuestionLength);
  m.Free;
  mout.Free;

  TQPZ^.QuestionAddLength := 0;
  TQPZ^.QuestionVideoLength := 0;
  if ver >= 306 then
  begin
   f.Read(TQPZ^.QuestionAddLength,4);
   GetMem(TQPZ^.QuestionAddArray,TQPZ^.QuestionAddLength);
   f.Read(TQPZ^.QuestionAddArray^,TQPZ^.QuestionAddLength);
   m := TMemoryStream.Create;
   mout := TMemoryStream.Create;
   m.Write(TQPZ^.QuestionAddArray^,TQPZ^.QuestionAddLength);
   m.Position := 0;
   Mf.bz.DecompressStream(m,mout);
   mout.Position := 0;
   FreeMem(TQPZ^.QuestionAddArray);
   TQPZ^.QuestionAddLength := mout.Size;
   GetMem(TQPZ^.QuestionAddArray,TQPZ^.QuestionAddLength);
   mout.Read(TQPZ^.QuestionAddArray^,TQPZ^.QuestionAddLength);
   m.Free;
   mout.Free;
  end;

  if ver >= 307 then
  begin
   f.Read(TQPZ^.QuestionVideoLength,4);
   GetMem(TQPZ^.QuestionVideoArray,TQPZ^.QuestionVideoLength);
   f.Read(TQPZ^.QuestionVideoArray^,TQPZ^.QuestionVideoLength);
  end;
  if ver >= 308 then
   f.Read(TQPZ^.QuestionVideoPlay,1);
  if ver >= 309 then
  begin
   F.Read(len,4);
   buffer := AllocMem(len+1);
   F.Read(buffer^,len);
   buffer[len]:=Chr(0);
   TQPZ^.QuestionVideoName := StrPas(buffer);
   FreeMem(buffer);
  end;

  if ver >= 314 then
  begin
     M1 := TMemoryStream.Create;
     F1 := TMemoryStream.Create;
     F.Read(len,4);
     getmem(zb,len);
     F.Read(zb^,len);
     M1.Write(zb^,len);
     M1.Position := 0;
     DeCryptStream(M1, F1);
     F1.Position := 0;
     M1.Free;
     FreeMem(zb);


  F1.Read(TQPZ^.AnswerType,4);
  TQPZ^.Answer_Time := Minutes;
  TQPZ^.QuestionInTree := False;
  TQPZ^.SequentalSet := False;
  TQPZ^.AnsUserUpdate := False;
  TQPZ^.AnsUserLength := 0;
  TQPZ^.AnsUserBall := 0;
  Inc(Counter);

  TQPZ^.Id := TQPZ^.IdReal;

  case TQPZ^.AnswerType of
    1:
      begin
        if ver>=316 then
         F1.Read(TQPZ^.KeyType,1)
        else
         TQPZ^.KeyType := 1;

        TQPZ^.PluginName := 'keyboard.dll';
        F1.Read(len,4);
        TQPZ^.AnswerLength := len;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        F1.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        if ver<315 then
        begin
                TQPZ^.KeyType := 0;
                Language := TStringList.Create;
                Language.SetText(PChar(TQPZ^.AnswerArray));
                for i:=0 to Language.Count-1 do
                  if Language.Strings[i] = '!**#&*!*@&#!&&@^#!$&@**&@^#((!' then
                    break;
                 k := i+1;
                 try
                  if k < Language.Count then
                   s1 := Language.Strings[k];
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                  begin
                     if Language.Strings[k]='1' then
                      l1 := 'ИЛИ'
                     else
                      l1 := 'И';
                  end;
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                    s2 := Language.Strings[k];
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                  begin
                     if Language.Strings[k]='1' then
                      l2 := 'ИЛИ'
                     else
                      l2 := 'И';
                  end;
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                   s3 := Language.Strings[k];
                 except
                 end;

         Language.Clear;
         Language.Add('[]('+s1+')'+l1+'('+s2+')'+l2+'('+s3+')()()');
         FreeMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
         m := TMemoryStream.Create;
         Language.SaveToStream(m);
         TQPZ^.AnswerLength := m.Size;
         GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
         m.Position := 0;
         m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
         Language.Free;
         m.free;
        end;
        m := TMemoryStream.Create;
        m.Write(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Position := 0;
        Language := TStringList.Create;
        Language.LoadFromStream(m);
        TQPZ^.KbdCount := Language.Count;
        M.Free;
        Language.Free;
      end;
    2:
      begin
        TQPZ^.PluginName := 'equals.dll';
        m := TMemoryStream.Create;
        F1.Read(AccordListsCount,4);
        m.Write(AccordListsCount,4);
        for J := 1 to AccordListsCount do
          begin
           F1.Read(len,4);
           buffer := AllocMem(len+1);
           F1.Read(buffer^,len);
           buffer[len]:=Chr(0);
           strlist := TStringList.Create;
           strlist.Text := StrPas(buffer);
           len := strlist.Count;
           m.Write(len,4);
           FreeMem(buffer);
           for jj:=0 to strlist.Count-1 do
             begin
               kk := Length(strlist.Strings[jj]);
               m.Write(kk,4);
               s := strlist.Strings[jj];
               buffer := AllocMem(kk+1);
               buffer := StrPCopy(buffer,s);
               buffer[kk]:=Chr(0);
               m.Write(buffer^,kk);
               FreeMem(buffer);
             end;
           strlist.Free;
          end;
        F1.Read(L,4);
        m.Write(L,4);
        for J := 0 to L - 1 do
        begin
         F1.Read(Item1,4);
         m.Write(Item1,4);
         F1.Read(Item2,4);
         m.Write(Item2,4);
         F1.Read(Item3,4);
         m.Write(Item3,4);
        end;
        F1.Read(Limit,4);
        m.Write(Limit,4);
        TQPZ^.AnswerLength := m.Size;
        m.Position := 0;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Free;
        RandomizeEqualsCenter(TQPZ^.AnswerArray,TQPZ^.AnswerLength,5);
        RandomizeEqualsLeft(TQPZ^.AnswerArray,TQPZ^.AnswerLength,3);
      end;
    3:
      begin
        TQPZ^.PluginName := 'variant.dll';
        m := TMemoryStream.Create;
        F1.Read(L,4);
        m.Write(L,4);
        for J := 0 to L - 1 do
        begin
           F1.Read(len,4);
           m.Write(Len,4);
           buffer := AllocMem(len+1);
           F1.Read(buffer^,len);
           m.Write(buffer^,len);
           F1.Read(B,1);
           m.Write(B,1);
           FreeMem(buffer);
        end;
        F1.Read(L,4);
        m.Write(L,4);
        F1.Read(L,4);
        m.Write(L,4);
        F1.Read(L11,2);
        m.Write(L11,2);
        F1.Read(L11,2);
        m.Write(L11,2);
        TQPZ^.AnswerLength := m.Size;
        m.Position := 0;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Free;
      end;
    4:
      begin
        TQPZ^.PluginName := 'sequent.dll';
        m := TMemoryStream.Create;
        F1.Read(len,4);
        m.Write(Len,4);
        buffer := AllocMem(len+1);
        F1.Read(buffer^,len);
        m.Write(buffer^,len);
        FreeMem(buffer);
        TQPZ^.AnswerLength := m.Size;
        m.Position := 0;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Free;
      end;
    end;

    F1.Read(L,4);
    Cnt := L;
    if Cnt<>0 then
      TQPZ^.HasChildren:=1
    else
      TQPZ^.HasChildren:=0;
    F1.Read(L,4); // Группа
    F1.Read(TQPZ^.Percentage,8);
    F1.Read(TScore,4);
    //Для совместимости проверим балл на ноль
     if TScore=0 then
      TScore := Ball;
     if NoKoeff=1 then
      TQPZ^.Score := TScore
     else
      TQPZ^.Score := TScore * (TQPZ^.Percentage/100);
    F1.Free;
  end
  else
  begin

  f.Read(TQPZ^.AnswerType,4);
  TQPZ^.Answer_Time := Minutes;
  TQPZ^.QuestionInTree := False;
  TQPZ^.SequentalSet := False;
  TQPZ^.AnsUserUpdate := False;
  TQPZ^.AnsUserLength := 0;
  TQPZ^.AnsUserBall := 0;
  Inc(Counter);

  TQPZ^.Id := TQPZ^.IdReal;

  case TQPZ^.AnswerType of
    1:
      begin
        if ver>=316 then
         F.Read(TQPZ^.KeyType,1)
        else
         TQPZ^.KeyType := 1;

        TQPZ^.PluginName := 'keyboard.dll';
        F.Read(len,4);
        TQPZ^.AnswerLength := len;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        F.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        if ver<315 then
        begin
                TQPZ^.KeyType := 0;
                Language := TStringList.Create;
                Language.SetText(PChar(TQPZ^.AnswerArray));
                for i:=0 to Language.Count-1 do
                  if Language.Strings[i] = '!**#&*!*@&#!&&@^#!$&@**&@^#((!' then
                    break;
                 k := i+1;
                 try
                  if k < Language.Count then
                   s1 := Language.Strings[k];
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                  begin
                     if Language.Strings[k]='1' then
                      l1 := 'ИЛИ'
                     else
                      l1 := 'И';
                  end;
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                    s2 := Language.Strings[k];
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                  begin
                     if Language.Strings[k]='1' then
                      l2 := 'ИЛИ'
                     else
                      l2 := 'И';
                  end;
                 except
                 end;
                 inc(k);
                 try
                  if k < Language.Count then
                   s3 := Language.Strings[k];
                 except
                 end;
         Language.Clear;
         Language.Add('[]('+s1+')'+l1+'('+s2+')'+l2+'('+s3+')()()');
         FreeMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
         m := TMemoryStream.Create;
         Language.SaveToStream(m);
         TQPZ^.AnswerLength := m.Size;
         GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
         m.Position := 0;
         m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
         Language.Free;
         m.free;
        end;
        m := TMemoryStream.Create;
        m.Write(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Position := 0;
        Language := TStringList.Create;
        Language.LoadFromStream(m);
        TQPZ^.KbdCount := Language.Count;
        M.Free;
        Language.Free;
      end;
    2:
      begin
        TQPZ^.PluginName := 'equals.dll';
        m := TMemoryStream.Create;
        F.Read(AccordListsCount,4);
        m.Write(AccordListsCount,4);
        for J := 1 to AccordListsCount do
          begin
           F.Read(len,4);
           buffer := AllocMem(len+1);
           F.Read(buffer^,len);
           buffer[len]:=Chr(0);
           strlist := TStringList.Create;
           strlist.Text := StrPas(buffer);
           len := strlist.Count;
           m.Write(len,4);
           FreeMem(buffer);
           for jj:=0 to strlist.Count-1 do
             begin
               kk := Length(strlist.Strings[jj]);
               m.Write(kk,4);
               s := strlist.Strings[jj];
               buffer := AllocMem(kk+1);
               buffer := StrPCopy(buffer,s);
               buffer[kk]:=Chr(0);
               m.Write(buffer^,kk);
               FreeMem(buffer);
             end;
           strlist.Free;
          end;
        F.Read(L,4);
        m.Write(L,4);
        for J := 0 to L - 1 do
        begin
         F.Read(Item1,4);
         m.Write(Item1,4);
         F.Read(Item2,4);
         m.Write(Item2,4);
         F.Read(Item3,4);
         m.Write(Item3,4);
        end;
        F.Read(Limit,4);
        m.Write(Limit,4);
        TQPZ^.AnswerLength := m.Size;
        m.Position := 0;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Free;
        RandomizeEqualsCenter(TQPZ^.AnswerArray,TQPZ^.AnswerLength,5);
        RandomizeEqualsLeft(TQPZ^.AnswerArray,TQPZ^.AnswerLength,3);
      end;
    3:
      begin
        TQPZ^.PluginName := 'variant.dll';
        m := TMemoryStream.Create;
        F.Read(L,4);
        m.Write(L,4);
        for J := 0 to L - 1 do
        begin
           F.Read(len,4);
           m.Write(Len,4);
           buffer := AllocMem(len+1);
           F.Read(buffer^,len);
           m.Write(buffer^,len);
           F.Read(B,1);
           m.Write(B,1);
           FreeMem(buffer);
        end;
        F.Read(L,4);
        m.Write(L,4);
        F.Read(L,4);
        m.Write(L,4);
        F.Read(L11,2);
        m.Write(L11,2);
        F.Read(L11,2);
        m.Write(L11,2);
        TQPZ^.AnswerLength := m.Size;
        m.Position := 0;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Free;
      end;
    4:
      begin
        TQPZ^.PluginName := 'sequent.dll';
        m := TMemoryStream.Create;
        F.Read(len,4);
        m.Write(Len,4);
        buffer := AllocMem(len+1);
        F.Read(buffer^,len);
        m.Write(buffer^,len);
        FreeMem(buffer);
        TQPZ^.AnswerLength := m.Size;
        m.Position := 0;
        GetMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
        m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
        m.Free;
      end;
    end;

    F.Read(L,4);
    Cnt := L;
    if Cnt<>0 then
      TQPZ^.HasChildren:=1
    else
      TQPZ^.HasChildren:=0;
    F.Read(L,4); // Группа
    f.Read(TQPZ^.Percentage,8);
    f.Read(TScore,4);
    //Для совместимости проверим балл на ноль
     if TScore=0 then
      TScore := Ball;
     if NoKoeff=1 then
      TQPZ^.Score := TScore
     else
      TQPZ^.Score := TScore * (TQPZ^.Percentage/100);
  end;
  // Перемешаем списки если надо
  if TQPZ^.PluginName = 'sequent.dll' then
  begin
   TQPZ^.AnsUserUpdate := True;
   strlist := TStringList.Create;
   m := TMemoryStream.Create;
   sm := TMemoryStream.Create;
   m.Write(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
   m.Position := 0;
   m.Read(SeqLength,4);
   strlist.LoadFromStream(m);
  {перемешать список}
   strlist.Sorted := False;
   Randomize;
   if strlist.Count > 2 then
    begin
     r1:=0;
     r2:=0;
     for k:=1 to strlist.Count*5 do
     begin
      r1 := Random(strlist.Count);
      while r1=r2 do r2 := Random(strlist.Count);
      strlist.Exchange(r1,r2);
     end;
    end
   else if strlist.Count = 2 then
    strlist.Exchange(0,1);
   {сохранение списка в массиве}
   t1 := TMemoryStream.Create;
   strlist.SaveToStream(t1);
   t1.Position := 0;
   GetMem(TQPZ^.AnsUserBinArray,t1.Size+1);
   TQPZ^.AnsUserLength := t1.Size;
   t1.Read(TQPZ^.AnsUserBinArray^,t1.Size);
   t1.Free;

   //FreeMem(slarray);
   sm.Free;
   m.Free;
   strlist.Free;
  end
  else
    if TQPZ^.PluginName = 'variant.dll' then
    begin
     m := TMemoryStream.Create;
     m.Write(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
     m.Position := 0;
     m.Read(VariantCount,4);
     Variants := TStringList.Create;
     TQPZ^.Min := 0;
     for j:=1 to VariantCount do
     begin
       m.Read(VariantLen,4);
       m.Read(varname,VariantLen);
       varname[VariantLen+1] := chr(0);
       sl:=Trim(StrPas(@varname));
       Variants.Add(sl);
       m.Read(Score[j-1],1);
       if Score[j-1]=1 then
        Inc(TQPZ^.Min);
     end;
     m.Read(TQPZ^.Limit,4);
     m.Read(TQPZ^.All,4);
     m.Read(TQPZ^.TempParam,2);
     m.Read(TQPZ^.RightVariants,2);
     m.Free;
     if TQPZ^.All = 0 then TQPZ^.All := VariantCount;
     if TQPZ^.EditAnsBall = 1 then
       TQPZ^.Min := TQPZ^.RightVariants;
//     if TQPZ^.Min = 0 then TQPZ^.Min := 1;

     // Перемешаем если надо
     if AllowRandom then
     begin
     FreeMem(TQPZ^.AnswerArray,TQPZ^.AnswerLength);
     m := TMemoryStream.Create;
     m.Write(TQPZ^.All,4);
     r := 0;
     for j:=0 to 255 do exist[j] := 65535;
     Randomize;
     for j:=0 to VariantCount-1 do
     begin
      existfound := true;
      if r >= TQPZ^.Min then break;
      while existfound do
      begin
      existfound := False;
      k := Random(VariantCount);
      if Score[k] <> 0 then
       begin
        for jj:=0 to TQPZ^.All-1 do
         if exist[jj] = k then begin existfound := True; break; end;
        if not existfound then
         Inc(r);
       end
      else
       existfound := True;
      end;
      existfound := True;
      while existfound do
      begin
       existfound := False;
       kk := Random(TQPZ^.All);
       for jj:=0 to TQPZ^.All-1 do
        if exist[kk] <> 65535 then begin existfound := True; break; end;
       if not existfound then
        exist[kk] := k;
      end;
     end;
     for j:=0 to VariantCount-1 do
     begin
      existfound := true;
      if (j+TQPZ^.Min+1) > TQPZ^.All then break;
      while existfound do
      begin
      existfound := False;
      k := Random(VariantCount);
      for jj:=0 to TQPZ^.All-1 do
       if exist[jj] = k then begin existfound := True; break; end;
      end;
      existfound := True;
      while existfound do
      begin
       existfound := False;
       kk := Random(TQPZ^.All);
       for jj:=0 to TQPZ^.All-1 do
        if exist[kk] <> 65535 then begin existfound := True; break; end;
       if not existfound then
        exist[kk] := k;
      end;
     end;

     for j:=0 to TQPZ^.All-1 do
     begin
      ll := Length(Variants.Strings[exist[j]]);
      m.Write(ll,4);
      ts := AllocMem(ll+1);
      ts := StrPCopy(ts,Variants.Strings[exist[j]]);
      m.Write(ts^,ll);
      FreeMem(ts);
      m.Write(Score[exist[j]],1);
     end;
     m.Write(TQPZ^.Limit,4);
     m.Write(TQPZ^.All,4);
     m.Write(TQPZ^.Min,4);
     m.Position := 0;
     GetMem(TQPZ^.AnswerArray,m.Size);
     TQPZ^.AnswerLength := m.Size;
     m.Read(TQPZ^.AnswerArray^,TQPZ^.AnswerLength);
     m.Free;
     end;

     Variants.Free;
     m := TMemoryStream.Create;
     TQPZ^.AnsUserLength := TQPZ^.All;
     GetMem(TQPZ^.AnsUserBinArray,TQPZ^.AnsUserLength);
     for i:=0 to TQPZ^.AnsUserLength-1 do
      ps[i] := False;
     m.Write(ps,TQPZ^.AnsUserLength);
     m.Position := 0;
     m.Read(TQPZ^.AnsUserBinArray^,TQPZ^.AnsUserLength);
     m.Free;
    end;
    QZ.Add(TQPZ);
    for I := 0 to Cnt - 1 do
    begin
     New(TQPZ);
     LoadQuestion(TQPZ, QZ, F, Minutes, Ball, Counter, Counter, GRP, ver, AllowRandom, NoKoeff, EditUBall);
    end;
end;


function Tmf.OpenFile(FileName : string; Counter:integer; Sender: TObject):boolean;

procedure AddChildrens(Q2 : QP; L,L2:TList);
var
  t : integer;
  QP1 : QP;
begin
 if Q2.HasChildren=1 then
  for t:=0 to L2.Count-1 do
  begin
    QP1 := L2.Items[t];
    if QP1.QParent = Q2.Id then
    begin
     L.Add(QP1);
     AddChildrens(QP1,L,L2);
    end;
  end;
end;

procedure AddChildrensCorrect(Q2 : QP; L,L2:TList; Id : integer);
var
  oldid, t : integer;
  QP1 : QP;
begin
 if Q2.HasChildren=1 then
  for t:=0 to L2.Count-1 do
  begin
    QP1 := L2.Items[t];
    if QP1.QParent = Id then
    begin
     QP1.QParent := Q2.Id;
     oldid := QP1.Id;
     QP1.Id := t+1;
     L.Add(QP1);
     AddChildrensCorrect(QP1,L,L2,oldid);
    end;
  end;
end;

procedure ChildrensCorrectIDs(Q2 : QP; L2:TList; Id : integer);
var
  t,j : integer;
  QP1 : QP;
begin
 j := 0;
 if Q2.HasChildren=1 then
  for t:=0 to L2.Count-1 do
  begin
    QP1 := L2.Items[t];
    if (QP1.QParent = Id) and (QP1.GroupName=Q2.GroupName) then
    begin
     QP1.QParent := Q2.Id;
     Inc(j);
     QP1.IdS := j;
    end;
  end;
end;

procedure CorrectChildren(QQ : QP; L : TList; var ch : integer);
var
  jj : integer;
  QPP : QP;
begin
  for jj:=0 to L.Count-1 do
   begin
    QPP := L.Items[jj];
    if QPP.QParent = QQ.Id then
       begin
        Inc(ch);
        QPP.IdS := ch;
        if QPP.HasChildren<>0 then
         CorrectChildren(QPP,L,ch);
       end;
   end;
end;

var
 Registry : TMyStream;
 AllPercentage : real;
 ListItem: TListItem;
 F : TFileStream;
 qpos, zz, oldid, jj, k, ver, richlen, GroupPercent, Cntj, j, mn, len, i : integer;
 buffer : PChar;
 MZ, F1, A, M, MO : TMemoryStream;
 FullPath, FName, DirName,s : string;
 DT : TDateTime;
 groupsize : longint;
 child, B1, B2, ResCnt, Ball, RR, t, RCnt, hour, atime, QT, Cnt,ii : integer;
 NoKoeff, EditBall, EditAnsBall, b : Byte;
 zb, RBuffer : PByte;
 Res : word;
 DateEqual, found, PercentRandom, AllowRandom, RandomSelect, Select, Percent : boolean;
 tn : TTreeNode;
 QP1 : QP;
 MyFioForm : TFioForm;
 Cur, BD, ED : TDateTime;
begin

with mf do
begin

if LoadingForm=nil then
 LoadingForm := TLoadingForm.Create(Application);
LoadingForm.Caption := 'Загрузка теста...';
LoadingForm.Panel1.Caption := '';
LoadingForm.Show;
Transmission := False;
timelimit:=0;
ToolButton1.Enabled := False;
ToolButton2.Enabled := False;
ToolButton4.Enabled := False;
tv.Items.Clear;
ro.Lines.Clear;
VariantBox.Clear;
//VariantBoxSingle.Clear;
SeqListBox.Clear;
KbdEdit.Text := '';
ALeft.Clear;
ACenter.Clear;
ARight.Clear;
AccordList.Clear;
TabControl1.Visible := False;
TabControl2.Visible := False;
TabControl3.Visible := False;
TabControl4.Visible := False;
Caption := 'Тестирование';
tv.Enabled := True;
try
  Screen.Cursor := crHourGlass;
  F := TFileStream.Create(FileName,fmOpenRead);
  F.Read(len,4); // версия 2006
  TestVersion := len;
  if TestVersion < 2006 then
  begin
   F.Free;
   Screen.Cursor := crDefault;
   ShowMessageD('Версия теста не поддерживается программой тестирования.',0);
   Result := False;
   Exit;
  end;
  if TestVersion > 20068 then
  begin
   F.Free;
   Screen.Cursor := crDefault;
   ShowMessageD('Версия теста не поддерживается программой тестирования.',0);
   Result := False;
   Exit;
  end;

  F.Seek(18,soFromCurrent);

  F.Read(len,4);
  buffer := AllocMem(len+1);
  buffer[len] := Chr(0);
  F.Read(buffer^,len);
  buffer[len]:=Chr(0);
  Caption := StrPas(buffer);
  TestName := Caption;
  FreeMem(buffer);

  F.Read(i,4); // Уровень сложности
  AllowRandom := i=1;
  F.Read(i,4); // Вид теста
  if i=0 then TemporaryTest := False
  else TemporaryTest := True;
  if i=2 then
    CheckButton.Enabled := True;
  case i of
   0 :  TestLevel := ' (Зачетный)';
   1 :  TestLevel := ' (Проверочный)';
   2 :  TestLevel := ' (Обучение)';
  end;

  reptest := i=1;

  if not IsRemoteTest then
  begin
   FamText := '';
   WorkText := '';
   SubText := '';
  end;

  Caption := Caption + TestLevel;
  F.Read(i,4); // Вид окончания тестирования
  ExitType := i ;

  F.Read(RichLen,4);
  RBuffer := AllocMem(Richlen);
  F.Read(RBuffer^,Richlen);
  M := TMemoryStream.Create;
  MComment := TMemoryStream.Create;
  MComment.Write(RBuffer^,Richlen);
  MComment.Position := 0;
  bz.DecompressStream(MComment, M);
  M.Position := 0;
  FreeMem(RBuffer);
  //if TemporaryTest then MComment.Free;

  if IntroForm=nil then
    IntroForm := TIntroForm.Create(Application);

  IntroForm.RO.Lines.Clear;
  IntroForm.RE.Lines.Clear;
  IntroForm.lv.Items.Clear;
  IntroForm.RO.Lines.LoadFromStream(M);
  M.Free;

  F.Read(BD,8); // Дата начала тестирования
  F.Read(ED,8); // Дата окончания тестирования
  F.Read(DT,8); // Дата создания теста

  F.Read(len,4); // Время тестирования
  timelimit := len;

  // Версия 20067
  if TestVersion >= 20067 then
  begin
   F.Read(len,4);
   ResCnt := len;
   for i:=0 to ResCnt-1 do
    begin
     F.Read(len,4);
     F.Seek(len,soFromCurrent);
     F.Read(len,4);
    end;
  end;
  // Версия 20067 конец

  // Fam
  F.Read(len,4);
  buffer := AllocMem(len+1);
  buffer[len] := Chr(0);
  F.Read(buffer^,len);
  FreeMem(buffer);
  // Organ
  F.Read(len,4);
  buffer := AllocMem(len+1);
  buffer[len] := Chr(0);
  F.Read(buffer^,len);
  FreeMem(buffer);
  // PWD
  F.Read(len,4);
  buffer := AllocMem(len+1);
  buffer[len] := Chr(0);
  F.Read(buffer^,len);
  FreeMem(buffer);

  F.Read(b,1); // Param1
  if b=1 then RandomSelect := True else RandomSelect:=False;
  F.Read(b,1); // Param2
  Backward := True;
  if not TemporaryTest then
   if b=1 then Backward := True else Backward:=False;
  F.Read(Cnt,4);
  Randomize;

  ResOcenka := 1; // Для совместимости с версией 2006

  // Создадим списки результатов
  TestResult := TList.Create;
  GroupResult := TList.Create;

  TimeParam := 0;
  if TestVersion>=20061 then
  begin
   // Версия 20061
   F.Read(b,1);
   ResAnaliz := b;
   F.Read(b,1);
   ResOcenka := b;

   if TestVersion>=20062 then
    begin
     F.Read(b,1);
     ResPercent := b;
    end;

   if TestVersion>=20064 then
    begin
     F.Read(b,1);
     TimeParam := b;
    end;

   if TestVersion>=20065 then
    begin
     F.Read(b,1);
     ResGrpAnaliz := b;
    end;

   LimitTime := 0;
   if TestVersion>=20066 then
    begin
     F.Read(b,1);
     LimitTime := b;
    end;

   Protocol := 0;
   if TestVersion>=20068 then
    begin
     F.Read(b,1);
     Protocol := b;
    end;

   F.Read(len,4);
   ResCnt := len;
   for i:=0 to ResCnt-1 do
    begin
     F.Read(len,4);
     B1 := len;
     F.Read(len,4);
     B2 := len;
     F.Read(len,4);
     M := TMemoryStream.Create;
     RBuffer := AllocMem(len);
     F.Read(rbuffer^,len);
     M.Write(rbuffer^,len);
     M.Position := 0;
     FreeMem(rbuffer);
     AddTestResult(B1,B2,M);
     M.Free;
    end;
  // Конец версия 20061
  end;

  if TimeParam = 1 then
  begin
   DateEqual := False;
   Cur := StrToDate(DateToStr(Now));
   if (Cur >= StrToDate(DateToStr(BD))) and (Cur <= StrToDate(DateToStr(ED))) then DateEqual := True;
   if not TemporaryTest and not DateEqual then
    begin
      ShowMessageD('Период тестирования по зачетному тесту закончился!',0);
      LoadingForm.Close;
      Screen.Cursor := crDefault;
      F.Free;
      Result := False;
      Exit;
    end;
  end;

  // Тест зачетный и не удаленный?
  if (not TemporaryTest) and (not IsRemoteTest) then
  begin
    MyFioForm := TFioForm.Create(Application);
    if MyFioForm.ShowModal <> mrOk then
    begin
     Screen.Cursor := crDefault;
     F.Free;
     MyFioForm.Destroy;
     LoadingForm.Close;
     Caption := 'Тестирование';
     Result := True;
     Exit;
    end
    else
    begin
     FamText := MyFioForm.FamEdit.Text;
     SubText := MyFioForm.Spr1Edit.Text;
     WorkText := MyFioForm.Spr2Edit.Text;
     MyFioForm.Destroy;
     SBar.Panels[0].Text := FamText;
    end;
  end;


  Q := TList.Create;
  Counter := 0;
  for i:=1 to Cnt do
    begin
     TempQ := TList.Create;
     Q1 := TList.Create;
     F.Read(len,4);
     buffer := AllocMem(len+1);
     buffer[len] := Chr(0);
     F.Read(buffer^,len);
     buffer[len]:=Chr(0);
     FullPath := StrPas(buffer);
     FreeMem(buffer);

     F.Read(len,4);
     buffer := AllocMem(len+1);
     buffer[len] := Chr(0);
     F.Read(buffer^,len);
     buffer[len]:=Chr(0);
     FName := StrPas(buffer);
     FreeMem(buffer);

     F.Read(b,1); // =1 - выбор
     Select := b=1;
     F.Read(b,1); // =1 - Процент
     Percent := b=1;
     F.Read(b,1); // Процент
     GroupPercent := b;
     F.Read(b,1); // Процент
     PercentRandom := b=1;

     F.Read(groupsize,4); // Длина буфера вопросов

     // Начало группы
     F.Read(len,4); // версия 1, 2.0
     ver := len;
     F.Seek(18,soFromCurrent);

     F1 := TMemoryStream.Create;
     if (ver>=311) and (ver<=313) then
      begin
       MZ := TMemoryStream.Create;
       getmem(zb,groupsize-18-4);
       F.Read(zb^,groupsize-18-4);
       MZ.Write(zb^,groupsize-18-4);
       MZ.Position := 0;
       DeCryptStream(MZ, F1);
       F1.Position := 0;
       MZ.Free;
       FreeMem(zb);
      end
     else
      begin
       getmem(zb,groupsize-18-4);
       F.Read(zb^,groupsize-18-4);
       F1.Write(zb^,groupsize-18-4);
       F1.Position := 0;
       FreeMem(zb);
      end;

     F1.Read(len,4);
     buffer := AllocMem(len+1);
     buffer[len] := Chr(0);
     F1.Read(buffer^,len);
     buffer[len]:=Chr(0);
     FreeMem(buffer);

     F1.Read(NoKoeff,1);
     F1.Read(EditBall,1);
     F1.Read(EditAnsBall,1);
     F1.Read(b,1);

     F1.Read(Res,2);
     Mn := Res;
     F1.Read(Res,2);
     F1.Read(len,4);
     F1.Read(Ball,4);
     F1.Read(len,4);

     if ver >= 305 then
     begin
      F1.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F1.Read(buffer^,len);
      FreeMem(buffer);

      F1.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F1.Read(buffer^,len);
      FreeMem(buffer);

      F1.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F1.Read(buffer^,len);
      FreeMem(buffer);

      F1.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F1.Read(buffer^,len);
      FreeMem(buffer);

      F1.Read(len,4);
      buffer := AllocMem(len+1);
      buffer[len] := Chr(0);
      F1.Read(buffer^,len);
      FreeMem(buffer);
      F1.Read(len,4);
      F1.Read(len,4);
     end;

     // Комменнтарий
     if ver >= 313 then
     begin
      F1.Read(len,4);
      F1.Seek(len,soFromCurrent);
     end;

     F1.Read(Cntj,4);

     // Загрузим вопросы

     for j := 0 to Cntj - 1 do begin
      LoadingForm.PB.Position := Trunc(j/(Cntj)*100);
      LoadingForm.Repaint;
      New(TempQP);
      LoadQuestion(TempQP, TempQ, F1, Mn, Ball, 0, Counter, FName, ver, AllowRandom, NoKoeff, EditAnsBall);
     end;
     F1.Free;

     // Процент
     if Percent then
     begin
      if PercentRandom then
      begin
       F.Read(len,4);
       for ii:=0 to len-1 do F.Read(b,1);
      if RandomSelect and (TempQ.Count > 1) then
       begin
        Randomize;
        for ii:=0 to (TempQ.Count-1) do
        begin
         t := Random(TempQ.Count);
         rr := t;
         while rr=t do
          rr := Random(TempQ.Count);
         if t<>rr then
          TempQ.Exchange(t,rr);
        end;
       end;
       RCnt := 0;
       for ii:=0 to (TempQ.Count-1) do
       begin
        QP1 := TempQ.Items[ii];
        if QP1.QParent=0 then Inc(RCnt);
       end;
       RCnt := Trunc(RCnt*GroupPercent/100);
       J:=0;
       Randomize;
       A := TMemoryStream.Create;
       for ii:=0 to TempQ.Count-1 do
       begin
         B := 0;
         A.Write(B,1);
       end;
       while J<RCnt do
        begin
         k := Random(TempQ.Count);
         A.Position := k;
         A.Read(B,1);
         if B = 0 then
         begin
           A.Position := k;
           B := 1;
           A.Write(B,1);
           QP1 := TempQ.Items[K];
           if QP1.QParent<>0 then Continue;
           Q1.Add(QP1);
           AddChildrens(QP1,Q1,TempQ);
           Inc(J);
         end;
       end;
       A.Free;
      end
      else
      begin
       F.Read(len,4);
       for ii:=0 to len-1 do
       begin
        F.Read(b,1);
        if b=1 then
        begin
          RR:=0;
          for t:=0 to TempQ.Count-1 do
          begin
            QP1 := TempQ.Items[t];
            if (RR=ii) AND (QP1.QParent=0) then
            begin
              Q1.Add(TempQ.Items[t]);
              AddChildrens(TempQ.Items[t],Q1,TempQ);
              break;
            end;
            if QP1.QParent=0 then inc(RR);
          end;
        end;
       end;
      if RandomSelect and (Q1.Count > 1) then
       begin
        Randomize;
        for ii:=0 to (Q1.Count-1) do
        begin
         t := Random(Q1.Count);
         rr := t;
         while rr=t do
          rr := Random(Q1.Count);
         if t<>rr then
          Q1.Exchange(t,rr);
        end;
       end;
      end;
     end
     // Выбор
     else if select then
     begin
      F.Read(len,4);
      for ii:=0 to len-1 do
      begin
        F.Read(b,1);
        if b=1 then
        begin
          RR:=0;
          for t:=0 to TempQ.Count-1 do
          begin
            QP1 := TempQ.Items[t];
            if (RR=ii) AND (QP1.QParent=0) then
            begin
              Q1.Add(TempQ.Items[t]);
              AddChildrens(TempQ.Items[t],Q1,TempQ);
              break;
            end;
            if QP1.QParent=0 then inc(RR);
          end;
        end;
      end;
      if RandomSelect and (Q1.Count > 1) then
      begin
       Randomize;
       for ii:=0 to Q1.Count-1 do
       begin
        t := Random(Q1.Count);
        rr := t;
        while rr=t do
         rr := Random(Q1.Count);
        if t<>rr then
         Q1.Exchange(t,rr);
       end;
      end;
     end;

     if TestVersion>=20065 then
     begin
       F.Read(b,1);
       F.Read(len,4);
       ResCnt := len;
       for ii:=0 to ResCnt-1 do
        begin
         F.Read(len,4);
         B1 := len;
         F.Read(len,4);
         B2 := len;
         F.Read(len,4);
         M := TMemoryStream.Create;
         RBuffer := AllocMem(len);
         F.Read(rbuffer^,len);
         M.Write(rbuffer^,len);
         M.Position := 0;
         FreeMem(rbuffer);
         AddGroupResult(B1,B2,M,b,FName,i);
         M.Free;
        end;
     end;

     t:=0;
     for ii:=0 to Q1.Count-1 do
     begin
        QP1 := Q1.Items[ii];
        child := 0;
        if QP1.QParent=0 then
        begin
          Inc(t);
          QP1.IdT := t;
//          if QP1.HasChildren<>0 then
//            CorrectChildren(QP1,Q1,child);
        end;
        Q.Add(QP1);
     end;

     ListItem := IntroForm.lv.Items.Add;
     ListItem.Caption := FName;
     ListItem.SubItems.Add(IntToStr(t));

     // Очистим память
     for ii:=0 to Q1.Count-1 do
      begin
        QP1 := Q1.Items[ii];
        if QP1 <> nil then
        begin
        found := false;
        for jj:=0 to Q.Count-1 do
        begin
         TQP := Q.Items[jj];
         if TQP=QP1 then
          begin
           found:=true;
           break;
          end;
        end;
        if not found then
         begin
           FreeMem(QP1^.QuestionName);
           FreeMem(QP1^.QuestionArray);
           FreeMem(QP1^.DecompressQuestionArray);
           if QP1^.QuestionAddLength >0 then FreeMem(QP1^.QuestionAddArray);
           if QP1^.QuestionVideoLength >0 then FreeMem(QP1^.QuestionVideoArray);
           FreeMem(QP1^.AnswerArray);
           QP1^.AnswerStream.Free;
           if QP1^.AnsUserUpdate then
               FreeMem(QP1^.AnsUserBinArray);
           Dispose(QP1);
         end;
        end;
      end;
     Q1.Free;
     for ii:=0 to TempQ.Count-1 do
      begin
        QP1 := TempQ.Items[ii];
        if QP1 <> nil then
        begin
        found := false;
        for jj:=0 to Q.Count-1 do
        begin
         TQP := Q.Items[jj];
         if TQP=QP1 then
          begin
           found:=true;
           break;
          end;
        end;
        if not found then
         begin
           FreeMem(QP1^.QuestionName);
           FreeMem(QP1^.QuestionArray);
           FreeMem(QP1^.DecompressQuestionArray);
           if QP1^.QuestionAddLength >0 then FreeMem(QP1^.QuestionAddArray);
           if QP1^.QuestionVideoLength >0 then FreeMem(QP1^.QuestionVideoArray);
           FreeMem(QP1^.AnswerArray);
           QP1^.AnswerStream.Free;
           if QP1^.AnsUserUpdate then
               FreeMem(QP1^.AnsUserBinArray);
           Dispose(QP1);
         end;
        end;
      end;
     TempQ.Free;
   end;
F.Free;

 // Вычислим время
if LimitTime = 1 then
 QuestionTime := Trunc((Timelimit*60)/Q.Count);

  // Скорректируем ID
t := 0;
RR := 0;
for i:=0 to (Q.Count-1) do
  begin
    QP1 := Q.Items[i];
    QP1.IdReal := i+1;
    QP1.QuestionInTree := False;
    if LimitTime = 1 then
     QP1.QuestionTime := QuestionTime;
    if QP1.QParent=0 then
      Inc(t)
    else
      Inc(rr);
//    QP1.IdReal := t;
  end;


 s := 'Здравствуйте';
 if FamText<>'' then s := s + ' ' + Trim(FamText) + ' ('+Trim(SubText)+')';
 s := s+ '!';
 IntroForm.re.SelAttributes.Name := 'Times New Roman';
 IntroForm.re.SelAttributes.Style := [fsBold];
 IntroForm.re.SelAttributes.size := 16;
 IntroForm.re.Lines.Add(s);
 if TestLevel=' (Зачетный)' then s := '"' + Trim(TestName) + '" в зачетном режиме'
 else
 if TestLevel=' (Проверочный)' then s := '"' + Trim(TestName) + '" в проверочном режиме (с просмотром результатов)'
 else
 if TestLevel=' (Обучение)' then s := '"' + Trim(TestName) + '" в режиме обучения';
 IntroForm.re.SelAttributes.Name := 'Arial';
 IntroForm.re.SelAttributes.Style := [];
 IntroForm.re.SelAttributes.size := 12;
 IntroForm.re.Lines.Add('Вам предлагается пройти тест:');
 IntroForm.re.SelAttributes.Name := 'Times New Roman';
 IntroForm.re.SelAttributes.Style := [fsBold];
 IntroForm.re.SelAttributes.size := 16;
 IntroForm.re.Lines.Add(s);
 IntroForm.re.SelAttributes.Name := 'Arial';
 IntroForm.re.SelAttributes.Style := [];
 IntroForm.re.SelAttributes.size := 12;
 IntroForm.Label6.Caption := 'Вопросов будет задано: '+IntToStr(t);
 if RR>0 then
   IntroForm.Label6.Caption := 'Основных вопросов будет задано: '+IntToStr(t)+ '; подвопросов: '+IntToStr(rr);
 if LimitTime = 1 then
  IntroForm.Label6.Caption := IntroForm.Label6.Caption + '. Ограничение по времени - ответ на вопрос ' + IntToStr(QuestionTime) + ' сек.';
 if Timelimit > 0 then
 begin
  currenttime := timelimit;
  if (currenttime mod 60) = 0 then
   s := IntToStr(trunc(int(currenttime/60)))+ ' ч. 00 мин.'
  else
  if int(currenttime/60) = 0 then
   s := IntToStr(currenttime) + ' мин.'
  else
  begin
   hour := 0;
   atime := currenttime;
   while atime > 60 do
    begin
      inc(hour);
      atime := atime - 60;
    end;
   s := IntToStr(hour)+ ' ч. '+ IntToStr(atime)+' мин.';
  end;
  IntroForm.re.Lines.Add('Общее время тестирования:');
  IntroForm.re.SelAttributes.Name := 'Times New Roman';
  IntroForm.re.SelAttributes.Style := [fsBold];
  IntroForm.re.SelAttributes.size := 16;
  IntroForm.re.Lines.Add(s);
 end;
 IntroForm.re.SelAttributes.Name := 'Arial';
 IntroForm.re.SelAttributes.Style := [];
 IntroForm.re.SelAttributes.size := 12;
 IntroForm.re.Lines.Add('Желаем успеха!');
 LoadingForm.Close;
 if IntroForm.ShowModal = mrCancel then
  begin
    if mf.IsRemoteTest then
      mf.AbortSocket.Open;
    Screen.Cursor := crDefault;

    Result := False;
    Exit;
  end;
 SystemParametersInfo(SPI_SCREENSAVERRUNNING, 1, 0, 0);
// mf.BorderIcons := [biSystemMenu];

 topitem := 0;
  with tv.Items do
   begin
    if Q.Count > 0 then
    begin
     Clear;
     cnt:=0;
     for i:=0 to (Q.Count-1) do
     begin
      { поищем корневой вопрос}
      TQP := Q.Items[i];
      if TQP^.QParent = 0 then
      begin
       // Скорректируем позицию разделителя
       tv.Visible := True;
       Splitter2.Visible := True;
       try
        Registry := TMyStream.Create(ExtractFilePath(paramstr(0))+'qpos.cfg',fmOpenRead);
        QPos := Registry.ReadInteger;
         if QPos > Trunc(mf.Width/2) then
           begin
            Splitter2.Left := 193;
            tv.Width := 193;
           end
         else
           begin
            Splitter2.Left := QPos+1;
            tv.Width := QPos+1;
           end;
         Registry.Free;
       except
          Splitter2.Left := 193;
          tv.Width := 193;
       end;

       Inc(cnt);
       tn := AddObject(nil,TQP^.GroupName,nil);
       tn.ImageIndex := 2;
       tn.SelectedIndex := 2;
       tv.Selected := tv.Items[tv.Items.Count-1];
       AddChildObject(tn,'',TQP);
       tv.Selected := tv.Items[tv.Items.Count-1];
       tv.Selected.Text := '№'+IntToStr(tv.Selected.Parent.Index+1)+'.'+IntToStr(cnt)+' '+TQP^.QuestionName;

       SBar.Visible := True;
       ToolButton1.Enabled := True;
       ToolButton2.Enabled := True;
       ToolButton4.Enabled := True;
       N31.Enabled := False;
       ro.Visible:=True;
       ListView1.Visible:=False;
       Panel1.Visible:=True;
       Panel3.Visible:=True;
       LocalTest := True;
       Screen.Cursor := crDefault;
       tv.Enabled := Backward;
       TQP^.QuestionIndex := i+1;

       tvClick(Sender);
       tvClick(Sender);
       topitem := 2;
       break;
      end;
     end;
    end;
   end;

   with MainMenu1 do
   begin
    N9.Enabled := True;
    N4.Enabled := True;
    N16.Enabled := True;
   end;
//   progr.Hide;
  quewindow.visible := true;

  if timelimit <> 0 then
  begin
    Timer1.Enabled := True;
    Timer2.Enabled := True;
    Timer3.Enabled := True;
    currenttime := timelimit;
    timewindow.visible := true;

    dec(currenttime);

    if LimitTime = 0 then
    begin
     sectime := 59;
     Digit5.Value := '5';
     Digit6.Value := '9';
     RxLabel2.Caption := ':';
    end
    else
    begin
     Digit5.Value := '0';
     Digit6.Value := '0';
     RxLabel2.Caption := ':';
    end;

  if int(currenttime/60)=0 then
  begin
   Digit1.Value := '0';
   Digit2.Value := '0';
   s := IntToStr(currenttime);
   if length(s)=1 then
    Digit3.Value := '0'
   else
    Digit3.Value := s[length(s)-1];
   Digit4.Value := s[length(s)];;
  end
  else
  begin
   hour := 0;
   atime := currenttime;
   while atime > 60 do
    begin
      inc(hour);
      atime := atime - 60;
    end;
   s := IntToStr(hour);
   if length(s)=1 then
    Digit1.Value := '0'
   else
    Digit1.Value := s[length(s)-1];
   Digit2.Value := s[length(s)];;
   s := IntToStr(atime-1);
   if length(s)=1 then
    Digit3.Value := '0'
   else
    Digit3.Value := s[length(s)-1];
   Digit4.Value := s[length(s)];;
  end;

  end
  else
  begin
     timewindow.visible := False;
     Digit1.Value := '0';
     Digit2.Value := '0';
     Digit3.Value := '0';
     Digit4.Value := '0';
     Digit5.Value := '0';
     Digit6.Value := '0';
     RxLabel1.Caption := '';
     RxLabel2.Caption := '';
     Timer1.Enabled := False;
     Timer2.Enabled := False;
     Timer3.Enabled := False;
  end;

   tb1.Visible := True;
   n27.Enabled := False;
   n33.Enabled := False;
   n34.Enabled := False;

   LoadingForm.Close;

   {  if timelimit <> 0 then
   begin
    TimeWindow.Visible := True;
    Timer1.Enabled := True;
    if LimitTime = 1 then Timer2.Enabled := True;
    Timer3.Enabled := True;
   end;}

   if not TemporaryTest then
   begin
    if ExitType=0 then ToolButton4.Enabled := False;
    if ExitType=0 then N9.Enabled := False;
   end;
   Screen.Cursor := crDefault;
   Result := True;
  except
   Screen.Cursor := crDefault;
   Result := False;
  end;
 end;
end;

Procedure Tmf.DisableView;
Begin
Timer1.Enabled := False;
Timer2.Enabled := False;
Timer3.Enabled := False;
{прячем элементы управления}
//mf.BorderIcons := [biMinimize, biMaximize, biSystemMenu];
SystemParametersInfo(SPI_SCREENSAVERRUNNING, 0, 0, 0);
Sbar.panels[0].Text := '';
Sbar.panels[1].Text := '';
Sbar.panels[2].Text := '';
tv.Visible := False;
Splitter2.Visible := False;
N31.Enabled := True;
tb1.Visible := False;
localtest := False;
tv.Visible:=False;
ro.Visible:=False;
TabControl1.Visible := False;
TabControl2.Visible := False;
TabControl3.Visible := False;
TabControl4.Visible := False;
ListView1.Visible:=True;
n27.Enabled := True;
n33.Enabled := True;
n34.Enabled := True;
Panel1.Visible:=False;
Panel3.Visible:=False;
ToolButton1.Enabled := False;
ToolButton2.Enabled := False;
ToolButton4.Enabled := False;
tv.Enabled := False;
ro.Lines.Clear;
VariantBox.Clear;
//VariantBoxSingle.Clear;
SeqListBox.Clear;
ALeft.Clear;
ACenter.Clear;
ARight.Clear;
AccordList.Clear;
OldName := mf.Caption;
mf.Caption := 'Тестирование';
with MainMenu1 do
   begin
    N9.Enabled := False;
    N4.Enabled := False;
    N16.Enabled := False;
   end;
TimeWindow.Visible := False;
QueWindow.visible := true;
CheckButton.Enabled := false;
end;

procedure Tmf.ClearRAM;
var
 i,j : integer;
begin
for i:=0 to TestResult.Count-1 do
 TTestResult(TestResult.Items[i]).Free;
TestResult.Free;
for i:=0 to GroupResult.Count-1 do
 TGroupResult(GroupResult.Items[i]).Free;
GroupResult.Free;
RO.Clear;
MComment.Free;
for i:=1 to LeafCount do begin
  Freemem(L[i-1].name);
end;
LeafCount := 0;
if Q <> nil then
 for i:=0 to (Q.Count-1) do
  begin
    TQP := Q.Items[i];
    if TQP <> Nil then
    begin
     try
      FreeMem(TQP^.QuestionName);
      FreeMem(TQP^.QuestionArray);
      FreeMem(TQP^.DecompressQuestionArray);
      if TQP^.QuestionAddLength >0 then
       FreeMem(TQP^.QuestionAddArray);
      if TQP^.QuestionVideoLength >0 then
       FreeMem(TQP^.QuestionVideoArray);
      if TQP^.AnswerLength >0 then
       FreeMem(TQP^.AnswerArray);
      TQP^.AnswerStream.Free;
      if TQP^.AnsUserUpdate then
       FreeMem(TQP^.AnsUserBinArray);
     except
     end;
     Dispose(TQP);
    end;
  end;
Q.Free;
CommentStream.Free;
QuestionStream.Free;
GroupStream.Free;
end;

procedure RandomClass.Create(length : integer);
begin
 SetLength(data, length);
 datalength := length;
 current := 0;
end;

procedure RandomClass.Add(r1 : integer; r2 : integer);
begin
 data[current].r1 := r1;
 data[current].r2 := r2;
 inc(current);
end;

function RandomClass.Exist(r1 : integer; r2 : integer) : boolean;
var
 i : integer;
 Ex : boolean;
begin
 Ex := False;
 for i:=0 to datalength-1 do
  begin
   if (data[i].r1 = r1) and (data[i].r2 = r2) then
    begin
     Ex := True;
     break;
    end;
  end;
 Exist := Ex;
end;

procedure Tmf.Exit1Click(Sender: TObject);
begin
 Close;
end;

procedure Tmf.Options1Click(Sender: TObject);
begin
 if Access.ShowModal = mrOk then
   begin
    Options.ShowModal;
    InitDesktop;
   end;
end;

procedure Tmf.FormClose(Sender: TObject; var Action: TCloseAction);
var
 i : longint;
begin
 if LocalTest then begin
    MessageDlg('Идет тестирование.',
    mtCustom, [mbOK], 0);
    Action := caNone;
 end
 else
 begin
  AppOptions.Free;
  BitMap1.FreeImage;
  BitMap2.FreeImage;
  BitMap3.FreeImage;
  BitMap4.FreeImage;
  BitMap5.FreeImage;
  Action := caFree;
 end;
end;

{=================================================================}
{Процедура обработки нажатия на вопрос}
{=================================================================}
procedure Tmf.tvClick(Sender: TObject);
var
  sm,m,mout : TMemoryStream;
  Parents, j, All, AccStrLength,AccCount,SeqLength,k,i,VariantCount,VariantLen : longint;
  s : String;
  slarray : PByte;
  Lang, strlist : TStringList;
  Ball, KbdBall, AccBall : Real;
  ObjLen, AccRightCount, KbdStringLen : longint;
  sent : Boolean;
  psent : PByte;
  len,c,r,l : longint;
  QP1 : QP;
  varname : array [1..5000] of char;
  Score : byte;
  buf : PChar;
  TP : TPoint;
  LItem : Boolean;
  hour, atime : word;
  ObjectSize : TPoint;
begin
if tv.Selected <> nil then
if tv.Selected.ImageIndex <> 2  then
begin
 Panel2.Visible := True;
 if TestLevel = ' (Обучение)' then
  CheckButton.Enabled := True;

 oldindex := tv.Selected.AbsoluteIndex;

 QP1 := tv.Selected.Data;
 QP1^.QuestionInTree := True;

 if QP1^.AnsUserUpdate then
 begin
  tv.Selected.SelectedIndex := 1;
  tv.Selected.ImageIndex := 1;
 end
 else
 begin
  tv.Selected.SelectedIndex := 0;
  tv.Selected.ImageIndex := 0;
 end;

 All :=0;
 Parents:=0;
 for j:=0 to (Q.Count-1) do
  begin
   TQP := Q.Items[j];
   if TQP.QParent=0 then
    begin
     Inc(Parents);
     if TQP^.QuestionInTree then
      inc(All);
    end;
  end;

 s := IntToStr(All);
 if length(s)=2 then
  Digit10.Value := '0'
 else
  Digit10.Value := s[length(s)-2];
 if length(s)=1 then
  Digit11.Value := '0'
 else
  Digit11.Value := s[length(s)-1];
 Digit12.Value := s[length(s)];

 s := IntToStr(Parents-All);
 if length(s)=2 then
  Digit7.Value := '0'
 else
  Digit7.Value := s[length(s)-2];
 if length(s)=1 then
  Digit8.Value := '0'
 else
  Digit8.Value := s[length(s)-1];
 Digit9.Value := s[length(s)];

 if LimitTime=1 then
 begin
  QP1 := tv.Selected.Data;
  if int(QP1^.QuestionTime/60)=0 then
  begin
   s := IntToStr(QP1^.QuestionTime);
   if length(s)=1 then
    Digit5.Value := '0'
   else
    Digit5.Value := s[length(s)-1];
   Digit6.Value := s[length(s)];;
  end
  else
  begin
   hour := 0;
   atime := QP1^.QuestionTime;
   while atime > 60 do
    begin
      inc(hour);
      atime := atime - 60;
    end;
   s := IntToStr(atime-1);
   if length(s)=1 then
    Digit5.Value := '0'
   else
    Digit5.Value := s[length(s)-1];
   Digit6.Value := s[length(s)];;
  end;
 end;

 Sbar.Panels[2].Text := 'Вопрос: '+QP1^.QuestionName;
 Sbar.Panels[1].Text := 'Раздел(тема): '+QP1^.GroupName;

 // Загрузим формулировку вопроса
 m := TMemoryStream.Create;
 m.Write(QP1^.DecompressQuestionArray^,QP1^.DecompressQuestionLength);
 m.Position := 0;
 ro.Font.Height := 12;
 ro.Lines.Clear;
 ro.Lines.LoadFromStream(m);
 ro.Update;
 m.Free;

 // Форматирование области Оставим пополам
// Panel5.Height := Round(Panel3.Height / 2) + 81;

 if ro.ObjectCount <> 0 then
 begin
//  ro.objects[0].GetExtent(DVASPECT_CONTENT,ObjectSize);
  ro.WordWrap := False;
//  if ObjectSize.y > Round(Panel3.Height / 2) then
   Panel5.Height := Round(Panel3.Height / 2) + 10;
//  else
//   Panel5.Height := ro.Lines.Count*(ro.Font.Height + 30) + ObjectSize.y + 81;
 end
 else
 begin
  ro.WordWrap := True;
  if ro.Lines.Count*(ro.Font.Height + 30) < Round(Panel3.Height / 2) then
   Panel5.Height := ro.Lines.Count*(ro.Font.Height + 30) + 20
  else
   Panel5.Height := Round(Panel3.Height / 2) + 20;
 end;

{=================================================================}
{Список вариантов ответов}
{=================================================================}
if QP1^.PluginName = 'variant.dll' then
begin
  m := TMemoryStream.Create;
  m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
  m.Position := 0;
  m.Read(VariantCount,4);
//  if VariantCount > 2 then {в списке >2  вариантов}
//   begin
    VariantBox.Clear;
    for i:=1 to VariantCount do
     begin
       m.Read(VariantLen,4);
       m.Read(varname,VariantLen);
       varname[VariantLen+1] := chr(0);
       VariantBox.Items.Add(StrPas(PChar(@varname)));
       m.Read(Score,1);
     end;
    m.Free;

    // Заглушка для дурака при неправильно составленном тесте
    if QP1^.Min = 0 then QP1^.Min := VariantCount;

    VariantBox.Repaint;
    if QP1^.EditAnsBall = 1 then
    begin
     if QP1^.Min = 1 then
       Label1.Caption := '  Выберите один вариант ответа'
     else
       Label1.Caption := '  Выбор нескольких вариантов ответа';

{     case QP1^.Min of
      1 : Label1.Caption := '  Выберите один вариант ответа';
      2 : Label1.Caption := '  Выберите два варианта ответа';
      3 : Label1.Caption := '  Выберите три варианта ответа';
      4 : Label1.Caption := '  Выберите четыре варианта ответа';
      5 : Label1.Caption := '  Выберите пять вариантов ответа';
      6 : Label1.Caption := '  Выберите шесть вариантов ответа';
      7 : Label1.Caption := '  Выберите семь вариантов ответа';
      8 : Label1.Caption := '  Выберите восемь вариантов ответа';
      9 : Label1.Caption := '  Выберите девять вариантов ответа';
      10 : Label1.Caption := '  Выберите десять вариантов ответа';
     else
       Label1.Caption := '  Выбор нескольких вариантов ответа';
     end;}
    end
    else
    begin
     if QP1^.Min = 1 then
      Label1.Caption := '  Выберите один вариант ответа'
     else
      Label1.Caption := '  Выберите один или несколько вариантов ответа';
    end;
    TabControl1.Visible := True;
    TabControl2.Visible := False;
    TabControl3.Visible := False;
    TabControl4.Visible := False;
    {Проверка на существование ответа пользователя}
    if QP1^.AnsUserUpdate = True then
     begin
      m := TMemoryStream.Create;
      m.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
      m.Position := 0;
      psent := @sent;
      for i:=0 to QP1^.AnsUserLength-1 do
       begin
        m.Read(psent^,1);
        if sent = True then
          VariantBox.Selected[i] := True;
       end;
      m.Free;
     end;
 end
else
{=================================================================}
{Правильная последовательность}
{=================================================================}
if QP1^.PluginName = 'sequent.dll' then
begin
 strlist := TStringList.Create;
 sm := TMemoryStream.Create;
 SeqLength := QP1^.AnsUserLength;
 SeqListBox.Clear;
 sm.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
 sm.Position := 0;
 strlist.Clear;
 strlist.LoadFromStream(sm);
 SeqListBox.Items.AddStrings(strlist);
 sm.Free;
 strlist.Free;
 TabControl4.Visible := True;
 TabControl1.Visible := False;
 TabControl2.Visible := False;
 TabControl3.Visible := False;
 SeqListBox.Repaint;
end
else
{=================================================================}
{Соответствие вариантов}
{=================================================================}
if QP1^.PluginName = 'equals.dll' then
begin
 ALeft.Visible := False;
 ACenter.Visible := False;
 ARight.Visible := False;
 ALeft.Clear;
 ACenter.Clear;
 ARight.Clear;
 AccordList.Clear;
 TabControl3.Visible := True;
 TabControl1.Visible := False;
 TabControl2.Visible := False;
 TabControl4.Visible := False;
 strlist := TStringList.Create;
 m := TMemoryStream.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount = 2 then
 begin
  ACenter.Visible := True;
  ACenter.Width := Round(TabControl3.Width / 2);
  ALeft.Visible := True;
  ALeft.Width := Round(TabControl3.Width / 2);
 end
 else
 if AccCount = 3 then
 begin
  ARight.Visible := True;
  ARight.Width := Round(TabControl3.Width / 3);
  ACenter.Visible := True;
  ACenter.Width := Round(TabControl3.Width / 3);
  ALeft.Visible := True;
  ALeft.Width := Round(TabControl3.Width / 3);
 end;
 AccordList.Height := Round((TabControl3.Height - 50) / 2);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     ALeft.Items.Add(StrPas(@varname));
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     ACenter.Items.Add(StrPas(@varname));
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     ARight.Items.Add(StrPas(@varname));
   end;
 end;
 m.Free;
 {Проверка на существование ответа пользователя}
 if QP1^.AnsUserUpdate = True then
 begin
  sm := TMemoryStream.Create;
  sm.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
  sm.Position := 0;
  len := Round(QP1^.AnsUserLength / 12);
  for i:=1 to len do
  begin
   sm.Read(l,4);
   sm.Read(c,4);
   sm.Read(r,4);
   if AccCount = 3 then
    AccordList.Items.Add(ALeft.Items.Strings[l]+
    ' - '+ACenter.Items.Strings[c] + ' - ' + ARight.Items.Strings[r])
   else
    AccordList.Items.Add(ALeft.Items.Strings[l]+
    ' - '+ACenter.Items.Strings[c]);
  end;
  sm.Free;
 end;
 strlist.Free;
end
else
{=================================================================}
{Клавиатурный ответ}
{=================================================================}
if QP1^.PluginName = 'keyboard.dll' then
begin
 TabControl2.Visible := True;
 TabControl1.Visible := False;
 TabControl3.Visible := False;
 TabControl4.Visible := False;
 KbdPanel.Visible := False;
 KbdPanel2.Visible := False;
 KbdPanel3.Visible := False;
 KbdPanel4.Visible := False;
 KbdPanel5.Visible := False;
 KbdPanel6.Visible := False;
 KbdPanel7.Visible := False;
 KbdPanel8.Visible := False;
 KbdPanel9.Visible := False;
 KbdPanel10.Visible := False;
 m := TMemoryStream.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 Lang := TStringList.Create;
 Lang.LoadFromStream(m);
 for i:=0 to Lang.Count-1 do
  begin
   case i of
    0: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    1: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel2.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    2: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel3.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    3: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel4.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    4: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel5.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    5: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel6.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    6: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel7.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    7: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel8.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    8: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel9.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
    9: if Length(copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2))>0 then
        KbdLabel10.Caption := copy(Lang.Strings[i],2,Pos(']',Lang.Strings[i])-2) + ':';
   end;
  end;
 for i:=0 to Lang.Count-1 do
  begin
   case i of
    0: KbdPanel.Visible := True;
    1: KbdPanel2.Visible := True;
    2: KbdPanel3.Visible := True;
    3: KbdPanel4.Visible := True;
    4: KbdPanel5.Visible := True;
    5: KbdPanel6.Visible := True;
    6: KbdPanel7.Visible := True;
    7: KbdPanel8.Visible := True;
    8: KbdPanel9.Visible := True;
    9: KbdPanel10.Visible := True;
   end;
  end;
 m.Free;
 Lang.Free;
 {Проверка на существование ответа пользователя}
 if QP1^.AnsUserUpdate = True then
 begin
  m := TMemoryStream.Create;
  m.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
  m.Position := 0;
  Lang := TStringList.Create;
  Lang.LoadFromStream(m);
  for i:=0 to Lang.Count-1 do
  begin
   case i of
    0: KbdEdit.Text  := Lang.Strings[i];
    1: KbdEdit2.Text := Lang.Strings[i];
    2: KbdEdit3.Text := Lang.Strings[i];
    3: KbdEdit4.Text := Lang.Strings[i];
    4: KbdEdit5.Text := Lang.Strings[i];
    5: KbdEdit6.Text := Lang.Strings[i];
    6: KbdEdit7.Text := Lang.Strings[i];
    7: KbdEdit8.Text := Lang.Strings[i];
    8: KbdEdit9.Text := Lang.Strings[i];
    9: KbdEdit10.Text:= Lang.Strings[i];
   end;
  end;
  m.Free;
  Lang.Free;
 end
 else
  KbdEdit.Clear;

 KbdEdit.Width :=  KbdPanel.Width-20;
 KbdEdit2.Width := KbdPanel2.Width-20;
 KbdEdit3.Width := KbdPanel3.Width-20;
 KbdEdit4.Width := KbdPanel4.Width-20;
 KbdEdit5.Width := KbdPanel5.Width-20;
 KbdEdit6.Width := KbdPanel6.Width-20;
 KbdEdit7.Width := KbdPanel7.Width-20;
 KbdEdit8.Width := KbdPanel8.Width-20;
 KbdEdit9.Width := KbdPanel9.Width-20;
 KbdEdit10.Width := KbdPanel10.Width-20;
 try
  KbdEdit.SetFocus;
 except
 end;
 KbdEdit.SelLength := 0;
end;

if QP1^.QuestionVideoLength > 0 then
 begin
  VideoButton.Enabled := True;
  if QP1^.QuestionVideoPlay <> 0 then
  // воспроизводим
  VideoButtonClick(Sender);
 end
 else
  VideoButton.Enabled := False;

end
else
begin
 tv.Selected := tv.Items[oldindex];
// Panel2.Visible := False;
// CheckButton.Enabled := False;
end;
end;

procedure Tmf.ToolButton2Click(Sender: TObject);
var
 All, Parents,i,j : longint;
 TQP2, QP1, QP2 : QP;
 AlwaysView,c : Boolean;
 tn,tn2 : TTreeNode;
 M : TMemoryStream;
begin
 ToolButton1.Enabled := True;
 if ExitType<>0 then ToolButton4.Enabled := True;

 if tv.Selected.AbsoluteIndex < tv.Items.Count-1 then
       begin
        tv.Selected := tv.Items[tv.Selected.AbsoluteIndex+1];
        if tv.Selected.Level=0 then
         tv.Selected := tv.Items[tv.Selected.AbsoluteIndex+1];
        tvClick(Self);
        Exit;
       end;


 QP1 := tv.Selected.Data;
 if QP1<>nil then
  begin
      j:=0;
      All :=0;
      Parents :=0;
      for i:=0 to (Q.Count-1) do
      begin
       TQP := Q.Items[i];
       if TQP^.QParent = 0 then
       begin
        inc(Parents);
        if TQP^.QuestionInTree then
         inc(All);
       end;
       if TQP^.QuestionInTree then
         inc(j);
      end;
      if (j>=4) and (not AppOptions.RegDone2) then
      begin
       ShowMessageD(dstr,0);
       DisableView;
       ClearRAM;
       AppOptions.Free;
       BitMap1.FreeImage;
       BitMap2.FreeImage;
       BitMap3.FreeImage;
       BitMap4.FreeImage;
       BitMap5.FreeImage;
       Application.Terminate;
       Exit;
      end;
      if (QP1^.AnsUserBall = 0) and (TemporaryTest) and (not RepTest) then
      begin
       CheckButtonClick(Sender);
       if not ContinueTest then exit;
      end;
      // Поищем сначала в дереве, есть ли еще не заданные дети
      c:=False;
      for i:=0 to (tv.Items.Count-1) do
      if tv.Items[i].Level>0 then
      begin
       TQP2 := tv.Items[i].Data;
       for j:=0 to (Q.Count-1) do
       begin
       TQP := Q.Items[j];
       if (TQP2^.HasChildren<>0) and (TQP^.QParent = TQP2^.Id)
       and (not TQP^.QuestionInTree) and (TQP^.GroupName = TQP2^.GroupName) then
       begin
       {дитё найдено}
       if TQP2^.AnsUserBall > 0 then
       begin
         tn := tv.Selected.Parent;
         while tn.Level>0 do
           tn := tn.Parent;
         tn2 := tv.Selected;
         while tn2.Level>1 do
           tn2 := tn2.Parent;
         QP2 := tn2.Data;
         tv.Selected := tv.Items.AddChildObject(tv.Items[i],TQP^.QuestionName,TQP);
         TQP^.QuestionInTree := True;
         c := True;
         AlwaysView := True;
         tvClick(Self);
         Exit;
       end;
       end;
       end;
      end;
      // и еще поищем детей в памяти
      c:=False;
      for i:=0 to (Q.Count-1) do
      begin
       TQP := Q.Items[i];
       if (QP1^.HasChildren<>0) and (TQP^.QParent = QP1^.Id)
       and (not TQP^.QuestionInTree) and (TQP^.GroupName = TQP2^.GroupName) then
       begin
       {дитё найдено}
       if QP1^.AnsUserBall > 0 then
       begin
         tn := tv.Selected.Parent;
         while tn.Level>0 do
           tn := tn.Parent;
         tn2 := tv.Selected;
         while tn2.Level>1 do
           tn2 := tn2.Parent;
         QP2 := tn2.Data;
//         tv.Selected := tv.Items.AddChildObject(tv.Selected,'№'+IntToStr(tn.Index+1)+'.'+
//         IntToStr(QP2^.IdT)+ '.' + IntToStr(TQP^.IdS) + ' ' + TQP^.QuestionName,TQP);
         tv.Selected := tv.Items.AddChildObject(tv.Selected,TQP^.QuestionName,TQP);
         TQP^.QuestionInTree := True;
         c := True;
         AlwaysView := True;
         tvClick(Self);
         Exit;
       end;
    end;
    end;

    // Показали всех родителей?
    if (all=Parents) and (tv.Selected.AbsoluteIndex = tv.Items.Count-1) then
      if (ExitType = 0) or (ExitType = 2) then
      begin
       if (ShowQuestion) and (LimitTime = 1) then
       begin
         ShowQuestion := false;
         CloseTestForm.Close;
         CalculateResults;
         Exit;
       end
       else
       begin
        CloseTestForm.Label2.Caption := 'Вопросы теста закончились.';
        CloseTestForm.Label2.Visible := True;
        if CloseTestForm.ShowModal=mrYes then
        // Показываем результаты только для зарегистрированной копии
        begin
         CalculateResults;
         Exit;
        end;
       end;
      end;

    ShowQuestion := false;
      
    if not c then
    begin
    AlwaysView := False;
{    TQP := tv.Selected.Data;
    if TQP^.id <= Q.Count - 1 then
      AlwaysView := True;
    if not AlwaysView then}
     for j:=0 to (Q.Count-1) do
     begin
      TQP := Q.Items[j];
      if (TQP^.QParent = 0) and (not TQP^.QuestionInTree) then
      begin
       tv.Selected := tv.Items[tv.Items.Count-1];
       tn := tv.Selected.Parent;
       while tn.Level>0 do
         tn := tn.Parent;
       if tn.Text <> TQP^.GroupName then
       begin
        tn := tv.Items.AddObject(nil,TQP^.GroupName,nil);
        tn.ImageIndex := 2;
        tn.SelectedIndex := 2;
        tv.Selected := tv.Items[tv.Items.Count-1];
        tv.Items.AddChildObject(tn,'№'+IntToStr(tv.Selected.Parent.Index+1)+'.'+
        IntToStr(TQP^.IdT)+' '+TQP^.QuestionName,TQP);
       end
       else
        tv.Items.AddChildObject(tn,'№'+IntToStr(tn.Index+1)+'.'+
        IntToStr(TQP^.IdT)+' '+TQP^.QuestionName,TQP);
       TQP^.QuestionInTree := True;
       tv.Selected := tv.Items[tv.Items.Count-1];
       tv.Selected.Text := '№'+IntToStr(tv.Selected.Parent.Index+1)+'.'+
        IntToStr(TQP^.IdT)+' '+ TQP^.QuestionName;
       AlwaysView := True;
       tvClick(Self);
       Exit;
      end;
     end;
     end;
     if not AlwaysView then
     begin
       if tv.Selected.AbsoluteIndex < tv.Items.Count-1 then
       begin
        tv.Selected := tv.Items[tv.Selected.AbsoluteIndex+1];
        if tv.Selected.Level=0 then
         tv.Selected := tv.Items[tv.Selected.AbsoluteIndex+1];
       end;
     end;
     tvClick(Self);
     QP1 := tv.Selected.Data;
  end
  else
  begin
   tv.Selected := tv.Items[tv.Selected.AbsoluteIndex+1];
   tvClick(Self);
   QP1 := tv.Selected.Data;
  end;
end;

procedure Tmf.ToolButton1Click(Sender: TObject);
var
 QP1 : QP;
begin
if (tv.Selected.AbsoluteIndex-1 >=0) and (Backward) then
 begin
  QP1 := tv.Selected.Data;
  if QP1<>nil then
  begin
  if tv.Selected.AbsoluteIndex-1>0 then
  begin
   tv.Selected := tv.Items[tv.Selected.AbsoluteIndex-1];
   if tv.Selected.Level=0 then
    tv.Selected := tv.Items[tv.Selected.AbsoluteIndex-1];
  end;
  tvClick(Self);
  end;
 end
 else
  ToolButton1.Enabled := False;
end;

function Tmf.Equal(M1,M2 : TMemoryStream):boolean;
var
 b1,b2 : byte;
 d1,d2 : int64;
 Eq : boolean;
begin
 if M1.Size = M2.Size then
 begin
   d1 := 0;
   while M1.Position<M1.Size do
     begin
       M1.Read(b1,1);
       M2.Read(b2,1);
       if b1 = b2 then
         Inc(d1)
       else break;
     end;
   if d1=M1.Size then
     Eq := True
   else
     Eq := False;
 end
 else
   Eq := False;
 Result := Eq;
end;

procedure Tmf.CalculateResults;
var
 ii,i : longint;
 AllBall, Ball, MaxBall : real;
 VariantCount,VariantLen : longint;
 m : TMemoryStream;
 VariantBall, TmpBall : Real;
 varname : array [1..5000] of char;
 buffer2, TROString : PChar;
 nd, b : byte;
 slarray : PByte;
 SeqLength : longint;
 ll,c,r : longint;
 AccRightCount,AccCount,AccStrLength : longint;
 UserOcenka, UserAllScore, AnsUserBall,KoefAccBall : real;
 OldGrpName, ts, IP1t, IP2t, IP3t, IP4t, tname : string;
 OLEIn, IsIp : boolean;
 deli, MB, ver, Port, PlaceID, TesterID : integer;
 summaq : word;
 f : TFileStream;
 s1, mt, s, mout, sm, strliststream, m2 : TMemoryStream;
 ss : TStringList;
 ResCount, KK, j, rid ,k : longint;
 an : string;
 Score, AnsUserSelectPriznak : Byte;
 GroupFound, substrfound, CommentFound, QuestionFound, sent : Boolean;
 psent : PByte;
 ss2, Accord,strlist,strlistLeft,strlistCenter,strlistRight : TStringList;
 p: longint;
 cur, str1 : string;
 AccBall : Real;
 dest : PChar;
 len : longint;
 strlistbuf : PByte;
 ps : array[0..79] of Char;
 F1, ResFile : TFileStream;
 DT : TDateTime;
 foundresult, ErrOutOfDiskSize:boolean;
 TT : TTestResult;
 TG : TGroupResult;
 MaxBal : array [1..1000] of byte;
 found : boolean;
begin
{прячем элементы управления}
DisableView;

try
 if not fileexists(ExtractFilePath(paramstr(0))+'comments.dat') then
  CommentStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'comments.dat',fmCreate)
 else
  CommentStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'comments.dat',fmOpenReadWrite);
 if not fileexists(ExtractFilePath(paramstr(0))+'questions.dat') then
  QuestionStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'questions.dat',fmCreate)
 else
  QuestionStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'questions.dat',fmOpenReadWrite);
 if not fileexists(ExtractFilePath(paramstr(0))+'groups.dat') then
  groupStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'groups.dat',fmCreate)
 else
  groupStream := TFileStream.Create(ExtractFilePath(paramstr(0))+'groups.dat',fmOpenReadWrite);
except
 ShowMessageD('Ошибка ввода/вывода.',2);
 Application.Terminate;
end;


{просмотр всех ответов, определение количества набранных баллов для зачетного теста}
Ball := 0;
MaxBall := 0;
 for i:=0 to (Q.Count-1) do
  begin
   TQP := Q.Items[i];
   {вычисление бальной стоимости вопроса для списка вариантов с несколькими правильными вариантами}
   if TQP^.PluginName = 'variant.dll' then
   begin
    m := TMemoryStream.Create;
    m.Write(TQP^.AnswerArray^,TQP^.AnswerLength);
    m.Position := 0;
    // Вычислим максимальный балл для закрытой формы
    if TQP^.EditAnsBall = 1 then
    begin
     AllBall := 0;
     m.Position := 0;
     m.Read(VariantCount,4);
     for ii:=1 to VariantCount do
     begin
      m.Read(VariantLen,4);
      m.Read(varname,VariantLen);
      m.Read(Score,1);
      MaxBal[ii] := Score;
     end;
     for k:=1 to (TQP^.Min + TQP^.Limit) do
     begin
       MB := 0;
       for ii:=1 to VariantCount do
         if MaxBal[ii]>=MB then
         begin
          MB:=MaxBal[ii];
          deli := ii;
         end;
       MaxBal[Deli] := 0;
       AllBall := AllBall + MB;
     end;
    end
    else
    begin
     m.Read(VariantCount,4);
     AllBall := 0;
     for ii:=0 to VariantCount-1 do
     begin
      m.Read(VariantLen,4);
      m.Read(varname,VariantLen);
      m.Read(Score,1);
      AllBall := AllBall + Score;
     end;
    end;
    m.Free;
   end;
   if (TQP^.PluginName = 'variant.dll') and (TQP^.EditAnsBall = 1) then
    begin
     MaxBall:=MaxBall + AllBall;
     TQP^.Score := AllBall;
    end
   else
     MaxBall:=MaxBall + TQP^.Score;
   if TQP^.AnsUserBall <> 0 then
     Ball := Ball + TQP^.AnsUserBall;
   if not AppOptions.RegDone then
   begin
     MaxBall := 0;
     Ball := 0;
   end;
  end;

 if Ball > MaxBall then
  Ball := MaxBall;

if IsRemoteTest then
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'result.bin',fmCreate)
else
 begin
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'prtest.dt3',fmOpenReadWrite);
  F.Position := F.Size;
 end;

// *****************************************************************************
// Начало алгоритма формирования результата
// *****************************************************************************
s := TMemoryStream.Create;
zz := TMemoryStream.Create;

//IsRemoteTest := not RepTest;

if IsRemoteTest then
begin
 len := MComment.Size;
 s.Write(len,4);
 MComment.Position := 0;
 GetMem(psent,MComment.Size);
 MComment.Read(psent^,MComment.Size);
 s.Write(psent^,MComment.Size);
 FreeMem(psent);
end
else
begin
if not temporarytest then
begin
 ErrOutOfDiskSize:=False;
 CommentFound := False;
 c:=0;
 CommentStream.Position :=0;
 while CommentStream.Position<CommentStream.Size do
 begin
  inc(c);
  CommentStream.Read(len,4);
  buffer2 := AllocMem(len+1);
  CommentStream.Read(buffer2^,len);
  buffer2[len]:=Chr(0);
  CommentStream.Read(len,4);
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
  CommentStream.Read(psent^,len);
  FreeMem(psent);
end;
if CommentFound then
 begin
  len := c;
  s.Write(len,4);
 end
else
 begin
  inc(c);
  len := c;
  s.Write(len,4);
  len := Length(TestName);
  StrPCopy(@varname, TestName);
  varname[len+1] := chr(0);
  if CommentStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
  if CommentStream.Write(varname,len)<>len then
      ErrOutOfDiskSize:=True;
  len := MComment.Size;
  if CommentStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
  MComment.Position := 0;
  GetMem(psent,MComment.Size);
  MComment.Read(psent^,MComment.Size);
  if CommentStream.Write(psent^,MComment.Size)<>MComment.Size then
   ErrOutOfDiskSize:=True;
  FreeMem(psent);
 end;
end
else
begin
 len := 0;
 s.Write(len,4);
end;
end;

Len := Length(FamText);
StrPCopy(@varname, FamText);
varname[Len+1] := chr(0);
s.Write(len,4);
s.Write(varname,len);
zz.Write(len,4);
zz.Write(varname,len);

Len := Length(TestName);
StrPCopy(@varname, TestName);
varname[Len+1] := chr(0);
s.Write(len,4);
s.Write(varname,len);
zz.Write(len,4);
zz.Write(varname,len);

Len := Length(SubText);
StrPCopy(@varname, SubText);
varname[Len+1] := chr(0);
s.Write(len,4);
s.Write(varname,len);
zz.Write(len,4);
zz.Write(varname,len);

Len := Length(WorkText);
StrPCopy(@varname, WorkText);
varname[Len+1] := chr(0);
s.Write(len,4);
s.Write(varname,len);
zz.Write(len,4);
zz.Write(varname,len);

DT := Date;
s.Write(DT,8); // Дата тестирования
zz.Write(DT,8); // Дата тестирования
DT := Time;
s.Write(DT,8); // Текущее время
zz.Write(DT,8); // Дата тестирования

if AppOptions.RegDone then
begin
 s.Write(Ball,8); // Набрано баллов
 s.Write(MaxBall,8); // Максимальный балл
 zz.Write(Ball,8); // Набрано баллов
 zz.Write(MaxBall,8); // Максимальный балл
end
else
begin
  s.Write(Ball,8); // Набрано баллов
  s.Write(Ball,8); // Максимальный балл
  zz.Write(Ball,8); // Набрано баллов
  zz.Write(Ball,8); // Максимальный балл
end;

len := timelimit-currenttime;
s.Write(len,4); // Время
zz.Write(len,4); // Время

s.Write(Q.Count,4);
zz.Write(Q.Count,4);

summaq := 0;
for i:=0 to (Q.Count-1) do
 begin
  TQP := Q.Items[i];
  if TQP^.AnsUserUpdate then Inc(summaq);
 end;

s.Write(summaq,2); // Количество отвеченных вопросов
zz.Write(summaq,2); // Количество отвеченных вопросов

nd := 0;
s.Write(nd,1); // Не удален
zz.Write(nd,1); // Не удален
s.Write(nd,1); // Резерв
zz.Write(nd,1); // Резерв

if not temporarytest then
begin
 if LoadingForm=nil then
  LoadingForm := TLoadingForm.Create(Application);
 LoadingForm.Caption := 'Запись результатов...';
 LoadingForm.Panel1.Caption := '';
 LoadingForm.Show;
end;

for i:=0 to (Q.Count-1) do
begin
  if not temporarytest then
  begin
   LoadingForm.PB.Position := Trunc(i/(Q.Count)*100);
   LoadingForm.Repaint;
  end;
  TQP := Q.Items[i];
  {номер вопроса}
  s.Write(TQP^.ID,4);
  zz.Write(TQP^.ID,4);
  {реальный id вопроса в базе}
  s.Write(TQP^.IDReal,4);
  zz.Write(TQP^.IDReal,4);
  {балл полученный за вопрос}
  if AppOptions.RegDone then
  begin
    s.Write(TQP^.AnsUserBall,8);
    s.Write(TQP^.Score,8);
    zz.Write(TQP^.AnsUserBall,8);
    zz.Write(TQP^.Score,8);
  end
  else
  begin
    s.Write(TQP^.Score,8);
    s.Write(TQP^.Score,8);
    zz.Write(TQP^.Score,8);
    zz.Write(TQP^.Score,8);
  end;
  // БД версия 2.0. Сжатый протокол
  // Сохраняем если Зачетный тест
  len := TQP^.QuestionLength;
  zz.Write(len,4);
  zz.Write(TQP^.QuestionArray^,TQP^.QuestionLength);

  if IsRemoteTest then
  begin
   if not temporarytest then
   begin
    len := TQP^.QuestionLength;
    s.Write(len,4);
    s.Write(TQP^.QuestionArray^,TQP^.QuestionLength);
   end
   else
   begin
    len := 0;
    s.Write(len,4);
   end;
  end
  else
  begin
  if not temporarytest then
  begin
  // бд ВЕРСИИ 2.0
   mout := TMemoryStream.Create;
   mout.Write(TQP^.QuestionArray^,TQP^.QuestionLength);
   mout.Position := 0;
   QuestionFound := False;
   c:=0;
   QuestionStream.Position :=0;
   while QuestionStream.Position<QuestionStream.Size do
    begin
    inc(c);
    QuestionStream.Read(len,4);
    if len = TQP^.QuestionLength then
     begin
      GetMem(psent,len);
      QuestionStream.Read(psent^,len);
      mt := TMemoryStream.Create;
      mt.Write(psent^,len);
      FreeMem(psent);
      mt.Position := 0;
      mout.Position := 0;
      if Equal(mout,mt) then
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
      QuestionStream.Seek(len,soFromCurrent);
    end;

   if QuestionFound then
   begin
    s.Write(r,4);
   end
   else
   begin
    inc(c);
    len := c;
    s.Write(len,4);
    len := TQP^.QuestionLength;
    if QuestionStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
    if QuestionStream.Write(TQP^.QuestionArray^,TQP^.QuestionLength)<>TQP^.QuestionLength then
      ErrOutOfDiskSize:=True;
   end;
   mout.Free;
  end
  else
  begin
   len := 0;
   s.Write(len,4);
  end;
  end;

  len := Length(TQP^.GroupName);
  zz.Write(len,4);
  TROString := AllocMem(Len+1);
  StrPCopy(TROString, TQP^.GroupName);
  TROString[len] := chr(0);
  zz.Write(TROString^,len);
  FreeMem(TROString);

  if IsRemoteTest then
  begin
    len := Length(TQP^.GroupName);
    s.Write(len,4);
    TROString := AllocMem(Len+1);
    StrPCopy(TROString, TQP^.GroupName);
    TROString[len] := chr(0);
    s.Write(TROString^,len);
    FreeMem(TROString);
  end
  else
  begin
  GroupFound := False;
  c:=0;
  GroupStream.Position :=0;
  while GroupStream.Position<GroupStream.Size do
    begin
    inc(c);
    GroupStream.Read(len,4);
    if len = Length(TQP^.GroupName) then
     begin
      TROString := AllocMem(len+1);
      GroupStream.Read(TROString^,len);
      TROString[len] := chr(0);
      if StrPas(TROString)=TQP^.GroupName then
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
      GroupStream.Seek(len,soFromCurrent);
    end;

   if GroupFound then
   begin
    s.Write(r,4);
   end
   else
   begin
    inc(c);
    len := c;
    s.Write(len,4);
    len := Length(TQP^.GroupName);
    if GroupStream.Write(len,4)<>4 then
      ErrOutOfDiskSize:=True;
    TROString := AllocMem(Len+1);
    StrPCopy(TROString, TQP^.GroupName);
    TROString[len] := chr(0);
    if GroupStream.Write(TROString^,len)<>len then
      ErrOutOfDiskSize:=True;
    FreeMem(TROString);
   end;
  end;

  if TQP^.PluginName = 'variant.dll' then
    TQP^.AnswerType := 3 else
  if TQP^.PluginName = 'equals.dll' then
    TQP^.AnswerType := 2 else
  if TQP^.PluginName = 'sequent.dll' then
    TQP^.AnswerType := 4 else
  if TQP^.PluginName = 'keyboard.dll' then
    TQP^.AnswerType := 1;

  {введенный ответ пользователя}
  s.Write(TQP^.AnswerType,4);
  zz.Write(TQP^.AnswerType,4);
  case TQP^.AnswerType of
  1,4 :
   begin
    s.Write(TQP^.AnsUserLength, 4);
    s.Write(TQP^.AnsUserBinArray^,TQP^.AnsUserLength);
    zz.Write(TQP^.AnsUserLength, 4);
    zz.Write(TQP^.AnsUserBinArray^,TQP^.AnsUserLength);
   end;
  2,3 :
   begin
    GetMem(slarray,TQP^.AnswerStream.Size);
    TQP^.AnswerStream.Position := 0;
    TQP^.AnswerStream.Read(slarray^,TQP^.AnswerStream.Size);
    k := TQP^.AnswerStream.Size;
    s.Write(k,4);
    s.Write(slarray^,k);
    zz.Write(k,4);
    zz.Write(slarray^,k);
    FreeMem(slarray);
   end;
  end;
end;

// БД версия 3. Дополнительный результат, если есть
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if TestVersion >= 20061 then
 begin
    b := ResOcenka; // отображать оценку
    s.Write(b,1);
    zz.Write(b,1);
    b := ResAnaliz; // отображать анализ
    s.Write(b,1);
    zz.Write(b,1);
    b := ResGrpAnaliz; // отображать анализ по группам (версия 4)
    s.Write(b,1);
    zz.Write(b,1);
    if ResAnaliz = 1 then
    begin
    foundresult := false;
    for i:=0 to TestResult.Count-1 do
    begin
      TT := TestResult[i];
      if ResPercent = 1 then
      begin
       if ((Ball/MaxBall*100)>=TT.BeginBall) and ((Ball/MaxBall*100)<=TT.EndBall) then
       begin
         TT.ResultMem.Position := 0;
         mout := TMemoryStream.Create;
         bz.CompressStream(TT.ResultMem,mout);
         mout.Position := 0;
         len := mout.Size;
         s.Write(len,4);
         zz.Write(len,4);
         GetMem(psent,len);
         mout.Read(psent^,len);
         s.Write(psent^,len);
         zz.Write(psent^,len);
         FreeMem(psent);
         mout.Free;
         len := 0;
         s.Write(len,4);
         zz.Write(len,4);
         foundresult := true;
         break;
       end;
      end
      else
      if (Ball>=TT.BeginBall) and (Ball<=TT.EndBall) then
       begin
         TT.ResultMem.Position := 0;
         mout := TMemoryStream.Create;
         bz.CompressStream(TT.ResultMem,mout);
         mout.Position := 0;
         len := mout.Size;
         s.Write(len,4);
         zz.Write(len,4);
         GetMem(psent,len);
         mout.Read(psent^,len);
         s.Write(psent^,len);
         zz.Write(psent^,len);
         FreeMem(psent);
         mout.Free;
         foundresult := true;
         len := 0;
         s.Write(len,4);
         zz.Write(len,4);
         break;
       end;
    end;
    if not foundresult then
    begin
     len := 0;
     s.Write(len,4);
     s.Write(len,4);
     zz.Write(len,4);
     zz.Write(len,4);
    end;
    end
    else
    if ResGrpAnaliz = 1 then
    begin
     OldGrpName := '';
     UserOcenka := 0;
     UserAllScore := 0;
     ResCount := 0;
     s1 := TMemoryStream.Create;
     KK := 0;
     for i:=0 to (Q.Count-1) do
     begin
      TQP := Q.Items[i];
      if OldGrpName<>TQP^.GroupName then
        begin
          Inc(KK);
          if KK>1 then
          begin
           // Анализ по группе
           for J:=0 to GroupResult.Count-1 do
           begin
            TG := GroupResult[J];
            if OldGrpName = TG.GName then
            begin
             if TG.ResPercent = 1 then
             begin
               if ((UserOcenka/UserAllScore*100)>=TG.BeginBall) and ((UserOcenka/UserAllScore*100)<=TG.EndBall) then
                begin
                 inc(ResCount);
                 len := Length(OldGrpName);
                 s1.Write(len,4);
                 TROString := AllocMem(Len+1);
                 StrPCopy(TROString, OldGrpName);
                 TROString[len] := chr(0);
                 s1.Write(TROString^,len);
                 FreeMem(TROString);

                 TG.ResultMem.Position := 0;
                 mout := TMemoryStream.Create;
                 bz.CompressStream(TG.ResultMem,mout);
                 mout.Position := 0;
                 len := mout.Size;
                 s1.Write(len,4);
                 GetMem(psent,len);
                 mout.Read(psent^,len);
                 s1.Write(psent^,len);
                 FreeMem(psent);
                 mout.Free;

                 break;
                end;
             end
             else
             if (UserOcenka>=TG.BeginBall) and (UserOcenka<=TG.EndBall) then
             begin
                 inc(ResCount);
                 len := Length(OldGrpName);
                 s1.Write(len,4);
                 TROString := AllocMem(Len+1);
                 StrPCopy(TROString, OldGrpName);
                 TROString[len] := chr(0);
                 s1.Write(TROString^,len);
                 FreeMem(TROString);

                 TG.ResultMem.Position := 0;
                 mout := TMemoryStream.Create;
                 bz.CompressStream(TG.ResultMem,mout);
                 mout.Position := 0;
                 len := mout.Size;
                 s1.Write(len,4);
                 GetMem(psent,len);
                 mout.Read(psent^,len);
                 s1.Write(psent^,len);
                 FreeMem(psent);
                 mout.Free;

                 break;
             end;
            end;
           end;
          end;
          UserOcenka := 0;
          UserAllScore := 0;
        end;
        OldGrpName := TQP^.GroupName;
        UserOcenka := UserOcenka + TQP^.AnsUserBall;
        UserAllScore := UserAllScore + TQP^.Score;
     end;
     // Анализ по группе
     for J:=0 to GroupResult.Count-1 do
           begin
            TG := GroupResult[J];
            if OldGrpName = TG.GName then
            begin
             if TG.ResPercent = 1 then
             begin
               if ((UserOcenka/UserAllScore*100)>=TG.BeginBall) and ((UserOcenka/UserAllScore*100)<=TG.EndBall) then
                begin
                 inc(ResCount);
                 len := Length(TQP^.GroupName);
                 s1.Write(len,4);
                 TROString := AllocMem(Len+1);
                 StrPCopy(TROString, TQP^.GroupName);
                 TROString[len] := chr(0);
                 s1.Write(TROString^,len);
                 FreeMem(TROString);

                 TG.ResultMem.Position := 0;
                 mout := TMemoryStream.Create;
                 bz.CompressStream(TG.ResultMem,mout);
                 mout.Position := 0;
                 len := mout.Size;
                 s1.Write(len,4);
                 GetMem(psent,len);
                 mout.Read(psent^,len);
                 s1.Write(psent^,len);
                 FreeMem(psent);
                 mout.Free;

                 break;
                end;
             end
             else
             if (UserOcenka>=TG.BeginBall) and (UserOcenka<=TG.EndBall) then
             begin
                 inc(ResCount);
                 len := Length(TQP^.GroupName);
                 s1.Write(len,4);
                 TROString := AllocMem(Len+1);
                 StrPCopy(TROString, TQP^.GroupName);
                 TROString[len] := chr(0);
                 s1.Write(TROString^,len);
                 FreeMem(TROString);

                 TG.ResultMem.Position := 0;
                 mout := TMemoryStream.Create;
                 bz.CompressStream(TG.ResultMem,mout);
                 mout.Position := 0;
                 len := mout.Size;
                 s1.Write(len,4);
                 GetMem(psent,len);
                 mout.Read(psent^,len);
                 s1.Write(psent^,len);
                 FreeMem(psent);
                 mout.Free;

                 break;
             end;
            end;
           end;
     // Сформируем буфер
     len := 0;
     s.Write(len,4);
     zz.Write(len,4);
     if s1.Size>0 then
      len := s1.Size + 4
     else
      len := 0;
     s.Write(len,4);
     zz.Write(len,4);
     if s1.Size>0 then
     begin
      s.Write(ResCount,4);
      zz.Write(ResCount,4);
      s1.Position := 0;
      GetMem(psent,s1.Size);
      s1.Read(psent^,s1.Size);
      s.Write(psent^,s1.Size);
      zz.Write(psent^,s1.Size);
      FreeMem(psent);
     end;
     s1.Free;
    end
    else
    begin
     len := 0;
     s.Write(len,4);
     s.Write(len,4);
     zz.Write(len,4);
     zz.Write(len,4);
    end;
 end
else
if TestVersion=2006 then
 begin
    b := 1; // отображать оценку
    s.Write(b,1);
    zz.Write(b,1);
    b := 0; // не отображать общий анализ
    s.Write(b,1);
    zz.Write(b,1);
    b := 0; // не отображать расширенный анализ
    s.Write(b,1);
    zz.Write(b,1);
    len := 0;
    s.Write(len,4);
    zz.Write(len,4);
    s.Write(len,4);
    zz.Write(len,4);
 end;
// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

if not temporarytest then
  LoadingForm.Close;

// Запишем все это дело в файл
if not temporarytest then
begin
 try
   ErrOutOfDiskSize:=False;
   s.Position := 0;
   len := s.Size;
   // для БД версии 5 (длина результата)
   f.Write(len,4);
   GetMem(psent,len);
   s.Read(psent^,len);
   if f.Write(psent^,len)<>len then
    ErrOutOfDiskSize:=True;
   FreeMem(psent);
  except
   s.Free;
   ShowMessageD('Невозможно создать или открыть файл базы данных.',1);
   Exit;
  end;
 if ErrOutOfDiskSize then
 begin
  ShowMessageD('Недостаточно места на диске.',1);
  Exit;
 end;
end;

if IsRemoteTest then
  begin
    if temporarytest then
    begin
     if reptest then
     begin
      PersonalForm.Admin_entered := false;
      PersonalForm.M := TMemoryStream.Create;
      PersonalForm.ZZ := TMemoryStream.Create;
      s.Position := 0;
      s.SaveToStream(PersonalForm.M);
      zz.Position := 0;
      zz.SaveToStream(PersonalForm.ZZ);
      PersonalForm.M.Position := 0;
      PersonalForm.ZZ.Position := 0;
      PersonalForm.Ver := DB_Version;
      PersonalForm.ProtocolButton.Enabled := (Protocol = 1) and (AppOptions.RegDone);
      PersonalForm.ShowModal;
      PersonalForm.M.Free;
      PersonalForm.ZZ.Free;
     end;
     s.Free;
     zz.Free;
     F.Free;
     ClearRAM;
    end
    else
    begin
     s.Free;
     F.Free;
     ClearRAM;
     // Передаем результаты
     ClientSocket4.Open;
     Exit;
    end;
  end
else
begin
 if (not reptest) and (temporarytest) then
  else
  begin
   PersonalForm.Admin_entered := false;
   PersonalForm.M := TMemoryStream.Create;
   PersonalForm.ZZ := TMemoryStream.Create;
   s.Position := 0;
   s.SaveToStream(PersonalForm.M);
   zz.Position := 0;
   zz.SaveToStream(PersonalForm.ZZ);
   PersonalForm.M.Position := 0;
   PersonalForm.ZZ.Position := 0;
   PersonalForm.Ver := DB_Version;
   PersonalForm.ProtocolButton.Enabled := (Protocol = 1) and (AppOptions.RegDone);
   PersonalForm.ShowModal;
   PersonalForm.M.Free;
   PersonalForm.ZZ.Free;
  end;
  s.Free;
  zz.Free;
  F.Free;
  ClearRAM;
end;
 // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 // Конец пришел ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 // ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
end;

procedure Tmf.ToolButton6Click(Sender: TObject);
var
 i : integer;
 ls,m,sm : TMemoryStream;
 slarray : PByte;
 SeqLength : longint;
 Equal : Boolean;
 source,dest : byte;
 QP1 : QP;
begin
 i := SeqListBox.ItemIndex;
 if i <> -1 then
 if i-1 >= 0 then
  begin
    tv.Selected.ImageIndex := 1;
    tv.Selected.SelectedIndex := 1;
    QP1 := tv.Selected.Data;
    SeqListBox.Items.Move(i,  i-1);
    SeqListBox.ItemIndex := i-1;
    QP1^.AnsUserUpdate := True;
    ls := TMemoryStream.Create;
    SeqListBox.Items.SaveToStream(ls);
    if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
    GetMem(QP1^.AnsUserBinArray,ls.Size);
    QP1^.AnsUserLength := ls.Size;
    ls.Position := 0;
    ls.Read(QP1^.AnsUserBinArray^,ls.Size);

    {проверка на правильный ответ}
    m := TMemoryStream.Create;
    sm := TMemoryStream.Create;
    m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
    m.Position := 0;
    m.Read(SeqLength,4);
    GetMem(slarray,SeqLength);
    m.Read(slarray^,SeqLength);
    sm.Write(slarray^,SeqLength);
    sm.Position := 0; {sm - исходный список }
    ls.Position := 0; {ls - введенный список }
    Equal:=True;
    for i:=0 to ls.Size-1 do
    begin
     sm.Read(source,1);
     ls.Read(dest,1);
     if source<>dest then begin
      Equal:=False;
      break;
     end;
    end;
    {бальная стоимость}
    if Equal then
     QP1^.AnsUserBall:=QP1^.Score
    else
     QP1^.AnsUserBall:=0;
    FreeMem(slarray);
    ls.Free;
    m.Free;
    sm.Free;
  end;
end;

procedure Tmf.ToolButton7Click(Sender: TObject);
var
 i : integer;
 ls,m,sm : TMemoryStream;
 slarray : PByte;
 SeqLength : longint;
 Equal : Boolean;
 source,dest : byte;
 QP1 : QP;
begin
i := SeqListBox.ItemIndex;
if i <> -1 then
 if i+1 <= SeqListBox.Items.Count-1 then
  begin
    tv.Selected.ImageIndex := 1;
    tv.Selected.SelectedIndex := 1;
    QP1 := tv.Selected.Data;
    SeqListBox.Items.Move(i, i+1);
    SeqListBox.ItemIndex := i+1;

    QP1^.AnsUserUpdate := True;
    ls := TMemoryStream.Create;
    SeqListBox.Items.SaveToStream(ls);
    if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
    GetMem(QP1^.AnsUserBinArray,ls.Size);
    QP1^.AnsUserLength := ls.Size;
    ls.Position := 0;
    {запись данных из SeqListBox в AnsUserBinArray}
    ls.Read(QP1^.AnsUserBinArray^,ls.Size);

    {проверка на правильный ответ}
    m := TMemoryStream.Create;
    sm := TMemoryStream.Create;
    m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
    m.Position := 0;
    m.Read(SeqLength,4);
    GetMem(slarray,SeqLength);
    m.Read(slarray^,SeqLength);
    sm.Write(slarray^,SeqLength);
    sm.Position := 0; {sm - исходный список }
    ls.Position := 0; {ls - введенный сисок }
    Equal:=True;
    for i:=0 to ls.Size-1 do
    begin
     sm.Read(source,1);
     ls.Read(dest,1);
     if source<>dest then begin
      Equal:=False;
      break;
     end;
    end;
    {бальная стоимость}
    if Equal then
     QP1^.AnsUserBall:=QP1^.Score
    else
     QP1^.AnsUserBall:=0;
    FreeMem(slarray);
    ls.Free;
    m.Free;
    sm.Free;
  end;
end;

procedure Tmf.SetToolBtnClick(Sender: TObject);
var
 m,ils,sl,ls : TMemoryStream;
 l,c,r,l1,c1,r1,l2,c2,r2,i,j : longint;
 AccRightCount,rightsens,nonrightsens,AccCount,AccStrLength : longint;
 MinBallCount,KoefAccBall,b,bp,bnp,bs : real;
 slarray : PByte;
 Eq : boolean;
 QP1 : QP;
 varname : array [1..5000] of char;
 VariantCount,VariantLen : longint;
 s, t1,t2,t3,TempStr: string;
 Found: Boolean;

function NPos(const C: string; S: string; N: Integer): Integer;
var
  I, P, K: Integer;
begin
  Result := 0;
  K := 0;
  for I := 1 to N do begin
    P := Pos(C, S);
    Inc(K, P);
    if (I = N) and (P > 0) then begin
      Result := K;
      Exit;
    end;
    if P > 0 then Delete(S, 1, P)
    else Exit;
  end;
end;

begin
if (ALeft.ItemIndex = -1) or (ACenter.ItemIndex = -1) or (ARight.ItemIndex = -1)
 and ARight.Visible then
 ShowMessageD('Выделите выражения.',0)
 else
 begin
    TempStr := ALeft.Items.Strings[ALeft.ItemIndex]+
    ' - '+ACenter.Items.Strings[ACenter.ItemIndex];
    t1 := ALeft.Items.Strings[ALeft.ItemIndex];
    t2 := ACenter.Items.Strings[ACenter.ItemIndex];
    if ARight.Visible then
    begin
      TempStr := TempStr + ' - ' + ARight.Items.Strings[ARight.ItemIndex];
      t3 := ARight.Items.Strings[ARight.ItemIndex];
    end;
    Found := False;
    for I := 0 to AccordList.Items.Count - 1 do
    begin
     if Copy(AccordList.Items[I], 1, NPos(' - ',AccordList.Items[I],1) - 1)=t1 then
       Found := True;
     if ARight.Visible then
     begin
      if Copy(AccordList.Items[I], NPos(' - ',AccordList.Items[I],1)+3,
      NPos(' - ',AccordList.Items[I],2) - 1)=t2 then
        Found := True;
     end
     else
      if Copy(AccordList.Items[I], NPos(' - ',AccordList.Items[I],1)+3,
      Length(AccordList.Items[I]) - NPos(' - ',AccordList.Items[I],1)+3)=t2 then
        Found := True;
     if ARight.Visible then
      if Copy(AccordList.Items[I], NPos(' - ',AccordList.Items[I],2)+3,
      Length(AccordList.Items[I]) - NPos(' - ',AccordList.Items[I],2)+3)=t3 then
        Found := True;
     if AccordList.Items[I] = TempStr then
       Found := True;
    end;
 if Found then
  ShowMessageD('Данное соответствие уже установлено или выражение из списков соответсвий уже использовано.',0)
 else
 begin
 tv.Selected.ImageIndex := 1;
 tv.Selected.SelectedIndex := 1;
 QP1 := tv.Selected.Data;
 if ARight.ItemIndex <> -1 then
  AccordList.Items.Add(ALeft.Items.Strings[ALeft.ItemIndex]+
  ' - '+ACenter.Items.Strings[ACenter.ItemIndex] + ' - ' +
  ARight.Items.Strings[ARight.ItemIndex])
 else
  AccordList.Items.Add(ALeft.Items.Strings[ALeft.ItemIndex]+
  ' - '+ACenter.Items.Strings[ACenter.ItemIndex]);
 QP1^.AnswerStream.Clear;
 QP1^.AnswerStream.Position:=0;
 AccordList.Items.SaveToStream(QP1^.AnswerStream);

 N10.Enabled := True;
 N12.Enabled := True;
 QP1^.AnsUserUpdate := True;
 ls := TMemoryStream.Create;
 ls.Position := 0;
 if QP1^.AnsUserLength <> 0 then
  ls.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
 l:=0;
 c:=0;
 r:=0;
 l:=ALeft.ItemIndex;
 ls.Write(l,4);
 c:=ACenter.ItemIndex;
 ls.Write(c,4);
 r:=ARight.ItemIndex;
 ls.Write(r,4);
 if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
 GetMem(QP1^.AnsUserBinArray,ls.Size);
 QP1^.AnsUserLength := ls.Size;
 ls.Position := 0;
 ls.Read(QP1^.AnsUserBinArray^,ls.Size);

{проверка на правильный ответ}
 m := TMemoryStream.Create;
 sl := TMemoryStream.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 m.Read(AccRightCount,4);
 sl.Position := 0;
 for i:=1 to AccRightCount do
 begin
  m.Read(l,4);
  sl.Write(l,4);
  m.Read(c,4);
  sl.Write(c,4);
  m.Read(r,4);
  sl.Write(r,4);
 end;
 m.Read(QP1^.Limit,4);
 {сортировка введенного списка - удаление повторяющихся соответствий}
 ils := TMemoryStream.Create;
 ls.Position:=0;
 ils.Position:=0;
 ls.Read(l1,4); {считывание первого соответствия}
 ls.Read(c1,4);
 ls.Read(r1,4);
 ils.Write(l1,4);
 ils.Write(c1,4);
 ils.Write(r1,4);
 ls.Position:=0;
 for i:=1 to Round(ls.Size/12) do
 begin
  ls.Read(l1,4); {считывание первого соответствия}
  ls.Read(c1,4);
  ls.Read(r1,4);
  ils.Position:=0;
  Eq:=False;
  for j:=1 to Round(ils.Size/12) do
   begin
    ils.Read(l2,4);
    ils.Read(c2,4);
    ils.Read(r2,4);
    if (l1=l2) and (c1=c2) and (r1=r2) then begin
     Eq:=True;
    end;
   end;
  if not Eq then begin
   ils.Write(l1,4);
   ils.Write(c1,4);
   ils.Write(r1,4);
  end;
 end;
 ils.Position:=0; {введенный список без повторяющихся соответствий}
 rightsens := 0;
 {подсчет кочичества правильных соответствий и расчет полученного балла}
 for j:=1 to Round(ils.Size/12) do
 begin
 sl.Position:=0; {правильный список}
 ils.Read(l1,4);
 ils.Read(c1,4);
 ils.Read(r1,4);
 for i:=1 to AccRightCount do
  begin
   sl.Read(l2,4);
   sl.Read(c2,4);
   sl.Read(r2,4);
   if AccCount < 3 then r2:=-1;
   if (l1=l2) and (c1=c2) and (r1=r2) then inc(rightsens);
  end;
 end;
 { кол-во неправ соотв}
 nonrightsens := Round(ils.Size/12) - rightsens;
 if (rightsens = AccRightCount) and (nonrightsens <= QP1^.Limit) then
  QP1^.AnsUserBall := QP1^.Score;
 ls.Free;
 sl.Free;
 ils.Free;
 m.Free;
 end;
end;
end;

procedure Tmf.ResetToolBtnClick(Sender: TObject);
var
 ils,m,ls,sl : TMemoryStream;
 l,c,r,l1,c1,r1,l2,c2,r2,i,j : longint;
 AccRightCount,rightsens,nonrightsens,AccCount,AccStrLength : longint;
 MinBallCount,KoefAccBall,b,bp,bnp,bs : real;
 slarray : PByte;
 Eq : boolean;
 QP1 : QP;
 varname : array [1..5000] of char;
 VariantCount,VariantLen : longint;
begin
if AccordList.ItemIndex <> -1 then
 begin
  QP1 := tv.Selected.Data;
  ls := TMemoryStream.Create;
  sl := TMemoryStream.Create;
  if QP1^.AnsUserLength<>0 then
   ls.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
  ls.Position := 0;
  sl.Position := 0;
  for i:=0 to AccordList.Items.Count-1 do
  if i<>AccordList.ItemIndex then
   begin
    ls.Read(l,4);
    ls.Read(c,4);
    ls.Read(r,4);
    sl.Write(l,4);
    sl.Write(c,4);
    sl.Write(r,4);
   end
  else
   ls.Position := ls.Position + 12;
  AccordList.Items.Delete(AccordList.ItemIndex);
  QP1^.AnsUserUpdate := AccordList.Items.Count > 0;
  if QP1^.AnsUserUpdate then
  begin
   tv.Selected.ImageIndex := 1;
   tv.Selected.SelectedIndex := 1;
  end
  else
  begin
   tv.Selected.ImageIndex := 0;
   tv.Selected.SelectedIndex := 0;
  end;
  QP1^.AnswerStream.Clear;
  QP1^.AnswerStream.Position:=0;
  AccordList.Items.SaveToStream(QP1^.AnswerStream);
{  AccordList.Items.SaveToStream(ls);}
  if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
  GetMem(QP1^.AnsUserBinArray,ls.Size);
  QP1^.AnsUserLength := sl.Size;
  sl.Position := 0;
  sl.Read(QP1^.AnsUserBinArray^,sl.Size);
  sl.Free;

{проверка на правильный ответ}
 m := TMemoryStream.Create;
 sl := TMemoryStream.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 m.Read(AccRightCount,4);
 sl.Position := 0;
 for i:=1 to AccRightCount do
 begin
  m.Read(l,4);
  sl.Write(l,4);
  m.Read(c,4);
  sl.Write(c,4);
  m.Read(r,4);
  sl.Write(r,4);
 end;
 m.Read(QP1^.Limit,4);
 {сортировка введенного списка - удаление повторяющихся соответствий}
 ils := TMemoryStream.Create;
 ls.Position:=0;
 ils.Position:=0;
 ls.Read(l1,4); {считывание первого соответствия}
 ls.Read(c1,4);
 ls.Read(r1,4);
 ils.Write(l1,4);
 ils.Write(c1,4);
 ils.Write(r1,4);
 ls.Position:=0;
 for i:=1 to Round(ls.Size/12) do
 begin
  ls.Read(l1,4); {считывание первого соответствия}
  ls.Read(c1,4);
  ls.Read(r1,4);
  ils.Position:=0;
  Eq:=False;
  for j:=1 to Round(ils.Size/12) do
   begin
    ils.Read(l2,4);
    ils.Read(c2,4);
    ils.Read(r2,4);
    if (l1=l2) and (c1=c2) and (r1=r2) then begin
     Eq:=True;
    end;
   end;
  if not Eq then begin
   ils.Write(l1,4);
   ils.Write(c1,4);
   ils.Write(r1,4);
  end;
 end;
 ils.Position:=0; {введенный список без повторяющихся соответствий}
 rightsens := 0;
 {подсчет кочичества правильных соответствий и расчет полученного балла}
 for j:=1 to Round(ils.Size/12) do
 begin
 sl.Position:=0; {правильный список}
 ils.Read(l1,4);
 ils.Read(c1,4);
 ils.Read(r1,4);
 for i:=1 to AccRightCount do
  begin
   sl.Read(l2,4);
   sl.Read(c2,4);
   sl.Read(r2,4);
   if AccCount < 3 then r2:=-1;
   if (l1=l2) and (c1=c2) and (r1=r2) then inc(rightsens);
  end;
 end;
 { кол-во неправ соотв}
 nonrightsens := Round(ils.Size/12) - rightsens;
 if (rightsens = AccRightCount) and (nonrightsens <= QP1^.Limit) then
  QP1^.AnsUserBall := QP1^.Score;
 ls.Free;
 sl.Free;
 ils.Free;
 m.Free;
end;

if AccordList.Items.Count = 0 then
 begin
   N10.Enabled := False;
   N12.Enabled := False;
 end;
end;

procedure Tmf.N10Click(Sender: TObject);
begin
 ResetToolBtnClick(Self);
end;

procedure Tmf.N12Click(Sender: TObject);
var
 QP1: QP;
begin
if MessageBox(Application.Handle, PChar('Вы действительно хотите удалить весь список соответствий ?'), PCHAR('Тестирование'), MB_YesNo) =
   IDYes then
  begin
   QP1 := tv.Items.Item[tv.Selected.Index].Data;
   AccordList.Clear;
   QP1^.AnsUserLength := 0;
   QP1^.AnsUserUpdate := False;
   if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
   N10.Enabled := False;
   N12.Enabled := False;
   QP1^.AnsUserBall := 0;
  end;
end;

procedure Tmf.N13Click(Sender: TObject);
begin
 SetToolBtnClick(Self);
end;

function Tmf.CheckStr(strcheck, strorig : string; keytype : byte):boolean;

function SubStrCheck(strcheck, strorig : string) : boolean;
var
 res : boolean;
 s1, s2, s3 : string;
begin
 res := strcheck = strorig;
 if (not res) and (pos('*',strorig)<>0) then
 begin
  s1 := copy(strorig,1,Npos('*',strorig,1)-1);
  if NPos('*',StrOrig,2)>0 then
  begin
   s2 := copy(strorig,Npos('*',strorig,1)+1,NPos('*',StrOrig,2)-NPos('*',StrOrig,1)-1);
   s3 := copy(strorig,Npos('*',strorig,2)+1,Length(StrOrig)-NPos('*',StrOrig,2));
  end
  else
   s2 := copy(strorig,Npos('*',strorig,1)+1,Length(StrOrig)-NPos('*',StrOrig,1));
  if NPos('*',StrOrig,2)>0 then
  begin
   if length(s1)>0 then
     if length(s2)>0 then
       if length(s3)>0 then
         res := (pos(s1,strcheck)>0) and (pos(s2,strcheck)>0) and (pos(s2,strcheck)>pos(s1,strcheck)) and
         (pos(s3,strcheck)>0) and (pos(s3,strcheck)>pos(s2,strcheck))
       else
         res := (pos(s1,strcheck)>0) and (pos(s2,strcheck)>0) and (pos(s2,strcheck)>pos(s1,strcheck))
     else
       if length(s3)>0 then
         res := (pos(s1,strcheck)>0) and (pos(s3,strcheck)>0) and (pos(s3,strcheck)>pos(s1,strcheck))
       else
         res := (pos(s1,strcheck)>0)
   else
     if length(s2)>0 then
       if length(s3)>0 then
         res := (pos(s2,strcheck)>0) and (pos(s3,strcheck)>0) and (pos(s3,strcheck)>pos(s2,strcheck))
       else
         res := (pos(s2,strcheck)>0)
     else
       if length(s3)>0 then
         res := (pos(s3,strcheck)>0)
       else
         res := false
  end
  else
  begin
   if length(s1)>0 then
     if length(s2)>0 then
      res := (pos(s1,strcheck)>0) and (pos(s2,strcheck)>0) and (pos(s2,strcheck)>pos(s1,strcheck))
     else
      res := (pos(s1,strcheck)>0)
   else
     if length(s2)>0 then
      res := (pos(s2,strcheck)>0);
  end;
 end;
 Result := res;
end;

var
 sc, s1, s2, s3, s4, s5, l1, l2, l3, l4: string;
 r : boolean;
begin
 s1 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,1)+1,NPos(')',StrOrig,1)-NPos('(',StrOrig,1)-1)));
 s1 := DelSpace1(s1);
 l1 := copy(StrOrig,NPos(')',StrOrig,1)+1,NPos('(',StrOrig,2)-NPos(')',StrOrig,1)-1);
 s2 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,2)+1,NPos(')',StrOrig,2)-NPos('(',StrOrig,2)-1)));
 s2 := DelSpace1(s2);
 l2 := copy(StrOrig,NPos(')',StrOrig,2)+1,NPos('(',StrOrig,3)-NPos(')',StrOrig,2)-1);
 s3 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,3)+1,NPos(')',StrOrig,3)-NPos('(',StrOrig,3)-1)));
 s3 := DelSpace1(s3);
 if keytype=0 then
 begin
  l3 := copy(StrOrig,NPos(')',StrOrig,3)+1,NPos('(',StrOrig,4)-NPos(')',StrOrig,3)-1);
  s4 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,4)+1,NPos(')',StrOrig,4)-NPos('(',StrOrig,4)-1)));
  s4 := DelSpace1(s4);
  l4 := copy(StrOrig,NPos(')',StrOrig,4)+1,NPos('(',StrOrig,5)-NPos(')',StrOrig,4)-1);
  s5 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,5)+1,NPos(')',StrOrig,5)-NPos('(',StrOrig,5)-1)));
  s5 := DelSpace1(s5);
 end;
 sc := Trim(AnsiLowerCase(strcheck));
 sc := DelSpace1(sc);
 r := false;
 if l1='И' then
        begin
         r := SubStrCheck(sc,s1+' '+s2);
         if l2='И' then
               begin
                r := SubStrCheck(sc,s1+' '+s2+' '+s3);
                if keytype=0 then
                begin
                 if l3='И' then
                   begin
                     r := SubStrCheck(sc,s1+' '+s2+' '+s3+' '+s4);
                     if l4='И' then
                      begin
                       r := SubStrCheck(sc,s1+' '+s2+' '+s3+' '+s4+' '+s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end
                 else if l3='ИЛИ' then
                   begin
                     r := r or SubStrCheck(sc,s4);
                     if l4='И' then
                      begin
                       r := SubStrCheck(sc,s1+' '+s2+' '+s3) or SubStrCheck(sc,s4+' '+s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end;
                end;
               end
         else if l2='ИЛИ' then
                 begin
                  r := r or SubStrCheck(sc,s3);
                  if keytype=0 then
                  begin
                   if l3='И' then
                   begin
                     r := SubStrCheck(sc,s1+' '+s2) or SubStrCheck(sc,s3+' '+s4);
                     if l4='И' then
                      begin
                       r := SubStrCheck(sc,s1+' '+s2) or SubStrCheck(sc,s3+' '+s4+' '+s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end
                   else if l3='ИЛИ' then
                   begin
                     r := r or SubStrCheck(sc,s4);
                     if l4='И' then
                      begin
                       r := SubStrCheck(sc,s1+' '+s2) or SubStrCheck(sc,s3) or SubStrCheck(sc,s4+' '+s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end;
                  end;
                 end;
        end
 else if l1='ИЛИ' then
        begin
         r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2);
         if l2='И' then
               begin
                r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2 + ' ' + s3);
                if keytype=0 then
                begin
                 if l3='И' then
                   begin
                     r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2) or SubStrCheck(sc,s3 + ' ' + s4);
                     if l4='И' then
                      begin
                        r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2) or SubStrCheck(sc,s3+' '+s4+' '+s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end
                 else if l3='ИЛИ' then
                   begin
                     r := (SubStrCheck(sc,s1) or SubStrCheck(sc,s2)) and (SubStrCheck(sc,s3) or SubStrCheck(sc,s4));
                     if l4='И' then
                      begin
                       r := (SubStrCheck(sc,s1) or SubStrCheck(sc,s2)) and (SubStrCheck(sc,s3) or SubStrCheck(sc,s4+' '+s5));
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end;
                end;
               end
         else if l2='ИЛИ' then
                 begin
                  r := r or SubStrCheck(sc,s3);
                  if keytype=0 then
                  begin
                  if l3='И' then
                    begin
                     r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2) or SubStrCheck(sc,s3+' '+s4);
                     if l4='И' then
                      begin
                       r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2) or SubStrCheck(sc,s3+' '+s4+' '+s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end
                   else if l3='ИЛИ' then
                   begin
                     r := r or SubStrCheck(sc,s4);
                     if l4='И' then
                      begin
                       r := SubStrCheck(sc,s1) or SubStrCheck(sc,s2) or SubStrCheck(sc,s3) or SubStrCheck(sc,s4 + ' ' + s5);
                      end
                     else if l4='ИЛИ' then
                      begin
                       r := r or SubStrCheck(sc,s5);
                      end;
                   end;
                  end;
                 end;
        end
 else
  r := SubStrCheck(sc,s1);
 Result := r;
end;


function Tmf.TranslateAnswer(StrOrig:string; keytype:byte):string;
var
 sc, s1, s2, s3, s4, s5, l1, l2, l3, l4: string;
 r : boolean;
begin
 s1 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,1)+1,NPos(')',StrOrig,1)-NPos('(',StrOrig,1)-1)));
 s1 := DelSpace1(s1);
 l1 := copy(StrOrig,NPos(')',StrOrig,1)+1,NPos('(',StrOrig,2)-NPos(')',StrOrig,1)-1);
 s2 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,2)+1,NPos(')',StrOrig,2)-NPos('(',StrOrig,2)-1)));
 s2 := DelSpace1(s2);
 l2 := copy(StrOrig,NPos(')',StrOrig,2)+1,NPos('(',StrOrig,3)-NPos(')',StrOrig,2)-1);
 s3 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,3)+1,NPos(')',StrOrig,3)-NPos('(',StrOrig,3)-1)));
 s3 := DelSpace1(s3);
 Result := Trim(s1 + ' ' + l1 + ' ' + s2 + ' ' + l2 + ' ' + s3);
 if keytype=0 then
 begin
  l3 := copy(StrOrig,NPos(')',StrOrig,3)+1,NPos('(',StrOrig,4)-NPos(')',StrOrig,3)-1);
  s4 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,4)+1,NPos(')',StrOrig,4)-NPos('(',StrOrig,4)-1)));
  s4 := DelSpace1(s4);
  l4 := copy(StrOrig,NPos(')',StrOrig,4)+1,NPos('(',StrOrig,5)-NPos(')',StrOrig,4)-1);
  s5 := Trim(AnsiLowerCase(copy(StrOrig,NPos('(',StrOrig,5)+1,NPos(')',StrOrig,5)-NPos('(',StrOrig,5)-1)));
  s5 := DelSpace1(s5);
  Result := Trim(Result + ' ' + Trim(l3 + ' ' + s4 + ' ' + l4 + ' ' + s5));
 end;
end;

procedure Tmf.KbdChange;
var
  Size: Byte;
  S : String;
  Lang, Lang1 : TStringList;
  QP1 : QP;
  m,l : TMemoryStream;
  slarray : PByte;
  i,k, AccStrLength : longint;
  buf : PChar;
  ErrFixed : boolean;
begin
 try
  if Length(KbdEdit.Text)>0 then
  begin
   tv.Selected.ImageIndex := 1;
   tv.Selected.SelectedIndex := 1;
  end
  else
  begin
   tv.Selected.ImageIndex := 0;
   tv.Selected.SelectedIndex := 0;
  end;
  QP1 := tv.Selected.Data;

// if Length(KbdEdit.Text)>0 then
//  begin
   QP1^.AnsUserUpdate := Length(KbdEdit.Text)>0;
   if QP1^.AnsUserLength <> 0 then
     FreeMem(QP1^.AnsUserBinArray);
   Lang := TStringList.Create;
   for i:=0 to QP1^.KbdCount-1 do
   begin
    case i of
     0 : Lang.Add(KbdEdit.Text);
     1 : Lang.Add(KbdEdit2.Text);
     2 : Lang.Add(KbdEdit3.Text);
     3 : Lang.Add(KbdEdit4.Text);
     4 : Lang.Add(KbdEdit5.Text);
     5 : Lang.Add(KbdEdit6.Text);
     6 : Lang.Add(KbdEdit7.Text);
     7 : Lang.Add(KbdEdit8.Text);
     8 : Lang.Add(KbdEdit9.Text);
     9 : Lang.Add(KbdEdit10.Text);
    end;
   end;
   Size := Length(Lang.Text);
   QP1^.AnsUserLength := Size+1;
   GetMem(QP1^.AnsUserBinArray, QP1^.AnsUserLength);
   StrPCopy(PChar(QP1^.AnsUserBinArray), Lang.Text);
   Lang.Free;
//  end;

  m := TMemoryStream.Create;
  m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
  m.Position := 0;
  Lang := TStringList.Create;
  Lang.LoadFromStream(m);
  for i:=0 to Lang.Count-1 do
  begin
   case i of
    0: ErrFixed := CheckStr(KbdEdit.Text, Lang.Strings[i], QP1^.KeyType);
    1: ErrFixed := CheckStr(KbdEdit2.Text, Lang.Strings[i], QP1^.KeyType);
    2: ErrFixed := CheckStr(KbdEdit3.Text, Lang.Strings[i], QP1^.KeyType);
    3: ErrFixed := CheckStr(KbdEdit4.Text, Lang.Strings[i], QP1^.KeyType);
    4: ErrFixed := CheckStr(KbdEdit5.Text, Lang.Strings[i], QP1^.KeyType);
    5: ErrFixed := CheckStr(KbdEdit6.Text, Lang.Strings[i], QP1^.KeyType);
    6: ErrFixed := CheckStr(KbdEdit7.Text, Lang.Strings[i], QP1^.KeyType);
    7: ErrFixed := CheckStr(KbdEdit8.Text, Lang.Strings[i], QP1^.KeyType);
    8: ErrFixed := CheckStr(KbdEdit9.Text, Lang.Strings[i], QP1^.KeyType);
    9: ErrFixed := CheckStr(KbdEdit10.Text, Lang.Strings[i], QP1^.KeyType);
   end;
  end;
  if ErrFixed then
   QP1^.AnsUserBall := QP1^.Score
  else
   QP1^.AnsUserBall := 0;
  Lang.Free;
  m.Free;
 except
  Error.Send(7);
 end;
end;


procedure Tmf.Timer1Timer(Sender: TObject);
var
 s : string;
 hour, atime : integer;
begin
 if Timer1.Enabled then
  begin
   if currenttime>0 then
   begin
    dec(currenttime);
    sectime := 59;
   end;

  if int(currenttime/60)=0 then
  begin
   Digit1.Value := '0';
   Digit2.Value := '0';
   s := IntToStr(currenttime);
   if length(s)=1 then
    Digit3.Value := '0'
   else
    Digit3.Value := s[length(s)-1];
   Digit4.Value := s[length(s)];;
  end
  else
  begin
   hour := 0;
   atime := currenttime;
   while atime > 60 do
    begin
      inc(hour);
      atime := atime - 60;
    end;
   s := IntToStr(hour);
   if length(s)=1 then
    Digit1.Value := '0'
   else
    Digit1.Value := s[length(s)-1];
   Digit2.Value := s[length(s)];;
   s := IntToStr(atime-1);
   if length(s)=1 then
    Digit3.Value := '0'
   else
    Digit3.Value := s[length(s)-1];
   Digit4.Value := s[length(s)];
  end;

  if (CurrentTime=0) and (sectime=0) and (not TemporaryTest) and (LimitTime=0) then
   begin
    Timer1.Enabled := False;
    Timer2.Enabled := False;
    Timer3.Enabled := False;
    CloseTestForm.Close;
    CalculateResults;
   end;
  end;
end;

procedure Tmf.http2Error(Sender: TObject);
begin
  progr.Hide;
  Error.Send(2);
end;

procedure Tmf.ToolButton4Click(Sender: TObject);
begin
 CloseTestForm.Label2.Caption := '';
 CloseTestForm.Label2.Visible := False;
 if CloseTestForm.ShowModal=mrYes then
    begin
     timer1.Enabled := False;
     timer2.Enabled := False;
     timer3.Enabled := False;
     CalculateResults
    end;
end;

procedure Tmf.N6Click(Sender: TObject);
begin
  About2Form.ShowModal;
end;

procedure Tmf.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 FSize, j, cnt, i, len : integer;
 Stream : TWinSocketStream;
 Buffer : array[0 .. 1023] of Char;
begin
 Screen.Cursor := crHourGlass;
 SocketSendLength := True;
 RecievedLength := 0;
 OriginalLength := 0;
 Socket.SendText('tree');
 LoadingForm.Caption := 'Загрузка дерева тестов c сервера...';
 LoadingForm.Panel1.Caption := '';
 LoadingForm.Button1.Enabled := true;
 LoadingForm.Show;
 LoadingForm.PB.Position := 0;

 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmCreate);
  F.Free;
  FSize := 0;
 except
  LoadingForm.Button1.Enabled := False;
  LoadingForm.Close;
  Screen.Cursor := crDefault;
  ShowMessageD('Невозможно создать временный файл.',2);
  Exit;
 end;

  while Socket.Connected do
  begin
    Application.ProcessMessages;
    try
      Stream := TWinSocketStream.Create(Socket, 60000);
      try
        FillChar(Buffer, 1024, 0); { initialize the buffer }
        if Stream.WaitForData(60000) then
        begin
         if SocketSendLength then
          begin
            SocketSendLength := False;
            if Stream.Read(OriginalLength,4) = 0 then { if can’t read in 60 seconds }
            begin
             Screen.Cursor := crDefault;
             LoadingForm.Button1.Enabled := False;
             LoadingForm.Close;
             Socket.Close;
            end;
          end
          else
          begin
            SocketSendLength := False;
            if  FSize + 1024 < OriginalLength then
             len := 1024
            else
             len := OriginalLength - FSize;
            if Stream.Read(Buffer, len) = 0 then { if can’t read in 60 seconds }
            begin
             Screen.Cursor := crDefault;
             LoadingForm.Button1.Enabled := False;
             LoadingForm.Close;
             Socket.Close;
            end;
            { now process the request }
            if len > 0 then
            begin
             F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmOpenWrite);
             F.Seek(0,soFromEnd);
             F.Write(Buffer,len);
             FSize := F.Size;
             F.Free;
            end; 
            LoadingForm.PB.Position := Trunc(FSize/OriginalLength*100);
          end;
        end
        else
          Socket.Close;
      finally
        Stream.Free;
      end;
    except
      Screen.Cursor := crDefault;
      LoadingForm.Button1.Enabled := False;
      LoadingForm.Close;
    end;
  end;

end;

procedure Tmf.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 LoadingForm.Close;
 LoadingForm.Button1.Enabled := False;
 Screen.Cursor := crDefault;
 AbortSocket.Open;
 ErrorCode := 0;
end;

procedure Tmf.InitDesktop;
var
  IP1t, IP2t, IP3t, IP4t : string;
  j, i, Counter : integer;
  tname, fname, cur : String;
  MyFioForm : TFioForm;
  F1, F : TFileStream;
  ver, len : integer;
  buffer : PByte;
  buffer2 : PChar;
  ListItem : TListItem;
  s, s4 : string;
  h1, h2, h3, r : word;
  d : int64;
  Registry : TMyStream;
begin

  ListView1.Items.Clear;

  ListItem := ListView1.Items.Add;
  ListItem.ImageIndex := 0;
  ListItem.Caption := 'Локальное тестирование';
  ListItem := ListView1.Items.Add;
  ListItem.ImageIndex := 1;
  ListItem.Caption := 'Результаты тестирования';

  if RemoteTesting then
  begin
   try
    Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cf2',fmOpenRead);
    i := 0;
    while Registry.Position < Registry.Size do
     begin
      ListItem := ListView1.Items.Add;
      ListItem.ImageIndex := 3;
      ListItem.Caption := Registry.ReadString;
      s := Registry.ReadString;
      s := Registry.ReadString;
      s := Registry.ReadString;
      s := Registry.ReadString;
     end;
    Registry.Free;
   except
   end;
  end;

  if fileexists(ExtractFilePath(paramstr(0))+'Desktop.dat') then
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmOpenRead);
     F.Position := 0;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer2 := AllocMem(len+1);
        F.Read(buffer2^,len);
        buffer2[len] := Chr(0);
        TName := StrPas(buffer2);
        FreeMem(buffer2);
        if FileExists(TName) then
        begin
         ListItem := ListView1.Items.Add;
         ListItem.ImageIndex := 2;
         ListItem.Subitems.Add(TName);

         F.Read(len,4);
         buffer2 := AllocMem(len+1);
         buffer2[len] := Chr(0);
         F.Read(buffer2^,len);
         buffer2[len] := Chr(0);
         TName := StrPas(buffer2);
         FreeMem(buffer2);
         ListItem.Caption := TName;
        end
        else
        begin
         F.Read(len,4);
         F.Seek(len,soFromCurrent);
        end;
      end;
     F.Free;
  except
  end;
end;


function  Tmf.RestructureBase(Fname : string;F1 : TFilestream):boolean;
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

function  Tmf.RestructureBase4(Fname : string;F1 : TFilestream):boolean;
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
     bz.CompressStream(M,Mout);
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
  ShowMessageD('Реструктуризация базы не выполнена.',2);
  Screen.Cursor := crDefault;
  Result := False;
 end;
end;

function  Tmf.RestructureBase5(Fname : string;FOut : TFilestream):boolean;
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
  ShowMessageD('Реструктуризация базы не выполнена.',2);
  Screen.Cursor := crDefault;
  Result := False;
 end;
end;

function Tmf.GlobalRestructurizeBase(BasePath : string):boolean;
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
  ShowMessageD('Невозможно создать базу данных результатов.',2);
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessageD('Невозможно открыть базу данных результатов.',2);
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
  if ver=1 then
   begin
     ShowMessageD('В данной версии программы "M-Тест Локальное тестирование" не поддерживается работа с базой данных версии 1.0. Будет произведена очистка базы данных.',1);
     F := TFileStream.Create(BasePath+'Prtest.dt3',fmCreate);
     len := 2;
     F.Write(len,4);
     F.Free;
   end
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessageD('Невозможно открыть базу данных результатов.',2);
  Screen.Cursor := crDefault;
  Result := False;
  Exit;
 end;

 try
  if ver=2 then
   begin
     ShowMessageD('Внимание! Устаревшая версия базы данных. Будет произведена реструктуризация базы до версии 3.0',1);
     F.Free;
     try
      F := TFileStream.Create(BasePath+'tmp.dt3',fmCreate);
      len := 3;
      F.Write(len,4);
      if not RestructureBase(BasePath+'Prtest.dt3',F) then
       begin
        F.Free;
        Screen.Cursor := crDefault;
        ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
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
      ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
      Result := False;
      Exit;
     end;
   end;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessageD('Невозможно открыть базу данных результатов.',2);
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
        ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
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
      ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
      Result := False;
      Exit;
     end;
   end;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
  Result := False;
  Exit;
 end;

 try
  F := TFileStream.Create(BasePath+'Prtest.dt3',fmOpenReadWrite);
  F.Read(ver,4);
  F.Free;
 except
  ShowMessageD('Невозможно открыть базу данных результатов.',2);
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
        ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
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
      ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
      Result := False;
      Exit;
     end;
   end;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Реструктуризация базы данных не произведена. Удалите старую базу данных.',2);
  Result := False;
  Exit;
 end;
 Result := True;
end;

procedure Tmf.FormShow(Sender: TObject);
var
  IP1t, IP2t, IP3t, IP4t : string;
  j, i, Counter : integer;
  tname, fname, cur : String;
  MyFioForm : TFioForm;
  F1, F : TFileStream;
  ver, len : integer;
  buffer : PByte;
  buffer2 : PChar;
  ListItem : TListItem;
  s, s4 : string;
  h1, h2, h3, r : word;
  d : int64;
begin
  NonCloseSocket := False;
  ALeft.Width := Round(TabControl3.Width / 3);
  ACenter.Width := Round(TabControl3.Width / 3);
  ARight.Width := Round(TabControl3.Width / 3);
  ParamsDeny := True;
  TestDeny := True;
  N9.Enabled := False;
  N4.Enabled := False;
  N16.Enabled := False;


  if not GlobalRestructurizeBase(ExtractFilePath(paramstr(0))) then Exit;

  if Length(paramstr(1))<>0 then
  // Запустить локальный тест
  begin
    cur := GetCurrentDir;
    fname := '';
    for i:=1 to ParamCount do
       fname := fname + ' '+paramstr(i);
     if not OpenFile(trim(fname),Counter,Sender) then
     begin
       Screen.Cursor := crDefault;
       ShowMessageD('Невозможно открыть тест, либо тестирование прервано пользователем.',2);
       LoadingForm.Close;
       About2Form.Close;
       Exit;
     end;
    SetCurrentDir(cur);
    if FamText <> '' then
     mf.Caption := mf.Caption + ' - ' + FamText;
  end;
  Screen.Cursor := crDefault;
 // About2Form.Close;
end;

procedure Tmf.http2Progress(Sender: TObject; TotalSize, Readed: Integer);
begin
if TotalSize <> 0 then
 progr.prbar.Position := Trunc((Readed / TotalSize) * 100);
end;

procedure Tmf.N16Click(Sender: TObject);
begin
 ToolButton2Click(self);
end;

procedure Tmf.N4Click(Sender: TObject);
begin
 ToolButton1Click(self);
end;

procedure Tmf.FormResize(Sender: TObject);
var
  Registry : TMyStream;
  QP1 : QP;
  m : TMemoryStream;
  i, AccCount : integer;
begin
  if ro.Visible then
   begin
    if Splitter2.Left=0 then
     Splitter2.Left :=  Splitter2.Left+1;
    if tv.Width=0 then
     tv.Width := tv.Width+1;
    try
     Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'qpos.cfg',fmCreate);
     Registry.WriteInteger(Splitter2.Left);
     Registry.Free;
     tvClick(Sender);
    except
    end;
   end
  else
  begin
   ListView1.IconOptions.AutoArrange := True;
  end;
end;

procedure Tmf.N22Click(Sender: TObject);
begin
 Calc.Execute;
end;

procedure Tmf.N7Click(Sender: TObject);
begin
 Action1Execute(Sender);
end;

procedure Tmf.FormCreate(Sender: TObject);
var
  IP1t, IP2t, IP3t, IP4t : string;
  j, i, Counter : integer;
  datasize, len : integer;
  mdata, s, s4 : string;
  h1, h2, h3, h4, r : word;
  serdata : Int64;
  a,b,c,d : Longword;
  h12, h34 : longword;
  b1 : byte;
  Registry, Registry2 : TMyStream;
  buf : pchar;

begin
//  if DebuggerPresent then Application.Terminate;

  dstr := ReplaceStr(demostr,'$','');
  dstr := ReplaceStr(dstr,'1','');
  dstr := ReplaceStr(dstr,'2','');
  dstr := ReplaceStr(dstr,'3','');
  dstr := ReplaceStr(dstr,'4','');
  dstr := ReplaceStr(dstr,'5','');
  dstr := ReplaceStr(dstr,'6','');
  dstr := ReplaceStr(dstr,'#','');

  rstr := ReplaceStr(regstr,'"','');
  rstr := ReplaceStr(rstr,'1','');
  rstr := ReplaceStr(rstr,'2','');
  rstr := ReplaceStr(rstr,'3','');
  rstr := ReplaceStr(rstr,'4','');
  rstr := ReplaceStr(rstr,'№','');
  rstr := ReplaceStr(rstr,'!','');
  rstr := ReplaceStr(rstr,'(','');
  rstr := ReplaceStr(rstr,')','');
  rstr := ReplaceStr(rstr,'_','');
  rstr := ReplaceStr(rstr,'*','');
  rstr := ReplaceStr(rstr,'+','');

  tstr := ReplaceStr(thstr,'1','');
  tstr := ReplaceStr(tstr,'2','');
  tstr := ReplaceStr(tstr,'3','');
  tstr := ReplaceStr(tstr,'4','');
  tstr := ReplaceStr(tstr,'5','');
  tstr := ReplaceStr(tstr,'6','');
  tstr := ReplaceStr(tstr,'7','');

  Application.Title := mf.Caption;

  if (FileExists(ExtractFilePath(paramstr(0))+'tcpip.cfg')) and (not FileExists(ExtractFilePath(paramstr(0))+'tcpip.cf2')) then
  begin
   try
    Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cfg',fmOpenRead);
    Registry2:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cf2',fmCreate);
    Registry2.WriteString('Удаленное тестирование');
    s := Registry.ReadString;
    s := s + '.' + Registry.ReadString;
    s := s + '.' + Registry.ReadString;
    s := s + '.' + Registry.ReadString;
    Registry2.WriteString(s);
    Registry2.WriteString(Registry.ReadString);
    Registry2.WriteString(Registry.ReadString);
    Registry2.WriteString(Registry.ReadString);
    Registry.Free;
    Registry2.Free;
   except
   end;
   DeleteFile(ExtractFilePath(paramstr(0))+'tcpip.cfg');
  end;

  CreateInformationMenu;

  InitDesktop;

  BitMap1 := TBitMap.Create;
  BitMap2 := TBitMap.Create;
  BitMap3 := TBitMap.Create;
  BitMap4 := TBitMap.Create;
  BitMap5 := TBitMap.Create;
  BitMap1.LoadFromResourceName(HInstance,'BITMAP_1');
  BitMap2.LoadFromResourceName(HInstance,'BITMAP_2');
  BitMap3.LoadFromResourceName(HInstance,'BITMAP_3');
  BitMap4.LoadFromResourceName(HInstance,'BITMAP_4');
  BitMap5.LoadFromResourceName(HInstance,'BITMAP_5');

  AppOptions := TAppOPtions.Create;
  AppOptions.LoadFromReg;
  AppOptions.RegDone := False;
  AppOptions.RegDone2 := False;
  AppOptions.RegDone3 := False;

  N57.Checked := False;

  if FileExists(ExtractFilePath(paramstr(0))+'screen.cfg') then
  begin
   try
    Registry := TMyStream.Create(ExtractFilePath(paramstr(0))+'screen.cfg',fmOpenRead);
    b1 := Registry.ReadByte;
    N57.Checked := b1 = 1;
    Registry.Free;
   except
   end;
  end;

  if N57.Checked then mf.BorderStyle := bsNone else mf.BorderStyle := bsSizeable;
  Timer5.Enabled := True;

end;

procedure Tmf.reshttpError(Sender: TObject);
begin
  Transmission := False;
  Screen.Cursor := crDefault;
  progr.Hide;
  DeleteFile('result.bin');
  Error.Send(6);
//  ShowResults(sout,True);
  ClearRAM;
  sout.Free;
end;

procedure Tmf.N27Click(Sender: TObject);
begin
 if Access.ShowModal = mrOk then
 begin
   ShellExecute(Handle, Nil,
   PChar(ExtractFilePath(paramstr(0))+'extresult.exe'),
   PChar('dropdata'), PChar(ExtractFilePath(paramstr(0))),
   SW_NORMAL);
 end;
end;

procedure Tmf.VariantBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 i : integer;
begin
 for i:=0 to VariantBox.Items.Count-1 do
 begin
  if (Y >= (i*VariantBox.ItemHeight)) and (Y < ((i+1)*VariantBox.ItemHeight)) then
   VariantBox.Hint := VariantBox.Items.Strings[i];
 end;
end;

procedure Tmf.ALeftMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 i : integer;
begin
 for i:=0 to ALeft.Items.Count-1 do
 begin
  if (Y >= (i*ALeft.ItemHeight)) and (Y < ((i+1)*ALeft.ItemHeight)) then
   ALeft.Hint := ALeft.Items.Strings[i];
 end;
end;

procedure Tmf.ACenterMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 i : integer;
begin
 for i:=0 to ACenter.Items.Count-1 do
 begin
  if (Y >= (i*ACenter.ItemHeight)) and (Y < ((i+1)*ACenter.ItemHeight)) then
   ACenter.Hint := ACenter.Items.Strings[i];
 end;
end;

procedure Tmf.ARightMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 i : integer;
begin
 for i:=0 to ARight.Items.Count-1 do
 begin
  if (Y >= (i*ARight.ItemHeight)) and (Y < ((i+1)*ARight.ItemHeight)) then
   ARight.Hint := ARight.Items.Strings[i];
 end;
end;

procedure Tmf.AccordListMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 i : integer;
begin
 for i:=0 to AccordList.Items.Count-1 do
 begin
  if (Y >= (i*AccordList.ItemHeight)) and (Y < ((i+1)*AccordList.ItemHeight)) then
   AccordList.Hint := AccordList.Items.Strings[i];
 end;
end;

procedure Tmf.N31Click(Sender: TObject);
var
 s, cur : String;
 Counter : Integer;
begin
   cur := GetCurrentDir;
   s := '';
   if OpenSaveFileDialog(tf.Handle, 'lts', 'Локальные тесты (*.lts)|*.lts', Cur,
    'Открытие локального теста...', s, True) then
    if not OpenFile(s,Counter,Sender) then
    begin
     ShowMessageD('Невозможно открыть тест, либо тестирование прервано пользователем.',2);
     LoadingForm.Close;
     Exit;
    end;
   SetCurrentDir(cur);
   if FamText <> '' then
    mf.Caption := mf.Caption + ' - ' + FamText;
end;

procedure Tmf.N21Click(Sender: TObject);
begin
 Registration.ShowModal;
end;

procedure Tmf.VariantBoxDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);

procedure Delay;
var
 i,j : longint;
begin
 j := 0;
 for i:=0 to 1000000 do
  inc(j);
end;

var
  y, k ,rl, len: Integer;
  r, r1 : TRect;

begin
   r := rect;
   with (Control as TListBox).Canvas do
   begin
    y := r.Top + trunc(((r.Bottom - r.Top)/2)-16);
    if (Control as TListBox).Selected[Index] then
    begin
     Draw(r.Left, y, BitMap1);
    end
    else
    begin
     Draw(r.Left, y, BitMap2);
    end;
    r.Left := r.Left + 32;
    if odSelected in State then
    begin
     Font.Color := clBlack;
     Brush.Color := clWhite;
    end;
    FillRect(r);
    //if odFocused in State then
    // DrawFocusRect(rect);
    if TextWidth((Control as TListBox).Items[Index]) > r.Right - r.Left then
     DrawText(Handle,PChar((Control as TListBox).Items[Index]),
     length((Control as TListBox).Items[Index]),r,DT_WORDBREAK)
    else
    begin
     r.Top := r.Top + 6;
     DrawText(Handle,PChar((Control as TListBox).Items[Index]),
     length((Control as TListBox).Items[Index]),r,DT_WORDBREAK)
    end;
   end;
end;

procedure Tmf.VariantBoxSingleDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure Tmf.pcChange(Sender: TObject);
begin
  tv.Selected.ImageIndex :=1;
end;

procedure Tmf.CheckButtonClick(Sender: TObject);
var
  l,c,r,l1,c1,r1,l2,c2,r2,i,j : longint;
  QP1 : QP;
  m1, ils, sl, sm, ls, m : TMemoryStream;
  AllScore, Ball, AllBall, NRC, AccRightCount,AccStrLength,AccCount,k,siz, SeqLength, VariantLen,VariantCount : integer;
  varname : array [1..5000] of char;
  Score : byte;
  Lang, Lang1, Strlist : TStringList;
  ps1 : boolean;
  ps : array [0..2000] of Boolean;
  s : string;
  slarray : PByte;
  Eq, Equal : boolean;
  source, dest : byte;
  rightsens, nonrightsens : longint;
  ResID : integer;
  ErrFixed : boolean;
begin
//if AppOptions.RegDone then begin
 tv.Selected.SelectedIndex := tv.Selected.ImageIndex;
 QP1 := tv.Selected.Data;
 tv.Selected.ImageIndex :=1;
{=================================================================}
{Список вариантов ответов}
{=================================================================}
 if QP1^.PluginName = 'variant.dll' then
 begin
   m := TMemoryStream.Create;
   m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
   m.Position := 0;
   m.Read(VariantCount,4);
//   if VariantCount > 2 then {в списке >2  вариантов}
//   begin
   Ball := 0;
   AllBall := 0;
   NRC := 0;
   QP1^.AnsUserBall := 0;
   for i:=0 to VariantCount-1 do
   begin
   m.Read(VariantLen,4);
   m.Read(varname,VariantLen);
   m.Read(Score,1);
   AllBall := AllBall + Score;
   if (Score <> 0) and (VariantBox.Selected[i]) then
    Ball := Ball + Score;
   if (Score = 0) and (VariantBox.Selected[i]) then
    NRC := NRC + 1;
   end;
   m.Read(QP1^.Limit,4);

   if (QP1^.EditAnsBall=1) and (NRC <= QP1^.Limit) then
     QP1^.AnsUserBall := Ball;

   if (Ball = AllBall) and (NRC <= QP1^.Limit) then
   begin
    m.Free;
    if QP1^.EditAnsBall=1 then
     QP1^.AnsUserBall := Ball
    else
     QP1^.AnsUserBall := QP1^.Score;
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
    if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := False;
       DopForm.Panel1.Font.Color := clGreen;
       DopForm.Panel1.Caption := 'Правильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
     end
    else
     begin
       DopForm2.Panel2.Visible := False;
       DopForm2.Panel1.Font.Color := clGreen;
       DopForm2.Panel1.Caption := 'Правильно!';
       DopForm2.ShowModal;
     end;
    ContinueTest := True;
   end
   else
   begin
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
   ContinueTest := True;
    if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := not RepTest;
       DopForm.Panel1.Font.Color := clRed;
       DopForm.Panel1.Caption := 'Неправильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       ResID := DopForm.ShowModal;
     end
    else
     begin
      DopForm2.Panel2.Visible := not RepTest;
      DopForm2.Panel1.Font.Color := clRed;
      DopForm2.Panel1.Caption := 'Неправильно!';
      ResID := DopForm2.ShowModal;
     end;
   if ResID = mrYes then
   begin
   ContinueTest := False;
   m.Position := 0;
   m.Read(VariantCount,4);
   AllScore := 0;
   for i:=1 to VariantCount do
    begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
     m.Read(Score,1);
     AllScore := AllScore + Score;
     if Score >= 1 then
       VariantBox.Selected[i-1] := True
     else
       VariantBox.Selected[i-1] := False;
    end;
   m.Free;

   tv.Selected.ImageIndex := 1;
   tv.Selected.SelectedIndex := 1;
   m := TMemoryStream.Create;
   QP1^.AnsUserUpdate := True;
   if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
    GetMem(QP1^.AnsUserBinArray,VariantBox.Items.Count);
   QP1^.AnsUserLength := VariantBox.Items.Count;

   for i:=0 to VariantBox.Items.Count-1 do
    ps[i]:=VariantBox.Selected[i];

   m.Position := 0;
   m.Write(ps,VariantBox.Items.Count);
   m.Position := 0;
   m.Read(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
   m.Free;
   if QP1^.EditAnsBall=1 then
    QP1^.AnsUserBall := AllScore
   else
   QP1^.AnsUserBall := QP1^.Score;
  end;
  end;
(*  end
  else // два варианта
  begin
   Ball := 0;
   AllBall := 0;
   NRC := 0;
   QP1^.AnsUserBall := 0;
   for i:=0 to VariantCount-1 do
   begin
   m.Read(VariantLen,4);
   m.Read(varname,VariantLen);
   m.Read(Score,1);
   AllBall := AllBall + Score;
   if (Score <> 0) and (VariantBoxSingle.ItemIndex = i) then
    Ball := Ball + Score;
   if (Score = 0) and (VariantBoxSingle.ItemIndex = i) then
    NRC := NRC + 1;
   end;
   m.Read(QP1^.Limit,4);

   if (QP1^.EditAnsBall=1) and (NRC <= QP1^.Limit) then
     QP1^.AnsUserBall := Ball;

   if (Ball = AllBall) and (NRC <= QP1^.Limit) then
   begin
    m.Free;
    if QP1^.EditAnsBall=1 then
     QP1^.AnsUserBall := Ball
    else
     QP1^.AnsUserBall := QP1^.Score;
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.Clear;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
    DopForm.Panel2.Visible := False;
    DopForm.Panel1.Font.Color := clGreen;
    DopForm.Panel1.Caption := 'Правильно!';
    DopForm.ShowModal;
    ContinueTest := True;
   end
   else
   begin
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
   DopForm.Panel2.Visible := not RepTest;
   DopForm.Panel1.Font.Color := clRed;
   DopForm.Panel1.Caption := 'Неправильно!';
   ContinueTest := True;
   if DopForm.ShowModal = mrYes then
   begin
      ContinueTest := False;
      tv.Selected.ImageIndex := 1;
      tv.Selected.SelectedIndex := 1;
      m.Position := 0;
      m.Read(VariantCount,4);
      m.Read(VariantLen,4);
      m.Read(varname,VariantLen);
      varname[VariantLen+1] := chr(0);
      m.Read(Score,1);
      if Score>0 then VariantBoxSingle.ItemIndex := 0;

      m.Read(VariantLen,4);
      m.Read(varname,VariantLen);
      varname[VariantLen+1] := chr(0);
      m.Read(Score,1);
      if Score>0 then VariantBoxSingle.ItemIndex := 1;

      m.Free;
      m := TMemoryStream.Create;
      QP1^.AnsUserUpdate := True;
      if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
      GetMem(QP1^.AnsUserBinArray,2);
      QP1^.AnsUserLength := 2;
      if VariantBoxSingle.ItemIndex = 0 then ps1 := True else ps1 := False;
      m.Write(ps1,1);
      if VariantBoxSingle.ItemIndex = 1 then ps1 := True else ps1 := False;
      m.Write(ps1,1);
      m.Position := 0;
      m.Read(QP1^.AnsUserBinArray^,2);
      m.Free;
      if QP1^.EditAnsBall=1 then
       QP1^.AnsUserBall := Score
      else
       QP1^.AnsUserBall := QP1^.Score;
   end;
  end;
  end;*)
 end
 else
{=================================================================}
{Правильная последовательность}
{=================================================================}
if QP1^.PluginName = 'sequent.dll' then
begin
    m := TMemoryStream.Create;
    sm := TMemoryStream.Create;
    m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
    m.Position := 0;
    m.Read(SeqLength,4);
    GetMem(slarray,SeqLength);
    m.Read(slarray^,SeqLength);
    sm.Write(slarray^,SeqLength);
    sm.Position := 0; {sm - исходный список }
    ls := TMemoryStream.Create;
    SeqListBox.Items.SaveToStream(ls);
    ls.Position := 0; {ls - введенный список }
    Equal:=True;
    for i:=0 to ls.Size-1 do
    begin
     sm.Read(source,1);
     ls.Read(dest,1);
     if source<>dest then begin
      Equal:=False;
      break;
     end;
    end;
    FreeMem(slarray);
    ls.Free;
    m.Free;
    sm.Free;
    {бальная стоимость}
    if Equal then
    begin
     QP1^.AnsUserBall:=QP1^.Score;
     DopForm.RO.Lines.Clear;
     if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
     if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := False;
       DopForm.Panel1.Font.Color := clGreen;
       DopForm.Panel1.Caption := 'Правильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       DopForm.ShowModal;
     end
     else
     begin
       DopForm2.Panel2.Visible := False;
       DopForm2.Panel1.Font.Color := clGreen;
       DopForm2.Panel1.Caption := 'Правильно!';
       DopForm2.ShowModal;
     end;
     ContinueTest := True;
    end
    else
   begin
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
   ContinueTest := True;
    if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := not RepTest;
       DopForm.Panel1.Font.Color := clRed;
       DopForm.Panel1.Caption := 'Неправильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       ResID := DopForm.ShowModal;
     end
    else
     begin
       DopForm2.Panel2.Visible := not RepTest;
       DopForm2.Panel1.Font.Color := clRed;
       DopForm2.Panel1.Caption := 'Неправильно!';
       ResID := DopForm2.ShowModal;
     end;
   if ResID = mrYes then
   begin
       ContinueTest := False;
       tv.Selected.ImageIndex := 1;
       tv.Selected.SelectedIndex := 1;
       strlist := TStringList.Create;
       m := TMemoryStream.Create;
       SeqLength := QP1^.AnswerLength;
       SeqListBox.Clear;
       m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
       m.Position := 0;
       m.Read(SeqLength,4);
       strlist.Clear;
       strlist.LoadFromStream(m);
       SeqListBox.Items.AddStrings(strlist);
       m.Free;
       strlist.Free;
       QP1^.AnsUserBall := QP1^.Score;
       QP1^.AnsUserUpdate := True;
       m := TMemoryStream.Create;
       SeqListBox.Items.SaveToStream(m);
       if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
       GetMem(QP1^.AnsUserBinArray,m.Size);
       QP1^.AnsUserLength := m.Size;
       m.Position := 0;
       m.Read(QP1^.AnsUserBinArray^,m.Size);
       m.Free;
    end;
 end;
end
else
{=================================================================}
{Соответствие вариантов}
{=================================================================}
if QP1^.PluginName = 'equals.dll' then
begin
 ils := TMemoryStream.Create;
 if QP1^.AnsUserLength <> 0 then
  ils.Write(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
 ils.Position:=0;
 {проверка на правильный ответ}
 m := TMemoryStream.Create;
 sl := TMemoryStream.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 m.Read(AccRightCount,4);
 sl.Position := 0;
 for i:=1 to AccRightCount do
 begin
  m.Read(l,4);
  sl.Write(l,4);
  m.Read(c,4);
  sl.Write(c,4);
  m.Read(r,4);
  sl.Write(r,4);
 end;
 m.Read(QP1^.Limit,4);
 ils.Position:=0; {введенный список без повторяющихся соответствий}
 rightsens := 0;
 {подсчет кочичества правильных соответствий и расчет полученного балла}
 for j:=1 to Round(ils.Size/12) do
 begin
 sl.Position:=0; {правильный список}
 ils.Read(l1,4);
 ils.Read(c1,4);
 ils.Read(r1,4);
 if AccCount < 3 then r1:=-1;
 for i:=1 to AccRightCount do
  begin
   sl.Read(l2,4);
   sl.Read(c2,4);
   sl.Read(r2,4);
   if AccCount < 3 then r2:=-1;
   if (l1=l2) and (c1=c2) and (r1=r2) then
    inc(rightsens);
  end;
 end;
 { кол-во неправ соотв}
 nonrightsens := Round(ils.Size/12) - rightsens;
 sl.Free;
 ils.Free;
 m.Free;
 if (rightsens = AccRightCount) and (nonrightsens <= QP1^.Limit) then
 begin
  QP1^.AnsUserBall := QP1^.Score;
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
    if DopForm.RO.Lines.Count > 0 then
     begin
       DopForm.Panel2.Visible := False;
       DopForm.Panel1.Font.Color := clGreen;
       DopForm.Panel1.Caption := 'Правильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       DopForm.ShowModal;
     end
    else
     begin
       DopForm2.Panel2.Visible := False;
       DopForm2.Panel1.Font.Color := clGreen;
       DopForm2.Panel1.Caption := 'Правильно!';
       DopForm2.ShowModal;
     end;
  ContinueTest := True;
 end
 else
   begin
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
    ContinueTest := True;
    if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := not RepTest;
       DopForm.Panel1.Font.Color := clRed;
       DopForm.Panel1.Caption := 'Неправильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       ResID := DopForm.ShowModal;
     end
    else
     begin
       DopForm2.Panel2.Visible := not RepTest;
       DopForm2.Panel1.Font.Color := clRed;
       DopForm2.Panel1.Caption := 'Неправильно!';
       ResID := DopForm2.ShowModal;
     end;
   if ResID = mrYes then
   begin
    ContinueTest := False;
 m := TMemoryStream.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 m.Read(AccCount,4);
 if AccCount >= 1 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 2 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 if AccCount >= 3 then
 begin
  m.Read(AccStrLength,4);
  for i:=1 to AccStrLength do
   begin
     m.Read(VariantLen,4);
     m.Read(varname,VariantLen);
     varname[VariantLen+1] := chr(0);
   end;
 end;
 m.Read(AccRightCount,4);
 AccordList.Items.Clear;
 ls := TMemoryStream.Create;
 for i:=1 to AccRightCount do
 begin
  m.Read(l,4);
  m.Read(c,4);
  m.Read(r,4);
  ls.Write(l,4);
  ls.Write(c,4);
  ls.Write(r,4);
  if AccCount = 3 then
  AccordList.Items.Add(ALeft.Items.Strings[l]+
  ' - '+ACenter.Items.Strings[c] + ' - ' +
  ARight.Items.Strings[r])
  else
  AccordList.Items.Add(ALeft.Items.Strings[l]+
  ' - '+ACenter.Items.Strings[c]);
 end;
 if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
 GetMem(QP1^.AnsUserBinArray,ls.Size);
 QP1^.AnsUserLength := ls.Size;
 ls.Position := 0;
 ls.Read(QP1^.AnsUserBinArray^,ls.Size);
 ls.Free;
 m.Free;
 QP1^.AnsUserUpdate := True;
 QP1^.AnsUserBall := QP1^.Score;
 end;
 end;
end
else
{=================================================================}
{Клавиатурный ответ}
{=================================================================}
if QP1^.PluginName = 'keyboard.dll' then
begin
 try
  tv.Selected.ImageIndex := 1;
  tv.Selected.SelectedIndex := 1;
  QP1 := tv.Selected.Data;
  m := TMemoryStream.Create;
  m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
  m.Position := 0;
  Lang := TStringList.Create;
  Lang.LoadFromStream(m);
  for i:=0 to Lang.Count-1 do
  begin
   case i of
    0: ErrFixed := CheckStr(KbdEdit.Text, Lang.Strings[i], QP1^.KeyType);
    1: ErrFixed := CheckStr(KbdEdit2.Text, Lang.Strings[i], QP1^.KeyType);
    2: ErrFixed := CheckStr(KbdEdit3.Text, Lang.Strings[i], QP1^.KeyType);
    3: ErrFixed := CheckStr(KbdEdit4.Text, Lang.Strings[i], QP1^.KeyType);
    4: ErrFixed := CheckStr(KbdEdit5.Text, Lang.Strings[i], QP1^.KeyType);
    5: ErrFixed := CheckStr(KbdEdit6.Text, Lang.Strings[i], QP1^.KeyType);
    6: ErrFixed := CheckStr(KbdEdit7.Text, Lang.Strings[i], QP1^.KeyType);
    7: ErrFixed := CheckStr(KbdEdit8.Text, Lang.Strings[i], QP1^.KeyType);
    8: ErrFixed := CheckStr(KbdEdit9.Text, Lang.Strings[i], QP1^.KeyType);
    9: ErrFixed := CheckStr(KbdEdit10.Text, Lang.Strings[i], QP1^.KeyType);
   end;
  end;
  Lang.Free;
  m.Free;
 except
  Error.Send(7);
 end;

 if ErrFixed then
  begin
    QP1^.AnsUserBall := QP1^.Score;
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
    if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := False;
       DopForm.Panel1.Font.Color := clGreen;
       DopForm.Panel1.Caption := 'Правильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       DopForm.ShowModal;
     end
    else
     begin
       DopForm2.Panel2.Visible := False;
       DopForm2.Panel1.Font.Color := clGreen;
       DopForm2.Panel1.Caption := 'Правильно!';
       DopForm2.ShowModal;
     end;
   ContinueTest := True;
  end
  else
   begin
    DopForm.RO.Lines.Clear;
    if QP1^.QuestionAddLength > 0 then
      begin
       M1 := TMemoryStream.Create;
       M1.Write(QP1^.QuestionAddArray^,QP1^.QuestionAddLength);
       M1.Position := 0;
       DopForm.RO.Lines.LoadFromStream(M1);
       M1.Free;
      end;
    ContinueTest := True;
    if QP1^.QuestionAddLength > 0 then
     begin
       DopForm.Panel2.Visible := not RepTest;
       DopForm.Panel1.Font.Color := clRed;
       DopForm.Panel1.Caption := 'Неправильно!';
       DopForm.RO.Visible := true;
       DopForm.Height := 500;
       ResID := DopForm.ShowModal;
     end
    else
    begin
     DopForm2.Panel2.Visible := not RepTest;
     DopForm2.Panel1.Font.Color := clRed;
     DopForm2.Panel1.Caption := 'Неправильно!';
     ResID := DopForm2.ShowModal;
    end;
   if ResID = mrYes then
   begin
   ContinueTest := False;
   tv.Selected.ImageIndex := 1;
   tv.Selected.SelectedIndex := 1;
   QP1^.AnsUserBall := QP1^.Score;
   QP1^.AnsUserUpdate := True;
   m := TMemoryStream.Create;
   m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
   m.Position := 0;
   Lang := TStringList.Create;
   Lang.LoadFromStream(m);
   for i:=0 to Lang.Count-1 do
   begin
   case i of
    0: KbdEdit.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    1: KbdEdit2.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    2: KbdEdit3.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    3: KbdEdit4.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    4: KbdEdit5.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    5: KbdEdit6.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    6: KbdEdit7.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    7: KbdEdit8.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    8: KbdEdit9.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
    9: KbdEdit10.Text := TranslateAnswer(Lang.Strings[i], QP1^.KeyType);
   end;
   end;
   Lang.Free;
   m.Free;
   if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
   S := KbdEdit.Text;
   Siz := Length(S);
   Inc(Siz);
   QP1^.AnsUserLength := Siz+1;
   GetMem(QP1^.AnsUserBinArray, QP1^.AnsUserLength);
   StrPCopy(PChar(QP1^.AnsUserBinArray), S);
   end;
end;
end;
end;

procedure Tmf.tvKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if (Key=VK_PRIOR) or (Key=VK_NEXT) or
    (Key=VK_UP) or (Key=VK_DOWN) or
    (Key=VK_RIGHT) or (Key=VK_LEFT) then
      tvClick(Sender)
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.Splitter2Moved(Sender: TObject);
begin
  FormResize(Sender);
end;

procedure Tmf.VariantBoxMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
 r : TRect;
 s : string;
begin
  with VariantBox.Canvas do
  begin
   Font.Size := 12;
   Font.Height := -16;
   Height := 32;
   s := VariantBox.Items[Index];
   k := TextWidth(s);
   while K > (VariantBox.Width - 36) do
   begin
    k := k - VariantBox.Width - 36;
    if Height = 32 then
     Height:=Height+8
    else
     Height:=Height+20;
   end;
  end;
end;

procedure Tmf.VariantBoxSingleMeasureItem(Control: TWinControl;
  Index: Integer; var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Height := 20;
   k := TextWidth(Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure Tmf.SeqListBoxDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure Tmf.SeqListBoxMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Font.Size := 12;
   Font.Height := -16;
   Height := 20;
   k := TextWidth(Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure Tmf.ALeftDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure Tmf.ALeftMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Font.Size := 12;
   Font.Height := -16;
   Height := 20;
   k := TextWidth(Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure Tmf.ACenterDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure Tmf.ACenterMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Font.Size := 12;
   Font.Height := -16;
   Height := 20;
   k := TextWidth(Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure Tmf.ARightDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf , Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure Tmf.ARightMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Font.Size := 12;
   Font.Height := -16;
   Height := 20;
   k := TextWidth(Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure Tmf.AccordListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  k ,rl, len: Integer;
  buf : array [0..5000] of char;
  r : TRect;
begin
   r := rect;
   StrPCopy (buf ,Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   len := strlen(buf);
   (Control as TListBox).Canvas.DrawFocusRect(r);
   (Control as TListBox).Canvas.FillRect(r);
   DrawText((Control as TListBox).Canvas.Handle,buf,len,r,DT_WORDBREAK);
end;

procedure Tmf.AccordListMeasureItem(Control: TWinControl; Index: Integer;
  var Height: Integer);
var
 k : integer;
begin
  with (Control as TListBox).Canvas do
  begin
   Font.Size := 12;
   Font.Height := -16;
   Height := 20;
   k := TextWidth(Chr(149) + ' ' + (Control as TListBox).Items[Index]);
   while K > (Control as TListBox).Width do
   begin
    k := k - (Control as TListBox).Width;
    Height:=Height+20;
   end;
  end;
end;

procedure Tmf.ListView1DblClick(Sender: TObject);
var
 F : TFileStream;
 len, i, Counter : Integer;
 s, IP, SerName, ServerName, MainPort1, MainPort2, FName, TName : string;
 buffer : PChar;
 Registry:TMyStream;
 found : boolean;

function LoadParams(Cap : string) : boolean;

begin
   IP := '';
   try
    Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cf2',fmOpenRead);

    found := false;
    while Registry.Position < Registry.Size do
     begin
      SerName := Registry.ReadString;
      IP := Registry.ReadString;
      ServerName := Registry.ReadString;
      MainPort1 := Registry.ReadString;
      MainPort2 := Registry.ReadString;
      if SerName = Cap then
       begin
        found := true;
        break;
       end;
     end;
    Registry.Free;
   except
    Screen.Cursor := crDefault;
    ShowMessageD('Не установлены параметры удаленного тестирования.',2);
    Result := False;
    Exit;
   end;

   ClientSocket.Address := '';
   ClientTestSocket.Address := '';
   ClientShablonSocket.Address := '';
   ClientSocket1.Address := '';
   ClientSocket2.Address := '';
   ClientSocket3.Address := '';
   ClientSocket4.Address := '';
   AbortSocket.Address := '';
   ClientSocket.Host := '';
   ClientTestSocket.Host := '';
   ClientShablonSocket.Host := '';
   ClientSocket1.Host := '';
   ClientSocket2.Host := '';
   ClientSocket3.Host := '';
   ClientSocket4.Host := '';
   AbortSocket.Host := '';

   if Found then
   begin
    if IP <> '' then
    begin
     ClientSocket.Address := IP;
     ClientTestSocket.Address := IP;
     ClientShablonSocket.Address := IP;
     ClientSocket1.Address := IP;
     ClientSocket2.Address := IP;
     ClientSocket3.Address := IP;
     ClientSocket4.Address := IP;
     AbortSocket.Address := IP;
    end
    else
    begin
     ClientSocket.Host := Trim(ServerName);
     ClientTestSocket.Host := Trim(ServerName);
     ClientShablonSocket.Host := Trim(ServerName);
     ClientSocket1.Host := Trim(ServerName);
     ClientSocket2.Host := Trim(ServerName);
     ClientSocket3.Host := Trim(ServerName);
     ClientSocket4.Host := Trim(ServerName);
     AbortSocket.Host := Trim(ServerName);
    end;
    ClientSocket.Port := StrToInt(MainPort1);
    ClientTestSocket.Port := StrToInt(MainPort1);
    ClientShablonSocket.Port := StrToInt(MainPort1);
    ClientSocket1.Port := StrToInt(MainPort1);
    ClientSocket2.Port := StrToInt(MainPort1);
    ClientSocket3.Port := StrToInt(MainPort1);
    AbortSocket.Port := StrToInt(MainPort1);
    ClientSocket4.Port := StrToInt(MainPort2);
    Result := True;
   end
   else
    Result := False;
end;

begin
if ListView1.Selected <> nil then
 begin
 if ListView1.Selected.Index = 0 then
   N31Click(Sender)
 else
 if ListView1.Selected.Index = 1 then
   N27Click(Sender)
 else
 if ListView1.Selected.ImageIndex = 2 then
 begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmOpenRead);
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if ListView1.Selected.Subitems[0] = FName then
         break;
      end;
     F.Free;
     IsRemoteTest := False;
     if not OpenFile(FName,Counter,Sender) then
     begin
      ShowMessageD('Невозможно открыть тест, либо тестирование прервано пользователем.',2);
      LoadingForm.Close;
      Exit;
     end;
    except
      ShowMessageD('Невозможно открыть тест, либо тестирование прервано пользователем.',2);
    end;
 end
 else
 if ListView1.Selected.ImageIndex = 3 then
 begin
   if LoadParams(ListView1.Selected.Caption) then
     ClientSocket.Open;
{ end
 else
 if ListView1.Selected.ImageIndex = 4 then
 begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Remotedesktop.dat',fmOpenRead);
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if ListView1.Selected.Caption = FName then
         break;
      end;
     F.Free;
     IsRemoteTest := True;
     RemoteTest := TName;
     s := Copy(FName,Length(FName)-8,8);
     Screen.Cursor := crHourGlass;
     if LoadParams then
     begin
      if s = 'Зачетный' then
       ClientShablonSocket.Open
      else
       ClientTestSocket.Open;
     end;
    except
      ShowMessageD('Невозможно открыть тест.');
    end;}
  end;
 end;
end;

procedure Tmf.VideoButtonClick(Sender: TObject);
var
 F : TFileStream;
 QP1 : QP;
 TempString : array[0..5000] of char;
 ExeString : array[0..5000] of char;
 s,s1 : string;
begin
 QP1 := tv.Selected.Data;
 if QP1^.QuestionVideoLength > 0 then
 try
   FillChar( Si, SizeOf( Si ) , 0 );
   with Si do
   begin
    cb := SizeOf( Si);
    dwFlags := startf_UseShowWindow;
    wShowWindow := 4;
   end;
   if Length(QP1^.QuestionVideoName)>4 then
    s := ExtractFilePath(paramstr(0))+'tmpmedia'+Copy(QP1^.QuestionVideoName,Pos('.',QP1^.QuestionVideoName),4)
   else
    s := ExtractFilePath(paramstr(0))+'tmpmedia.avi';
   F := TFileStream.Create(s,fmCreate);
   F.Write(QP1^.QuestionVideoArray^,QP1^.QuestionVideoLength);
   F.Free;
   s1 := s;
   s := StrPas(ExeString) + ' ' + s;
   ShellExecute(0, Nil, PChar(s1), Nil, Nil, SW_NORMAL);
  except
   ShowMessageD('Не удалось открыть прикрепленный файл.',2);
  end;
end;

procedure Tmf.ListView1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_RETURN then
  ListView1DblClick(Sender);
end;

procedure Tmf.N9Click(Sender: TObject);
begin
 ToolButton4Click(Sender);
end;

procedure Tmf.N18Click(Sender: TObject);
var
 s, cur : String;
 i, len, Counter : Integer;
 ListItem : TListItem;
 F : TFileStream;
 buffer : PChar;
begin
   cur := GetCurrentDir;
   s := '';
   if OpenSaveFileDialog(tf.Handle, 'lts', 'Локальные тесты (*.lts)|*.lts', Cur,
    'Добавление локального теста...', s, True) then
    begin
     try
       F := TFileStream.Create(s,fmOpenRead);
       F.Read(len,4); // версия 2006
       if len<2006 then
         begin
          F.Free;
          Screen.Cursor := crDefault;
          ShowMessageD('Невозможно открыть тест (версия теста не поддерживается данной версией программы).',2);
          Exit;
         end;
        F.Seek(18,soFromCurrent);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TestName := StrPas(buffer);
        FreeMem(buffer);
        If Length(TestName)>30 then
          TestName := Copy(TestName,0,29)+'...';
        F.Read(i,4); // Уровень сложности
        F.Read(i,4); // Вид теста
        case i of
         0 :  TestName :=  TestName + ' (Зачетный)';
         1 :  TestName :=  TestName + ' (Проверочный)';
         2 :  TestName :=  TestName + ' (Обучение)';
        end;
        F.Free;
        if fileexists(ExtractFilePath(paramstr(0))+'Desktop.dat') then
           F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmOpenWrite)
         else
           F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmCreate);
        F.Position := F.Size;
        len := Length(s);
        F.Write(len,4);
        buffer := AllocMem(len+1);
        buffer := StrPCopy(buffer, s);
        F.Write(buffer^,Length(s));
        FreeMem(buffer);
        len := Length(TestName);
        F.Write(len,4);
        buffer := AllocMem(len+1);
        buffer := StrPCopy(buffer, TestName);
        F.Write(buffer^,Length(TestName));
        FreeMem(buffer);
        F.Free;
        ListItem := ListView1.Items.Add;
        ListItem.ImageIndex := 2;
        ListItem.Caption := TestName;
        ListItem.Subitems.Add(s);
     except
        ShowMessageD('Невозможно открыть тест (ошибка ввода-вывода).',2);
      end;
    end;
   SetCurrentDir(cur);
end;

procedure Tmf.N33Click(Sender: TObject);
begin
 N18Click(Sender);
end;

procedure Tmf.ListView1Click(Sender: TObject);
var
 F : TFileStream;
 len, i, Counter : Integer;
 s, Fname, TName : string;
 buffer : PChar;
 IP1, IP2, IP3, IP4, ServerName, MainPort1, MainPort2 : string;
 Registry:TMyStream;
begin
if ListView1.Selected <> nil then
 begin
  if ListView1.Selected.ImageIndex = 2 then
   begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmOpenRead);
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if ListView1.Selected.Subitems[0] = FName then
         break;
      end;
     Sbar.Panels[0].Text := FName;
     F.Free;
    except
    end;
  end
  else
  if ListView1.Selected.ImageIndex = 4 then
   begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Remotedesktop.dat',fmOpenRead);
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if ListView1.Selected.Subitems[0] = TName then
         break;
      end;
     F.Free;
     IP1 := '';
     try
      Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cfg',fmOpenRead);
      IP1:=Registry.ReadString;
      IP2:=Registry.ReadString;
      IP3:=Registry.ReadString;
      IP4:=Registry.ReadString;
      ServerName:=Registry.ReadString;
      MainPort1:=Registry.ReadString;
      MainPort2:=Registry.ReadString;
      Registry.Free;
     except
      Screen.Cursor := crDefault;
      ShowMessageD('Не установлены параметры удаленного тестирования.',2);
      Exit;
     end;
     if IP1 <> '' then
      s := IP1+'.'+IP2+'.'+IP3+'.'+IP4
     else
      s := Trim(ServerName);
      Sbar.Panels[0].Text := 'mctp://'+s+'/'+ExtractFileName(TName);
    except
    end;
  end
  else
  if ListView1.Selected.ImageIndex = 0 then
   Sbar.Panels[0].Text := 'Локальное тестирование'
  else
  if ListView1.Selected.ImageIndex = 1 then
   Sbar.Panels[0].Text := 'Просмотр результатов локального тестирования';
  if ListView1.Selected.ImageIndex = 3 then
   Sbar.Panels[0].Text := 'Удаленное тестирование через Internet';
 end;
end;

procedure Tmf.N20Click(Sender: TObject);
var
 F : TFileStream;
 F1 : TMemoryStream;
 len, i, Counter : Integer;
 FName, TName : string;
 buffer : PChar;
 buffer2 : PByte;
begin
if ListView1.Selected <> nil then
begin
  if ListView1.Selected.ImageIndex = 2 then
  begin
   if MessageBox(Application.Handle, PChar('Удалить выбранный тест из списка?'), PCHAR('Тестирование'), MB_YesNo) =
   IDYes then
    begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmOpenRead);
     F1 := TMemoryStream.Create;
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if ListView1.Selected.Subitems[0] <> FName then
         begin
          len := Length(FName);
          F1.Write(len,4);
          buffer := AllocMem(len+1);
          buffer := StrPCopy(buffer, FName);
          F1.Write(buffer^,Length(FName));
          FreeMem(buffer);
          len := Length(TName);
          F1.Write(len,4);
          buffer := AllocMem(len+1);
          buffer := StrPCopy(buffer, TName);
          F1.Write(buffer^,Length(TName));
          FreeMem(buffer);
         end;
      end;
     F.Free;
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmCreate);
     F1.Position := 0;
     GetMem(buffer2,f1.Size);
     F1.Read(buffer2^,f1.Size);
     F.Write(buffer2^,f1.Size);
     FreeMem(buffer2);
     F.Free;
     ListView1.Selected.Delete;
     Sbar.Panels[0].Text := '';
    except
    end;
   end;
  end
  else
  if ListView1.Selected.ImageIndex = 4 then
  begin
   if MessageBox(Application.Handle, PChar('Удалить выбранный тест из списка?'), PCHAR('Тестирование'), MB_YesNo) =
   IDYes then
    begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Remotedesktop.dat',fmOpenRead);
     F1 := TMemoryStream.Create;
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if ListView1.Selected.Subitems[0] <> TName then
         begin
          len := Length(FName);
          F1.Write(len,4);
          buffer := AllocMem(len+1);
          buffer := StrPCopy(buffer, FName);
          F1.Write(buffer^,Length(FName));
          FreeMem(buffer);
          len := Length(TName);
          F1.Write(len,4);
          buffer := AllocMem(len+1);
          buffer := StrPCopy(buffer, TName);
          F1.Write(buffer^,Length(TName));
          FreeMem(buffer);
         end;
      end;
     F.Free;
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Remotedesktop.dat',fmCreate);
     F1.Position := 0;
     GetMem(buffer2,f1.Size);
     F1.Read(buffer2^,f1.Size);
     F.Write(buffer2^,f1.Size);
     FreeMem(buffer2);
     F.Free;
     ListView1.Selected.Delete;
     Sbar.Panels[0].Text := '';
    except
    end;
   end;
  end;
 end;
end;

procedure Tmf.N34Click(Sender: TObject);
begin
  N20Click(Sender);
end;

procedure Tmf.ListView1InfoTip(Sender: TObject; Item: TListItem;
  var InfoTip: String);
var
 F : TFileStream;
 len, i, Counter : Integer;
 s, FName, TName : string;
 buffer : PChar;
 IP1, IP2, IP3, IP4, ServerName, MainPort1, MainPort2 : string;
 Registry:TMyStream;
begin
  if Item.ImageIndex = 4 then
   begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Remotedesktop.dat',fmOpenRead);
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if Item.Subitems[0] = TName then
         break;
      end;
     F.Free;
     IP1 := '';
     try
      Registry:=TMyStream.Create(ExtractFilePath(paramstr(0))+'tcpip.cfg',fmOpenRead);
      IP1:=Registry.ReadString;
      IP2:=Registry.ReadString;
      IP3:=Registry.ReadString;
      IP4:=Registry.ReadString;
      ServerName:=Registry.ReadString;
      MainPort1:=Registry.ReadString;
      MainPort2:=Registry.ReadString;
      Registry.Free;
     except
      Screen.Cursor := crDefault;
      ShowMessageD('Не установлены параметры удаленного тестирования.',2);
      Exit;
     end;
     if IP1 <> '' then
      s := IP1+'.'+IP2+'.'+IP3+'.'+IP4
     else
      s := Trim(ServerName);
      InfoTip := 'mctp://'+s+'/'+ExtractFileName(TName);
    except
    end;
  end
  else
  if Item.ImageIndex = 2 then
   begin
    try
     F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmOpenRead);
     F.Position := 0;
     i := 1;
     while F.Position < F.Size do
      begin
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        FName := StrPas(buffer);
        FreeMem(buffer);
        F.Read(len,4);
        buffer := AllocMem(len+1);
        buffer[len] := Chr(0);
        F.Read(buffer^,len);
        buffer[len]:=Chr(0);
        TName := StrPas(buffer);
        FreeMem(buffer);
        Inc(i);
        if Item.Subitems[0] = FName then
         break;
      end;
     InfoTip := FName;
     F.Free;
    except
    end;
  end
  else
  if Item.ImageIndex = 0 then
   InfoTip := 'Локальное тестирование'
  else
  if Item.ImageIndex = 1 then
   InfoTip := 'Просмотр результатов локального тестирования';
  if Item.ImageIndex = 3 then
   InfoTip := 'Удаленное тестирование через Internet';
end;

procedure Tmf.N38Click(Sender: TObject);
var
   rs: TResourceStream;
   hh : tHandle;
begin
   if About3Form = nil then
    About3Form := TAbout3Form.Create(Application);
   hh := LoadLibrary('RESMTEST.DLL');
   if hh <= BadDllLoad then
     ShowMessageD('Невозможно загрузить библиотеку.',2)
   else
   begin
    rs := TResourceStream.Create(hh, 'TESTDOC', RT_RCDATA);
    try
     About3Form.Caption := 'О партнерах';
     About3Form.RO.PlainText := False;
     About3Form.RO.Lines.LoadFromStream(rs);
     About3Form.ShowModal;
    finally
     rs.Free;
    end;
    FreeLibrary(hh);
   end;
end;

procedure Tmf.VariantBoxMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  VariantBoxClick(Sender);
end;

procedure Tmf.VariantBoxClick(Sender: TObject);
var
 AllBall : integer;
 NRC : integer;
 i,k,j : integer;
 varname : array [1..5000] of char;
 VariantCount,VariantLen : longint;
 ps : array [0..2000] of Boolean;
 m,ls : TMemoryStream;
 QP1 : QP;
 VariantBall,Ball : Real;
 Score : byte;
 StrList : TStringList;
begin
 if VariantBox.ItemIndex<>-1 then
   VariantBox.Selected[VariantBox.ItemIndex] := not VariantBox.Selected[VariantBox.ItemIndex];
 QP1 := tv.Selected.Data;
 ls := TMemoryStream.Create;

 if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
 GetMem(QP1^.AnsUserBinArray,VariantBox.Items.Count);
 QP1^.AnsUserLength := VariantBox.Items.Count;

 if QP1^.EditAnsBall = 1 then
 begin
   K := 0;
   if (QP1^.Min + QP1^.Limit) = 1 then
   begin
      for i:=0 to VariantBox.Items.Count-1 do
       if i = VariantBox.ItemIndex then
        ps[i] := True
       else
       begin
        VariantBox.Selected[i]:=False;
        ps[i] := False;
       end;
   end
   else
   begin
    K := 0;
    for i:=0 to VariantBox.Items.Count-1 do
    begin
     ps[i] := VariantBox.Selected[i];
     if VariantBox.Selected[i] then Inc(K);
    end;
    if K > (QP1^.Min + QP1^.Limit) then
     begin
       VariantBox.Selected[VariantBox.ItemIndex]:=False;
       ps[VariantBox.ItemIndex] := False;
     end;

{   for i:=0 to VariantBox.Items.Count-1 do
    begin
    if VariantBox.Selected[i] then
     begin
      inc(K);
      ps[i] := True;
      if K > (QP1^.Min + QP1^.Limit) then
      begin
       VariantBox.Selected[i]:=False;
       ps[i] := False;
      end;
     end
     else
      ps[i] := False;
    end;}
   end;
   VariantBox.Update;
 end
 else
 if (QP1^.Min + QP1^.Limit) = 1 then
  begin
   for i:=0 to VariantBox.Items.Count-1 do
    if i = VariantBox.ItemIndex then ps[i] := True
    else begin VariantBox.Selected[i]:=False; ps[i] := False; end;
   VariantBox.Update;
  end
 else
  for i:=0 to VariantBox.Items.Count-1 do
   ps[i]:=VariantBox.Selected[i];

 ls.Position := 0;
 ls.Write(ps,VariantBox.Items.Count);
 ls.Position := 0;
 ls.Read(QP1^.AnsUserBinArray^,QP1^.AnsUserLength);
 ls.Free;

 {вычисление бальной стоимости вопроса для списка вариантов с несколькими правильными вариантами}
 m := TMemoryStream.Create;
 StrList := TStringList.Create;
 m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
 m.Position := 0;
 m.Read(VariantCount,4);
 for i:=0 to VariantCount-1 do
 begin
   m.Read(VariantLen,4);
   m.Read(varname,VariantLen);
   m.Read(Score,1);
   if VariantBox.Selected[i] then
     StrList.Add(VariantBox.Items[i]);
 end;

 QP1^.AnswerStream.Clear;
 QP1^.AnswerStream.Position := 0;
 StrList.SaveToStream(QP1^.AnswerStream);

 QP1^.AnsUserUpdate := StrList.Count > 0;
 if QP1^.AnsUserUpdate then
 begin
  tv.Selected.ImageIndex := 1;
  tv.Selected.SelectedIndex := 1;
 end
 else
 begin
  tv.Selected.ImageIndex := 0;
  tv.Selected.SelectedIndex := 0;
 end;
 StrList.Free;

 m.Position := 0;
 m.Read(VariantCount,4);
 Ball := 0;
 AllBall := 0;
 NRC := 0;
 QP1^.AnsUserBall := 0;

 for i:=0 to VariantCount-1 do
 begin
   m.Read(VariantLen,4);
   m.Read(varname,VariantLen);
   m.Read(Score,1);
   AllBall := AllBall + Score;
   if (Score <> 0) and (VariantBox.Selected[i]) then
    Ball := Ball + Score;
   if (Score = 0) and (VariantBox.Selected[i]) then
    NRC := NRC + 1;
 end;
 m.Read(QP1^.Limit,4);
 m.Free;

 if (QP1^.EditAnsBall = 1) and (NRC <= QP1^.Limit) then
   QP1^.AnsUserBall := Ball
 else
 if Ball = AllBall then
  if NRC <= QP1^.Limit then
    QP1^.AnsUserBall := QP1^.Score;
end;

procedure Tmf.VariantBoxKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_SPACE then
  VariantBoxClick(Sender)
 else
 if Key = VK_RIGHT then
  ToolButton2Click(Sender)
 else
 if Key = VK_LEFT then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.VariantBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  VariantBoxClick(Sender);
end;

procedure Tmf.VariantBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_SPACE then
  VariantBoxClick(Sender);
end;

procedure Tmf.N1Click(Sender: TObject);
 begin
   if About4Form = nil then About4Form :=TAbout4Form.Create(Application);
   About4Form.ShowModal;
end;

procedure Tmf.Timer2Timer(Sender: TObject);
var
 QP1 : QP;
 s : string;
 hour, atime : word;
begin
 if LimitTime=1 then
 begin
  if tv.Selected.ImageIndex = 2  then
   QP1 := tv.items[oldindex].Data
  else
   QP1 := tv.Selected.Data;
  if QP1^.QuestionTime > 0 then
   Dec(QP1^.QuestionTime)
  else
  begin
     Digit5.Value := '0';
     Digit6.Value := '0';
     ShowQuestion := true;
     ToolButton2Click(Sender);
     Exit;
  end;
  if int(QP1^.QuestionTime/60)=0 then
  begin
   s := IntToStr(QP1^.QuestionTime);
   if length(s)=1 then
    Digit5.Value := '0'
   else
    Digit5.Value := s[length(s)-1];
   Digit6.Value := s[length(s)];;
  end
  else
  begin
   hour := 0;
   atime := QP1^.QuestionTime;
   while atime > 60 do
    begin
      inc(hour);
      atime := atime - 60;
    end;
   s := IntToStr(atime-1);
   if length(s)=1 then
    Digit5.Value := '0'
   else
    Digit5.Value := s[length(s)-1];
   Digit6.Value := s[length(s)];;
  end;
  if QP1^.QuestionTime = 0 then
  begin
    ShowQuestion := true;
    ToolButton2Click(Sender);
  end;
 end
 else
 begin
  if sectime > 0 then Dec(sectime);
  if int(sectime/60)=0 then
  begin
   s := IntToStr(sectime);
   if length(s)=1 then
    Digit5.Value := '0'
   else
    Digit5.Value := s[length(s)-1];
   Digit6.Value := s[length(s)];;
  end
  else
  begin
   hour := 0;
   atime := sectime;
   while atime > 60 do
    begin
      inc(hour);
      atime := atime - 60;
    end;
   s := IntToStr(atime-1);
   if length(s)=1 then
    Digit5.Value := '0'
   else
    Digit5.Value := s[length(s)-1];
   Digit6.Value := s[length(s)];;
  end;
 end;
end;

procedure SetNodeState(node :TTreeNode; Flags: Integer);
var
  tvi: TTVItem;
begin
  FillChar(tvi, Sizeof(tvi), 0);
  tvi.hItem := node.ItemID;
  tvi.mask := TVIF_STATE;
  tvi.stateMask := TVIS_BOLD or TVIS_CUT;
  tvi.state := Flags;
  TreeView_SetItem(node.Handle, tvi);
end;

procedure Tmf.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 FS : Integer;
 F : TFileStream;
 buf : PByte;
 glen, j, cnt, i, len : integer;
 b : byte;
 tn : TTreeNode;
 buffer : PChar;
begin
{
 len := Socket.ReceiveLength;
 // Вдруг что то осталось в буфере
 if Len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
    LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
   end;
   F.Free;
  except
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   Screen.Cursor := crDefault;
   AbortSocket.Open;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;}

LoadingForm.Close;
LoadingForm.Button1.Enabled := False;
Screen.Cursor := crDefault;

try
 F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmOpenRead);
 FS := F.Size;
 F.Free;
except
 LoadingForm.Close;
 LoadingForm.Button1.Enabled := False;
 Screen.Cursor := crDefault;
 AbortSocket.Open;
 Exit;
end;

if FS = OriginalLength then
 begin
  Screen.Cursor := crHourGlass;
  try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmOpenRead);
  F.Read(cnt,4);
  LoadTestForm.tv.Items.Clear;
  for i:=0 to Cnt-1 do
  begin
   F.Read(b,1);
   case b of
   0 : begin
        New(TL);
        TL^.Root := 0;
        F.Read(TL^.ID,4);
        F.Read(j,4);
        TL^.Name := AllocMem(j+1);
        F.Read(TL^.Name^,j);
        F.Read(j,4);
        TL^.Path := AllocMem(j+1);
        F.Read(TL^.Path^,j);
        F.Read(j,4);
        TL^.NameBuffer := AllocMem(j+1);
        F.Read(TL^.NameBuffer^,j);
        F.Read(TL^.Parent,4);
        F.Read(TL^.TestType,1);
        F.Read(TL^.Enabled,1);
        F.Read(TL^.QuestionsCount,4);
        F.Read(TL^.TestTime,4);
        F.Read(TL^.TestSize,4);
        F.Read(TL^.IsTest,1);
        F.Read(glen,4);
        if glen>0 then
        begin
         F.Read(j,4);
         buffer := AllocMem(j+1);
         F.Read(buffer^,j);
         TL^.Groups := StrPas(buffer);
         FreeMem(buffer);
         F.Read(j,4);
         buffer := AllocMem(j+1);
         F.Read(buffer^,j);
         TL^.Groups2 := StrPas(buffer);
         FreeMem(buffer);
        end;

        if TL^.IsTest = 1 then
        begin
         tn := LoadTestForm.tv.Items.AddChildObject(LoadTestForm.tv.Items[TL^.Parent],
         Copy(TL^.Name,1,Length(TL^.Name)-4),TL);
         case TL^.TestType of
          0 :  tn.ImageIndex := 1;
          1 :  tn.ImageIndex := 4;
          2 :  tn.ImageIndex := 5;
         end;
         case TL^.TestType of
          0 :  tn.SelectedIndex := 1;
          1 :  tn.SelectedIndex := 4;
          2 :  tn.SelectedIndex := 5;
         end;
         // Окончился период тестирования
         if TL^.Enabled=1 then
         begin
          tn.ImageIndex := 3;
          tn.SelectedIndex := 3;
         end;
        end
        else
        begin
         tn := LoadTestForm.tv.Items.AddChildObject(LoadTestForm.tv.Items[TL^.Parent],
         TL^.Name,TL);
         tn.ImageIndex := 0;
         tn.SelectedIndex := 0;
        end;
       end;
   1 : begin
        New(TL);
        TL^.Root := 1;
        F.Read(TL^.ID,4);
        F.Read(j,4);
        TL^.Name := AllocMem(j+1);
        F.Read(TL^.Name^,j);
        F.Read(j,4);
        TL^.Path := AllocMem(j+1);
        F.Read(TL^.Path^,j);
        F.Read(j,4);
        TL^.NameBuffer := AllocMem(j+1);
        F.Read(TL^.NameBuffer^,j);
        F.Read(TL^.Parent,4);
        F.Read(TL^.TestType,1);
        F.Read(TL^.Enabled,1);
        F.Read(TL^.QuestionsCount,4);
        F.Read(TL^.TestTime,4);
        F.Read(TL^.TestSize,4);
        F.Read(TL^.IsTest,1);
        F.Read(glen,4);
        tn := LoadTestForm.tv.Items.AddObject(nil,TL^.Name,TL);
        tn.ImageIndex := 2;
        tn.SelectedIndex := 2;
       end;
   end;
  end;
  F.Free;
  LoadTestForm.Caption := 'Выберите тест';
  Screen.Cursor := crDefault;
  if LoadTestForm.ShowModal = mrOk then
   begin
    LP := LoadTestForm.tv.Selected.Data;
    RemoteTest := StrPas(LP^.Path);
    IsRemoteTest := true;
    // Для зачетного теста загрузим шаблон и справочники
    Screen.Cursor := crHourGlass;
    DeleteFile(ExtractFilePath(paramstr(0))+'tree.bin');
    if LP^.TestType = 0 then
     ClientShablonSocket.Open
    else
     ClientTestSocket.Open;
   end
   else
    DeleteFile(ExtractFilePath(paramstr(0))+'tree.bin');
  except
   Screen.Cursor := crDefault;
   LoadingForm.Button1.Enabled := False;
   ShowMessageD('Ошибка при чтении дерева тестов.',2);
  end;
end
else
begin
   Screen.Cursor := crDefault;
   LoadingForm.Button1.Enabled := False;
   LoadingForm.Close;
   ShowMessageD('Ошибка подключения к серверу.',2);
end;
end;


procedure TTreeThread.ClientExecute;
begin
end;

procedure Tmf.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
var
 buf : PByte;
 F : TFileStream;
 j, cnt, i, len : integer;
 b : byte;
begin
{if SocketSendLength then
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 RecievedLength := len - 4;
 if len <> - 1 then
 begin
  try
   Socket.ReceiveBuf(OriginalLength,4);
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmCreate);
   if Len > 4 then
   begin
    while len <> - 1 do
    begin
     GetMem(buf,len+1);
     len := Socket.ReceiveBuf(buf^,len);
     RecievedLength := RecievedLength + len;
     F.Seek(0,soFromEnd);
     F.Write(buf^,len);
     FreeMem(buf);
     LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
    end;
   end;
   F.Free;
  except
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   AbortSocket.Open;
   Exit;
  end;
 end;
end
else
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 if len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'tree.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
    LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
   end;
   F.Free;
  except
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   AbortSocket.Open;
   Exit;
  end;
 end;
end;}
end;

procedure Tmf.ClientTestSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 FSize, j, cnt, i, len : integer;
 Stream : TWinSocketStream;
 Buffer : array[0 .. 1023] of Char;
begin
 if LoadingForm=nil then
  LoadingForm := TLoadingForm.Create(Application);
 LoadingForm.Caption := 'Загрузка теста c сервера...';
 LoadingForm.Panel1.Caption := '';
 LoadingForm.Button1.Enabled := true;
 LoadingForm.Show;
 LoadingForm.Repaint;
 LoadingForm.PB.Position := 0;
 SocketSendLength := True;
 RecievedLength := 0;
 OriginalLength := 0;
 Socket.SendText(RemoteTest);

 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmCreate);
  F.Free;
  FSize := 0;
 except
  LoadingForm.Button1.Enabled := False;
  LoadingForm.Close;
  Screen.Cursor := crDefault;
  ShowMessageD('Невозможно создать временный файл.',2);
  Exit;
 end;

  while Socket.Connected do
  begin
    Application.ProcessMessages;
    try
      Stream := TWinSocketStream.Create(Socket, 60000);
      try
        FillChar(Buffer, 1024, 0); { initialize the buffer }
        if Stream.WaitForData(60000) then
        begin
         if SocketSendLength then
          begin
            SocketSendLength := False;
            if Stream.Read(OriginalLength,4) = 0 then { if can’t read in 60 seconds }
            begin
             Screen.Cursor := crDefault;
             LoadingForm.Button1.Enabled := False;
             LoadingForm.Close;
             Socket.Close;
            end;
          end
          else
          begin
            SocketSendLength := False;
            if  FSize + 1024 < OriginalLength then
             len := 1024
            else
             len := OriginalLength - FSize;
            if Stream.Read(Buffer, len) = 0 then { if can’t read in 60 seconds }
            begin
             Screen.Cursor := crDefault;
             LoadingForm.Button1.Enabled := False;
             LoadingForm.Close;
             Socket.Close;
            end;
            { now process the request }
            if len > 0 then
            begin
             F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmOpenWrite);
             F.Seek(0,soFromEnd);
             F.Write(Buffer,len);
             FSize := F.Size;
             F.Free;
            end;
            LoadingForm.PB.Position := Trunc(FSize/OriginalLength*100);
          end;
        end
        else
          Socket.Close;
      finally
        Stream.Free;
      end;
    except
      Screen.Cursor := crDefault;
      LoadingForm.Button1.Enabled := False;
      LoadingForm.Close;
      ShowMessageD('Ошибка при передаче данных. Возможно необходимо уменьшить размер пакета данных.',2);
    end;
  end;

end;

procedure Tmf.ClientTestSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 FS, Counter, len : Integer;
 F : TFileStream;
 buf : PByte;
begin
{ len := Socket.ReceiveLength;

 // Вдруг что то осталось в буфере
 if Len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
    LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
   end;
   F.Free;
  except
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   AbortSocket.Open;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;}

 Screen.Cursor := crDefault;
 LoadingForm.Close;
 LoadingForm.Button1.Enabled := False;
 IsRemoteTest := True;

 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmOpenRead);
  FS := F.Size;
  F.Free;
 except
  Screen.Cursor := crDefault;
  LoadingForm.Close;
  LoadingForm.Button1.Enabled := False;
  AbortSocket.Open;
  ShowMessageD('Передача данных прошла некорректно, либо тестирование прервано.',2);
  Exit;
 end;

 if FS = OriginalLength then
 begin
  if not OpenFile(ExtractFilePath(paramstr(0))+'remotetest.lts',Counter,Sender) then
   begin
    Screen.Cursor := crDefault;
    LoadingForm.Close;
    LoadingForm.Button1.Enabled := False;
    AbortSocket.Open;
    ShowMessageD('Передача данных прошла некорректно, либо тестирование прервано.',2);
    Exit;
   end;
  try
   DeleteFile(ExtractFilePath(paramstr(0))+'remotetest.lts');
  except
  end;
 end
 else
 begin
   Screen.Cursor := crDefault;
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   AbortSocket.Open;
   ShowMessageD('Передача данных прервана, либо прошла некорректно...',1);
   try
    DeleteFile(ExtractFilePath(paramstr(0))+'remotetest.lts');
   except
   end;
 end;
end;

procedure Tmf.ClientTestSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
 LoadingForm.Close;
 LoadingForm.Button1.Enabled := False;
 Screen.Cursor := crDefault;
 AbortSocket.Open;
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.ClientTestSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
 buf : PByte;
 F : TFileStream;
 FS, j, cnt, i, len : integer;
 b : byte;
 Counter : Integer;
begin
{
if SocketSendLength then
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 RecievedLength := len - 4;
 if len <> - 1 then
 begin
  try
   Socket.ReceiveBuf(OriginalLength,4);
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmCreate);
   if Len > 4 then
   begin
    while len <> -1 do
    begin
     GetMem(buf,len+1);
     len := Socket.ReceiveBuf(buf^,len);
     RecievedLength := RecievedLength + len;
     F.Seek(0,soFromEnd);
     F.Write(buf^,len);
     FreeMem(buf);
     LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
    end;
   end;
   F.Free;
   LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
  except
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   AbortSocket.Open;
   Exit;
  end;
 end;
end
else
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 if len <> -1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmOpenWrite);
   while len <> -1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
    LoadingForm.PB.Position := Trunc(RecievedLength/OriginalLength*100);
   end;
   F.Free;
  except
   LoadingForm.Close;
   LoadingForm.Button1.Enabled := False;
   AbortSocket.Open;
   Exit;
  end;
 end;
end;}

{try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'remotetest.lts',fmOpenRead);
  FS := F.Size;
  F.Free;
except
  AbortSocket.Open;
  ShowMessageD('Передача данных прошла некорректно, либо тестирование прервано.');
  Exit;
end;

if FS = OriginalLength then
 begin
  if not OpenFile(ExtractFilePath(paramstr(0))+'remotetest.lts',Counter,Sender) then
   begin
    Screen.Cursor := crDefault;
    LoadingForm.Close;
    LoadingForm.Button1.Enabled := False;
    ClientTestSocket.Close;
    AbortSocket.Open;
    Exit;
   end;
  try
   DeleteFile(ExtractFilePath(paramstr(0))+'remotetest.lts');
  except
  end;
 end;}

end;

procedure Tmf.ClientShablonSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 FSize, j, cnt, i, len : integer;
 Stream : TWinSocketStream;
 Buffer : array[0 .. 1023] of Char;
begin
 SocketSendLength := True;
 RecievedLength := 0;
 OriginalLength := 0;
 Socket.SendText('shablon');

 Screen.Cursor := crHourGlass;
 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmCreate);
  F.Free;
  FSize := 0;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Невозможно создать временный файл.',2);
  Exit;
 end;

 while Socket.Connected do
  begin
    try
      Stream := TWinSocketStream.Create(Socket, 60000);
      try
        FillChar(Buffer, 1024, 0); { initialize the buffer }
        if Stream.WaitForData(60000) then
        begin
         if SocketSendLength then
          begin
            SocketSendLength := False;
            if Stream.Read(OriginalLength,4) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
          end
          else
          begin
            SocketSendLength := False;
            if  FSize + 1024 < OriginalLength then
             len := 1024
            else
             len := OriginalLength - FSize;
            if Stream.Read(Buffer, len) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
            { now process the request }
            if len > 0 then
            begin
             F := TFileStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmOpenWrite);
             F.Seek(0,soFromEnd);
             F.Write(Buffer,len);
             FSize := F.Size;
             F.Free;
            end;
          end;
        end
        else
          Socket.Close;
      finally
        Stream.Free;
      end;
    except
      Screen.Cursor := crDefault;
      ShowMessageD('Ошибка при передаче данных. Возможно необходимо уменьшить размер пакета данных.',2);
    end;
  end;

end;

procedure Tmf.ClientShablonSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 len, FS : Integer;
 buf : PByte;
 MyFioForm : TFIOForm;
begin
{ len := Socket.ReceiveLength;
 // Вдруг что то осталось в буфере
 if Len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
LoadingForm.Close;}

Screen.Cursor := crDefault;
try
 F := TFileStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmOpenRead);
 FS := F.Size;
 F.Free;
except
 ShowMessageD('Передача данных прошла некорректно. Ошибка чтения данных.',2);
 Exit;
end;
if FS = OriginalLength then
   ClientSocket1.Open
else
begin
   Screen.Cursor := crDefault;
   LoadingForm.Close;
   ShowMessageD('Передача данных прошла некорректно. Возможно необходимо уменьшить размер пакета данных.',2);
end;
end;

procedure Tmf.ClientShablonSocketError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
 LoadingForm.Close;
 Screen.Cursor := crDefault;
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.ClientShablonSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
 buf : PByte;
 F : TFileStream;
 j, cnt, i, len : integer;
 b : byte;
begin
{if SocketSendLength then
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 RecievedLength := len - 4;
 if len<>0 then
 begin
  try
   Socket.ReceiveBuf(OriginalLength,4);
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmCreate);
   if Len > 4 then
   begin
    while len <> - 1 do
    begin
     GetMem(buf,len+1);
     len := Socket.ReceiveBuf(buf^,len);
     RecievedLength := RecievedLength + len;
     F.Seek(0,soFromEnd);
     F.Write(buf^,len);
     FreeMem(buf);
    end;
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end
else
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 if len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'shablon.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end;}
end;

procedure Tmf.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 FSize, j, cnt, i, len : integer;
 Stream : TWinSocketStream;
 Buffer : array[0 .. 1023] of Char;
begin
 SocketSendLength := True;
 RecievedLength := 0;
 OriginalLength := 0;
 Socket.SendText('userdata1');

 Screen.Cursor := crHourGlass;
 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmCreate);
  F.Free;
  FSize := 0;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Невозможно создать временный файл.',2);
  Exit;
 end;

 while Socket.Connected do
  begin
    try
      Stream := TWinSocketStream.Create(Socket, 60000);
      try
        FillChar(Buffer, 1024, 0); { initialize the buffer }
        if Stream.WaitForData(60000) then
        begin
         if SocketSendLength then
          begin
            SocketSendLength := False;
            if Stream.Read(OriginalLength,4) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
          end
          else
          begin
            SocketSendLength := False;
            if  FSize + 1024 < OriginalLength then
             len := 1024
            else
             len := OriginalLength - FSize;
            if Stream.Read(Buffer, len) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
            { now process the request }
            if len > 0 then
            begin
             F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmOpenWrite);
             F.Seek(0,soFromEnd);
             F.Write(Buffer,len);
             FSize := F.Size;
             F.Free;
            end;
          end;
        end
        else
          Socket.Close;
      finally
        Stream.Free;
      end;
    except
      Screen.Cursor := crDefault;
      ShowMessageD('Ошибка при передаче данных. Возможно необходимо уменьшить размер пакета данных.',2);
    end;
  end;
end;

procedure Tmf.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 len, FS : Integer;
 buf : PByte;
begin
{
 len := Socket.ReceiveLength;
 // Вдруг что то осталось в буфере
 if Len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;}

LoadingForm.Close;
Screen.Cursor := crDefault;
try
 F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmOpenRead);
 FS := F.Size;
 F.Free;
except
 ShowMessageD('Передача данных прошла некорректно. Ошибка чтения данных.',2);
 Exit;
end;
if FS = OriginalLength then
 ClientSocket2.Open
else
begin
   Screen.Cursor := crDefault;
   LoadingForm.Close;
   ShowMessageD('Передача данных прошла некорректно. Возможно необходимо уменьшить размер пакета данных.',2);
end;
end;

procedure Tmf.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 LoadingForm.Close;
 Screen.Cursor := crDefault;
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
 buf : PByte;
 F : TFileStream;
 j, cnt, i, len : integer;
 b : byte;
begin
{if SocketSendLength then
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 RecievedLength := len - 4;
 if len <> - 1 then
 begin
  try
   Socket.ReceiveBuf(OriginalLength,4);
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmCreate);
   if Len > 4 then
   begin
    while len <> - 1 do
    begin
     GetMem(buf,len+1);
     len := Socket.ReceiveBuf(buf^,len);
     RecievedLength := RecievedLength + len;
     F.Seek(0,soFromEnd);
     F.Write(buf^,len);
     FreeMem(buf);
    end;
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end
else
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 if len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata1.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end;}
end;


procedure Tmf.ClientSocket2Connect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 FSize, j, cnt, i, len : integer;
 Stream : TWinSocketStream;
 Buffer : array[0 .. 1023] of Char;
begin
 SocketSendLength := True;
 RecievedLength := 0;
 OriginalLength := 0;
 Socket.SendText('userdata2');

 Screen.Cursor := crHourGlass;
 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmCreate);
  F.Free;
  FSize := 0;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Невозможно создать временный файл.',2);
  Exit;
 end;

 while Socket.Connected do
  begin
    try
      Stream := TWinSocketStream.Create(Socket, 60000);
      try
        FillChar(Buffer, 1024, 0); { initialize the buffer }
        if Stream.WaitForData(60000) then
        begin
         if SocketSendLength then
          begin
            SocketSendLength := False;
            if Stream.Read(OriginalLength,4) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
          end
          else
          begin
            SocketSendLength := False;
            if  FSize + 1024 < OriginalLength then
             len := 1024
            else
             len := OriginalLength - FSize;
            if Stream.Read(Buffer, len) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
            { now process the request }
            if len > 0 then
            begin
             F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmOpenWrite);
             F.Seek(0,soFromEnd);
             F.Write(Buffer,len);
             FSize := F.Size;
             F.Free;
            end;
          end;
        end
        else
          Socket.Close;
      finally
        Stream.Free;
      end;
    except
      Screen.Cursor := crDefault;
      ShowMessageD('Ошибка при передаче данных. Возможно необходимо уменьшить размер пакета данных.',2);
    end;
  end;
end;

procedure Tmf.ClientSocket2Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 len, FS : Integer;
 buf : PByte;
begin
{len := Socket.ReceiveLength;
 // Вдруг что то осталось в буфере
 if Len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;}

LoadingForm.Close;
Screen.Cursor := crDefault;
try
 F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmOpenRead);
 FS := F.Size;
 F.Free;
except
 ShowMessageD('Передача данных прошла некорректно. Ошибка чтения данных.',2);
 Exit;
end;
if FS = OriginalLength then
 ClientSocket3.Open
else
 begin
   Screen.Cursor := crDefault;
   LoadingForm.Close;
   ShowMessageD('Ошибка при передаче данных. Возможно необходимо уменьшить размер пакета данных.',2);
 end;
end;

procedure Tmf.ClientSocket2Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 LoadingForm.Close;
 Screen.Cursor := crDefault;
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.ClientSocket2Read(Sender: TObject; Socket: TCustomWinSocket);
var
 buf : PByte;
 F : TFileStream;
 j, cnt, i, len : integer;
 b : byte;
begin
{if SocketSendLength then
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 RecievedLength := len - 4;
 if len <> - 1 then
 begin
  try
   Socket.ReceiveBuf(OriginalLength,4);
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmCreate);
   if Len > 4 then
   begin
    while len <> - 1 do
    begin
     GetMem(buf,len+1);
     len := Socket.ReceiveBuf(buf^,len);
     RecievedLength := RecievedLength + len;
     F.Seek(0,soFromEnd);
     F.Write(buf^,len);
     FreeMem(buf);
    end;
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end
else
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 if len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata2.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end;}
end;

procedure Tmf.ClientSocket3Connect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 FSize, j, cnt, i, len : integer;
 Stream : TWinSocketStream;
 Buffer : array[0 .. 1023] of Char;
begin
 SocketSendLength := True;
 RecievedLength := 0;
 OriginalLength := 0;
 Socket.SendText('userdata3');

 Screen.Cursor := crHourGlass;
 try
  F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmCreate);
  F.Free;
  FSize := 0;
 except
  Screen.Cursor := crDefault;
  ShowMessageD('Невозможно создать временный файл.',2);
  Exit;
 end;

 while Socket.Connected do
  begin
    try
      Stream := TWinSocketStream.Create(Socket, 60000);
      try
        FillChar(Buffer, 1024, 0); { initialize the buffer }
        if Stream.WaitForData(60000) then
        begin
         if SocketSendLength then
          begin
            SocketSendLength := False;
            if Stream.Read(OriginalLength,4) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
          end
          else
          begin
            SocketSendLength := False;
            if  FSize + 1024 < OriginalLength then
             len := 1024
            else
             len := OriginalLength - FSize;
            if Stream.Read(Buffer, len) = 0 then { if can’t read in 60 seconds }
             Socket.Close;
            { now process the request }
            if len > 0 then
            begin
             F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmOpenWrite);
             F.Seek(0,soFromEnd);
             F.Write(Buffer,len);
             FSize := F.Size;
             F.Free;
            end;
          end;
        end
        else
          Socket.Close;
      finally
        Stream.Free;
      end;
    except
      Screen.Cursor := crDefault;
      ShowMessageD('Ошибка при передаче данных. Возможно необходимо уменьшить размер пакета данных.',2);
    end;
  end;
end;

procedure Tmf.ClientSocket3Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 F : TFileStream;
 len, FS : Integer;
 buf : PByte;
 MyFioForm : TFIOForm;
begin
{len := Socket.ReceiveLength;
 // Вдруг что то осталось в буфере
 if Len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;}

 LoadingForm.Close;
 Screen.Cursor := crDefault;
try
 F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmOpenRead);
 FS := F.Size;
 F.Free;
except
 ShowMessageD('Передача данных прошла некорректно. Ошибка чтения данных.',2);
 Exit;
end;
if FS = OriginalLength then
begin
    Screen.Cursor := crDefault;
    LoadingForm.Close;
    IsRemoteTest := True;
    MyFioForm := TFioForm.Create(Application);
    if MyFioForm.ShowModal <> mrOk then
    begin
     MyFioForm.Destroy;
     Caption := 'Тестирование';
     Exit;
    end
    else
    begin
     FamText := MyFioForm.FamEdit.Text;
     SubText := MyFioForm.Spr1Edit.Text;
     WorkText := MyFioForm.Spr2Edit.Text;
     MyFioForm.Destroy;
     Sbar.Panels[0].Text := FamText;
     ClientTestSocket.Open;
    end;
end
else
 begin
   Screen.Cursor := crDefault;
   LoadingForm.Close;
   ShowMessageD('Передача данных прошла некорректно. Возможно необходимо уменьшить размер пакета данных.',2);
 end;
end;

procedure Tmf.ClientSocket3Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 LoadingForm.Close;
 Screen.Cursor := crDefault;
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.ClientSocket3Read(Sender: TObject; Socket: TCustomWinSocket);
var
 buf : PByte;
 F : TFileStream;
 j, cnt, i, len : integer;
 b : byte;
begin
{if SocketSendLength then
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 RecievedLength := len - 4;
 if len <> - 1 then
 begin
  try
   Socket.ReceiveBuf(OriginalLength,4);
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmCreate);
   if Len > 4 then
   begin
    while len <> - 1 do
    begin
     GetMem(buf,len+1);
     len := Socket.ReceiveBuf(buf^,len);
     RecievedLength := RecievedLength + len;
     F.Seek(0,soFromEnd);
     F.Write(buf^,len);
     FreeMem(buf);
    end;
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end
else
begin
 SocketSendLength := False;
 len := Socket.ReceiveLength;
 if len <> - 1 then
 begin
  try
   F := TFileStream.Create(ExtractFilePath(paramstr(0))+'userdata3.bin',fmOpenWrite);
   while len <> - 1 do
   begin
    GetMem(buf,len+1);
    len := Socket.ReceiveBuf(buf^,len);
    RecievedLength := RecievedLength + len;
    F.Seek(0,soFromEnd);
    F.Write(buf^,len);
    FreeMem(buf);
   end;
   F.Free;
  except
   LoadingForm.Close;
   ShowMessageD('Ошибка передачи данных...');
   Exit;
  end;
 end;
end;}
end;

procedure Tmf.ClientSocket4Connect(Sender: TObject;
  Socket: TCustomWinSocket);
var
 M : TMemoryStream;
 MinLen, len : integer;
begin
 MS_OUT_FIFO := TMemoryStream.Create;
 MS_OUT_FIFO.LoadFromFile(ExtractFilePath(paramstr(0))+'result.bin');
 MS_OUT_FIFO.Position := 0;
 NeedSend:=MS_OUT_FIFO.Size;
 SendEnable := False;
 len := MS_OUT_FIFO.Size;
 M := TMemoryStream.Create;
 M.Write(len,4);
 M.Position := 0;
 SendEnable := True;
 Socket.SendBuf(M.Memory^,4);
 M.Free;
end;

procedure Tmf.ClientSocket4Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 Screen.Cursor := crDefault;
 SendEnable := False;
 NeedSend:=0;
 MS_OUT_FIFO.Free;
 ZZ.Free;
 IsRemoteTest := False;
end;

procedure Tmf.ClientSocket4Error(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 MS_OUT_FIFO.Free;
 ZZ.Free;
 SendEnable := False;
 Screen.Cursor := crDefault;
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.ClientSocket4Write(Sender: TObject;
  Socket: TCustomWinSocket);
var
 t, SendSize, last_pos : integer;
 Buffer : PByte;
begin
 if not SendEnable then exit;
 if (MS_OUT_FIFO=nil) and (NeedSend=0) then exit;  // если поток еще жив, значит нужно что-то отсылать...
 SendSize := Socket.SendBuf(MS_OUT_FIFO.Memory^,MS_OUT_FIFO.Size);
// Memo1.Lines.Add('Данные ' + IntToStr(SendSize));
 if SendSize = MS_OUT_FIFO.Size then
 if (not reptest) and (temporarytest) then
  else
  begin
   PersonalForm.Admin_entered := false;
   PersonalForm.M := TMemoryStream.Create;
   PersonalForm.ZZ := TMemoryStream.Create;
   MS_OUT_FIFO.Position := 0;
   MS_OUT_FIFO.SaveToStream(PersonalForm.M);
   ZZ.Position := 0;
   ZZ.SaveToStream(PersonalForm.ZZ);
   PersonalForm.M.Position := 0;
   PersonalForm.ZZ.Position := 0;
   PersonalForm.Ver := DB_Version;
   PersonalForm.ProtocolButton.Enabled := (Protocol = 1) and (AppOptions.RegDone);
   PersonalForm.ShowModal;
   PersonalForm.M.Free;
   PersonalForm.ZZ.Free;
  end;
 SendEnable := False;
 Socket.Close;
 ClientSocket4.Close;
end;

procedure Tmf.N40Click(Sender: TObject);
begin
 ShellExecute(0, Nil,
 PCHAR(ExtractFilePath(paramstr(0))+'manual\ками.pps'),
 Nil, Nil, SW_NORMAL);
end;

procedure Tmf.UpDownItem(Index : integer; Up : Boolean);
var
 i : integer;
 ls,m,sm : TMemoryStream;
 slarray : PByte;
 SeqLength : longint;
 Equal : Boolean;
 source,dest : byte;
 QP1 : QP;
 UpdateList : boolean;
begin
 UpdateList := False;
 if Index <> -1 then
 begin
 if Up then
 begin
  if Index-1 >= 0 then
   begin
    SeqListBox.Items.Move(Index,  Index-1);
    SeqListBox.ItemIndex := Index-1;
    UpdateList := True;
   end;
 end
 else
 if Index+1 <= SeqListBox.Items.Count-1 then
  begin
    SeqListBox.Items.Move(Index, Index+1);
    SeqListBox.ItemIndex := Index+1;
    UpdateList := True;
  end;
  if UpdateList then
  begin
    tv.Selected.ImageIndex := 1;
    tv.Selected.SelectedIndex := 1;
    QP1 := tv.Selected.Data;
    QP1^.AnsUserUpdate := True;
    ls := TMemoryStream.Create;
    SeqListBox.Items.SaveToStream(ls);
    if QP1^.AnsUserLength <> 0 then FreeMem(QP1^.AnsUserBinArray);
    GetMem(QP1^.AnsUserBinArray,ls.Size);
    QP1^.AnsUserLength := ls.Size;
    ls.Position := 0;
    ls.Read(QP1^.AnsUserBinArray^,ls.Size);

    {проверка на правильный ответ}
    m := TMemoryStream.Create;
    sm := TMemoryStream.Create;
    m.Write(QP1^.AnswerArray^,QP1^.AnswerLength);
    m.Position := 0;
    m.Read(SeqLength,4);
    GetMem(slarray,SeqLength);
    m.Read(slarray^,SeqLength);
    sm.Write(slarray^,SeqLength);
    sm.Position := 0; {sm - исходный список }
    ls.Position := 0; {ls - введенный список }
    Equal:=True;
    for i:=0 to ls.Size-1 do
    begin
     sm.Read(source,1);
     ls.Read(dest,1);
     if source<>dest then begin
      Equal:=False;
      break;
     end;
    end;
    {бальная стоимость}
    if Equal then
     QP1^.AnsUserBall:=QP1^.Score
    else
     QP1^.AnsUserBall:=0;
    FreeMem(slarray);
    ls.Free;
    m.Free;
    sm.Free;
   end;
  end;
end;

procedure Tmf.SeqListBoxMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 I, H : Integer;
begin
{ if Y<0 then
  exit;
 if Y > AxH then
  exit;
 if AxH > SeqListBox.Height then
  exit;
 if ssLeft in Shift then
 begin
  H := 0;
  SeqListBoxMeasureItem(SeqListBox,ItemSelected,H);
  if (Y > ItemSelected*20) and (Y < ItemSelected*20+H) then
  else
   begin
    UpDownItem(ItemSelected,Y<OldY);
    ItemSelected := SeqListBox.ItemIndex;
   end;
  OldY := Y;
 end;}
end;

procedure Tmf.SeqListBoxMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
 I, H : Integer;
begin
{ ItemSelected := SeqListBox.ItemIndex;
 OldY := Y;
 AxH := 0;
 for I :=0 to SeqListBox.Items.Count-1 do
 begin
  H := 0;
  SeqListBoxMeasureItem(SeqListBox,I,H);
  AxH := AxH+H;
 end;}
end;

procedure Tmf.N41Click(Sender: TObject);
begin
 if Access.ShowModal = mrOk then
   ShellExecute(Handle, Nil,
   PChar(ExtractFilePath(paramstr(0))+'users.exe'),
   PChar('dropdata'), PChar(ExtractFilePath(paramstr(0))),
   SW_NORMAL);
end;

procedure Tmf.Action1Execute(Sender: TObject);
var
 rs: TResourceStream;
 InfoForm1 : TInfoForm;
begin
 if not ListView1.Visible then
 begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  if TabControl1.Visible then
  begin
   if Label1.Caption = 'Выберите один вариант ответа' then
     rs := TResourceStream.Create(hinstance, 'VARIANT1', RT_RCDATA)
   else
     rs := TResourceStream.Create(hinstance, 'VARIANT2', RT_RCDATA);
  end
  else
  if TabControl4.Visible then
   rs := TResourceStream.Create(hinstance, 'LIST', RT_RCDATA)
  else
  if TabControl3.Visible then
   rs := TResourceStream.Create(hinstance, 'ACCORD', RT_RCDATA)
  else
  if TabControl2.Visible then
   rs := TResourceStream.Create(hinstance, 'KEYBOARD', RT_RCDATA);
  InfoForm1.ScrollBox1.AutoSize := True;
  rs.SaveToFile(ExtractFilePath(paramstr(0))+'prhelp.bmp');
  rs.Free;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'prhelp.bmp');
  DeleteFile(ExtractFilePath(paramstr(0))+'prhelp.bmp');
  InfoForm1.Caption := 'СТ "М-Тест" Помощь';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height + 5;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width + 5;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
 end
 else
 begin
  Application.HelpFile := ExtractFilePath(paramstr(0))+'PRTEST.HLP';
  Application.HelpCommand(HELP_CONTENTS, 0);
 end;
end;

procedure Tmf.ToolbarButton971Click(Sender: TObject);
begin
 Action1Execute(Sender);
end;

procedure Tmf.N44Click(Sender: TObject);
var
 InfoForm1 : TInfoForm;
begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  InfoForm1.ScrollBox1.AutoSize := True;
  InfoForm1.BorderStyle := bsDialog;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'svid.jpg');
  InfoForm1.Caption := 'СТ "М-Тест" Свидетельство о регистрации авторского права';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
end;

procedure Tmf.N46Click(Sender: TObject);
var
 InfoForm1 : TInfoForm;
begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  InfoForm1.ScrollBox1.AutoSize := True;
  InfoForm1.BorderStyle := bsDialog;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'mk.jpg');
  InfoForm1.Caption := 'СТ "М-Тест" Отзывы';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
end;

procedure Tmf.N48Click(Sender: TObject);
var
 InfoForm1 : TInfoForm;
begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  InfoForm1.ScrollBox1.AutoSize := True;
  InfoForm1.BorderStyle := bsDialog;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'gd.jpg');
  InfoForm1.Caption := 'СТ "М-Тест" Отзывы';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
end;

procedure Tmf.SeqListBoxKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_UP then
  ToolButton6Click(Sender)
 else
 if Key = VK_DOWN then
  ToolButton7Click(Sender)
 else
 if Key = VK_RIGHT then
  ToolButton2Click(Sender)
 else
 if Key = VK_LEFT then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.ALeftKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RIGHT then
  ToolButton2Click(Sender)
 else
 if Key = VK_LEFT then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.ACenterKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RIGHT then
  ToolButton2Click(Sender)
 else
 if Key = VK_LEFT then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.ARightKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_RIGHT then
  ToolButton2Click(Sender)
 else
 if Key = VK_LEFT then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.KbdEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_UP then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_DOWN then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton4.Enabled then
   ToolButton4Click(Sender);
 end;
end;

procedure Tmf.roKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_RIGHT then
  ToolButton2Click(Sender)
 else
 if Key = VK_LEFT then
 begin
  if ToolButton1.Enabled then
   ToolButton1Click(Sender);
 end
 else
 if Key = VK_ESCAPE then
 begin
  if ToolButton2.Enabled then
   ToolButton2Click(Sender);
 end;
end;

procedure Tmf.N50Click(Sender: TObject);
var
 F : TFileStream;
begin
 if MessageBox(Application.Handle, PChar('Удалить все тесты с рабочего стола?'), PCHAR('Тестирование'), MB_YesNo) =
   IDYes then
     begin
      try
       F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Desktop.dat',fmCreate);
       F.Free;
       F := TFileStream.Create(ExtractFilePath(paramstr(0))+'Remotedesktop.dat',fmCreate);
       F.Free;
      except
      end;
      Sbar.Panels[0].Text := '';
      InitDesktop;
     end;
end;

procedure Tmf.tvCollapsing(Sender: TObject; Node: TTreeNode;
  var AllowCollapse: Boolean);
begin
 AllowCollapse := False;
end;

procedure Tmf.TabControl3Resize(Sender: TObject);
begin
 AccordList.Height := Trunc(TabControl3.Height/3);
end;

procedure Tmf.N53Click(Sender: TObject);
var
 InfoForm1 : TInfoForm;
begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  InfoForm1.ScrollBox1.AutoSize := True;
  InfoForm1.BorderStyle := bsDialog;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'ofap.jpg');
  InfoForm1.Caption := 'СТ "М-Тест" Свидетельство ОФАП';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
end;

procedure Tmf.N47Click(Sender: TObject);
var
 InfoForm1 : TInfoForm;
begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  InfoForm1.ScrollBox1.AutoSize := True;
  InfoForm1.BorderStyle := bsDialog;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'mk2.jpg');
  InfoForm1.Caption := 'СТ "М-Тест" Отзывы';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
end;

procedure Tmf.N52Click(Sender: TObject);
var
 InfoForm1 : TInfoForm;
begin
 try
  InfoForm1 := TInfoForm.Create(Application);
  InfoForm1.ScrollBox1.AutoSize := True;
  InfoForm1.BorderStyle := bsDialog;
  InfoForm1.Image1.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'cko.jpg');
  InfoForm1.Caption := 'СТ "М-Тест" Отзывы';
  InfoForm1.ClientHeight := InfoForm1.Image1.Picture.Height;
  InfoForm1.ClientWidth := InfoForm1.Image1.Picture.Width;
  InfoForm1.ShowModal;
  InfoForm1.Destroy;
 except
 end;
end;

procedure Tmf.N51Click(Sender: TObject);
var
   rs: TResourceStream;
   h : tHandle;
begin
   if About3Form = nil then About3Form :=TAbout3Form.Create(Application);
   h := LoadLibrary('RESMTEST.DLL');
   if h <= BadDllLoad then
     ShowMessageD('Невозможно загрузить библиотеку RESMTEST.DLL.',2)
   else
   begin
    rs := TResourceStream.Create(h, 'SCIENCEDOC', RT_RCDATA);
    try
     About3Form.Caption := 'Научный руководитель';
     About3Form.RO.PlainText := False;
     About3Form.RO.Lines.LoadFromStream(rs);
     About3Form.ShowModal;
    finally
     rs.Free;
    end;
    FreeLibrary(h);
   end;
end;

procedure Tmf.KbdEdit2Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit3Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit4Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit5Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit6Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit7Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit8Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit9Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEdit10Change(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.KbdEditChange(Sender: TObject);
begin
 KbdChange;
end;

procedure Tmf.AbortSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 Socket.SendText('abortuser');
end;

procedure Tmf.AbortSocketError(Sender: TObject; Socket: TCustomWinSocket;
  ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 ShowMessageD('Ошибка подключения к серверу.',2);
 ErrorCode := 0;
end;

procedure Tmf.Timer4Timer(Sender: TObject);
begin
  Timer4.Enabled := False;
  MessageDlg(tstr, mtCustom,  [mbOk], 0);
end;

procedure Tmf.Timer5Timer(Sender: TObject);
var
 SerialNum : dword;
 Buffer : array [0..255] of char;
 Reg:TRegistry;
 fname : string;
 mdata, s, s4 : string;
 i, j, h1, h2, h3, h4, r : longword;
 b1 : byte;
 dd, serdata : Int64;
 a, b, c, d : Longword;
 bb : boolean;
 datasize : integer;
 buf : PChar;
begin
  Timer5.Enabled := false;
  AppOptions.RegDone:= False;
  AppOptions.RegDone2:= False;
  AppOptions.RegDone3:= False;
  h12 := $0;
  h34 := $0;
  try
   eshardwareid.gethardwareid;
   s := eshardwareid.HDDManufactur;
   if Length(s)>0 then
   begin
    h12 := $d1;
    h34 := $1f;
    for i:=1 to Length(s) do
    begin
     b1 := ord(s[i]);
     case i of
      1,2,3: h12 := (h12 or b1) shl 8;
      4: h12 := h12 xor b1;
      5,6,7: h34 := (h34 or b1) shl 8;
      else
       if i mod 2 = 0 then
        h34 := h34 xor b1
       else
        h12 := h12 xor b1;
     end;
    end;
    h12 := h12 or $1a;
    h34 := h34 or $2d;

    AppOptions.RegDone := (h12 xor h34) <> StrToInt64(AppOptions.RegData);
    AppOptions.RegDone2 := (h12 xor h34) <> StrToInt64(AppOptions.RegData);
    AppOptions.RegDone3 := (h12 xor h34) <> StrToInt64(AppOptions.RegData);

    if h12 > h34 then AppOptions.RegDone := false else AppOptions.RegDone := true;
    serdata := StrToInt64(AppOptions.RegData);
    a := h12 xor h34 xor $2300;

    a := StrToInt(copy(IntToStr(h12),1,Trunc(Length(IntToStr(h12))/2)));
    b := StrToInt(copy(IntToStr(h12),Trunc(Length(IntToStr(h12))/2)+1,Length(IntToStr(h12))-Trunc(Length(IntToStr(h12))/2)));
    c := StrToInt(copy(IntToStr(h34),1,Trunc(Length(IntToStr(h34))/2)));
    d := StrToInt(copy(IntToStr(h34),Trunc(Length(IntToStr(h34))/2)+1,Length(IntToStr(h34))-Trunc(Length(IntToStr(h34))/2)));

 h1 := b;
 h3 := d;
 i := a;
 j := c;
 r := (h1 xor i) shl 16;
 r := r or (h3 xor j);
 r := r xor $1A1A1010;
 bb := r = serdata;

{    h1 := b xor $fa45;
    h3 := d xor $fe1e;
    i := a xor $1a2e;
    j := c xor $2e1a;
    r := h1 or h3;
    r := r xor i;
    h3 := h3 xor i;
    dd := (r xor $df23) shl 16;
    r := h1 or h3;
    r := r xor j;
    dd := dd or (r xor $25f6);
    bb := dd = serdata;}

    AppOptions.RegDone := i > 0;
    AppOptions.RegDone2 := i > 0;
    AppOptions.RegDone3 := i > 0;

    AppOptions.RegDone := bb;
    AppOptions.RegDone2 := bb;
    AppOptions.RegDone3 := bb;
   end;
  except
  end;

  if not AppOptions.RegDone then
   begin
     try
      Reg := TRegistry.Create;
      Reg.RootKey:=HKEY_LOCAL_MACHINE;
      if Reg.OpenKeyReadOnly('\Software\Classes\System.Runtime.DataStream.Position') then
       begin
         datasize := Reg.ReadInteger('Size');
         buf := AllocMem(datasize);
         Reg.ReadBinaryData('Data',buf^,datasize);
         mdata := LightDeCrypt(buf,datasize);
         freemem(buf);
         Reg.CloseKey;
         try
          bb := StrToInt64(mdata) = StrToInt64(AppOptions.RegData);
         except
          bb := false;
         end;  
         AppOptions.RegDone := i > 0;
         AppOptions.RegDone2 := i > 0;
         AppOptions.RegDone3 := i > 0;
         AppOptions.RegDone := bb;
         AppOptions.RegDone2 := bb;
         AppOptions.RegDone3 := bb;
       end;
     finally
      Reg.Free;
     end;
   end;

  if AppOptions.RegDone then
   About2Form.Label2.Caption := rstr
  else
   About2Form.Label2.Caption := dstr;
end;

procedure Tmf.Timer6Timer(Sender: TObject);
var
 s, s4 : string;
 k, j, i : longword;
 h1, h2, h3, h4, r : word;
 serdata : Int64;
 b1 : byte;
 Reg : TRegistry;
 buf : pchar;
begin
   Timer6.Enabled := false;
   try
   if AppOptions.RegDone then
    begin
     try
      Reg := TRegistry.Create;
      Reg.RootKey:=HKEY_LOCAL_MACHINE;
      if not Reg.OpenKey('\Software\Classes\System.Runtime.DataStream.Position',False) then
        begin
          Reg.CreateKey('\Software\Classes\System.Runtime.DataStream.Position');
          if not Reg.OpenKey('\Software\Classes\System.Runtime.DataStream.Position',False) then
          else
           begin
            buf := AllocMem(Length(Serial));
            LightCrypt(Serial,buf);
            Reg.WriteInteger('Size',Length(Serial));
            Reg.WriteBinaryData('Data',buf^,Length(Serial));
            FreeMem(buf);
           end;
        end
      else
           begin
            buf := AllocMem(Length(Serial));
            LightCrypt(Serial,buf);
            Reg.WriteInteger('Size',Length(Serial));
            Reg.WriteBinaryData('Data',buf^,Length(Serial));
            FreeMem(buf);
           end;
     finally
       Reg.CloseKey;
       Reg.Free;
     end;
     MF.Timer4.Enabled := true;
    end;
   except
   end;
end;

procedure Tmf.ALeftDblClick(Sender: TObject);
begin
 SetToolBtnClick(Sender);
end;

procedure Tmf.ACenterDblClick(Sender: TObject);
begin
 SetToolBtnClick(Sender);
end;

procedure Tmf.ARightDblClick(Sender: TObject);
begin
 SetToolBtnClick(Sender);
end;

procedure Tmf.AccordListDblClick(Sender: TObject);
begin
 ResetToolBtnClick(Sender);
end;

procedure Tmf.N54Click(Sender: TObject);
begin
 SetToolBtnClick(Sender);
end;

procedure Tmf.N55Click(Sender: TObject);
begin
 ResetToolBtnClick(Sender);
end;

procedure Tmf.FormActivate(Sender: TObject);
begin
 if N57.Checked then WindowState := wsMaximized else WindowState := wsNormal;
end;

procedure Tmf.N57Click(Sender: TObject);
var
 Reg : TMyStream;
 b : byte;
begin
 N57.Checked := not N57.Checked;
 try
  Reg:=TMyStream.Create(ExtractFilePath(paramstr(0))+'screen.cfg',fmCreate);
  if N57.Checked then b := 1 else b := 0;
  Reg.WriteByte(b);
  Reg.Free;
 except
 end;
 if N57.Checked then mf.BorderStyle := bsNone else mf.BorderStyle := bsSizeable;
 mf.Activate;
end;

end.
