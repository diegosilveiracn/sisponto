unit UnitGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, FMTBcd, DB, DBClient, Provider,
  SqlExpr;

type
  TFormRelGeral = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    SQLQuery1: TSQLQuery;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelGeral: TFormRelGeral;

implementation

uses Unitpricipal, UnitEscolha;

{$R *.dfm}

procedure TFormRelGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action:= Cafree;
end;




procedure TFormRelGeral.FormCreate(Sender: TObject);
begin
ShortDateFormat:= 'dd/mm/yyyy';
with SQLQuery1 do
        begin
        close;
        sql.Clear;
         sql.Add('select f.codigo, f.nome, f.funcao, fr.acao, fr.data, fr.hora');
         sql.Add('from funcionarios f, frequencias fr');
         sql.Add(' where data>= :1 and data<= :2 and f.codigo = fr.codigo');
         Params[0].Asdate:=strtodate(FormEscolha.EditDataInicial.text);
         Params[1].Asdate:=StrToDate(FormEscolha.EditDatafinal.Text);
         open;
         end;
end;

end.
