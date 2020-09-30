program ProjetoCarro;

uses
  Vcl.Forms,
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uDM in 'uDM.pas' {DM: TDataModule},
  uPessoa in 'MODEL\uPessoa.pas',
  uCliente in 'MODEL\uCliente.pas',
  uVendedor in 'MODEL\uVendedor.pas',
  uBaseDAO in 'DAO\uBaseDAO.pas',
  uVendedorDAO in 'DAO\uVendedorDAO.pas',
  uFrmVendedor in 'uFrmVendedor.pas' {Form1},
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
