unit uSrvMetodos;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Datasnap.Provider, FireDAC.Comp.DataSet;

type
  TSM_ServerMetodos = class(TDSServerModule)
    FD_PGDriverLink: TFDPhysPgDriverLink;
    FD_Cursor: TFDGUIxWaitCursor;
    fdConexao: TFDConnection;
    qryPessoa: TFDQuery;
    dspPessoa: TDataSetProvider;
    qryPessoacd_pessoa: TBCDField;
    qryPessoanm_pessoa: TWideStringField;
    qryPessoacnpj_cpf_idestrangeiro: TWideStringField;
    qryPessoatp_status: TWideStringField;
    qryPessoacd_endereco: TBCDField;
    qryPessoacd_pessoafiscalicms: TBCDField;
    qryPessoacd_pessoafiscalipi: TBCDField;
    qryPessoacd_pessoafiscalpis: TBCDField;
    qryPessoacd_pessoafiscalcofins: TBCDField;
    qryPessoacd_pessoafiscalir: TBCDField;
    qryPessoacd_pessoafiscalinss: TBCDField;
    qryPessoatp_pessoa_jf: TWideStringField;
    qryPessoabo_cliente: TBooleanField;
    qryPessoabo_fornecedor: TBooleanField;
    qryPessoabo_colaborador: TBooleanField;
    qryPessoaemail_envio: TWideStringField;
    qryPessoaemail_nfe: TWideStringField;
    qryPessoaEndereco: TFDQuery;
    dspPessoaEndereco: TDataSetProvider;
    qryPessoaEnderecocd_pessoa: TBCDField;
    qryPessoaEnderecocd_endereco: TBCDField;
    qryPessoaEnderecods_logradouro: TWideStringField;
    qryPessoaEndereconro: TWideStringField;
    qryPessoaEnderecods_cpl: TWideStringField;
    qryPessoaEnderecods_bairro: TWideStringField;
    qryPessoaEnderecocd_municipio: TBCDField;
    qryPessoaEnderecocd_uf: TWideStringField;
    qryPessoaEnderecocd_cep: TBCDField;
    qryPessoaEnderecocd_pais: TBCDField;
    qryPessoaEnderecocd_indiedest: TBCDField;
    qryPessoaEnderecocd_ie: TBCDField;
    qryPessoaEnderecoim: TWideStringField;
    qryPessoaEnderecobo_entrega: TWideStringField;
    qryPessoaEnderecobo_faturamento: TWideStringField;
    qryPessoaEnderecobo_retirada: TWideStringField;
    qryPessoaEnderecods_municipio: TWideStringField;
    qryPessoaEnderecods_uf: TWideStringField;
    qryPessoaEnderecods_pais: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TSM_ServerMetodos.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSM_ServerMetodos.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

