unit uBaseDAO;

interface

uses FireDAC.Comp.Client, uDM, System.SysUtils;

type
  TBaseDAO = class

  protected
    FQuery: TFDQuery;
    constructor Create;
    destructor Destroy; override;

    function ExecutarComando(pSQL: string): integer;
    function RetornarDataSet(pSQL: string): TFDQuery;
  end;

implementation

{ TBaseDAO }

constructor TBaseDAO.Create;
begin
  inherited Create;
  FQuery := TFDQuery.Create(Nil);
  FQuery.Connection := DM.Conn;
end;

destructor TBaseDAO.Destroy;
begin

  Try
    if Assigned(FQuery) then
    begin
      FreeAndNil(FQuery);
    end;
  except
    on e: exception do
      raise exception.Create(e.Message);
  End;
end;

function TBaseDAO.ExecutarComando(pSQL: string): integer;
begin
  Try
    DM.Conn.StartTransaction;
    FQuery.SQL.Text := pSQL;
    FQuery.ExecSQL;
    Result := FQuery.RowsAffected;
    DM.Conn.Commit;
  except
    DM.Conn.Rollback;
  End;
end;

function TBaseDAO.RetornarDataSet(pSQL: string): TFDQuery;
begin
  FQuery.SQL.Text := pSQL;
  FQuery.Active := True;
  Result := FQuery;
end;

end.
