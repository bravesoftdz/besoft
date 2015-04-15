unit uDMOperacional;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Datasnap.Provider, Data.DB, Data.SqlExpr, Datasnap.DBClient,
  Datasnap.DSConnect;

type
  Tdm_Operacional = class(TDataModule)
    Conexao: TSQLConnection;
    dsPessoa: TDataSource;
    dspcPessoa: TDSProviderConnection;
    cdsPessoa: TClientDataSet;
    cdsPessoacd_pessoa: TBCDField;
    cdsPessoanm_pessoa: TWideStringField;
    cdsPessoacnpj_cpf_idestrangeiro: TWideStringField;
    cdsPessoatp_status: TWideStringField;
    cdsPessoacd_endereco: TBCDField;
    cdsPessoacd_pessoafiscalicms: TBCDField;
    cdsPessoacd_pessoafiscalipi: TBCDField;
    cdsPessoacd_pessoafiscalpis: TBCDField;
    cdsPessoacd_pessoafiscalcofins: TBCDField;
    cdsPessoacd_pessoafiscalir: TBCDField;
    cdsPessoacd_pessoafiscalinss: TBCDField;
    cdsPessoatp_pessoa_jf: TWideStringField;
    cdsPessoabo_cliente: TBooleanField;
    cdsPessoabo_fornecedor: TBooleanField;
    cdsPessoabo_colaborador: TBooleanField;
    cdsPessoaemail_envio: TWideStringField;
    cdsPessoaemail_nfe: TWideStringField;
    cdsPessoaEndereco: TClientDataSet;
    cdsPessoaEnderecocd_pessoa: TBCDField;
    cdsPessoaEnderecocd_endereco: TBCDField;
    cdsPessoaEnderecods_logradouro: TWideStringField;
    cdsPessoaEndereconro: TWideStringField;
    cdsPessoaEnderecods_cpl: TWideStringField;
    cdsPessoaEnderecods_bairro: TWideStringField;
    cdsPessoaEnderecocd_municipio: TBCDField;
    cdsPessoaEnderecocd_uf: TWideStringField;
    cdsPessoaEnderecocd_cep: TBCDField;
    cdsPessoaEnderecocd_pais: TBCDField;
    cdsPessoaEnderecocd_indiedest: TBCDField;
    cdsPessoaEnderecocd_ie: TBCDField;
    cdsPessoaEnderecoim: TWideStringField;
    cdsPessoaEnderecobo_entrega: TWideStringField;
    cdsPessoaEnderecobo_faturamento: TWideStringField;
    cdsPessoaEnderecobo_retirada: TWideStringField;
    cdsPessoaEnderecods_municipio: TWideStringField;
    cdsPessoaEnderecods_uf: TWideStringField;
    cdsPessoaEnderecods_pais: TWideStringField;
    dsPessoaEndereco: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_Operacional: Tdm_Operacional;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
