unit eProduto.Model.Conexao.Interfaces;

interface

uses
  Data.DB;

type

  iConexao = interface
    ['{165C3812-8906-4290-BF6B-39059BE67DDE}']
    function Connection : TCustomConnection;
  end;

  iQuery = interface
    ['{2D77EDDA-4A43-40D7-B552-A32B713E9079}']
    function SQL(Value : String) : iQuery;
    function DataSet : TDataSet;
  end;

  iEntidade = interface
    ['{0BAF5AA3-4B6A-49D4-8932-D4683DFF820D}']
    function Listar(Value : TDataSource) : iEntidade;
    function ListaCampos(Fields : String; DataSource : TDataSource) : iEntidade;
  end;



implementation

end.
