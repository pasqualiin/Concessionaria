unit uVendedor;

interface

uses uPessoa;

type
  TVendedor = class(TPessoa)

  private
    FIdVendedor: integer;
    FSalario: currency;
    FComissao: currency;
    FSsenha: string;

    function getComissao: double;
    procedure setComissao(Value: double);
    function getSenha: string;
    procedure setSenha(Value: string);
    function getSalario: currency;
    procedure setSalario(Value: currency);
    function getIdVendedor: integer;
    procedure setIdVendedor(Value: integer);

  public
    property idVendedor: integer read getIdVendedor write setIdVendedor;
    property comissao: double read getComissao write setComissao;
    property senha: string read getSenha write setSenha;
    property salario: currency read getSalario write setSalario;
  end;

implementation

{ TVendedor }

function TVendedor.getComissao: double;
begin
  Result := FComissao;
end;

function TVendedor.getIdVendedor: integer;
begin
  Result := FIdVendedor;
end;

function TVendedor.getSalario: currency;
begin
  Result := FSalario;
end;

function TVendedor.getSenha: string;
begin
  Result := FSsenha;
end;

procedure TVendedor.setComissao(Value: double);
begin
  FComissao := Value;
end;

procedure TVendedor.setIdVendedor(Value: integer);
begin
  FIdVendedor := Value;
end;

procedure TVendedor.setSalario(Value: currency);
begin
  FSalario := Value;
end;

procedure TVendedor.setSenha(Value: string);
begin
  FSsenha := Value;
end;

end.
