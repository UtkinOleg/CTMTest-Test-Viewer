unit UsersUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB97Tlbr, TB97Ctls, TB97, ComCtrls, ExtCtrls, StdCtrls;

type
  TUsersForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    Splitter1: TSplitter;
    TreeView3: TTreeView;
    Splitter2: TSplitter;
    Panel3: TPanel;
    ListView1: TListView;
    Dock971: TDock97;
    Toolbar971: TToolbar97;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    ToolbarButton973: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    ToolbarButton974: TToolbarButton97;
    ToolbarSep972: TToolbarSep97;
    ToolbarSep973: TToolbarSep97;
    ToolbarButton975: TToolbarButton97;
    ToolbarButton976: TToolbarButton97;
    btnOK: TButton;
    btnCancel: TButton;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsersForm: TUsersForm;

implementation

{$R *.DFM}

end.
