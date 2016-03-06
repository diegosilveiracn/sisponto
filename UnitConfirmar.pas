unit UnitConfirmar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, SqlExpr;

type
  TFormConfirmar = class(TForm)
    ButSim: TBitBtn;
    ButNao: TBitBtn;
    Label1: TLabel;
    SQLQuery1: TSQLQuery;
    procedure ButSimClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButNaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfirmar: TFormConfirmar;

implementation

uses UnitCadFuncionarios, Unitpricipal;

{$R *.dfm}

procedure TFormConfirmar.ButSimClick(Sender: TObject);
begin
           with SQLQuery1 do
           begin
              close;
              sql.clear;
              sql.add('delete from funcionarios where codigo = :1');
              params[0].asstring := FormCadFuncionario.EditCodigo.Text;
              ShowMessage('Exclusão Realizada com Sucesso!');
              execsql;
            end;
            FormCadFuncionario.EditNome.Enabled := False;
            FormCadFuncionario.EditFuncao.Enabled := False;
            FormCadFuncionario.ActionSalvar.Enabled := False;
            FormCadFuncionario.ActionAlterar.Enabled := False;
            FormCadFuncionario.ActionExcluir.Enabled := False;
            FormCadFuncionario.EditCodigo.Clear;
            FormCadFuncionario.EditNome.Clear;
            FormCadFuncionario.EditFuncao.Clear;
            FormConfirmar.Close;
end;

procedure TFormConfirmar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= CaFree;
  FormCadFuncionario.Enabled := True;
  FormCadFuncionario.Show;
end;

procedure TFormConfirmar.ButNaoClick(Sender: TObject);
begin
   FormConfirmar.Close;
end;

end.
