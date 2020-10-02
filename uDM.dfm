object DM: TDM
  OldCreateOrder = False
  Height = 212
  Width = 279
  object Conn: TFDConnection
    Params.Strings = (
      'Database=DBConcessionaria'
      'User_Name=postgres'
      'Password=123456'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 72
    Top = 48
  end
  object TBVendedor: TFDTable
    Active = True
    IndexFieldNames = 'idvendedor'
    Connection = Conn
    UpdateOptions.UpdateTableName = 'vendedor'
    TableName = 'vendedor'
    Left = 136
    Top = 56
    object TBVendedoridvendedor: TIntegerField
      FieldName = 'idvendedor'
      Origin = 'idvendedor'
    end
    object TBVendedornome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 200
    end
    object TBVendedordatanac: TDateField
      FieldName = 'datanac'
      Origin = 'datanac'
    end
    object TBVendedorcpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 15
    end
    object TBVendedorcontato: TWideStringField
      FieldName = 'contato'
      Origin = 'contato'
      Size = 30
    end
    object TBVendedorcomissao: TFloatField
      FieldName = 'comissao'
      Origin = 'comissao'
    end
    object TBVendedorsalario: TFloatField
      FieldName = 'salario'
      Origin = 'salario'
    end
    object TBVendedorsenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
    end
  end
end
