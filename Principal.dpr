program Principal;

uses
  Vcl.Forms,
  eProduto.View.Principal in 'View\eProduto.View.Principal.pas' {frmPrincipal},
  eProduto.Controller.Factory.Interfaces in 'Controller\eProduto.Controller.Factory.Interfaces.pas',
  eProduto.Controller.Factory.Query in 'Controller\eProduto.Controller.Factory.Query.pas',
  eProduto.Model.Conexao.Interfaces in 'Model\eProduto.Model.Conexao.Interfaces.pas',
  eProduto.Model.Entidade.Produto in 'Model\eProduto.Model.Entidade.Produto.pas',
  eProduto.Model.Query.Firedac in 'Model\eProduto.Model.Query.Firedac.pas',
  uProduto.Model.Conexao.Firedac in 'Model\uProduto.Model.Conexao.Firedac.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
