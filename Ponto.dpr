program Ponto;

uses
  Forms,
  Unitpricipal in 'Unitpricipal.pas' {FormPrincipal},
  UnitCadFuncionarios in 'UnitCadFuncionarios.pas' {FormCadFuncionario},
  UnitLocFuncionario in 'UnitLocFuncionario.pas' {FormLocFuncionario},
  UnitSobre in 'UnitSobre.pas' {FormSobre},
  UnitRelFuncionarios in 'UnitRelFuncionarios.pas' {FormRelFuncionarios},
  UnitRelPorCodigo in 'UnitRelPorCodigo.pas' {FormRelPorCodigo},
  UnitGeral in 'UnitGeral.pas' {FormRelGeral},
  UnitSenha in 'UnitSenha.pas' {FormSenha},
  UnitAcao in 'UnitAcao.pas' {FormAcao},
  UnitEscolha in 'UnitEscolha.pas' {FormEscolha},
  UnitConfirmar in 'UnitConfirmar.pas' {FormConfirmar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
