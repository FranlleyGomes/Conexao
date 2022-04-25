unit eProduto.Controller.Factory.Interfaces;

interface

uses
  eProduto.Model.Conexao.Interfaces;

type

  iFactoryQuery = interface
    ['{957773CE-81E3-4AEC-A286-2B2F1DFDEFA7}']
    function Query(Connection : iConexao) : iQuery;
   end;



implementation

end.
