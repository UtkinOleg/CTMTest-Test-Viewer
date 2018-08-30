unit CommentForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, StdCtrls, ComCtrls, Richole, ExtCtrls, Printers, TB97Ctls,
  RxRichEd, Buttons, ShellApi, Math, ActnList, ClipBrd;

const
  RulerAdj = 4/3;

type
  TCommentDlg = class(TForm)
    Panel1: TPanel;
    PrintDialog1: TPrintDialog;
    RO: TRxRichEdit;
    TrackBar1: TTrackBar;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ROSelectionChange(Sender: TObject);
    procedure ROKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure ROKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function RulerToIndent(RulerPos: Integer; IsRight: Boolean): Integer;
    function IndentToRuler(Indent: Integer; IsRight: Boolean): Integer;
  end;

var
  CommentDlg: TCommentDlg;

implementation

{$R *.DFM}

procedure TCommentDlg.Button2Click(Sender: TObject);
begin
 if PrintDialog1.Execute then
   RO.Print(Caption);
end;

procedure TCommentDlg.BitBtn1Click(Sender: TObject);
begin
 ShellExecute(0, Nil, PChar(ExtractFilePath(paramstr(0))+'temp.rtf'), Nil, Nil, SW_NORMAL);
end;

procedure TCommentDlg.FormShow(Sender: TObject);
begin
 RO.SetSelection(0,0,False);
end;

function TCommentDlg.RulerToIndent(RulerPos: Integer; IsRight: Boolean): Integer;
var
  R: TRect;
  P: TPoint;
begin
  P.Y := 0; P.X := RulerPos;
  P := ClientToScreen(P);
  with RO do begin
    P := ScreenToClient(P);
    SendMessage(Handle, EM_GETRECT, 0, Longint(@R));
    if IsRight then
      Result := R.BottomRight.X - P.X
    else
      Result := P.X - R.TopLeft.X;
  end;
  Result := Trunc(Result / RulerAdj);
end;

procedure TCommentDlg.TrackBar1Change(Sender: TObject);
begin
  RO.SelectAll;
  RO.Paragraph.FirstIndent := Max(0, RulerToIndent(TrackBar1.Position,
    False));
end;

procedure TCommentDlg.FormResize(Sender: TObject);
begin
 TrackBar1.Max := RO.Width;
end;

function TCommentDlg.IndentToRuler(Indent: Integer; IsRight: Boolean): Integer;
var
  R: TRect;
  P: TPoint;
begin
  Indent := Trunc(Indent * RulerAdj);
  with RO do begin
    SendMessage(Handle, EM_GETRECT, 0, Longint(@R));
    if IsRight then begin
      P := R.BottomRight;
      P.X := P.X - Indent;
    end
    else begin
      P := R.TopLeft;
      P.X := P.X + Indent;
    end;
    P := ClientToScreen(P);
  end;
  P := ScreenToClient(P);
  Result := P.X;
end;

procedure TCommentDlg.ROSelectionChange(Sender: TObject);
begin
//  TrackBar1.Position := IndentToRuler(RO.Paragraph.FirstIndent, False);
end;

procedure TCommentDlg.ROKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_ESCAPE then Close;
end;

procedure TCommentDlg.Action1Execute(Sender: TObject);
begin
 if PrintDialog1.Execute then
   RO.Print(Caption);
end;

procedure TCommentDlg.Action2Execute(Sender: TObject);
begin
 ShellExecute(0, Nil, PChar(ExtractFilePath(paramstr(0))+'temp.rtf'), Nil, Nil, SW_NORMAL);
end;

procedure TCommentDlg.ROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ((Key = ord('C')) and (ssCtrl in Shift)) then
  begin
    ClipBoard.Clear;
    key := 0;
  end
 else
 if ((Key = ord('X')) and (ssCtrl in Shift)) then
  begin
    ClipBoard.Clear;
    key := 0;
  end
 else
 if ((Key = VK_INSERT) and (ssCtrl in Shift)) then
  begin
    ClipBoard.Clear;
    key := 0;
  end;
end;

end.
