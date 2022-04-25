unit eProduto.Model.Entidade.Produto;

interface

uses
  eProduto.Model.Conexao.Interfaces, Data.DB;

Type
  TModelEntidadeProduto = class(TInterfacedObject, iEntidade)
  private
    FQuery: iQuery;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iEntidade;
    function Listar(Value: TDataSource): iEntidade;
    function ListaCampos(Fields: String; DataSource: TDataSource): iEntidade;
  end;

implementation

uses
  eProduto.Controller.Factory.Query;

{ TModelEntidadeUsuario }

constructor TModelEntidadeProduto.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelEntidadeProduto.Destroy;
begin

  inherited;
end;

function TModelEntidadeProduto.ListaCampos(Fields: String;
  DataSource: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT ' + Fields + ' FROM CADPRODUTO');
  DataSource.DataSet := FQuery.DataSet;
end;

function TModelEntidadeProduto.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM CADPRODUTO');
  Value.DataSet := FQuery.DataSet;
end;

class function TModelEntidadeProduto.New: iEntidade;
begin
  Result := Self.Create;
end;

end.
