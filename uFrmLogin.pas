unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls,
  uFrmPrincipal, uVendedorDAO, uDM;

type
  TFrmLogin = class(TForm)
    edtUser: TEdit;
    edtPassw: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
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

procedure TFrmLogin.SpeedButton1Click(Sender: TObject);
begin
  VendedorDAO := TVendedorDAO.Create;
  VendedorDAO.VerificarLogin(edtUser.Text, edtPassw.Text);
  FrmPrincipal.ShowModal;
end;

end.
