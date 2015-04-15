unit uAlerta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmAlerta = class(TForm)
    btnOk: TBitBtn;
    Panel1: TPanel;
    mmAlerta: TMemo;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  frmAlerta: TfrmAlerta;

implementation

{$R *.dfm}

procedure TfrmAlerta.btnOkClick(Sender: TObject);
begin
  frmAlerta.Close;
end;

end.
