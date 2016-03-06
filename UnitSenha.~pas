unit UnitSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Provider, SqlExpr, DB, DBClient,
  DBLocal, DBLocalS;

type
  TFormSenha = class(TForm)
    Panel1: TPanel;
    EditUsuario: TLabeledEdit;
    EditSenha: TLabeledEdit;
    ButAcessar: TBitBtn;
    ButCancelar: TBitBtn;
    SQLClientDataSet1: TSQLClientDataSet;
    procedure ButCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButAcessarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSenha: TFormSenha;

implementation

uses Unitpricipal;

{$R *.dfm}

procedure TFormSenha.ButCancelarClick(Sender: TObject);
begin
      FormSenha.Close;
      
end;

procedure TFormSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := Cafree;
    FormPrincipal.Enabled := true;
end;

procedure TFormSenha.ButAcessarClick(Sender: TObject);
begin

  with SQLClientDataSet1 do
   begin
    close;
    CommandText:= 'select * from senha'+
                  ' where usuario = ' +#39+ EditUsuario.Text +#39;
    open;
    If EOF then
      begin
        showmessage ('Usuário Não Cadastrado !!!');
        EditUsuario.setfocus;
      end
    else
     begin
       If FieldByName('senha').AsString <> EditSenha.Text then
          begin
            showmessage('Senha Inválida !!!');
            editsenha.SetFocus;
          end
       else
          begin
            FormPrincipal.ActionFuncionarios.Enabled := True;
            FormPrincipal.ActionLiberar.Enabled := False;
            FormPrincipal.ActionBloquear.Enabled := True;
            FormPrincipal.Enabled := True;
            FormPrincipal.ButLiberar.Enabled := False;
            FormPrincipal.ButBloquear.Enabled := True;
            FormSenha.Close;
          end;
    end;
end;
end;

procedure TFormSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
  vk_return:
   begin
   key:=0;
   perform(wm_nextdlgctl,0,0);
   end;
 end;
end;

end.
