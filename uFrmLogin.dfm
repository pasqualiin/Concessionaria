object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 251
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 39
    Top = 58
    Width = 55
    Height = 16
    Caption = 'Usu'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 39
    Top = 131
    Width = 45
    Height = 16
    Caption = 'Senha'
  end
  object SBEntrar: TSpeedButton
    Left = 63
    Top = 208
    Width = 90
    Height = 35
    Caption = 'ENTRAR'
    OnClick = SBEntrarClick
  end
  object SBSair: TSpeedButton
    Left = 263
    Top = 208
    Width = 90
    Height = 35
    Caption = 'SAIR'
    OnClick = SBSairClick
  end
  object edtUser: TEdit
    Left = 112
    Top = 57
    Width = 209
    Height = 24
    TabOrder = 0
  end
  object edtPassw: TEdit
    Left = 112
    Top = 128
    Width = 209
    Height = 24
    TabOrder = 1
  end
end
