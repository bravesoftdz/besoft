object SM_ServerMetodos: TSM_ServerMetodos
  OldCreateOrder = False
  Height = 395
  Width = 779
  object FD_PGDriverLink: TFDPhysPgDriverLink
    Left = 32
    Top = 64
  end
  object FD_Cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 16
  end
  object fdConexao: TFDConnection
    Params.Strings = (
      'Database=besoftbd'
      'User_Name=postgres'
      'Password=postgres'
      'Server=localhost'
      'DriverID=PG')
    LoginPrompt = False
    Left = 32
    Top = 160
  end
  object qryPessoa: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      'select * from pessoa')
    Left = 96
    Top = 160
    object qryPessoacd_pessoa: TBCDField
      FieldName = 'cd_pessoa'
      Origin = 'cd_pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object qryPessoanm_pessoa: TWideStringField
      FieldName = 'nm_pessoa'
      Origin = 'nm_pessoa'
      Size = 60
    end
    object qryPessoacnpj_cpf_idestrangeiro: TWideStringField
      FieldName = 'cnpj_cpf_idestrangeiro'
      Origin = 'cnpj_cpf_idestrangeiro'
    end
    object qryPessoatp_status: TWideStringField
      FieldName = 'tp_status'
      Origin = 'tp_status'
      FixedChar = True
      Size = 1
    end
    object qryPessoacd_endereco: TBCDField
      FieldName = 'cd_endereco'
      Origin = 'cd_endereco'
      Precision = 3
      Size = 0
    end
    object qryPessoacd_pessoafiscalicms: TBCDField
      FieldName = 'cd_pessoafiscalicms'
      Origin = 'cd_pessoafiscalicms'
      Precision = 3
      Size = 0
    end
    object qryPessoacd_pessoafiscalipi: TBCDField
      FieldName = 'cd_pessoafiscalipi'
      Origin = 'cd_pessoafiscalipi'
      Precision = 3
      Size = 0
    end
    object qryPessoacd_pessoafiscalpis: TBCDField
      FieldName = 'cd_pessoafiscalpis'
      Origin = 'cd_pessoafiscalpis'
      Precision = 3
      Size = 0
    end
    object qryPessoacd_pessoafiscalcofins: TBCDField
      FieldName = 'cd_pessoafiscalcofins'
      Origin = 'cd_pessoafiscalcofins'
      Precision = 3
      Size = 0
    end
    object qryPessoacd_pessoafiscalir: TBCDField
      FieldName = 'cd_pessoafiscalir'
      Origin = 'cd_pessoafiscalir'
      Precision = 3
      Size = 0
    end
    object qryPessoacd_pessoafiscalinss: TBCDField
      FieldName = 'cd_pessoafiscalinss'
      Origin = 'cd_pessoafiscalinss'
      Precision = 3
      Size = 0
    end
    object qryPessoatp_pessoa_jf: TWideStringField
      FieldName = 'tp_pessoa_jf'
      Origin = 'tp_pessoa_jf'
      FixedChar = True
      Size = 1
    end
    object qryPessoabo_cliente: TBooleanField
      FieldName = 'bo_cliente'
      Origin = 'bo_cliente'
    end
    object qryPessoabo_fornecedor: TBooleanField
      FieldName = 'bo_fornecedor'
      Origin = 'bo_fornecedor'
    end
    object qryPessoabo_colaborador: TBooleanField
      FieldName = 'bo_colaborador'
      Origin = 'bo_colaborador'
    end
    object qryPessoaemail_envio: TWideStringField
      FieldName = 'email_envio'
      Origin = 'email_envio'
      Size = 300
    end
    object qryPessoaemail_nfe: TWideStringField
      FieldName = 'email_nfe'
      Origin = 'email_nfe'
      Size = 60
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = qryPessoa
    Left = 160
    Top = 160
  end
  object qryPessoaEndereco: TFDQuery
    Connection = fdConexao
    SQL.Strings = (
      'select pe.cd_pessoa,'
      '       pe.cd_endereco,'
      '       pe.ds_logradouro,'
      '       pe.nro,'
      '       pe.ds_cpl,'
      '       pe.ds_bairro,'
      '       pe.cd_municipio,'
      '       pe.cd_uf,'
      '       pe.cd_cep,'
      '       pe.cd_pais,'
      '       pe.cd_indiedest,'
      '       pe.cd_ie,'
      '       pe.im,'
      '       pe.bo_entrega,'
      '       pe.bo_faturamento,'
      '       pe.bo_retirada,'
      '       m.ds_municipio,'
      '       e.ds_uf,'
      '       p.ds_pais'
      ' from pessoaendereco pe, municipio m, estado e, pais p '
      '  where pe.cd_municipio = m.cd_municipio '
      '        and m.cd_uf = e.cd_uf '
      '        and e.cd_pais = p.cd_pais')
    Left = 96
    Top = 208
    object qryPessoaEnderecocd_pessoa: TBCDField
      FieldName = 'cd_pessoa'
      Origin = 'cd_pessoa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 8
      Size = 0
    end
    object qryPessoaEnderecocd_endereco: TBCDField
      FieldName = 'cd_endereco'
      Origin = 'cd_endereco'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Precision = 3
      Size = 0
    end
    object qryPessoaEnderecods_logradouro: TWideStringField
      FieldName = 'ds_logradouro'
      Origin = 'ds_logradouro'
      Size = 60
    end
    object qryPessoaEndereconro: TWideStringField
      FieldName = 'nro'
      Origin = 'nro'
      Size = 60
    end
    object qryPessoaEnderecods_cpl: TWideStringField
      FieldName = 'ds_cpl'
      Origin = 'ds_cpl'
      Size = 60
    end
    object qryPessoaEnderecods_bairro: TWideStringField
      FieldName = 'ds_bairro'
      Origin = 'ds_bairro'
      Size = 60
    end
    object qryPessoaEnderecocd_municipio: TBCDField
      FieldName = 'cd_municipio'
      Origin = 'cd_municipio'
      Precision = 7
      Size = 0
    end
    object qryPessoaEnderecocd_uf: TWideStringField
      FieldName = 'cd_uf'
      Origin = 'cd_uf'
      FixedChar = True
      Size = 2
    end
    object qryPessoaEnderecocd_cep: TBCDField
      FieldName = 'cd_cep'
      Origin = 'cd_cep'
      Precision = 8
      Size = 0
    end
    object qryPessoaEnderecocd_pais: TBCDField
      FieldName = 'cd_pais'
      Origin = 'cd_pais'
      Precision = 4
      Size = 0
    end
    object qryPessoaEnderecocd_indiedest: TBCDField
      FieldName = 'cd_indiedest'
      Origin = 'cd_indiedest'
      Precision = 1
      Size = 0
    end
    object qryPessoaEnderecocd_ie: TBCDField
      FieldName = 'cd_ie'
      Origin = 'cd_ie'
      Precision = 14
      Size = 0
    end
    object qryPessoaEnderecoim: TWideStringField
      FieldName = 'im'
      Origin = 'im'
      FixedChar = True
      Size = 15
    end
    object qryPessoaEnderecobo_entrega: TWideStringField
      FieldName = 'bo_entrega'
      Origin = 'bo_entrega'
      FixedChar = True
      Size = 1
    end
    object qryPessoaEnderecobo_faturamento: TWideStringField
      FieldName = 'bo_faturamento'
      Origin = 'bo_faturamento'
      FixedChar = True
      Size = 1
    end
    object qryPessoaEnderecobo_retirada: TWideStringField
      FieldName = 'bo_retirada'
      Origin = 'bo_retirada'
      FixedChar = True
      Size = 1
    end
    object qryPessoaEnderecods_municipio: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ds_municipio'
      Origin = 'ds_municipio'
      Size = 60
    end
    object qryPessoaEnderecods_uf: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ds_uf'
      Origin = 'ds_uf'
      FixedChar = True
      Size = 2
    end
    object qryPessoaEnderecods_pais: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ds_pais'
      Origin = 'ds_pais'
      Size = 60
    end
  end
  object dspPessoaEndereco: TDataSetProvider
    DataSet = qryPessoaEndereco
    Left = 160
    Top = 208
  end
end
