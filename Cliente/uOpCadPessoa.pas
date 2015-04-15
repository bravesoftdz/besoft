unit uOpCadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, uDMOperacional, Vcl.Mask,
  Vcl.DBCtrls;

type
  TOpCadPessoa = class(TForm)
    Panel2: TPanel;
    pcCadPessoa: TPageControl;
    tsCadPessoaPesquisa: TTabSheet;
    tsOpCadPessoa: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel1: TPanel;
    btnFechar: TBitBtn;
    btnSalvar: TBitBtn;
    btnIncluir: TBitBtn;
    btnCancelarRemover: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    cbcd_pessoa: TComboBox;
    edtcd_pessoa: TEdit;
    Panel6: TPanel;
    Label3: TLabel;
    btnPesquisar: TBitBtn;
    Panel7: TPanel;
    Label4: TLabel;
    Panel8: TPanel;
    Label5: TLabel;
    Panel9: TPanel;
    lblStatus: TLabel;
    Panel11: TPanel;
    Label6: TLabel;
    Panel12: TPanel;
    Label7: TLabel;
    cbcd_uf: TComboBox;
    cbtp_pessoa: TComboBox;
    cbtp_status: TComboBox;
    cbCNPJCPF: TComboBox;
    edtCNPJCPF: TEdit;
    edttp_status: TEdit;
    edttp_pessoa: TEdit;
    edtcd_uf: TEdit;
    Panel10: TPanel;
    Label8: TLabel;
    cbnm_pessoa: TComboBox;
    edtnm_pessoa: TEdit;
    gbPrincipal: TGroupBox;
    dbConsultaPessoa: TDBGrid;
    lblcd_pessoa: TLabel;
    dbedtcd_pessoa: TDBEdit;
    lblnm_pessoa: TLabel;
    dbedtnm_pessoa: TDBEdit;
    lblCNPJ_CPF: TLabel;
    dbedtcnpj_cpf: TDBEdit;
    dbrgtp_status: TDBRadioGroup;
    gbtp_pessoa: TGroupBox;
    dbrgtp_pessoa_jf: TDBRadioGroup;
    pcInformacoes: TPageControl;
    dbcbbo_cliente: TDBCheckBox;
    dbcbbo_fornecedor: TDBCheckBox;
    dbcbbo_colaborador: TDBCheckBox;
    tsGeral: TTabSheet;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    lblemail_envio: TLabel;
    dbedtemail_envio: TDBEdit;
    lblemail_nfe: TLabel;
    dbedtemail_nfe: TDBEdit;
    gbendereco: TGroupBox;
    dbgEndereco: TDBGrid;
    Panel17: TPanel;
    Label9: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tsCadPessoaPesquisaShow(Sender: TObject);
    procedure tsOpCadPessoaShow(Sender: TObject);
    procedure dbrgtp_pessoa_jfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpCadPessoa: TOpCadPessoa;

implementation
uses
  uOpPrincipal;

{$R *.dfm}

procedure TOpCadPessoa.btnFecharClick(Sender: TObject);
begin
  OpCadPessoa.Close;
end;

procedure TOpCadPessoa.dbrgtp_pessoa_jfClick(Sender: TObject);
begin
  if dbrgtp_pessoa_jf.ItemIndex = 0 then
  begin
    lblCNPJ_CPF.Caption := 'CPF';

  end
  else if dbrgtp_pessoa_jf.ItemIndex = 1 then
  begin
    lblCNPJ_CPF.Caption := 'CNPJ';
  end
  else if dbrgtp_pessoa_jf.ItemIndex = 2 then
  begin
    lblCNPJ_CPF.Caption := 'Id Estrangeiro';
  end;

end;

procedure TOpCadPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try
     OpPrincipal.pcOpPrincipal.ActivePage.Free;
     OpPrincipal.FNumeroPaginas := OpPrincipal.FNumeroPaginas - 1;
   finally
   end;

end;

procedure TOpCadPessoa.FormCreate(Sender: TObject);
begin
  btnSalvar.Enabled := False;
  btnCancelarRemover.Caption := 'Remover';

  dbrgtp_pessoa_jf.ItemIndex := 0;
  dbrgtp_status.ItemIndex := 0;
end;

procedure TOpCadPessoa.tsCadPessoaPesquisaShow(Sender: TObject);
begin
  btnCancelarRemover.Caption := 'Remover';
end;


procedure TOpCadPessoa.tsOpCadPessoaShow(Sender: TObject);
begin
  btnCancelarRemover.Caption := 'Cancelar';
end;

end.
