program Servidor;

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  uServAplicacao in 'uServAplicacao.pas' {frmsrvAplicacao},
  uSrvMetodos in 'uSrvMetodos.pas' {SM_ServerMetodos: TDSServerModule},
  uSrvMet in 'uSrvMet.pas' {SC_SvrMet: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmsrvAplicacao, frmsrvAplicacao);
  Application.CreateForm(TSC_SvrMet, SC_SvrMet);
  Application.Run;
end.

