unit UnitEscolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, ExtCtrls, Buttons, Mask;

type
  TFormEscolha = class(TForm)
    ButGerar: TBitBtn;
    ButCancelar: TBitBtn;
    SQLQuery1: TSQLQuery;
    RadioGroup1: TRadioGroup;
    EditCodigo: TEdit;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LabelNome: TLabel;
    EditDataInicial: TMaskEdit;
    EditDataFinal: TMaskEdit;
    procedure EditCodigoExit(Sender: TObject);
    procedure ButCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButGerarClick(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure EditDataInicialExit(Sender: TObject);
    procedure EditDataFinalExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     //Declaração para avaliação da data.
     Procedure TrataErro(Sender : TObject ; E:Exception);
    { Public declarations }
  end;

var
  FormEscolha: TFormEscolha;

implementation

uses Unitpricipal, UnitRelPorCodigo, UnitGeral;

{$R *.dfm}

//Avaliação do formato da data.
Procedure TformEscolha.TrataErro(Sender :TObject ; E :Exception);
Begin
  if Copy(E.Message,Length(E.Message)-9,10)='valid date' then
     Begin
     if Tag=0 then
       begin
         EditDataInicial.SetFocus;
         ShowMessage('Data Inicial Inválida!');
       end
       else  begin
               EditDataFinal.SetFocus;
               ShowMessage('Data Final Inválida!');
             end;
     end;
end;


procedure TFormEscolha.EditCodigoExit(Sender: TObject);
begin
   if EditCodigo.Text <>'' Then
      Begin
         with SQLQuery1 do
            begin
                close;
                Sql.clear;
                Sql.Add('Select * from Funcionarios');
                Sql.Add('Where codigo = :1');
                Params[0].AsString := EditCodigo.Text;
                Open;

                If not isempty then
                     begin
                     Label1.Caption := FieldByName('Nome').AsString;
                     ButGerar.Enabled := True;
                     end
                else
                    begin
                    ShowMessage('Código Inválido!');
                    EditCodigo.Setfocus;
                    end;
            end;
     end;
end;

procedure TFormEscolha.ButCancelarClick(Sender: TObject);
begin
    FormEscolha.Close;   
end;

procedure TFormEscolha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action:= Cafree;
     FormPrincipal.Enabled := True;
     FormPrincipal.Show;
end;

procedure TFormEscolha.FormCreate(Sender: TObject);
begin
     ButGerar.Enabled := False;
end;

procedure TFormEscolha.ButGerarClick(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = 0 Then
     begin
       if EditDataInicial.Text = ''Then
           begin
             ShowMessage('Preencher o Campo Data Inicial !');
             EditCodigo.SetFocus;
           end
       else  if EditDataFinal.Text = '' Then
                begin
                   ShowMessage('Preencher o Campo Data Final');
                   EditDataFinal.SetFocus;
                end
             else begin
                    Application.CreateForm(TFormRelGeral, FormRelGeral);
                    FormRelGeral.QuickRep1.Preview;
                  end;
     end
   else
     begin
       if EditCodigo.Text = '' Then
           begin
             ShowMessage('Preencher o Campo Código!');
             EditCodigo.SetFocus;
           end
       else if EditDataInicial.Text = ''Then
                begin
                  ShowMessage('Preencher o Campo Data Inicial !');
                  EditCodigo.SetFocus;
                end
            else if EditDataFinal.Text = '' Then
                    begin
                      ShowMessage('Preencher o Campo Data Final');
                      EditDataFinal.SetFocus;
                    end
                 else begin
                        Application.CreateForm(TFormRelPorCodigo, FormRelPorCodigo);
                        FormRelPorCodigo.QuickRep1.Preview;
                      end;
     end;


end;

procedure TFormEscolha.Edit3Exit(Sender: TObject);
begin
if EditCodigo.Text <>'' Then
      Begin
         with SQLQuery1 do
            begin
                close;
                Sql.clear;
                Sql.Add('Select * from Funcionarios');
                Sql.Add('Where codigo = :1');
                Params[0].AsString := EditCodigo.Text;
                Open;

                If not isempty then
                     begin
                     LabelNome.Caption := FieldByName('Nome').AsString;
                     ButGerar.Enabled := True;
                     end
                else
                    begin
                    ShowMessage('Código Inválido!');
                    EditCodigo.Setfocus;
                    end;
            end;
     end;
end;

procedure TFormEscolha.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormEscolha.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
  begin
    EditCodigo.Enabled:=false;
    ButGerar.Enabled:=true;
  end
else
    begin
      ButGerar.Enabled := True;
      EditCodigo.Enabled := True;
    end;
end;

procedure TFormEscolha.EditDataInicialExit(Sender: TObject);
begin
    Tag:= 0;
    StrToDate(EditDataInicial.Text);
end;

procedure TFormEscolha.EditDataFinalExit(Sender: TObject);
begin
   Tag:= 1;
   StrToDate(EditDataFinal.Text);
end;

procedure TFormEscolha.FormShow(Sender: TObject);
begin
    Application.OnException := TrataErro;
end;

end.
