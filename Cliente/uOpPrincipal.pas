unit uOpPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ExtCtrls, uAlerta, uOpCadPessoa;

type
  TOpPrincipal = class(TForm)
    mmOpPrincipal: TMainMenu;
    Sistema1: TMenuItem;
    mmSisOpMudarUsuario: TMenuItem;
    mmSisOpMudarSenha: TMenuItem;
    mmSisOpSair: TMenuItem;
    Cadastro1: TMenuItem;
    Pessoa1: TMenuItem;
    mmCadOpProduto: TMenuItem;
    mmCadOpNFe: TMenuItem;
    mmCadOpPedVenda: TMenuItem;
    mmCadOpPessoa: TMenuItem;
    mmCadOpProdProduto: TMenuItem;
    mmCadOpLote: TMenuItem;
    mmCadOpFichaTec: TMenuItem;
    mmCadOpConsulRapida: TMenuItem;
    mmCadOpConfigNFe: TMenuItem;
    mmCadOpSerie: TMenuItem;
    mmCadOpModNFe: TMenuItem;
    mmCadOpBloqPedido: TMenuItem;
    mmCadOpSetor: TMenuItem;
    mmCadOpPoliticaVenda: TMenuItem;
    mmCadOpTabelaPreco: TMenuItem;
    mmCadGeral: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    mmCadOpParams: TMenuItem;
    mmCadOpOpSis: TMenuItem;
    mmOpCadPessoa: TMenuItem;
    mmOpCadFilial: TMenuItem;
    mmCadOpEstoque: TMenuItem;
    mmCadOpReqEstoque: TMenuItem;
    mmCadOpLocal: TMenuItem;
    mmCadOpInventario: TMenuItem;
    cbOpPrincipal: TControlBar;
    pcOpPrincipal: TPageControl;
    function VerificaSeTabAberta(NomeTab : String): Boolean;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mmCadOpPessoaClick(Sender: TObject);
  private
  public
    FNumeroPaginas : Integer;
  end;

var
  OpPrincipal: TOpPrincipal;
  frmAlerta  : TfrmAlerta;
implementation

{$R *.dfm}

procedure TOpPrincipal.btnOkClick(Sender: TObject);
begin
  frmAlerta.Close;
end;

procedure TOpPrincipal.FormCreate(Sender: TObject);
begin
  FNumeroPaginas := 0;
end;

procedure TOpPrincipal.mmCadOpPessoaClick(Sender: TObject);
var
  frmOpPrincipal : TOpCadPessoa;
  tsOpPrincipal  : TTabSheet;
  CaptionFrm     : String;
begin
  CaptionFrm := OpCadPessoa.Caption;
  if VerificaSeTabAberta(CaptionFrm) = False then
  begin


    tsOpPrincipal := TTabSheet.Create(pcOpPrincipal);
    tsOpPrincipal.PageControl := pcOpPrincipal;

    frmOpPrincipal             := TOpCadPessoa.Create(pcOpPrincipal);
    frmOpPrincipal.Parent      := tsOpPrincipal;
    frmOpPrincipal.Align       := alClient;
    frmOpPrincipal.BorderStyle := bsNone;
    frmOpPrincipal.Visible     := True;
    tsOpPrincipal.Caption      := frmOpPrincipal.Caption;

    pcOpPrincipal.ActivePage   := tsOpPrincipal;
    FNumeroPaginas := FNumeroPaginas + 1;
  end
  else
  begin
    frmAlerta := TfrmAlerta.Create(OpPrincipal);
    frmAlerta.mmAlerta.Lines.Text := 'Aba Já está Aberta' + chr(13)
                                    +'Por Favor Verifique!';
    frmAlerta.Show;
    frmAlerta.btnOk.OnClick := btnOkClick;
  end;
end;

function TOpPrincipal.VerificaSeTabAberta(NomeTab: String): Boolean;
var
  i : Integer;
begin
  i := 0;
  if FNumeroPaginas = 0 then
  begin
    Result := False;
  end
  else
  begin
    for I := i to FNumeroPaginas-1 do
    begin
      if pcOpPrincipal.Pages[i].Caption = NomeTab then
        Result := True
      else
        Result := False;
    end;
  end;
end;

end.
