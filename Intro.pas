unit Intro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Registry, ExtCtrls, RXCtrls, ComCtrls, Richole, Buttons,
  ImgList, RxRichEd, mdCONTROLS;

type
  TIntroForm = class(TForm)
    ImageList1: TImageList;
    BitBtn1: TButton;
    PageControl1: TXPPageControl;
    TabSheet1: TXPTabSheet;
    TabSheet2: TXPTabSheet;
    re: TRxRichEdit;
    Label3: TLabel;
    lv: TXPListView;
    Label6: TLabel;
    RO: TRichEditWithOle;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CommentViewed : boolean;
  end;

var
  IntroForm: TIntroForm;

implementation

uses Loading, Main;

{$R *.DFM}

procedure TIntroForm.FormShow(Sender: TObject);
begin
  LoadingForm.Close;
  CommentViewed := False;
  PageControl1.ActivePageIndex := 0;
end;

procedure TIntroForm.BitBtn1Click(Sender: TObject);
begin
 if (not CommentViewed) and (RO.Lines.Count>0) then
 begin
  CommentViewed := True;
  PageControl1.ActivePageIndex := 1;
  ModalResult := mrNone;
 end
 else
  ModalResult := mrOk;
end;

procedure TIntroForm.PageControl1Change(Sender: TObject);
begin
 if PageControl1.ActivePageIndex = 1 then
  CommentViewed := True;
end;

end.
