unit Check;
{$H-}
interface

uses SysUtils, Classes, Dialogs;

const
  MaxBrackets = 100;{максимальное количество вложенных скобок}
  MaxNames = 100;{максимально допустимое число идентификаторов}
  PushError = 250;
  PopError = 251;

type
  pInteger = ^Integer;

  TListInt = class(TList)
   private
    function Get(Ind: Integer): Integer;
   public
    constructor Create;
    procedure AddItem(El: Integer);
    procedure Clear;
    property It[Ind: Integer]: Integer read Get;
    destructor Destroy; override;
  end;

  pSetItem = ^TSetItem;
  TSetItem = record
    Item: Integer;
  end;

  TSet = class(TList)
   private
    function Get(Ind: Integer): Integer;
   public
    constructor Create;
    procedure AddItem(El: Integer);
    procedure DeleteItem(Ind: Integer);
    procedure Clear;
    property It[Ind: Integer]: Integer read Get;
    destructor Destroy; override;
  end;

  TEl = record
    Bracket: Char;
    BracketIndex: Integer;
    List: TListInt;
  end;

  TSt = class(TList)
   private
    function Get: Integer;
    procedure Put(C: Integer);
   public
    procedure MakeFree;
    procedure Push(El: Integer);
    function Pop: Integer;
    function Free: Boolean;
    destructor Destroy; override;
    property Top: Integer read Get write Put;
  end;

  pElSt2 = ^TElSt2;
  TElSt2 = record
    P, Num, Adding, Deleteing: Integer;
  end;

  TSt2 = class(TSt)
   private
    function GetP: Integer;
    procedure PutP(C: Integer);
    function GetNum: Integer;
    procedure PutNum(C: Integer);
    function GetAdding: Integer;
    procedure PutAdding(C: Integer);
    function GetDeleteing: Integer;
    procedure PutDeleteing(C: Integer);
   public
    procedure MakeFree;
    procedure Push(El: Integer);
    function Pop: Integer;
    property TopP: Integer read GetP write PutP;
    property TopNum: Integer read GetNum write PutNum;
    property TopAdding: Integer read GetAdding
      write PutAdding;
    property TopDeleteing: Integer read GetDeleteing
      write PutDeleteing;
  end;

  TStack = class
  private
    function GetBI: Integer;
    procedure SetBI(El: Integer);
    function GetIndexes: TListInt;
  public
    constructor Create;
    procedure MakeFree;
    procedure Push(El: Char);
    function Pop: Char;
    function Get: Char;
    function Free: Boolean;
    property BracketIndex: Integer read GetBI write SetBI;
    property Top: Char read Get write Push;
    property Indexes: TListInt read GetIndexes;
  private
    St: array[1..MaxBrackets] of TEl;
    Ver: Word;
  end;

  TForwStates = (Forw, NotForw, NotExist);

  TType = (Symbol, NotSymbol);

  {элемент таблицы переходов}
  TJumpTableItem = class (TListInt)
   private
    function GetJump(Ind: Integer): Integer;
   public
    Typ: TType;
    Sym: Char;
    property Jumps[Ind: Integer]: Integer
      read GetJump;
  end;

  {таблица переходов}
  TJumpTable = class(TList)
   private
    function GetType(Ind: Integer): TType;
    function GetSymbol(Ind: Integer): Char;
    function GetJump(Ind1, Ind2: Integer): Integer;
    function GetJumpsCount(Ind: Integer): Integer;
   public
    constructor Create;
    procedure AddJumpItem(Typ:TType; Sym: Char);
    procedure AddJump(Ind: Integer; El: Integer);
    procedure ClearJumps(Ind: Integer);
    destructor Destroy; override;
    property Types[Ind: Integer]: TType
      read GetType;
    property Symbols[Ind: Integer]: Char
      read GetSymbol;
    property JumpsLists[Ind1, Ind2: Integer]: Integer
      read GetJump;
    property JumpsCount[Ind: Integer]: Integer read GetJumpsCount;
  end;

  {таблица символов}
  TSymbolTable=class
  public
    Table: array[1..MaxNames]of record
                                  Name: String;
                                  Place: Integer;
                                  Forw: TForwStates;
                                  Jumps: TListInt;
                                end;
    Count: Integer;
    Last: Integer;
    procedure MakeFree;
    procedure Add(S: String; F: TForwStates);
    function GetState(S: String): TForwStates;
    function IndexOf(S: String): Integer;
    procedure ClearForw;
    destructor Destroy; override;
  end;

var
  Err: Record
         Fixed: Boolean;
         Mes: String;
         St, Pos: Integer;
       end;
  Lib: TStringList;

procedure SetErr(M: String; S, P: Integer);

procedure LoadLibrary;
{загрузка библиотеки и проверка ее корректности}

procedure CheckRegularLanguage(Strs: TStrings; LibFlag: Boolean);
{Strs содержит строки, задающие регулярный язык;
 LibFlag - признак библиотеки (должна отсутствовать "цель")}

procedure CheckSentence(Language: TStrings; Sentence: String);
{Language - язык;
 Sentence - предложение, нуждающееся в проверке}

implementation

Const
  Letters = ['A'..'Z', 'a'..'z', 'А'..'Я', 'а'..'я', 'Ё', 'ё'];
  Numbers = ['0'..'9'];

var
  i, j: Integer;
  SymbolTable: TSymbolTable;
  StackOfBrackets: TStack;

procedure SetErr(M: String; S, P: Integer);
begin
  Err.Fixed := True;
  Err.Mes := M;
  Err.St := S;
  Err.Pos := P;
end;

{TSt}
function TSt.Get: Integer;
begin
  Get := pInteger(Items[Count-1])^;
end;

procedure TSt.Put(C: Integer);
begin
  pInteger(Items[Count-1])^ := C;
end;

procedure TSt.MakeFree;
var
  i: Integer;
begin
  for i := 0 to Count-1 do
    Dispose(PInteger(Items[i]));
  Clear;
end;

procedure TSt.Push(El: Integer);
begin
  Add(New(pInteger));
  pInteger(Items[Count-1])^ := El;
end;

function TSt.Pop: Integer;
begin
  Pop := Get;
  Dispose(pInteger(Items[Count-1]));
  Delete(Count-1);
end;

function TSt.Free: Boolean;
begin
  Free := Count=0;
end;

destructor TSt.Destroy;
begin
  MakeFree;
  inherited Destroy;
end;

{TSt2}
function TSt2.GetP: Integer;
begin
  GetP := pElSt2(Items[Count-1])^.P;
end;

procedure TSt2.PutP(C: Integer);
begin
  pElSt2(Items[Count-1])^.P := C;
end;

function TSt2.GetNum: Integer;
begin
  GetNum := pElSt2(Items[Count-1])^.Num;
end;

procedure TSt2.PutNum(C: Integer);
begin
  pElSt2(Items[Count-1])^.Num := C;
end;

function TSt2.GetAdding: Integer;
begin
  GetAdding := pElSt2(Items[Count-1])^.Adding;
end;

procedure TSt2.PutAdding(C: Integer);
begin
  pElSt2(Items[Count-1])^.Adding := C;
end;

function TSt2.GetDeleteing: Integer;
begin
  GetDeleteing := pElSt2(Items[Count-1])^.Deleteing;
end;

procedure TSt2.PutDeleteing(C: Integer);
begin
  pElSt2(Items[Count-1])^.Deleteing := C;
end;

procedure TSt2.MakeFree;
var
  i: Integer;
begin
  for i := 0 to Count-1 do
    Dispose(PElSt2(Items[i]));
  Clear;
end;

procedure TSt2.Push(El: Integer);
begin
  Add(New(pElSt2));
  pElSt2(Items[Count-1])^.P := El;
  pElSt2(Items[Count-1])^.Num := 0;
  pElSt2(Items[Count-1])^.Adding := 0;
  pElSt2(Items[Count-1])^.Deleteing := 0;
end;

function TSt2.Pop: Integer;
begin
  Pop := GetP;
  Dispose(pElSt2(Items[Count-1]));
  Delete(Count-1);
end;

{TStack}
constructor TStack.Create;
Var
  i: Integer;
begin
  inherited Create;
  for i := 1 to MaxBrackets do
    St[i].List := TListInt.Create;
end;

procedure TStack.MakeFree;
begin
  Ver := 0;
end;

procedure TStack.Push(El: Char);
begin
  if Ver <> MaxBrackets then
    begin
      Inc(Ver);
      St[Ver].Bracket := El;
    end
   else
    SetErr('Слишком большая глубина вложенности скобок.', i, j);
end;

function TStack.Pop: Char;
begin
  Pop := ' ';
  if not Free then
    begin
      Pop := St[Ver].Bracket;
      Dec(Ver);
    end
   else
    SetErr('Закрывающих скобок больше, чем открывающих.', i, j);
end;

function TStack.Get: Char;
begin
  Get := ' ';
  if not Free then
    begin
      Get := St[Ver].Bracket;
    end
   else
    SetErr('Закрывающих скобок больше, чем открывающих.', i, j);
end;

function TStack.Free: Boolean;
begin
  Free := Ver = 0;
end;

function TStack.GetBI: Integer;
begin
  GetBI := 0;
  if not Free then
    begin
      GetBI := St[Ver].BracketIndex;
    end
   else
    SetErr('Закрывающих скобок больше, чем открывающих.', i, j);
end;

procedure TStack.SetBI(El: Integer);
begin
  St[Ver].BracketIndex := El;
end;

function TStack.GetIndexes: TListInt;
begin
  GetIndexes := St[Ver].List;
end;

{TJumpTableItem}
function TJumpTableItem.GetJump(Ind: Integer): Integer;
begin
  GetJump := It[Ind];
end;

{TJumpTable}
constructor TJumpTable.Create;
begin
  inherited Create;
end;

function TJumpTable.GetType(Ind: Integer): TType;
begin
  GetType := TJumpTableItem(Items[Ind]).Typ;
end;

function TJumpTable.GetSymbol(Ind: Integer): Char;
begin
  GetSymbol := TJumpTableItem(Items[Ind]).Sym;
end;

function TJumpTable.GetJump(Ind1, Ind2: Integer): Integer;
begin
  GetJump := TJumpTableItem(Items[Ind1]).Jumps[Ind2];
end;

function TJumpTable.GetJumpsCount(Ind: Integer): Integer;
begin
  GetJumpsCount := TJumpTableItem(Items[Ind]).Count;
end;

procedure TJumpTable.AddJumpItem(Typ:TType; Sym: Char);
Var
  p: TJumpTableItem;
begin
  p := TJumpTableItem.Create;
  p.Typ := Typ;
  p.Sym := Sym;
  p.Count := 0;
  Add(p);
end;

procedure TJumpTable.AddJump(Ind: Integer; El: Integer);
begin
  TJumpTableItem(Items[Ind]).AddItem(El);
end;

procedure TJumpTable.ClearJumps(Ind: Integer);
begin
  TJumpTableItem(Items[Ind]).Clear;
end;

destructor TJumpTable.Destroy;
Var
  i: Integer;
begin
  for i := 0 to Count-1 do
    begin
      TJumpTableItem(Items[i]).Destroy;
    end;
  inherited Destroy;
end;

{TListInt}
constructor TListInt.Create;
begin
  inherited Create;
  Count := 0;
end;

function TListInt.Get(Ind: Integer): Integer;
begin
  Get := pInteger(Items[Ind])^;
end;

procedure TListInt.AddItem(El: Integer);
begin
  Add(New(pInteger));
  pInteger(Items[Count-1])^ := El;
end;

procedure TListInt.Clear;
Var
  i: Integer;
begin
  for i := 0 to Count-1 do
    Dispose(pInteger(Items[i]));
  inherited Clear;
end;

destructor TListInt.Destroy;
begin
  Clear;
  inherited Destroy;
end;

{TSet}
constructor TSet.Create;
begin
  inherited Create;
  Count := 0;
end;

function TSet.Get(Ind: Integer): Integer;
begin
  Get := pSetItem(Items[Ind])^.Item;
end;

procedure TSet.AddItem(El: Integer);
Var
  i: Integer;
begin
  for i := 0 to Count-1 do
    if pSetItem(Items[i])^.Item = El then
      Exit;
  Add(New(pSetItem));
  pSetItem(Items[Count-1])^.Item := El;
end;

procedure TSet.DeleteItem(Ind: Integer);
begin
  Dispose(pSetItem(Items[Ind]));
  Delete(Ind);
end;


procedure TSet.Clear;
Var
  i: Integer;
begin
  for i := 0 to Count-1 do
    begin
      Dispose(pSetItem(Items[i]));
    end;
  inherited Clear;
end;

destructor TSet.Destroy;
begin
  Clear;
  inherited Destroy;
end;

{TSymbolTable}
procedure TSymbolTable.MakeFree;
Var
  i: Integer;
begin
  for i := 1 to Count do
    begin
      Table[i].Jumps.Destroy;
    end;
  Count := 0;
end;

procedure TSymbolTable.Add(S: String; F: TForwStates);
begin
  S := AnsiUpperCase(S);
  if Count<>MaxNames then
    begin
      Inc(Count);
      Table[Count].Name := S;
      Table[Count].Forw := F;
      Table[Count].Jumps := TListInt.Create;
      Last := Count;
    end
   else
    SetErr('Слишком много идентификаторов.', i, j);
end;

function TSymbolTable.GetState(S: String): TForwStates;
Var
  i: Integer;
begin
  S := AnsiUpperCase(S);
  for i := 1 to Count do
    if Table[i].Name = S then
      begin
        GetState := Table[i].Forw;
        Last := i;
        Exit;
      end;
  GetState := NotExist;
end;

function TSymbolTable.IndexOf(S: String): Integer;
Var
  i: Integer;
begin
  S := AnsiUpperCase(S);
  for i := 1 to Count do
    if Table[i].Name = S then
      begin
        IndexOf := i;
        Last := i;
        Exit;
      end;
  IndexOf := 0;
end;

procedure TSymbolTable.ClearForw;
begin
  Table[Last].Forw := NotForw;
end;

destructor TSymbolTable.Destroy;
begin
  MakeFree;
  inherited Destroy;
end;

procedure LoadLibrary;
var
 i : integer;
begin
  Try
    for i:=11001 to 11019 do Lib.Add(LoadStr(i));
    CheckRegularLanguage(Lib, True);
    if Err.Fixed then
     MessageDlg('Ошибка чтения библиотеки.',mtWarning, [mbOK], 0);
  except
    MessageDlg('Ошибка чтения библиотеки.',mtWarning, [mbOK], 0);
  end;
end;

{Процедура проверки корректности регулярного языка}
procedure CheckRegularLanguage(Strs: TStrings; LibFlag: Boolean);
Var
  State: (BegID, WaitEndID, WaitSep, WaitForward,
          BegRegExp, InsideStr, WaitEndStr,
          AfterRegExp, SelID);
  Current: Char;
  ID, MainID: String;
  MainSt: TForwStates;
  k: Integer;

  procedure BeginingOfID;
  begin
    if Current in Letters then
      begin
        MainID := Current;
        MainSt := NotExist;
        State := WaitEndID;
      end
     else
      if Current<>' ' then
        SetErr('Должен следовать идентификатор.', i, j);
  end;

  procedure WaitingOfEndOfID;
  Var
    F: TForwStates;
  begin
    if Current in (Letters+Numbers) then
      begin
        MainID := MainID + Current;
      end
     else
      Case Current of
        '=':
          begin
            F := SymbolTable.GetState(MainID);
            case F of
              Forw: SymbolTable.ClearForw;
              NotForw:
               SetErr('Повторное определение идентификатора', i, j);
              NotExist: MainSt := NotForw;
            end;
            State := BegRegExp;
          end;
        '-':
          begin
            F := SymbolTable.GetState(MainID);
            case F of
              NotExist: MainSt := Forw;
             else
              SetErr('Повторное определение идентификатора.', i, j);
            end;
            State := WaitForward;
          end;
        ' ':
          State := WaitSep;
        else
         SetErr('Ожидается "=" или "-".', i, j);
      end;
  end;

  procedure WaitingSeparator;
  Var
    F: TForwStates;
  begin
    Case Current of
      '=':
        begin
          F := SymbolTable.GetState(MainID);
          case F of
            Forw: SymbolTable.ClearForw;
            NotForw:
             SetErr('Повторное определение идентификатора', i, j);
            NotExist: MainSt := NotForw;
          end;
          State := BegRegExp;
        end;
      '-':
        begin
          F := SymbolTable.GetState(MainID);
          case F of
            NotExist: MainSt := Forw;
           else
            SetErr('Повторное определение идентификатора.', i, j);
          end;
          State := WaitForward;
        end;
      ' ': ;
      else
       SetErr('Ожидается "=" или "-".', i, j);
    end;
  end;

  procedure BeginingOfRegularExpression;
  begin
    if Current in Letters then
      begin
        ID := Current;
        State := SelID;
      end
     else
      case Current of
        '(': StackOfBrackets.Push('(');
        '{': StackOfBrackets.Push('{');
        '''': State := InsideStr;
        ' ': ;
       else
        SetErr('Ожидается начало регулярного выражения.', i, j);
      end;
  end;

  procedure InsideString;
  begin
    case Current of
      '''': State := WaitEndStr;
     else
    end;
  end;

  procedure AfterRegularExpression;
  begin
    case Current of
      ')':
        if StackOfBrackets.Free or (StackOfBrackets.Get<>'(') then
          SetErr('Нарушен баланс или порядок следования скобок.', i, j)
         else
          StackOfBrackets.Pop;
      '}':
        if StackOfBrackets.Free or (StackOfBrackets.Get<>'{') then
          SetErr('Нарушен баланс или порядок следования скобок.', i, j)
         else
          StackOfBrackets.Pop;
      '+': State := BegRegExp;
      '|': State := BegRegExp;
      ' ': ;
     else
      SetErr('Неверный символ (должно быть ")", "}", "+" или "|").',
        i, j);
    end;
  end;

  procedure WaitingOfEndOfString;
  begin
    case Current of
      '''': State := InsideStr;
      ' ': State := AfterRegExp;
     else
      AfterRegularExpression;
    end;
  end;

  procedure SelectingOfID;
  begin
    if Current in (Letters+Numbers) then
      ID := ID + Current
     else
      begin
        if SymbolTable.GetState(ID)=NotExist then
          SetErr('Идентификатор не определен.', i, j)
         else
          AfterRegularExpression;
      end;
  end;

begin
  Err.Fixed := False;
  if not LibFlag then
    begin
      CheckRegularLanguage(Lib, True);
      if Err.Fixed then
        begin
          Err.Mes := 'Ошибка в библиотеке!!! ' + Err.Mes;
          Exit;
        end;
    end;
  StackOfBrackets.MakeFree;
  if LibFlag then SymbolTable.MakeFree;
  i := 0; j := 0;
  for i := 0 to Strs.Count-1 do
    begin
      State := BegID;
      MainID := '';
      for j := 1 to Length(Strs[i]) do
        begin
          Current := Strs[i][j];
          case State of
            BegID:       BeginingOfID;
            WaitEndID:   WaitingOfEndOfID;
            WaitSep:     WaitingSeparator;
            WaitForward:
              if Trim(UpperCase(Copy(Strs[i], j, 255)))<>
               'FORWARD' then
                SetErr('Должно следовать FORWARD', i, j)
               else
                begin
                  State := AfterRegExp;
                  Break;
                end;
            BegRegExp:   BeginingOfRegularExpression;
            InsideStr:   InsideString;
            WaitEndStr:  WaitingOfEndOfString;
            AfterRegExp: AfterRegularExpression;
            SelID:       SelectingOfID;
          end;
          if Err.Fixed then
            begin
              if not LibFlag then SymbolTable.MakeFree;
              StackOfBrackets.MakeFree;
              Exit;
            end;
        end;
      case State of
{        BegID:       SetErr('Должен следовать идентификатор.', i, j);}
        WaitEndID, WaitSep:
                     SetErr('Ожидается "=" или "-".', i, j);
        WaitForward: SetErr('Должно следовать FORWARD', i, j);
        BegRegExp:
          SetErr('Ожидается начало регулярного выражения.', i, j);
        InsideStr:   SetErr('Незакончена строка.', i, j);
        SelID:
          if SymbolTable.GetState(ID)=NotExist then
            SetErr('Идентификатор не определен.', i, j);
      end;
      if not StackOfBrackets.Free then
        SetErr('Не хватает закрывающих скобок.', i, j);
      if Err.Fixed then
        begin
          if not LibFlag then SymbolTable.MakeFree;
          StackOfBrackets.MakeFree;
          Exit;
        end;
      if (MainSt in [Forw, NotForw])and(MainID<>'') then
        begin
          SymbolTable.Add(MainID, MainSt);
          MainSt := NotExist;
        end;
    end;
  if not LibFlag then
    begin
      if SymbolTable.GetState('GOAL')<>NotExist then
        begin
          if SymbolTable.GetState('ЦЕЛЬ')<>NotExist then
            SetErr('Нельзя одновременно определить имена '+
              'ЦЕЛЬ и GOAL.', i, j)
        end
       else
        if SymbolTable.GetState('ЦЕЛЬ')=NotExist then
          SetErr('Должно быть определено хотя бы одно из'+
            ' имен GOAL или ЦЕЛЬ.', i, j);
    end
   else
    begin
      if (SymbolTable.GetState('GOAL')<>NotExist)or
        (SymbolTable.GetState('ЦЕЛЬ')<>NotExist) then
          SetErr('В библиотеке не должны быть определены имена '+
            'ЦЕЛЬ и GOAL.', i, j);
    end;
  {проверка, все ли опережающие описания определены}
  for k := 1 to SymbolTable.Count do
    if SymbolTable.Table[k].Forw = Forw then
      begin
        SetErr('Идентификатор '+SymbolTable.Table[k].Name+
          ' не описан (есть только опережающее описание).',
          i, j);
        Break;
      end;
  if not LibFlag then SymbolTable.MakeFree;
  StackOfBrackets.MakeFree;
end;

{процедура проверки принадлежности предложения Sentence
 корректному(!!!) языку Language}
procedure CheckSentence(Language: TStrings; Sentence: String);
Var
  JumpTable: TJumpTable;
  Positions, NewPositions: TSet;
  First: Integer;
  procedure Drop1(Strs: TStrings; LibFlag: Boolean);
  Var
    State: (BegID, WaitEndID, WaitSep, WaitForward,
            BegRegExp, InsideStr, WaitEndStr,
            AfterRegExp, SelID);
    Current: Char;
    ID: String;

    procedure FoundedBracket(Bracket: Char);
    begin
      StackOfBrackets.Push(Bracket);
      StackOfBrackets.BracketIndex := JumpTable.Count;
      StackOfBrackets.GetIndexes.Clear;
      JumpTable.AddJumpItem(NotSymbol, Bracket);
      JumpTable.AddJump(JumpTable.Count-1, JumpTable.Count);
    end;

    procedure FoundedBegIDAfterEq;
    Var
      F: TForwStates;
      i: Integer;
    begin
      F := SymbolTable.GetState(ID);
      case F of
        Forw:
          begin
            SymbolTable.ClearForw;
            for i := 0 to SymbolTable.Table[
              SymbolTable.Last].Jumps.Count-1 do
              begin
                JumpTable.AddJump(SymbolTable.Table[
                  SymbolTable.Last].Jumps.It[i],
                  SymbolTable.Table[SymbolTable.Last].Place);
              end;
            SymbolTable.Table[SymbolTable.Last].Jumps.Clear;
            SymbolTable.Table[SymbolTable.Last].Place :=
              JumpTable.Count;
          end;
        NotExist:
          begin
            SymbolTable.Add(ID, NotForw);
            SymbolTable.Table[SymbolTable.Last].Place :=
              JumpTable.Count;
          end;
      end;
      State := BegRegExp;
      FoundedBracket('(');
    end;

    procedure FoundedBegIDAfterWorm;
    begin
      SymbolTable.Add(ID, Forw);
      State := WaitForward;
    end;

    procedure FoundedID;
    begin
      JumpTable.AddJumpItem(NotSymbol, 'I');
      if SymbolTable.GetState(ID) = Forw then
        SymbolTable.Table[SymbolTable.Last
          ].Jumps.AddItem(JumpTable.Count)
       else
        JumpTable.AddJump(JumpTable.Count-1,
          SymbolTable.Table[SymbolTable.Last].Place);
    end;

    procedure FoundedUpstroke;
    begin
      StackOfBrackets.GetIndexes.AddItem(JumpTable.Count);
      JumpTable.AddJump(StackOfBrackets.BracketIndex,
        JumpTable.Count+1);
      JumpTable.AddJumpItem(NotSymbol, '|');
    end;

    procedure FoundedBracket1;
    Var
      i: Integer;
    begin
      for i := 0 to StackOfBrackets.Indexes.Count-1 do
        JumpTable.AddJump(StackOfBrackets.Indexes.It[i],
          JumpTable.Count);
      StackOfBrackets.Pop;
      JumpTable.AddJumpItem(NotSymbol, ')');
      JumpTable.AddJump(JumpTable.Count-1, JumpTable.Count);
    end;

    procedure FoundedEnd;
    Var
      i: Integer;
    begin
      for i := 0 to StackOfBrackets.Indexes.Count-1 do
        JumpTable.AddJump(StackOfBrackets.Indexes.It[i],
          JumpTable.Count);
      StackOfBrackets.Pop;
      JumpTable.AddJumpItem(NotSymbol, 'E');
    end;

    procedure FoundedBracket2;
    Var
      i: Integer;
    begin
      for i := 0 to StackOfBrackets.Indexes.Count-1 do
        JumpTable.AddJump(StackOfBrackets.Indexes.It[i],
          JumpTable.Count);
      JumpTable.AddJumpItem(NotSymbol, '}');
      JumpTable.AddJump(JumpTable.Count-1, JumpTable.Count);
      JumpTable.AddJump(JumpTable.Count-1,
        StackOfBrackets.BracketIndex);
      JumpTable.AddJump(StackOfBrackets.bracketIndex,
        JumpTable.Count);
      StackOfBrackets.Pop;
    end;

    procedure FoundedSymbol(Sym: Char);
    begin
      JumpTable.AddJumpItem(Symbol, Sym);
      JumpTable.AddJump(JumpTable.Count-1, JumpTable.Count);
    end;

    procedure BeginingOfID;
    begin
      ID := Current;
      State := WaitEndID;
    end;

    procedure WaitingOfEndOfID;
    begin
      if Current in (Letters+Numbers) then
        begin
          ID := ID + Current;
        end
       else
        Case Current of
          '=':
            begin
              FoundedBegIDAfterEq;
            end;
          '-':
            begin
              FoundedBegIDAfterWorm;
            end;
          ' ':
            State := WaitSep;
        end;
    end;

    procedure WaitingSeparator;
    begin
      Case Current of
        '=':
          begin
            FoundedBegIDAfterEq;
          end;
        '-':
          begin
            FoundedBegIDAfterWorm;
          end;
        ' ': ;
      end;
    end;

    procedure BeginingOfRegularExpression;{error}
    begin
      if Current in Letters then
        begin
          ID := Current;
          State := SelID;
        end
       else
        case Current of
          '(': FoundedBracket('(');
          '{': FoundedBracket('{');
          '''': State := InsideStr;
          ' ': ;
        end;
    end;

    procedure InsideString;
    begin
      case Current of
        '''': State := WaitEndStr;
       else
        FoundedSymbol(Current);
      end;
    end;

    procedure AfterRegularExpression;
    begin
      case Current of
        ')': FoundedBracket1;
        '}': FoundedBracket2;
        '+': State := BegRegExp;
        '|':
          begin
            FoundedUpStroke;
            State := BegRegExp;
          end;
        ' ': ;
      end;
    end;

    procedure WaitingOfEndOfString;
    begin
      case Current of
        '''':
          begin
            FoundedSymbol('''');
            State := InsideStr;
          end;
        ' ': State := AfterRegExp;
       else
        AfterRegularExpression;
      end;
    end;

    procedure SelectingOfID;
    begin
      if Current in (Letters+Numbers) then
        ID := ID + Current
       else
        begin
          FoundedID;
          State := AfterRegExp;
          AfterRegularExpression;
        end;
    end;

  begin
    if not LibFlag then
      Drop1(Lib, True);
    StackOfBrackets.MakeFree;
    if LibFlag then SymbolTable.MakeFree;
    for i := 0 to Strs.Count-1 do
      begin
        State := BegID;
        for j := 1 to Length(Strs[i]) do
          begin
            Current := Strs[i][j];
            case State of
              BegID:       BeginingOfID;
              WaitEndID:   WaitingOfEndOfID;
              WaitSep:     WaitingSeparator;
              WaitForward:
                if Trim(UpperCase(Copy(Strs[i], j, 255)))<>
                'FORWARD' then
                  SetErr('Должно следовать FORWARD', i, j)
                 else
                  begin
                    State := AfterRegExp;
                    Break;
                  end;
              BegRegExp:   BeginingOfRegularExpression;
              InsideStr:   InsideString;
              WaitEndStr:  WaitingOfEndOfString;
              AfterRegExp: AfterRegularExpression;
              SelID:       SelectingOfID;
            end;
          end;
        Current := ' ';
        case State of
          WaitEndStr:  WaitingOfEndOfString;
          SelID:       SelectingOfID;
        end;
        if not StackOfBrackets.Free then FoundedEnd;
      end;
  end;

  function Check(Sentence: String): boolean;
  Var
    State: (WL, WLU);
    Place, R, ChangingSt: Integer;
    St: TSt;
    Stack: TSt2;
    function TryStep(Sym: Char; StepTo: Integer): Integer;
    begin
      ChangingSt := 0;
      if (JumpTable.Types[StepTo]=Symbol) then
        if JumpTable.Symbols[StepTo]=Sym then
          begin
            TryStep := StepTo;
            Inc(Place);
          end
         else
          TryStep := -1
       else
        case JumpTable.Symbols[StepTo] of
          'I':
           begin
             TryStep := StepTo;
             St.Push(StepTo+1);
             ChangingSt := StepTo+1;
           end;
         else
          TryStep := StepTo;
        end;
    end;
  begin
    Check := False;
    State := WL;
    Place := 1;
    St := TSt.Create;
    Stack := TSt2.Create;
    Stack.Push(First);{place at JumpTable}
    Stack.TopNum := 0;{number of first not used jump}
    while (Stack.Count<>0)or(State<>WLU)do
      begin
        case State of
          WL:
            begin
              R := -1;
              if (JumpTable.Symbols[Stack.TopP]='E')and
                (JumpTable.Types[Stack.TopP]=NotSymbol)then
                begin
                  if not St.Free then
                    begin
                      Stack.TopDeleteing := St.Top;
                      if Place>Length(Sentence) then
                          R := TryStep(#0, St.Pop)
                       else
                          R := TryStep(Sentence[Place],
                            St.Pop)
                    end
                   else
                    if Place>Length(Sentence) then
                      begin
                        St.Destroy;
                        Stack.Destroy;
                        Check := True;
                        Exit;
                      end
                     else
                      State := WLU;
                end
               else
                if JumpTable.JumpsCount[Stack.TopP]>
                  Stack.TopNum then
                  begin
                    if Place>Length(Sentence) then
                      R := TryStep(#0,
                        JumpTable.JumpsLists[Stack.TopP,
                          Stack.TopNum])
                     else
                      R := TryStep(Sentence[Place],
                        JumpTable.JumpsLists[Stack.TopP,
                          Stack.TopNum]);
                  end;
              if R<>-1 then{Forward}
                begin
                  Stack.Push(R);
                  Stack.TopNum := 0;
                  Stack.TopAdding := ChangingSt;
                end
               else
                begin{Back}
                  State := WLU;
                end;
            end;
          WLU:
            begin
              if Stack.TopNum<JumpTable.JumpsCount[
                Stack.TopP] then
                begin
                  Stack.TopNum := Stack.TopNum+1;
                  State := WL;
                end
               else
                begin
                  if JumpTable.Types[Stack.TopP]=Symbol then
                    Dec(Place);
                  if Stack.TopAdding<>0 then
                    St.Pop;
                  if Stack.TopDeleteing<>0 then
                    St.Push(Stack.TopDeleteing);
                  Stack.Pop;
                end;
            end;
        end;
      end;
    Stack.Destroy;
    St.Destroy;
  end;

  procedure OptimizeJumpTable;
  Var
    i, j: Integer;

    procedure AddStep(Beg, Posit: Integer);
    Var
      i: Integer;
    begin
      if (JumpTable.Symbols[Posit]='E')and
       (JumpTable.Types[Posit]=NotSymbol) then
        begin
          Positions.AddItem(Beg);
          Exit;
        end;
      if (JumpTable.Types[Posit] = NotSymbol)and
       (JumpTable.Symbols[Posit] <> 'I') then
        for i := 0 to JumpTable.JumpsCount[Posit]-1 do
          begin
              AddStep(Beg, JumpTable.JumpsLists[Posit, i])
          end
       else
         NewPositions.AddItem(Posit);
    end;

  begin
    for i := 0 to JumpTable.Count-1 do
      begin
        NewPositions.Clear;
        if (JumpTable.Types[i] = Symbol)or(i=0) then
          begin
            for j := 0 to JumpTable.JumpsCount[i]-1 do
              AddStep(i, JumpTable.JumpsLists[i, j]);
            JumpTable.ClearJumps(i);
            for j := 0 to NewPositions.Count-1 do
              JumpTable.AddJump(i, NewPositions.It[j]);
          end;
        if (JumpTable.Symbols[i]='E')and
         (JumpTable.Types[i]=NotSymbol) then
          begin
            JumpTable.ClearJumps(i);
          end;
      end;
    NewPositions.Clear;
    for j := 0 to JumpTable.JumpsCount[First]-1 do
      AddStep(First, JumpTable.JumpsLists[First, j]);
    for j := 0 to NewPositions.Count-1 do
      JumpTable.AddJump(First, NewPositions.It[j]);

    for i := 0 to Positions.Count-1 do
      begin
        JumpTable.AddJump(Positions.It[i], JumpTable.Count-1);
      end;
    JumpTable.ClearJumps(JumpTable.Count-1);
  end;

begin
  Err.Fixed := True;
  JumpTable := TJumpTable.Create;
  Drop1(Language, False);
  Positions := TSet.Create;
  NewPositions := TSet.Create;
  if SymbolTable.GetState('Goal') = NotExist then
    First := SymbolTable.Table[
      SymbolTable.IndexOf('Цель')].Place
   else
    First := SymbolTable.Table[
      SymbolTable.IndexOf('Goal')].Place;
  OptimizeJumpTable;
  if Check(Sentence) then
    begin
      Err.Fixed := False;
    end;
  Positions.Destroy;
  NewPositions.Destroy;
  JumpTable.Destroy;
  SymbolTable.MakeFree;
  StackOfBrackets.MakeFree;
end;

begin
  Lib := TStringList.Create;
  StackOfBrackets := TStack.Create;
  SymbolTable := TSymbolTable.Create;
  LoadLibrary;
end.
