object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 347
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 49
    Align = alTop
    Caption = 'Vendedores'
    TabOrder = 0
  end
  object LVVendedor: TListView
    Left = 0
    Top = 49
    Width = 503
    Height = 251
    Align = alClient
    Columns = <
      item
        Caption = 'Nome'
      end
      item
        Caption = 'CPF'
      end
      item
        Caption = 'Contato'
      end>
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
  end
  object Panel2: TPanel
    Left = 0
    Top = 300
    Width = 503
    Height = 47
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 296
    object btnInserir: TSpeedButton
      Left = 24
      Top = 6
      Width = 97
      Height = 43
      Caption = 'Inserir'
    end
    object btnEditar: TSpeedButton
      Left = 192
      Top = 6
      Width = 97
      Height = 43
      Caption = 'Editar'
    end
    object btnExcluir: TSpeedButton
      Left = 352
      Top = 6
      Width = 97
      Height = 40
      Caption = 'Excluir'
    end
  end
end
