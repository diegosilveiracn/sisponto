unit UnitAcao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TFormAcao = class(TForm)
    EditCodigo: TEdit;
    Panel1: TPanel;
    EditAcao: TEdit;
    EditData: TEdit;
    EditHora: TEdit;
    ButConfirmar: TBitBtn;
    ButCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SQLQuery1: TSQLQuery;
    LabelNome: TLabel;
    procedure ButCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ButConfirmarClick(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAcao: TFormAcao;

implementation

uses Unitpricipal;

{$R *.dfm}

procedure TFormAcao.ButCancelarClick(Sender: TObject);
begin
     FormAcao.Close;
end;
//Evento que fecha o aplicativo.
procedure TFormAcao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= Cafree;
    FormPrincipal.Enabled := True;
    FormPrincipal.Show;
end;

//Evento On_Create do formul�rio.
procedure TFormAcao.FormCreate(Sender: TObject);
var dia,ano,mes :word;
begin
   ShortDateFormat:= 'dd/mm/yyyy';
   Panel1.Enabled := False;
   EditHora.Text :=  TimeToStr(time);
   decodedate(date,ano,mes,dia);
   EditData.text := inttostr(dia)+ '/' + inttostr(mes)+  '/' + inttostr(ano);;
end;

//Evento que salva a a��o do funcion�rio.
procedure TFormAcao.ButConfirmarClick(Sender: TObject);
begin
     with SQLQuery1 do
   begin
     Close;
     Sql.Clear;
     sql.Add('Insert into Frequencias (Hora,Data, Codigo,Acao)');
     sql.Add('Values(:1,:2,:3,:4)');
     Params[2].AsString := EditCodigo.Text;
     Params[3].AsString := EditAcao.Text;
     Params[1].Asdate := StrToDate(EditData.Text);
     Params[0].AsString := EditHora.Text;
     execsql;
   end;
   ButCancelarClick(nil);

end;

procedure TFormAcao.EditCodigoExit(Sender: TObject);
begin
     if EditCodigo.Text<>''
     Then begin
              with SQLQuery1 do
                 begin
                    Close;
                    Sql.Clear;
                    Sql.Add('select * from funcionarios');
                    Sql.add('where codigo =:1');
                    Params[0].AsString := EditCodigo.text;
                    Open;
                    if not isempty then
                          LabelNome.Caption := Fieldbyname('nome').AsString
                    else  begin
                          ShowMessage('C�digo Inv�lido!');
                          EditCodigo.SetFocus;
                          end;
                 end;
           end

end;

//Evento para utiliza��o da tecla enter. 
procedure TFormAcao.FormKeyDown(Sender: TObject; var Key: Word;
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
