unit uFrmCadVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  uVendedor, uVendedorDAO, Vcl.WinXPickers, Vcl.ComCtrls;

type
  TFrmCadVendedor = class(TForm)
    edtNome: TEdit;
    Label1: TLabel;
    edtContato: TEdit;
    Label2: TLabel;
    edtCPF: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtSalario: TEdit;
    Label6: TLabel;
    edtSenha: TEdit;
    Label7: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    SBSave: TSpeedButton;
    SBCancel: TSpeedButton;
    DTDataNasc: TDateTimePicker;
    procedure SBSaveClick(Sender: TObject);
    procedure CapturaEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadVendedor: TFrmCadVendedor;
  Vendedor: TVendedor;
  VendedorDAO: TVendedorDAO;

implementation

{$R *.dfm}

procedure TFrmCadVendedor.CapturaEdit;
begin
  Vendedor := TVendedor.Create;
  Vendedor.nome := edtNome.Text;
  Vendedor.dataNasc := DTDataNasc.DateTime;
  Vendedor.cpf := edtCPF.Text;
  Vendedor.contato := edtContato.Text;
  Vendedor.comissao := 0.05;
  Vendedor.salario := StrToCurr(edtSalario.Text);
  Vendedor.senha := edtSenha.Text;

end;

procedure TFrmCadVendedor.SBSaveClick(Sender: TObject);
begin
  CapturaEdit;
  VendedorDAO := TVendedorDAO.Create;
  if VendedorDAO.InserirVendedor(Vendedor) = true then
    MessageDlg('Vendedor Inserido com Sucesso!', mtConfirmation, [mbOK], 1);
  Close;
end;

end.
