unit uSrvMet;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport,
  Datasnap.DSHTTPCommon, Datasnap.DSHTTP,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSClientMetadata, Datasnap.DSHTTPServiceProxyDispatcher,
  Datasnap.DSProxyJavaAndroid, Datasnap.DSProxyJavaBlackBerry,
  Datasnap.DSProxyObjectiveCiOS, Datasnap.DSProxyCsharpSilverlight,
  Datasnap.DSProxyFreePascal_iOS,
  Datasnap.DSAuth, IPPeerServer, Datasnap.DSMetadata, Datasnap.DSServerMetadata,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client, Datasnap.Provider,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Phys.PGDef;

type
  TSC_SvrMet = class(TDataModule)
    DS_Servidor: TDSServer;
    DS_TCPTrans: TDSTCPServerTransport;
    DS_HTTP: TDSHTTPService;
    DS_HTTPProxy: TDSHTTPServiceProxyDispatcher;
    DS_ProxyGenerator: TDSProxyGenerator;
    DS_DataProvider: TDSServerMetaDataProvider;
    DS_ServerClass: TDSServerClass;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    procedure DS_ServerClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
  private
    { Private declarations }
  public
  end;

var
  SC_SvrMet: TSC_SvrMet;

implementation


{$R *.dfm}

uses Winapi.Windows, uSrvMetodos;

procedure TSC_SvrMet.DS_ServerClassGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := uSrvMetodos.TSM_ServerMetodos;
end;


end.

