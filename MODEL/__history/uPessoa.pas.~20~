unit uPessoa;

interface

uses System.SysUtils;

type
  TPessoa = class
  private
    FNome: string;
    FDataNasc: string;
    FCPF: string;
    FContato: string;

    function getNome: string;
    procedure setNome(Value: string);
    function getDataNasc: string;
    procedure setDataNasc(Value: string);
    function getCpf: string;
    procedure setCpf(Value: string);
    function getContato: string;
    procedure setContato(Value: string);
  public

    property nome: string read getNome write setNome;
    property dataNasc: string read getDataNasc write setDataNasc;
    property cpf: string read getCpf write setCpf;
    property contato: string read getContato write setContato;

    function CalcularIdade: integer;
  end;

implementation

{ TPessoa }

function TPessoa.CalcularIdade: integer;
begin
  Result := Trunc((now - StrToDate(dataNasc)) / 365.25)
end;

function TPessoa.getContato: string;
begin
  Result := FContato;
end;

function TPessoa.getCpf: string;
begin
  Result := FCPF;
end;

function TPessoa.getDataNasc: string;
begin
  Result := FDataNasc;
end;

function TPessoa.getNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.setContato(Value: string);
begin
  FContato := Value;
end;

procedure TPessoa.setCpf(Value: string);
begin
  FCPF := Value;
end;

procedure TPessoa.setDataNasc(Value: string);
begin
  FDataNasc := Value;
end;

procedure TPessoa.setNome(Value: string);
begin
  FNome := Value;
end;

end.
