object frmsrvAplicacao: TfrmsrvAplicacao
  Left = 0
  Top = 0
  HorzScrollBar.Increment = 6
  Caption = 'Servidor de Aplica'#231#227'o - BeSoft'
  ClientHeight = 163
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcConfiguracaoSrvAplic: TPageControl
    Left = 1
    Top = 0
    Width = 344
    Height = 161
    ActivePage = tsConfigPorta
    TabOrder = 0
    object tsConfigPorta: TTabSheet
      Caption = 'Configura'#231#227'o Porta Serv. Aplic.'
      object gbSrvTCP: TGroupBox
        Left = 0
        Top = 0
        Width = 170
        Height = 89
        Caption = 'Servidor TCP : '
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 19
          Width = 33
          Height = 13
          Caption = 'Porta :'
        end
        object edtPortaTCP: TEdit
          Left = 47
          Top = 16
          Width = 90
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          Text = '211'
        end
      end
      object gbSrvHTTP: TGroupBox
        Left = 172
        Top = 0
        Width = 162
        Height = 89
        Caption = 'Servidor HTTP : '
        TabOrder = 1
        object Label2: TLabel
          Left = 8
          Top = 19
          Width = 36
          Height = 13
          Caption = 'Porta : '
        end
        object edtPortaHTTP: TEdit
          Left = 46
          Top = 16
          Width = 88
          Height = 21
          NumbersOnly = True
          TabOrder = 0
          Text = '8080'
        end
      end
      object btnAtivar: TButton
        Left = 112
        Top = 103
        Width = 115
        Height = 26
        Caption = 'Ativar'
        TabOrder = 2
        OnClick = btnAtivarTCPClick
      end
    end
    object tsConfigDB: TTabSheet
      Caption = 'Configura'#231#245'es BD'
      ImageIndex = 1
    end
  end
  object TrayIcon1: TTrayIcon
    BalloonHint = 'Servidor em execu'#231#227'o'
    BalloonTitle = 'BeSys Software'
    OnDblClick = TrayIcon1DblClick
    Left = 285
    Top = 112
  end
  object ApplicationEvents1: TApplicationEvents
    OnMinimize = ApplicationEvents1Minimize
    Left = 37
    Top = 112
  end
end
