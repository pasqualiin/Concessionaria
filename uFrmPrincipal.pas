unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uFrmVendedor;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Carro1: TMenuItem;
    Cadastrar1: TMenuItem;
    Vendedor1: TMenuItem;
    Cliente1: TMenuItem;
    Cadastrar2: TMenuItem;
    Cadastrar3: TMenuItem;
    procedure Cadastrar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Cadastrar2Click(Sender: TObject);
begin
  FrmVendedor.ShowModal;
end;

end.
