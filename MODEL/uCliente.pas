unit uCliente;

interface

uses uPessoa;

type
  TCliente = class(TPessoa)

  private
    FIdCliente: integer;
    FRendaMensal: currency;
    FEndereco: string;

    function getIdCliente: integer;
    procedure setIdCliente(Value: integer);
    function getRendaMensal: currency;
    procedure setRendaMensal(Value: currency);
    function getEndereco: string;
    procedure setEndereco(Value: string);

  public
    property idCliente: integer read getIdCliente write setIdCliente;
    property salario: currency read getRendaMensal write setRendaMensal;
    property endereco: string read getEndereco write setEndereco;
  end;

implementation

{ TCliente }

function TCliente.getEndereco: string;
begin
  Result := FEndereco;
end;

function TCliente.getIdCliente: integer;
begin
  Result := FIdCliente;
end;

function TCliente.getRendaMensal: currency;
begin
  Result := FRendaMensal;
end;

procedure TCliente.setEndereco(Value: string);
begin
  FEndereco := Value;
end;

procedure TCliente.setIdCliente(Value: integer);
begin
  FIdCliente := Value;
end;

procedure TCliente.setRendaMensal(Value: currency);
begin
  FRendaMensal := Value;
end;

end.
