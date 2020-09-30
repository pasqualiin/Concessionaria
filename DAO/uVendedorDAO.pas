unit uVendedorDAO;

interface

uses uVendedor, uBaseDAO, System.SysUtils, System.Generics.Collections,
  FireDAC.Comp.Client, FireDAC.Dapt;

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

end;

function TVendedorDAO.VerificarLogin(user, passw: string): Boolean;
var
  SQL: string;
begin
  SQL := 'SELECT C.cpf, C.senha from vendedor C where C.cpf like ' +
    QuotedStr(user) + ' and C.senha like ' + QuotedStr(passw);

  Result := ExecutarComando(SQL) > 0;
end;

end.