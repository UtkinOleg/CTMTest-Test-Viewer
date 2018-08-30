unit ExtRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls;

type
  TExtDlg = class(TForm)
    Bevel1: TBevel;
    pb: TProgressBar;
    StaticText1: TStaticText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtDlg: TExtDlg;

implementation

{$R *.DFM}

end.
