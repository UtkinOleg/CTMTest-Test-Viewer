unit ImportExport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, ExtCtrls;

type
  TImportExportForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DirectoryEdit1: TDirectoryEdit;
    procedure Button1Click(Sender: TObject);
    procedure DirectoryEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportExportForm: TImportExportForm;

implementation

{$R *.DFM}

procedure TImportExportForm.Button1Click(Sender: TObject);
begin
 if DirectoryEdit1.Text <>'' then
  ModalResult := mrOk;
end;

procedure TImportExportForm.DirectoryEdit1KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if DirectoryEdit1.Text <>'' then
  ModalResult := mrOk;
end;

end.
