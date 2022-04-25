unit eProduto.Model.Query.Firedac;

interface

uses
  eProduto.Model.Conexao.Interfaces, FireDAC.Comp.Client,
  Firedac.Stan.Intf,
  Firedac.Stan.Option, Firedac.Stan.Error, Firedac.UI.Intf, Firedac.Phys.Intf,
  Firedac.Stan.Def, Firedac.Stan.Pool, Firedac.Stan.Async, Firedac.Phys,
  Firedac.Phys.FB, Firedac.Phys.FBDef, Firedac.VCLUI.Wait, Firedac.Stan.Param,
  Firedac.DatS, Firedac.DApt.Intf, Firedac.DApt, Vcl.StdCtrls,
  Firedac.Comp.DataSet, Data.DB;
Type
  TModelQueryFiredac = class(TInterfacedObject, iQuery)
    private
    FQuery : TFDQuery;
    FParent : iConexao;
    public
      constructor Create(Parent : iConexao);
      destructor Destroy; override;
      class function New(Parent : iConexao) : iQuery;
      function SQL(Value : String) : iQuery;
      function DataSet : TDataSet;
  end;


implementation

uses
  System.SysUtils, uProduto.Model.Conexao.Firedac;

{ TModelQuery }

constructor TModelQueryFiredac.Create(Parent : iConexao);
begin

  FParent := Parent;
  FQuery := TFDQuery.Create(Nil);

  if not Assigned(FParent) then
     FParent := TModelConexaoFiredac.New;

  FQuery.Connection := TFDConnection(FParent.Connection);
end;

function TModelQueryFiredac.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TModelQueryFiredac.Destroy;
begin
  FreeAndNil(FQuery);
  inherited;
end;

class function TModelQueryFiredac.New(Parent : iConexao): iQuery;
begin
   Result := Self.Create(Parent);
end;

function TModelQueryFiredac.SQL(Value: String): iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(Value);
  FQuery.Active := true;
end;

end.
