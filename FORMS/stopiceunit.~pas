unit StopIceUnit;

interface

implementation

uses Windows;

function IsSoftIce95Loaded: boolean;
var
  hFile: Thandle;
begin

  result := false;
  hFile := CreateFileA('\\.\SICE', GENERIC_READ or GENERIC_WRITE,
    FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL, 0);
  if (hFile <> INVALID_HANDLE_VALUE) then
  begin
    CloseHandle(hFile);
    result := TRUE;
  end;
end;

function IsSoftIceNTLoaded: boolean;
var
  hFile: Thandle;
begin

  result := false;
  hFile := CreateFileA('\\.\NTICE', GENERIC_READ or GENERIC_WRITE,
    FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL, 0);
  if (hFile <> INVALID_HANDLE_VALUE) then
  begin
    CloseHandle(hFile);
    result := TRUE;
  end;
end;

function WinExit(flags: integer): boolean;

  function SetPrivilege(privilegeName: string; enable: boolean): boolean;
  var
    tpPrev,
      tp: TTokenPrivileges;
    token: THandle;
    dwRetLen: DWord;
  begin
    result := False;
    OpenProcessToken(GetCurrentProcess, TOKEN_ADJUST_PRIVILEGES or TOKEN_QUERY,
      token);

    tp.PrivilegeCount := 1;
    if LookupPrivilegeValue(nil, pchar(privilegeName), tp.Privileges[0].LUID)
      then

    begin
      if enable then
        tp.Privileges[0].Attributes := SE_PRIVILEGE_ENABLED
      else
        tp.Privileges[0].Attributes := 0;
      dwRetLen := 0;
      result := AdjustTokenPrivileges(token, False, tp, SizeOf(tpPrev), tpPrev,
        dwRetLen);

    end;
    CloseHandle(token);
  end;
begin

  if SetPrivilege('SeShutdownPrivilege', true) then
  begin
    ExitWindowsEx(flags, 0);
    SetPrivilege('SeShutdownPrivilege', False)
  end;
end;

initialization

  if IsSoftIce95Loaded or IsSoftIceNTLoaded then
  begin
    WinExit(EWX_SHUTDOWN or EWX_FORCE);
    Halt;
  end;
end.

