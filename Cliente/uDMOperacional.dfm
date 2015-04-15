object dm_Operacional: Tdm_Operacional
  OldCreateOrder = False
  Height = 442
  Width = 781
  object Conexao: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=20.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Connected = True
    Left = 16
    Top = 8
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 152
    Top = 72
  end
  object dspcPessoa: TDSProviderConnection
    ServerClassName = 'TSM_ServerMetodos'
    Connected = True
    SQLConnection = Conexao
    Left = 16
    Top = 72
  end
  object cdsPessoa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    RemoteServer = dspcPessoa
    Left = 80
    Top = 72
    object cdsPessoacd_pessoa: TBCDField
      FieldName = 'cd_pessoa'
      Origin = 'cd_pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsPessoanm_pessoa: TWideStringField
      FieldName = 'nm_pessoa'
      Origin = 'nm_pessoa'
      Size = 60
    end
    object cdsPessoacnpj_cpf_idestrangeiro: TWideStringField
      FieldName = 'cnpj_cpf_idestrangeiro'
      Origin = 'cnpj_cpf_idestrangeiro'
    end
    object cdsPessoatp_status: TWideStringField
      FieldName = 'tp_status'
      Origin = 'tp_status'
      FixedChar = True
      Size = 1
    end
    object cdsPessoacd_endereco: TBCDField
      FieldName = 'cd_endereco'
      Origin = 'cd_endereco'
      Precision = 3
      Size = 0
    end
    object cdsPessoacd_pessoafiscalicms: TBCDField
      FieldName = 'cd_pessoafiscalicms'
      Origin = 'cd_pessoafiscalicms'
      Precision = 3
      Size = 0
    end
    object cdsPessoacd_pessoafiscalipi: TBCDField
      FieldName = 'cd_pessoafiscalipi'
      Origin = 'cd_pessoafiscalipi'
      Precision = 3
      Size = 0
    end
    object cdsPessoacd_pessoafiscalpis: TBCDField
      FieldName = 'cd_pessoafiscalpis'
      Origin = 'cd_pessoafiscalpis'
      Precision = 3
      Size = 0
    end
    object cdsPessoacd_pessoafiscalcofins: TBCDField
      FieldName = 'cd_pessoafiscalcofins'
      Origin = 'cd_pessoafiscalcofins'
      Precision = 3
      Size = 0
    end
    object cdsPessoacd_pessoafiscalir: TBCDField
      FieldName = 'cd_pessoafiscalir'
      Origin = 'cd_pessoafiscalir'
      Precision = 3
      Size = 0
    end
    object cdsPessoacd_pessoafiscalinss: TBCDField
      FieldName = 'cd_pessoafiscalinss'
      Origin = 'cd_pessoafiscalinss'
      Precision = 3
      Size = 0
    end
    object cdsPessoatp_pessoa_jf: TWideStringField
      FieldName = 'tp_pessoa_jf'
      Origin = 'tp_pessoa_jf'
      FixedChar = True
      Size = 1
    end
    object cdsPessoabo_cliente: TBooleanField
      FieldName = 'bo_cliente'
      Origin = 'bo_cliente'
    end
    object cdsPessoabo_fornecedor: TBooleanField
      FieldName = 'bo_fornecedor'
      Origin = 'bo_fornecedor'
    end
    object cdsPessoabo_colaborador: TBooleanField
      FieldName = 'bo_colaborador'
      Origin = 'bo_colaborador'
    end
    object cdsPessoaemail_envio: TWideStringField
      FieldName = 'email_envio'
      Origin = 'email_envio'
      Size = 300
    end
    object cdsPessoaemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Origin = 'email_nfe'
      Size = 60
    end
  end
  object cdsPessoaEndereco: TClientDataSet
    Active = True
    Aggregates = <>
    IndexFieldNames = 'cd_pessoa;cd_endereco'
    MasterFields = 'cd_pessoa;cd_endereco'
    MasterSource = dsPessoa
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPessoaEndereco'
    RemoteServer = dspcPessoa
    Left = 48
    Top = 120
    object cdsPessoaEnderecocd_pessoa: TBCDField
      FieldName = 'cd_pessoa'
      Origin = 'cd_pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object cdsPessoaEnderecocd_endereco: TBCDField
      FieldName = 'cd_endereco'
      Origin = 'cd_endereco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 3
      Size = 0
    end
    object cdsPessoaEnderecods_logradouro: TWideStringField
      FieldName = 'ds_logradouro'
      Origin = 'ds_logradouro'
      Size = 60
    end
    object cdsPessoaEndereconro: TWideStringField
      FieldName = 'nro'
      Origin = 'nro'
      Size = 60
    end
    object cdsPessoaEnderecods_cpl: TWideStringField
      FieldName = 'ds_cpl'
      Origin = 'ds_cpl'
      Size = 60
    end
    object cdsPessoaEnderecods_bairro: TWideStringField
      FieldName = 'ds_bairro'
      Origin = 'ds_bairro'
      Size = 60
    end
    object cdsPessoaEnderecocd_municipio: TBCDField
      FieldName = 'cd_municipio'
      Origin = 'cd_municipio'
      Precision = 7
      Size = 0
    end
    object cdsPessoaEnderecocd_uf: TWideStringField
      FieldName = 'cd_uf'
      Origin = 'cd_uf'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaEnderecocd_cep: TBCDField
      FieldName = 'cd_cep'
      Origin = 'cd_cep'
      Precision = 8
      Size = 0
    end
    object cdsPessoaEnderecocd_pais: TBCDField
      FieldName = 'cd_pais'
      Origin = 'cd_pais'
      Precision = 4
      Size = 0
    end
    object cdsPessoaEnderecocd_indiedest: TBCDField
      FieldName = 'cd_indiedest'
      Origin = 'cd_indiedest'
      Precision = 1
      Size = 0
    end
    object cdsPessoaEnderecocd_ie: TBCDField
      FieldName = 'cd_ie'
      Origin = 'cd_ie'
      Precision = 14
      Size = 0
    end
    object cdsPessoaEnderecoim: TWideStringField
      FieldName = 'im'
      Origin = 'im'
      FixedChar = True
      Size = 15
    end
    object cdsPessoaEnderecobo_entrega: TWideStringField
      FieldName = 'bo_entrega'
      Origin = 'bo_entrega'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEnderecobo_faturamento: TWideStringField
      FieldName = 'bo_faturamento'
      Origin = 'bo_faturamento'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEnderecobo_retirada: TWideStringField
      FieldName = 'bo_retirada'
      Origin = 'bo_retirada'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEnderecods_municipio: TWideStringField
      FieldName = 'ds_municipio'
      Origin = 'ds_municipio'
      Size = 60
    end
    object cdsPessoaEnderecods_uf: TWideStringField
      FieldName = 'ds_uf'
      Origin = 'ds_uf'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaEnderecods_pais: TWideStringField
      FieldName = 'ds_pais'
      Origin = 'ds_pais'
      Size = 60
    end
  end
  object dsPessoaEndereco: TDataSource
    DataSet = cdsPessoaEndereco
    Left = 152
    Top = 120
  end
end
