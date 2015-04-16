object SC_SvrMet: TSC_SvrMet
  OldCreateOrder = False
  Height = 449
  Width = 767
  object DS_Servidor: TDSServer
    Left = 24
    Top = 11
  end
  object DS_TCPTrans: TDSTCPServerTransport
    Server = DS_Servidor
    Filters = <>
    Left = 32
    Top = 81
  end
  object DS_HTTP: TDSHTTPService
    HttpPort = 8080
    Server = DS_Servidor
    Filters = <>
    Left = 32
    Top = 199
  end
  object DS_ServerClass: TDSServerClass
    OnGetClass = DS_ServerClassGetClass
    Server = DS_Servidor
    Left = 168
    Top = 11
  end
  object DS_HTTPProxy: TDSHTTPServiceProxyDispatcher
    Service = DS_HTTP
    WebFileExtensions = <
      item
        MimeType = 'application/x-zip-compressed'
        Extensions = 'zip'
      end>
    WebDirectories = <
      item
        DirectoryAction = dirInclude
        DirectoryMask = '\proxy\*'
      end
      item
        DirectoryAction = dirExclude
        DirectoryMask = '\proxy\*\*'
      end>
    DSProxyGenerator = DS_ProxyGenerator
    Left = 96
    Top = 16
  end
  object DS_ProxyGenerator: TDSProxyGenerator
    MetaDataProvider = DS_DataProvider
    Left = 408
    Top = 16
  end
  object DS_DataProvider: TDSServerMetaDataProvider
    Server = DS_Servidor
    Left = 328
    Top = 16
  end
  object FDPhysPgDriverLink: TFDPhysPgDriverLink
    VendorHome = 'C:\Program Files (x86)\PostgreSQL\9.3'
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\9.3\lib\libpq.dll'
    Left = 256
    Top = 72
  end
end
