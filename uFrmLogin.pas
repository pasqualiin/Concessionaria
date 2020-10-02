unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  uFrmPrincipal, uVendedorDAO, uDM, FireDAC.Comp.Client;

type
  TFrmLogin = class(TForm)
    edtUser: TEdit;
    edtPassw: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SBEntrar: TSpeedButton;
    SBSair: TSpeedButton;
    procedure SBEntrarClick(Sender: TObject);
    procedure SBSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;
  VendedorDAO: TVendedorDAO;

implementation

{$R *.dfm}

procedure TFrmLogin.SBEntrarClick(Sender: TObject);
begin
  VendedorDAO := TVendedorDAO.Create;
  if VendedorDAO.VerificarLogin(edtUser.Text, edtPassw.Text) = True then
  begin
    ShowMessage('Logado com Sucesso');
    Visible := false;
    FrmPrincipal.ShowModal;
  end
  else
    ShowMessage('Erro no login');
end;

procedure TFrmLogin.SBSairClick(Sender: TObject);
begin
  Close;
end;

end.
