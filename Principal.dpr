program Principal;

uses
  Vcl.Forms,
  eProduto.View.Principal in 'eProduto.View.Principal.pas' {frmPrincipal},
  eProduto.Model.Conexao.Interfaces in 'eProduto.Model.Conexao.Interfaces.pas',
  uProduto.Model.Conexao.Firedac in 'uProduto.Model.Conexao.Firedac.pas',
  eProduto.Model.Query.Firedac in 'eProduto.Model.Query.Firedac.pas',
  eProduto.Model.Entidade.Produto in 'eProduto.Model.Entidade.Produto.pas',
  eProduto.Controller.Factory.Query in 'eProduto.Controller.Factory.Query.pas',
  eProduto.Controller.Factory.Interfaces in 'eProduto.Controller.Factory.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
