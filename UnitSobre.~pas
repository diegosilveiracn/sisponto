unit UnitSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFormSobre = class(TForm)
    ButOk: TBitBtn;
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure ButOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSobre: TFormSobre;

implementation

uses Unitpricipal;

{$R *.dfm}

procedure TFormSobre.ButOkClick(Sender: TObject);
begin
    FormSobre.Close;
    FormPrincipal.Enabled := True;
    FormPrincipal.show;
    
end;

procedure TFormSobre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=Cafree;
end;

end.
