object FrmCadVendedor: TFrmCadVendedor
  Left = 0
  Top = 0
  Caption = 'FrmCadVendedor'
  ClientHeight = 275
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 37
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 333
    Top = 80
    Width = 24
    Height = 13
    Caption = 'CPF'
  end
  object Label3: TLabel
    Left = 271
    Top = 168
    Width = 4
    Height = 13
  end
  object Label4: TLabel
    Left = 4
    Top = 136
    Width = 50
    Height = 13
    Caption = 'Contato'
  end
  object Label5: TLabel
    Left = 333
    Top = 136
    Width = 65
    Height = 13
    Caption = 'Data Nasc'
  end
  object Label6: TLabel
    Left = 8
    Top = 190
    Width = 46
    Height = 13
    Caption = 'Sal'#225'rio'
  end
  object Label7: TLabel
    Left = 333
    Top = 185
    Width = 40
    Height = 13
    Caption = 'Senha'
  end
  object edtNome: TEdit
    Left = 60
    Top = 77
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object edtContato: TEdit
    Left = 60
    Top = 133
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object edtCPF: TEdit
    Left = 373
    Top = 77
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object edtSalario: TEdit
    Left = 60
    Top = 187
    Width = 217
    Height = 21
    TabOrder = 3
  end
  object edtSenha: TEdit
    Left = 379
    Top = 182
    Width = 211
    Height = 21
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 598
    Height = 49
    Align = alTop
    Caption = 'Cadastro de Vendedor'
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
    Width = 598
    Height = 43
    Align = alBottom
    TabOrder = 6
    object SBSave: TSpeedButton
      Left = 64
      Top = 0
      Width = 105
      Height = 41
      Caption = 'Salvar'
      OnClick = SBSaveClick
    end
    object SBCancel: TSpeedButton
      Left = 448
      Top = 2
      Width = 105
      Height = 41
      Caption = 'Cancelar'
    end
  end
  object DTDataNasc: TDateTimePicker
    Left = 404
    Top = 133
    Width = 186
    Height = 21
    Date = 44105.000000000000000000
    Format = 'dd/MM/yyyy'
    Time = 0.660123449073580500
    TabOrder = 7
  end
end
