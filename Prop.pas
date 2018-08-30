unit Prop;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, TB97Ctls, RxGrdCpt;

type
  TPropDlg = class(TForm)
    Bevel1: TBevel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RxGradientCaption1: TRxGradientCaption;
    Name: TEdit97;
    Level: TEdit97;
    TimeLimit: TEdit97;
    BeginDate: TEdit97;
    EndDate: TEdit97;
    Creator: TEdit97;
    UpdateDate: TEdit97;
    Spec: TEdit97;
    Comment: TEdit97;
    Label10: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PropDlg: TPropDlg;

implementation

{$R *.DFM}

end.
