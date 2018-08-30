unit cpuid;

interface

uses windows, sysutils;

const
  { Error flags }
  ERR_NOERROR = 0;
  ERR_CPUIDNOTSUPPORTED = (-1);
  ERR_EXECUTIONLEVELNOTSUPPORTED = (-2);
  ERR_BADINFOSTRUCTURE = (-3);

  { Return value identifiers }
  VAL_NOVALUE = 0;

  { CPUID EFLAGS Id bit }
  CPUIDID_BIT	=	$200000;

  { Default Benchmark delay }
  BENCHMARK_DELAY = 500;

  { Processor flags (temporary - for future SMP support) }
  USE_DEFAULT = 0;

  { CPUID execution levels }
  CPUID_MAXLEVEL        : DWORD = $0;
  CPUID_VENDORSIGNATURE : DWORD = $0;
  CPUID_CPUSIGNATURE    : DWORD = $1;
  CPUID_CPUFEATURESET   : DWORD = $1;
  CPUID_CACHETLB        : DWORD = $2;
  CPUID_CPUSERIALNUMBER : DWORD = $3;
  CPUID_MAXLEVELEX      : DWORD = $80000000;
  CPUID_CPUSIGNATUREEX  : DWORD = $80000001;
  CPUID_CPUMARKETNAME1  : DWORD = $80000002;
  CPUID_CPUMARKETNAME2  : DWORD = $80000003;
  CPUID_CPUMARKETNAME3  : DWORD = $80000004;
  CPUID_LEVEL1CACHETLB  : DWORD = $80000005;
  CPUID_LEVEL2CACHETLB  : DWORD = $80000006;

  { CPUID result indexes }
  EAX = 1;
  EBX = 2;
  ECX = 3;
  EDX = 4;

  { Standard feature set flags }
  SFS_FPU     = 0;
  SFS_VME     = 1;
  SFS_DE      = 2;
  SFS_PSE     = 3;
  SFS_TSC     = 4;
  SFS_MSR     = 5;
  SFS_PAE     = 6;
  SFS_MCE     = 7;
  SFS_CX8     = 8;
  SFS_APIC    = 9;
  SFS_SEP     = 11;
  SFS_MTRR    = 12;
  SFS_PGE     = 13;
  SFS_MCA     = 14;
  SFS_CMOV    = 15;
  SFS_PAT     = 16;
  SFS_PSE36   = 17;
  SFS_SERIAL  = 18;
  SFS_CLFLUSH = 19;
  SFS_DTS     = 21;
  SFS_ACPI    = 22;
  SFS_MMX     = 23;
  SFS_XSR     = 24;
  SFS_SIMD    = 25;
  SFS_SIMD2   = 26;
  SFS_SS      = 27;
  SFS_TM      = 29;


  { Extended feature set flags (duplicates removed) }
  EFS_EXMMXA  = 22; { AMD Specific }
  EFS_EXMMXC  = 24; { Cyrix Specific }
  EFS_3DNOW   = 31;
  EFS_EX3DNOW = 30;

  { Processor family values }
  CPU_486CLASS        = 4;
  CPU_PENTIUMCLASS    = 5;
  CPU_PENTIUMIICLASS  = 6;
  CPU_PENTIUMIVCLASS  = 15;

  { Pentium III-specific model }
  CPU_PENTIUMIIIMODEL = 7;

  { Processor type values }
  CPU_OVERDRIVE       = 1;

  { Extended Cache Levels }
  CACHE_LEVEL1        = 0;
  CACHE_LEVEL2        = 1;

  { Brand ID Identifiers }
  BRAND_UNSUPPORTED    = 0;
  BRAND_CELERON        = 1;
  BRAND_PENTIUMIII     = 2;
  BRAND_PENTIUMIIIXEON = 3;
  BRAND_PENTIUMIV      = 8;

  { Extended Model & Family Indicator }
  EXTENDED_FIELDS      = $f;

  { Normalised processor speeds }
  MAX_SPEEDS = 47;
  CPUSPEEDS: array[0..MAX_SPEEDS - 1] of Integer = (
              25,  33,  60,  66,  75,  82,  90,  100, 110, 116, 120, 133, 150, 166, 180,
              188, 200, 225, 233, 266, 300, 333, 350, 366, 400, 415, 433, 450, 466, 500,
              533, 550, 600, 650, 667, 700, 733, 750, 800, 833, 850, 866, 900, 933, 950,
              966, 1000);

  { Speeds below this value use the CPUSPEEDS_LO array, above uses CPUSPEEDS_HI }
  SPEED_LO_THRESHOLD = 300;

  { Possible normalised unit values for speeds < SPEED_LO_THRESHOLD }
  MAX_SPEEDS_LO = 15;
  CPUSPEEDS_LO: array[0..MAX_SPEEDS_LO - 1] of Integer = (
                 0, 10, 16, 20, 25, 33, 40, 50, 60, 66, 75, 80, 82, 88, 90);

  { Possible normalised unit values for speeds >= SPEED_LO_THRESHOLD }
  MAX_SPEEDS_HI = 5;
  CPUSPEEDS_HI: array[0..MAX_SPEEDS_HI - 1] of Integer = (0, 33, 50, 66, 100);

type
  TCPUIDResult = packed record
    EAX: Cardinal;
    EBX: Cardinal;
    ECX: Cardinal;
    EDX: Cardinal;
  end;

  TVendor = array[0..11] of char;

  function GetCPUSerialNumberRaw: DWord;
  function GetCPUSerialNumber: String;
  function GetHDDSerialNumber: DWord;
  function GetCPUVendor: TVendor; assembler; register;
  function GetCPUCount: byte;
  function GetCPUIDSupport: Boolean;

var
  CPUID_LastError: LongInt;
  CPUID_Level: Cardinal;

implementation

function GetCPUCount: byte;
var
  si: TSystemInfo;
begin
  GetSystemInfo(si);
  Result := si.dwNumberOfProcessors;
end;

function GetCPUVendor: TVendor; assembler; register;
asm
  PUSH EBX {Save affected register}
  PUSH EDI
  MOV EDI,EAX {@Result (TVendor)}
  MOV EAX,0
  DW $A20F {CPUID Command}
  MOV EAX,EBX
  XCHG EBX,ECX {save ECX result}
  MOV ECX,4
@1:
  STOSB
  SHR EAX,8
  LOOP @1
  MOV EAX,EDX
  MOV ECX,4
@2:
  STOSB
  SHR EAX,8
  LOOP @2
  MOV EAX,EBX
  MOV ECX,4
@3:
  STOSB
  SHR EAX,8
  LOOP @3
  POP EDI {Restore registers}
  POP EBX
end;

  function GetCPUIDSupport: Boolean;
  { Returns TRUE if the CPU supports the CPUID instruction, FALSE otherwise }
  asm
    PUSHFD
    POP     EAX
    MOV     EDX, EAX
    XOR     EAX, CPUIDID_BIT
    PUSH    EAX
    POPFD
    PUSHFD
    POP     EAX
    XOR     EAX, EDX
    JZ      @exit
    MOV     AL, TRUE
  @exit:
  end; //------------

  function ExecuteCPUID: TCPUIDResult; assembler;
  { Executes the CPUID instruction at the required level }
  asm
    PUSH    EBX
    PUSH    EDI
    MOV     EDI, EAX
    MOV     EAX, CPUID_LEVEL
    DW      $A20F
    STOSD
    MOV     EAX, EBX
    STOSD
    MOV     EAX, ECX
    STOSD
    MOV     EAX, EDX
    STOSD
    POP     EDI
    POP     EBX
  end; //------------

  function GetMaxCPUIDLevel: LongInt;
  { Returns the maximum supported standard CPUID level }
  var
    Signature: TCPUIDResult;
  begin
    if (GetCPUIDSupport) then begin
      CPUID_Level := CPUID_MAXLEVEL;
      Signature := ExecuteCPUID;
      Result := Signature.EAX;
    end else begin
      CPUID_LastError := ERR_CPUIDNOTSUPPORTED;
      Result := VAL_NOVALUE;
    end;
  end;  //------------

  function GetMaxExCPUIDLevel: Cardinal;
  { Returns the maximum supported extended CPUID level }
  var
    Signature: TCPUIDResult;
  begin
    if (GetCPUIDSupport) then begin
      CPUID_LEVEL := CPUID_MAXLEVELEX;
      Signature := ExecuteCPUID;
      Result := Signature.EAX;
    end else begin
      CPUID_LastError := ERR_CPUIDNOTSUPPORTED;
      Result := VAL_NOVALUE;
    end;
  end;  //------------

  function GetMaxExCPUIDLevelI: LongInt;
  { Returns a normal longint representing the maximum extended CPUID level }
  var
    MaxLevel: Cardinal;
  begin
    MaxLevel := GetMaxExCPUIDLevel;
    if ((MaxLevel and not(CPUID_MAXLEVELEX)) >= 8) then
      Result := 0
    else
      Result := (MaxLevel and not(CPUID_MAXLEVELEX));
  end;

  function ExecuteCPUIDEx(AExecutionLevel: Cardinal; AIterations: Byte; var AResult: TCPUIDResult): Boolean;
  { Verifies whether the CPUID instruction is supported at the required level and and if it is
    then it is executed the number of times specified by AIterations }
  var
    Iteration: Byte;
  begin
    if not(GetCPUIDSupport) then begin
      CPUID_LastError := ERR_CPUIDNOTSUPPORTED;
      Result := FALSE;
      Exit;
    end;

    if (LongInt(AExecutionLevel) > GetMaxCPUIDLevel) and (AExecutionLevel > GetMaxExCPUIDLevel) then begin
      CPUID_LastError := ERR_EXECUTIONLEVELNOTSUPPORTED;
      Result := FALSE;
      Exit;
    end;

    // Execute the CPUID instruction
    CPUID_LEVEL := AExecutionLevel;
    for Iteration := 1 to AIterations do
      AResult := ExecuteCPUID;

    CPUID_LastError := ERR_NOERROR;
    Result := TRUE;
  end;

  function GetCPUSerialNumber: String;
  { Returns the processor serial number (Intel PIII only)
    Based on code submitted by Pierrick Lucas }
    function SplitToNibble(ANumber: String): String;
    { Formats 8-digit number into 4-digit nibbles XXXX-XXXX }
    begin
      Result := Copy(ANumber, 0, 4) + '-' + Copy(ANumber, 5, 4);
    end;
  var
    SerialNumber: TCPUIDResult;
  begin
    Result := '';
    if (ExecuteCPUIDEx(CPUID_CPUSIGNATURE, 1, SerialNumber)) then begin
      Result := SplitToNibble(IntToHex(SerialNumber.EAX, 8)) + '-';
      if (ExecuteCPUIDEx(CPUID_CPUSIGNATURE, 1, SerialNumber)) then begin
        Result := Result + SplitToNibble(IntToHex(SerialNumber.EDX, 8)) + '-';
        Result := Result + SplitToNibble(IntToHex(SerialNumber.ECX, 8));
      end else
        Result := '';
    end else
      Result := '';
  end;  //------------

  function GetCPUSerialNumberRaw: DWord;
  { Returns the processor serial number (Intel PIII+) only without formatting }
  var
    SerialNumber: TCPUIDResult;
  begin
    Result := 0;
    if (ExecuteCPUIDEx(CPUID_CPUSIGNATURE, 1, SerialNumber)) then begin
      if (ExecuteCPUIDEx(CPUID_CPUSIGNATURE, 1, SerialNumber)) then begin
        Result := SerialNumber.EDX+SerialNumber.EAX;
      end else
        Result := 0;
    end else
      Result := 0;
  end;  //------------

function GetHDDSerialNumber: DWord;
var
 SerialNum : dword;
 a, b : dword;
 Buffer : array [0..255] of char;
begin
  if GetVolumeInformation('c:\', Buffer, SizeOf(Buffer), @SerialNum, a, b, nil, 0) then
    Result := SerialNum
  else
    if GetVolumeInformation('d:\', Buffer, SizeOf(Buffer), @SerialNum, a, b, nil, 0) then
      Result := SerialNum
    else
      Result := 0;
end;  //------------

end.
