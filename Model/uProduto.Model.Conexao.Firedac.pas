unit uProduto.Model.Conexao.Firedac;

interface

uses
  eProduto.Model.Conexao.Interfaces,
  Firedac.Stan.Intf,
  Firedac.Stan.Option, Firedac.Stan.Error, Firedac.UI.Intf, Firedac.Phys.Intf,
  Firedac.Stan.Def, Firedac.Stan.Pool, Firedac.Stan.Async, Firedac.Phys,
  Firedac.Phys.FB, Firedac.Phys.FBDef, Firedac.VCLUI.Wait, Firedac.Stan.Param,
  Firedac.DatS, Firedac.DApt.Intf, Firedac.DApt, Vcl.StdCtrls,
  Firedac.Comp.DataSet, Firedac.Comp.Client, Data.DB, Firedac.Comp.UI;

Type
  TModelConexaoFiredac = class(TInterfacedObject, iConexao)
  private
    FConexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iConexao;
    function Connection: TCustomConnection;
  end;

implementation

uses
  System.SysUtils;

{ TModelConexaoFiredac }

function TModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexaoFiredac.Create;
begin

  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(Nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(nil);

  FConexao := TFDConnection.Create(nil);
  FConexao.DriverName := 'FB';
  FConexao.Params.Database := 'C:\DBComercio\Empresa1\BASEDADOS.FDB';
  FConexao.Params.UserName := 'SYSDBA';
  FConexao.Params.Password := 'masterkey';
  FConexao.Connected := true;
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FreeAndNil(FDGUIxWaitCursor1);
  FreeAndNil(FDPhysFBDriverLink1);

  FreeAndNil(FConexao);
  inherited;
end;

class function TModelConexaoFiredac.New: iConexao;
begin
  Result := Self.Create;
end;

end.
