object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'FrmPrincipal'
  ClientHeight = 250
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 160
    Top = 88
    object Carro1: TMenuItem
      Caption = 'Carro'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastrar'
      end
    end
    object Vendedor1: TMenuItem
      Caption = 'Vendedor'
      object Cadastrar2: TMenuItem
        Caption = 'Cadastrar'
        OnClick = Cadastrar2Click
      end
    end
    object Cliente1: TMenuItem
      Caption = 'Cliente'
      object Cadastrar3: TMenuItem
        Caption = 'Cadastrar'
      end
    end
  end
end
