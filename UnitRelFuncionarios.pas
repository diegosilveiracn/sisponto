unit UnitRelFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, FMTBcd, Provider, DBClient, DB,
  SqlExpr;

type
  TFormRelFuncionarios = class(TForm)
    QuickRep1: TQuickRep;
    SQLQuery1: TSQLQuery;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelFuncionarios: TFormRelFuncionarios;

implementation

uses Unitpricipal;

{$R *.dfm}

procedure TFormRelFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= Cafree;
end;

procedure TFormRelFuncionarios.FormCreate(Sender: TObject);
begin
     with SQLQuery1 do
       begin
         Close;
         Sql.Clear;
         Sql.Add('Select * from funcionarios');
         Open;
       end;
end;

end.
