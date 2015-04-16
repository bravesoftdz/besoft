object OpPrincipal: TOpPrincipal
  AlignWithMargins = True
  Left = 0
  Top = 0
  AlphaBlend = True
  BiDiMode = bdLeftToRight
  BorderStyle = bsSingle
  Caption = 'BeSoft Operacional - Vers'#227'o 0.1'
  ClientHeight = 395
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmOpPrincipal
  OldCreateOrder = False
  ParentBiDiMode = False
  Scaled = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cbOpPrincipal: TControlBar
    Left = 0
    Top = 376
    Width = 848
    Height = 19
    Align = alBottom
    BevelKind = bkSoft
    TabOrder = 0
  end
  object pcOpPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 848
    Height = 376
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 1
    ExplicitLeft = -64
    ExplicitTop = 344
  end
  object mmOpPrincipal: TMainMenu
    Left = 800
    Top = 168
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object mmSisOpMudarUsuario: TMenuItem
        Caption = 'Mudar de usu'#225'rio'
      end
      object mmSisOpMudarSenha: TMenuItem
        Caption = 'Mudar senha'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mmSisOpSair: TMenuItem
        Caption = 'Sair'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object mmCadGeral: TMenuItem
        Caption = 'Geral'
        object mmOpCadPessoa: TMenuItem
          Caption = 'Empresa'
        end
        object mmOpCadFilial: TMenuItem
          Caption = 'Filial'
        end
        object mmCadOpParams: TMenuItem
          Caption = 'Par'#226'metros do sistema'
        end
        object mmCadOpOpSis: TMenuItem
          Caption = 'Opera'#231#245'es'
        end
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Pessoa1: TMenuItem
        Caption = 'Pessoa'
        object mmCadOpPessoa: TMenuItem
          Caption = 'Pessoa'
          OnClick = mmCadOpPessoaClick
        end
      end
      object mmCadOpProduto: TMenuItem
        Caption = 'Produto'
        object mmCadOpProdProduto: TMenuItem
          Caption = 'Produto'
        end
        object mmCadOpLote: TMenuItem
          Caption = 'Produto Lote'
        end
        object mmCadOpFichaTec: TMenuItem
          Caption = 'Ficha T'#233'cnica'
        end
        object mmCadOpConsulRapida: TMenuItem
          Caption = 'Consulta R'#225'pida'
        end
      end
      object mmCadOpNFe: TMenuItem
        Caption = 'Nota fiscal'
        object mmCadOpConfigNFe: TMenuItem
          Caption = 'Configura'#231#227'o NF-e'
        end
        object mmCadOpSerie: TMenuItem
          Caption = 'S'#233'rie'
        end
        object mmCadOpModNFe: TMenuItem
          Caption = 'Modelo NFe'
        end
      end
      object mmCadOpPedVenda: TMenuItem
        Caption = 'Pedido de venda'
        object mmCadOpBloqPedido: TMenuItem
          Caption = 'Bloqueio pedido'
        end
        object mmCadOpSetor: TMenuItem
          Caption = 'Setor comercial'
        end
        object mmCadOpPoliticaVenda: TMenuItem
          Caption = 'Politica de venda'
        end
        object mmCadOpTabelaPreco: TMenuItem
          Caption = 'Tabela de pre'#231'o'
        end
      end
      object mmCadOpEstoque: TMenuItem
        Caption = 'Estoque'
        object mmCadOpReqEstoque: TMenuItem
          Caption = 'Requisi'#231#227'o de estoque'
        end
        object mmCadOpLocal: TMenuItem
          Caption = 'Local'
        end
        object mmCadOpInventario: TMenuItem
          Caption = 'Invent'#225'rio'
        end
      end
    end
  end
end
