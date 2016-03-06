unit UnitCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, StdCtrls, Buttons, ExtCtrls, ToolWin,
  ActnCtrls, ActnMenus, FMTBcd, DB, SqlExpr;

type
  TFormCadFuncionario = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    Panel1: TPanel;
    ButSalvar: TBitBtn;
    ButExcluir: TBitBtn;
    ButCancelar: TBitBtn;
    ButLocalizar: TBitBtn;
    ButSair: TBitBtn;
    EditCodigo: TEdit;
    EditNome: TEdit;
    EditFuncao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ActionManager1: TActionManager;
    ActionSalvar: TAction;
    ActionLocalizar: TAction;
    Action1: TAction;
    ActionSair: TAction;
    ActionAlterar: TAction;
    ActionExcluir: TAction;
    ActionRelFuncionarios: TAction;
    ButAlterar: TBitBtn;
    SQLQuery1: TSQLQuery;
    ActionCancelar: TAction;
    procedure ButSairClick(Sender: TObject);
    procedure ActionLocalizarExecute(Sender: TObject);
    procedure ActionSairExecute(Sender: TObject);
    procedure ButLocalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionRelFuncionariosExecute(Sender: TObject);
    procedure ActionSalvarExecute(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure ActionAlterarExecute(Sender: TObject);
    procedure ActionCancelarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActionExcluirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadFuncionario: TFormCadFuncionario;

implementation

uses Unitpricipal, UnitLocFuncionario, UnitRelFuncionarios, UnitConfirmar;

{$R *.dfm}

//Bot�o de atalho para sair do sistema
procedure TFormCadFuncionario.ButSairClick(Sender: TObject);
begin
  ActionSairExecute(nil);

end;

//Evendo que abre o formul�rio para localiza��o de funcion�rio.
procedure TFormCadFuncionario.ActionLocalizarExecute(Sender: TObject);
begin
     Application.CreateForm(TFormLocFuncionario,FormLocFuncionario);
     FormLocFuncionario.Show;
     FormCadFuncionario.Enabled := False;

end;

//Menu que ativa a fun��o sair.
procedure TFormCadFuncionario.ActionSairExecute(Sender: TObject);
begin
     FormCadFuncionario.Close;
end;

//Bot�o de Atalho que abre o formul�rio para localiza��o de funcion�rio.
procedure TFormCadFuncionario.ButLocalizarClick(Sender: TObject);
begin
   ActionLocalizarExecute(nil);
end;

procedure TFormCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:= CaFree;
   FormPrincipal.Enabled := True;
   FormPrincipal.Show;
end;

//Evento que chama o relat�rio de funcion�rios.
procedure TFormCadFuncionario.ActionRelFuncionariosExecute(
  Sender: TObject);
begin
    Application.CreateForm(TformRelFuncionarios,FormRelFuncionarios);
    FormRelfuncionarios.QuickRep1.Preview;
end;

//A��o do But�o Salvar.
procedure TFormCadFuncionario.ActionSalvarExecute(Sender: TObject);
begin
    with SQLQuery1 do
       begin
           close;
           sql.Clear;
           sql.Add('insert into funcionarios(codigo,nome,funcao)');
           sql.Add('values(:1,:2,:3)');
           params[0].asstring := editcodigo.text;
           params[1].AsString := editnome.text;
           params[2].AsString := editfuncao.text;
           execsql;
           ShowMessage('Cadastro Realizado com Sucesso!');
           ActionCancelar.Execute;
       end;
end;

procedure TFormCadFuncionario.EditCodigoExit(Sender: TObject);
begin
  if EditCodigo.text <> ''
  then  begin
           with SQLQuery1 do
              begin
                close;
                sql.clear;
                sql.Add('select * from funcionarios');
                sql.Add('where codigo = :1');
                params[0].AsString := EditCodigo.Text;
                open;
                if not isempty
                then  begin
                      EditNome.text:= fieldbyname('nome').asstring;
                      EditFuncao.text := fieldbyname('funcao').asstring;
                      EditNome.Enabled := True;
                      EditFuncao.Enabled := True;
                      ActionAlterar.Enabled := True;
                      ActionExcluir.Enabled := True;
                      ActionLocalizar.Enabled := False;
                      end
                else begin
                         EditNome.Enabled := True;
                         EditFuncao.Enabled := True;
                         ActionSalvar.Enabled := True;
                         ActionAlterar.Enabled := False;
                         ActionExcluir.Enabled := False;
                         ActionLocalizar.Enabled := True;
                     end;

              end;
        end;
end;

//A��o de Altera��o.
procedure TFormCadFuncionario.ActionAlterarExecute(Sender: TObject);
begin
    with SQLQuery1 do
      begin
          sql.clear;
          sql.Add('Update funcionarios set nome =:1 , funcao =:2');
          sql.Add('where codigo = :3');
          params[0].AsString := editnome.text;
          Params[1].AsString := editfuncao.text;
          params[2].asstring := editcodigo.text;
          execsql;
          ShowMessage('Altera��o Realizada com Sucesso!');
          ActionCancelar.Execute;
      end;
end;

//A��o de cancelamento do formul�rio.
procedure TFormCadFuncionario.ActionCancelarExecute(Sender: TObject);
begin
    EditCodigo.Clear;
    EditNome.clear;
    EditFuncao.Clear;
    EditCodigo.SetFocus;
    EditNome.Enabled := False;
    EditFuncao.Enabled := False;
    ActionSalvar.Enabled := False;
    ActionAlterar.Enabled := False;
    ActionExcluir.Enabled := False;
    ActionLocalizar.Enabled := True;
end;

//Evento do bot�o enter.
procedure TFormCadFuncionario.FormKeyDown(Sender: TObject; var Key: Word;
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

//A��o do Bot�o Excluir.
procedure TFormCadFuncionario.ActionExcluirExecute(Sender: TObject);
begin
     FormCadFuncionario.Enabled := False;
     Application.CreateForm(TFormConfirmar,FormConfirmar);
     FormConfirmar.Show;
end;

//Evento On_Create.
procedure TFormCadFuncionario.FormCreate(Sender: TObject);
begin
      EditNome.Enabled := False;
      EditFuncao.Enabled := False;
      ActionSalvar.Enabled := False;
      ActionAlterar.Enabled := False;
      ActionExcluir.Enabled := False;
end;

end.
