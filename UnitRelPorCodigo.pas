unit UnitRelPorCodigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, FMTBcd, SqlExpr, DB, Provider, DBClient,
  QRCtrls;

type
  TFormRelPorCodigo = class(TForm)
    QuickRep1: TQuickRep;
    SQLQuery1: TSQLQuery;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelPorCodigo: TFormRelPorCodigo;

implementation

uses Unitpricipal, UnitEscolha;

{$R *.dfm}

procedure TFormRelPorCodigo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= CaFree;

end;

procedure TFormRelPorCodigo.FormCreate(Sender: TObject);
begin
ShortDateFormat:= 'dd/mm/yyyy';
with SQLQuery1 do
        begin
        close;
        sql.Clear;
         sql.Add('select f.codigo, f.nome, f.funcao, fr.acao, fr.data, fr.hora');
         sql.Add('from funcionarios f, frequencias fr');
         sql.Add(' where data>= :1 and data<= :2 and f.codigo = :3 and f.codigo = fr.codigo');
         Params[0].Asdate:=strtodate(FormEscolha.EditDataInicial.text);
         Params[1].Asdate:=StrToDate(FormEscolha.EditDatafinal.Text);
         params[2].asstring:= FormEscolha.EditCodigo.Text;
         open;
         end;


end;

end.
