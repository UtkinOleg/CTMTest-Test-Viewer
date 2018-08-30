unit comtypes;

interface

uses Classes, dbtables, db, Graphics, Contnrs, Math;

const

  K = 'Zk.,k.nt,z?Cdtnjymrf';

type

  TPassString = String[Length(K) + 2]; // тип cтроки пароля
//------------------------------------------------------------------------------
  TIntClass = class
    Int: Integer;
  end;
//------------------------------------------------------------------------------
  TAvailableFolder = class
  private
    function GetAWrite: Boolean;
    procedure SetAWrite(B: Boolean);
    function GetADelete: Boolean;
    procedure SetADelete(B: Boolean);
  public
    FAccessData: Byte;
    FFolderID: Integer;
    property AccessWrite: Boolean
      read GetAWrite write SetAWrite;
    property AccessDelete: Boolean
      read GetADelete write SetADelete;
  end;

  TFolder = class
    FId: Integer;
    FType, FObject, FAccess: Byte;
  end;

  TMyStream = class(TFileStream)
    procedure WriteByte(B: Byte);
    procedure WriteInteger(I: Integer);
    procedure WriteString(S: String);
    procedure WriteFloat(F: Real);
    procedure WriteFont(F: TFont);
    procedure ReadFont(var F: TFont);
    function ReadByte: Byte;
    function ReadInteger: Integer;
    function ReadString: String;
    function ReadFloat: Real;
  end;

implementation

uses comproc;

function TAvailableFolder.GetAWrite: Boolean;
begin
  Result := (FAccessData and 1) = 1;
end;

procedure TAvailableFolder.SetAWrite(B: Boolean);
begin
  FAccessData := FAccessData or Ord(B);
end;

function TAvailableFolder.GetADelete: Boolean;
begin
  Result := (FAccessData and 2) = 2;
end;

procedure TAvailableFolder.SetADelete(B: Boolean);
begin
  FAccessData := FAccessData or (Ord(B) shl 1);
end;

procedure TMyStream.WriteByte(B: Byte);
begin
  Write(B, SizeOf(B));
end;

procedure TMyStream.WriteInteger(I: Integer);
begin
  Write(I, SizeOf(I));
end;

procedure TMyStream.WriteString(S: String);
var
  L : Integer;
begin
  L := Length(S);
  Write(L, SizeOf(L));
  Write(Pointer(S)^, L);
end;

procedure TMyStream.WriteFloat(F: Real);
begin
  Write(F, SizeOf(F));
end;

procedure TMyStream.WriteFont(F: TFont);
var
  I: Integer;
  S: String;
  P: TFontPitch;
  St: TFontStyles;
begin
  I := F.Charset;
  Write(I, SizeOf(Byte));
  Write(F.Color, SizeOf(F.Color));
  I := F.Size;
  Write(I, SizeOf(F.Size));
  WriteString(F.Name);
  P := F.Pitch;
  Write(P, SizeOf(F.Pitch));
  St := F.Style;
  Write(St, SizeOf(F.Style));
end;

function TMyStream.ReadByte: Byte;
var
  Temp: Byte;
begin
  Read(Temp, SizeOf(Temp));
  Result := Temp;
end;

function TMyStream.ReadInteger: Integer;
var
  Temp: Integer;
begin
  Read(Temp, SizeOf(Temp));
  Result := Temp;
end;

function TMyStream.ReadString: String;
var
  Temp: String;
  L: Integer;
begin
  Read(L, SizeOf(L));
  SetString(Temp, nil, L);
  Read(Pointer(Temp)^, L);
  Result := Temp;
end;

function TMyStream.ReadFloat: Real;
var
  Temp: Real;
begin
  Read(Temp, SizeOf(Temp));
  Result := Temp;
end;

procedure TMyStream.ReadFont(var F: TFont);
var
  I: Integer;
  C: TColor;
  S: String;
  P: TFontPitch;
  St: TFontStyles;
begin
  Read(I, SizeOf(Byte));
  F.Charset := I;
  Read(C, SizeOf(F.Color));
  F.Color := C;
  Read(I, SizeOf(F.Size));
  F.Size := I;
  S := ReadString;
  F.Name := S;
  Read(P, SizeOf(F.Pitch));
  F.Pitch := P;
  Read(St, SizeOf(F.Style));
  F.Style := St;
end;
end.
