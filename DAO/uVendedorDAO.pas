unit uVendedorDAO;

interface

uses uVendedor, uBaseDAO, System.SysUtils, System.Generics.Collections,
  FireDAC.Comp.Client, FireDAC.Dapt, uDM;

type
  TVendedorDAO = class(TBaseDAO)

  private
    FListaVendedor: TObjectList<TVendedor>;
  public
    constructor Create;
    destructor Destroy;
    function InserirVendedor(pVendedor: TVendedor): Boolean;
    function AlterarVendedor(pVendedor: TVendedor): Boolean;
    function ExcluirVendedor(pVendedor: TVendedor): Boolean;
    function VerificarLogin(user, passw: string): Boolean;
    function RecuperaNome(user: string): String;
  end;

implementation

{ TVendedorDAO }

function TVendedorDAO.AlterarVendedor(pVendedor: TVendedor): Boolean;
begin

end;

constructor TVendedorDAO.Create;
begin
  inherited;
  FListaVendedor := TObjectList<TVendedor>.Create;
end;

destructor TVendedorDAO.Destroy;
begin
  try
    inherited;
    if Assigned(FListaVendedor) then
      FreeAndNil(FListaVendedor);
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

function TVendedorDAO.ExcluirVendedor(pVendedor: TVendedor): Boolean;
begin

end;

function TVendedorDAO.InserirVendedor(pVendedor: TVendedor): Boolean;
var
  SQL: string;
begin
  SQL := 'INSERT INTO vendedor VALUES ( Default, ' + QuotedStr(pVendedor.nome) +
    ', ' + QuotedStr(FormatDateTime('yyyy-mm-dd', pVendedor.dataNasc)) + ', ' +
    QuotedStr(pVendedor.CPF) + ', ' + QuotedStr(pVendedor.contato) + ', 0.05, '
    + QuotedStr(FloatToStr(pVendedor.salario)) + ', ' +
    QuotedStr(pVendedor.senha) + ')';
  Result := ExecutarComando(SQL) > 0;
end;

function TVendedorDAO.RecuperaNome(user: string): String;
var
  SQL: String;
  Retorno: TFDQuery;
begin
  SQL := 'SELECT * FROM vendedor WHERE cpf = ' + QuotedStr(user);
  if HaRegistro(SQL) > 0 then
    Retorno := RetornarDataSet(SQL);
  Result := Retorno.FieldByName('nome').asString;
end;

function TVendedorDAO.VerificarLogin(user, passw: string): Boolean;
var
  SQL: string;
begin
  SQL := 'SELECT * from vendedor WHERE cpf = ' + QuotedStr(user) +
    ' and senha = ' + QuotedStr(passw);

  Result := HaRegistro(SQL) > 0;
end;

end.
