program BeSoftOperacional;

uses
  Vcl.Forms,
  uOpPrincipal in 'uOpPrincipal.pas' {OpPrincipal},
  uAlerta in 'uAlerta.pas' {frmAlerta},
  uOpCadPessoa in 'uOpCadPessoa.pas' {OpCadPessoa},
  Vcl.Themes,
  Vcl.Styles,
  uDMOperacional in 'uDMOperacional.pas' {dm_Operacional: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TOpPrincipal, OpPrincipal);
  Application.CreateForm(TfrmAlerta, frmAlerta);
  Application.CreateForm(TOpCadPessoa, OpCadPessoa);
  Application.CreateForm(Tdm_Operacional, dm_Operacional);
  Application.Run;
end.
