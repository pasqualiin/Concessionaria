unit uVendedor;

interface

uses uPessoa;

type
  TVendedor = class(TPessoa)

  private
    FSalario: currency;
    FComissao: currency;
    FSsenha: string;

    function getComissao: currency;
    procedure setComissao(Value: currency);
    function getSenha: string;
    procedure setSenha(Value: string);
    function getSalario: currency;
    procedure setSalario(Value: currency);

  public
    property comissao: currency read getComissao write setComissao;
    property senha: string read getSenha write setSenha;
  end;

implementation

{ TVendedor }

function TVendedor.getComissao: currency;
begin
  Result := FComissao;
end;

function TVendedor.getSalario: currency;
begin
  Result := FSalario;
end;

function TVendedor.getSenha: string;
begin
  Result := FSsenha;
end;

procedure TVendedor.setComissao(Value: currency);
begin
  FComissao := Value;
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
