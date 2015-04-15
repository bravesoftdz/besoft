unit uServAplicacao;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  IPPeerServer,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.AppEvnts, Vcl.ExtCtrls;

type
  TfrmsrvAplicacao = class(TForm)
    pcConfiguracaoSrvAplic: TPageControl;
    tsConfigPorta: TTabSheet;
    tsConfigDB: TTabSheet;
    gbSrvTCP: TGroupBox;
    Label1: TLabel;
    edtPortaTCP: TEdit;
    gbSrvHTTP: TGroupBox;
    Label2: TLabel;
    edtPortaHTTP: TEdit;
    btnAtivar: TButton;
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    procedure btnAtivarTCPClick(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsrvAplicacao: TfrmsrvAplicacao;

implementation

{$R *.dfm}
uses
  uSrvMet;

procedure TfrmsrvAplicacao.ApplicationEvents1Minimize(Sender: TObject);
begin
  Self.Hide();
  Self.WindowState := wsMinimized;
  TrayIcon1.Visible := True;
  TrayIcon1.Animate := True;
  TrayIcon1.ShowBalloonHint();
end;

procedure TfrmsrvAplicacao.btnAtivarTCPClick(Sender: TObject);
begin
  if (btnAtivar.Caption = 'Ativar') then
  begin
    SC_SvrMet.DS_TCPTrans.Port := StrToInt(edtPortaTCP.Text);
    SC_SvrMet.DS_HTTP.HttpPort := StrToInt(edtPortaHTTP.Text);
    SC_SvrMet.DS_Servidor.Start;
    if (SC_SvrMet.DS_Servidor.Started) then
    begin
      btnAtivar.Caption := 'Ativo';
    end;
  end
  else
  begin
    SC_SvrMet.DS_Servidor.Stop;
    if not(SC_SvrMet.DS_Servidor.Started) then
    begin
      btnAtivar.Caption := 'Ativar';
    end;
  end;
end;

procedure TfrmsrvAplicacao.FormShow(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_HIDE);
end;

procedure TfrmsrvAplicacao.TrayIcon1DblClick(Sender: TObject);
begin
 TrayIcon1.Visible := False;
 Show();
 WindowState := wsNormal;
 Application.BringToFront();


end;

end.



