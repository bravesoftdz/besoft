object DM_Cliente: TDM_Cliente
  OldCreateOrder = False
  Height = 454
  Width = 793
  object SQLConexao: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    Params.Strings = (
      'DriverName=DataSnap'
      'HostName=localhost'
      'port=211')
    Left = 32
    Top = 24
  end
end
