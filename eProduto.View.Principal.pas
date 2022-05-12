unit eProduto.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,  Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, eProduto.Model.Conexao.Interfaces;

type
  TfrmPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FProduto : iEntidade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uProduto.Model.Conexao.Firedac, eProduto.Model.Entidade.Produto;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
     FProduto.Listar(DataSource1);
end;

procedure TfrmPrincipal.Button2Click(Sender: TObject);
begin
FProduto.ListaCampos(Edit1.Text, DataSource1);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
FProduto := TModelEntidadeProduto.New;
end;

end.
