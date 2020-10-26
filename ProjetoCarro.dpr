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
  uFrmVendedor in 'uFrmVendedor.pas' {FrmVendedor},
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uClienteDAO in 'DAO\uClienteDAO.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmVendedor, FrmVendedor);
  Application.Run;

end.
