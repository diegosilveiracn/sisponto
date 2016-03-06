unit Unitpricipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ActnMan, AppEvnts, ExtCtrls, StdCtrls, Buttons,
  ToolWin, ActnCtrls, ActnMenus, ComCtrls, ImgList, DBXpress, DB, SqlExpr,
  Provider, DBClient, DBLocal, DBLocalS, Menus, ShellAPI, CustomizeDlg;

type
  TFormPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ButEntrada: TBitBtn;
    ButSaida: TBitBtn;
    Image1: TImage;
    ApplicationEvents1: TApplicationEvents;
    Timer1: TTimer;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    ActionEntrada: TAction;
    ActionSaida: TAction;
    Action1: TAction;
    ActionSair: TAction;
    ActionGerarRelatorio: TAction;
    ActionFuncionarios: TAction;
    ActionSobre: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    SQLConnection1: TSQLConnection;
    ActionLiberar: TAction;
    ActionBloquear: TAction;
    ButLiberar: TBitBtn;
    ButBloquear: TBitBtn;
    PopupMenu: TPopupMenu;
    Restaurar: TMenuItem;
    Sair: TMenuItem;
    procedure ApplicationEvents1ActionExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure ActionSairExecute(Sender: TObject);
    procedure ActionFuncionariosExecute(Sender: TObject);
    procedure ActionSobreExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionPCodigoExecute(Sender: TObject);
    procedure ActionGerarRelatorioExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionLiberarExecute(Sender: TObject);
    procedure ActionBloquearExecute(Sender: TObject);
    procedure ActionEntradaExecute(Sender: TObject);
    procedure ActionSaidaExecute(Sender: TObject);
    procedure ButLiberarClick(Sender: TObject);
    procedure ButBloquearClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RestaurarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  protected
    //Procedimento para o ícone no SystemTray.
    procedure WndProc(var Msg: TMessage); override;

  public
    IconData: TNotifyIconData;
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

uses UnitCadFuncionarios, UnitSobre, UnitRelFuncionarios, UnitRelPorCodigo,
  UnitGeral, UnitSenha, UnitAcao, UnitEscolha;

{$R *.dfm}

procedure TFormPrincipal.ApplicationEvents1ActionExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
     StatusBar1.Panels[0].text := Application.Hint;
end;

procedure TFormPrincipal.Timer1Timer(Sender: TObject);
begin
     StatusBar1.Panels[1].Text := TimeToStr(time);
end;

procedure TFormPrincipal.Action2Execute(Sender: TObject);
begin
   close;
end;

//Ação que fecha o Sistema de Ponto.
procedure TFormPrincipal.ActionSairExecute(Sender: TObject);
begin
   FormPrincipal.close;
end;

procedure TFormPrincipal.ActionFuncionariosExecute(Sender: TObject);
begin
     Application.CreateForm(TFormCadFuncionario,FormCadFuncionario);
     FormCadFuncionario.Show;
     FormPrincipal.Enabled := False;
end;

procedure TFormPrincipal.ActionSobreExecute(Sender: TObject);
begin
    Application.CreateForm(TFormsobre,Formsobre);
    Formsobre.show;
    FormPrincipal.Enabled := False;
end;

procedure TFormPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:= Cafree;
    Action := caNone;
    FormPrincipal.Hide;
end;

procedure TFormPrincipal.ActionPCodigoExecute(Sender: TObject);
begin
     Application.CreateForm(TFormEscolha,FormEscolha);
     FormEscolha.Show;
     FormPrincipal.Enabled := False;
end;

procedure TFormPrincipal.ActionGerarRelatorioExecute(Sender: TObject);
begin
    Application.CreateForm(TFormEscolha,FormEscolha);
    FormEscolha.Show;
    FormPrincipal.Enabled := False;
end;

//Evendo On_Create do Formulário.
procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
      ActionBloquear.Enabled := False;
      ActionFuncionarios.Enabled := False;
      ButBloquear.Enabled := False;

      //Definir ícone na Barra de Atalho.
      IconData.cbSize := sizeof(IconData);
      IconData.Wnd := Handle;
      IconData.uID := 100;
      IconData.uFlags := NIF_MESSAGE + NIF_ICON + NIF_TIP;
      IconData.uCallbackMessage := WM_USER + 1;
      IconData.hIcon := Application.Icon.Handle;
      StrPCopy(IconData.szTip, Application.Title);
      Shell_NotifyIcon(NIM_ADD, @IconData);
      //===============================.
end;

//Ação que libera o acesso ao cadastro de funcionários.
procedure TFormPrincipal.ActionLiberarExecute(Sender: TObject);
begin
   Application.CreateForm(TFormSenha,FormSenha);
   FormSenha.Show;
   FormPrincipal.Enabled := False;
end;

//Ação que bloqueia o acesso ao cadastro de funcionários.
procedure TFormPrincipal.ActionBloquearExecute(Sender: TObject);
begin
     ActionFuncionarios.Enabled := False;
     ActionBloquear.Enabled := False;
     ActionLiberar.Enabled := True;
     ButLiberar.Enabled := True;
     ButBloquear.Enabled := False;
end;

//Ação para registro de entrada
procedure TFormPrincipal.ActionEntradaExecute(Sender: TObject);
begin
  FormPrincipal.Enabled := False;
  Application.CreateForm(TFormAcao,FormAcao);
  FormAcao.show;
  FormAcao.Caption := 'ENTRADA';
  FormAcao.EditAcao.Text := 'ENTRADA';
end;

//Ação para registro de saída
procedure TFormPrincipal.ActionSaidaExecute(Sender: TObject);
begin
  FormPrincipal.Enabled := False;
  Application.CreateForm(TFormAcao,FormAcao);
  FormAcao.show;
  FormAcao.Caption := 'SAÍDA';
  FormAcao.EditAcao.Text := 'SAÍDA';
end;

//Botão de Atalho que Libera o cadastro de Funcionários.
procedure TFormPrincipal.ButLiberarClick(Sender: TObject);
begin
   ActionLiberar.Execute;
end;

//Botão de Atalho que Bloqueia o cadastro de Funcionários.
procedure TFormPrincipal.ButBloquearClick(Sender: TObject);
begin
   ActionBloquear.Execute;
end;

//Evento que apaga o ícone na barra de ferramentas.
procedure TFormPrincipal.FormDestroy(Sender: TObject);
begin
   Shell_NotifyIcon(NIM_DELETE, @IconData);
end;

//PopMenu
procedure TFormPrincipal.WndProc(var Msg: TMessage);
var
  p: TPoint;
begin
  case Msg.Msg of
    WM_USER + 1:
      case Msg.lParam of
        WM_RBUTTONDOWN:
          begin
            // Popup the popup menu
            SetForegroundWindow(Handle);
            GetCursorPos(p);
            PopupMenu.Popup(p.x, p.y);
            PostMessage(Handle, WM_NULL, 0, 0);
          end;
        WM_LBUTTONDBLCLK:
          begin
            Restaurar.Click;
          end;
      end;
  end;
  inherited;
end;

//PopMenu Click para restaurar o aplicativo.
procedure TFormPrincipal.RestaurarClick(Sender: TObject);
begin
  FormPrincipal.Show;
  ShowWindow(Application.Handle, SW_HIDE);
end;

//PopMenu Click para fechar o aplicativo.
procedure TFormPrincipal.SairClick(Sender: TObject);
begin
  Application.ProcessMessages;
  Application.Terminate;
end;

end.
