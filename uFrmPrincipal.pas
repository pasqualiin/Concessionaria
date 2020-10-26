unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uFrmVendedor, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uVendedorDAO, uVendedor,
  System.UITypes, Vcl.Imaging.jpeg, System.Generics.Collections,
  uCliente, uClienteDAO;

type
  TFrmPrincipal = class(TForm)
    PCPrincipal: TPageControl;
    TSVeiculo: TTabSheet;
    TSCliente: TTabSheet;
    TSVendedor: TTabSheet;
    PListarCliente: TPanel;
    PCadVendedor: TPanel;
    Label1: TLabel;
    edtNome: TEdit;
    Label2: TLabel;
    edtCPF: TEdit;
    Label4: TLabel;
    edtContato: TEdit;
    Label5: TLabel;
    DTDataNasc: TDateTimePicker;
    Label6: TLabel;
    edtSalario: TEdit;
    Label7: TLabel;
    edtSenha: TEdit;
    SBCancel: TSpeedButton;
    SBSave: TSpeedButton;
    Image1: TImage;
    PListarVendedor: TPanel;
    Image2: TImage;
    LVVendedor: TListView;
    SPEditar: TSpeedButton;
    SPExcluir: TSpeedButton;
    SPInserir: TSpeedButton;
    SBUser: TStatusBar;
    Timer1: TTimer;
    PEditarVendedor: TPanel;
    edtNomeEdicao: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    edtCpfEdicao: TEdit;
    Label9: TLabel;
    edtContatoEdicao: TEdit;
    Label10: TLabel;
    edtSalarioEdicao: TEdit;
    Label11: TLabel;
    DTDataNascEdicao: TDateTimePicker;
    Label12: TLabel;
    edtSenhaEdicao: TEdit;
    SBSalvarEdicao: TSpeedButton;
    SBCancelarEdicao: TSpeedButton;
    Image3: TImage;
    LVCliente: TListView;
    SBInserirCliente: TSpeedButton;
    SBEditarCliente: TSpeedButton;
    SBExcluirCliente: TSpeedButton;
    PEditarCliente: TPanel;
    Image4: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    SBSalvarEdicaoCliente: TSpeedButton;
    SBCancelarEdicaoCliente: TSpeedButton;
    edtNomeEdicaoCliente: TEdit;
    edtCpfEdicaoCliente: TEdit;
    edtContatoEdicaoCliente: TEdit;
    edtSalarioEdicaoCliente: TEdit;
    DTDataNascEdicaoCliente: TDateTimePicker;
    edtEnderecoEdicaoCliente: TEdit;
    PInserirCliente: TPanel;
    Label19: TLabel;
    edtNomeCliente: TEdit;
    Label20: TLabel;
    edtCpfCliente: TEdit;
    Label21: TLabel;
    edtContatoCliente: TEdit;
    Label22: TLabel;
    edtSalarioCliente: TEdit;
    Label23: TLabel;
    edtEnderecoCliente: TEdit;
    Label24: TLabel;
    DTDataNascCliente: TDateTimePicker;
    SBSalvarCliente: TSpeedButton;
    SBCancelarCliente: TSpeedButton;
    procedure SBSaveClick(Sender: TObject);
    procedure CapturaEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SPInserirClick(Sender: TObject);
    procedure LimparEdit;
    procedure SBCancelClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PreencherListView(pListaVendedor: TList<TVendedor>); overload;
    procedure PreencherListView(pListaCliente: TList<TCliente>); overload;
    procedure CarregarColecao;
    procedure SPExcluirClick(Sender: TObject);
    procedure SPEditarClick(Sender: TObject);
    procedure PreencherEdit;
    procedure SBSalvarEdicaoClick(Sender: TObject);
    procedure CapturaEditEdicao;
    procedure SBCancelarEdicaoClick(Sender: TObject);
    procedure SBSalvarClienteClick(Sender: TObject);
    procedure CapturarEditCliente;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  VendedorDAO: TVendedorDAO;
  Vendedor: TVendedor;
  Cliente: TCliente;
  ClienteDAO: TClienteDAO;

implementation

{$R *.dfm}

uses uFrmLogin;

procedure TFrmPrincipal.CapturaEdit;
begin
  Vendedor.nome := edtNome.Text;
  Vendedor.dataNasc := DTDataNasc.DateTime;
  Vendedor.cpf := edtCPF.Text;
  Vendedor.contato := edtContato.Text;
  Vendedor.comissao := 0.05;
  Vendedor.salario := StrToCurr(edtSalario.Text);
  Vendedor.senha := edtSenha.Text;
end;

procedure TFrmPrincipal.CapturaEditEdicao;
begin
  Vendedor.nome := edtNomeEdicao.Text;
  Vendedor.dataNasc := DTDataNascEdicao.DateTime;
  Vendedor.cpf := edtCpfEdicao.Text;
  Vendedor.contato := edtContatoEdicao.Text;
  Vendedor.comissao := 0.05;
  Vendedor.salario := StrToCurr(edtSalarioEdicao.Text);
  Vendedor.senha := edtSenhaEdicao.Text;
end;

procedure TFrmPrincipal.CapturarEditCliente;
begin
  Cliente.nome := edtNomeCliente.Text;
  Cliente.dataNasc := DTDataNascCliente.DateTime;
  Cliente.cpf := edtCpfCliente.Text;
  Cliente.contato := edtContatoCliente.Text;
  Cliente.salario := StrToCurr(edtSalarioCliente.Text);
  Cliente.endereco := edtEnderecoCliente.Text;
end;

procedure TFrmPrincipal.CarregarColecao;
begin
  try
    PreencherListView(VendedorDAO.BuscaVendedor);
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  VendedorDAO := TVendedorDAO.Create;
  Vendedor := TVendedor.Create;
  Cliente := TCliente.Create;
  ClienteDAO := TClienteDAO.Create;
  DTDataNasc.DateTime := now;
  CarregarColecao;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  if Assigned(VendedorDAO) then
    FreeAndNil(VendedorDAO);
  if Assigned(Vendedor) then
    FreeAndNil(Vendedor);
  if Assigned(Cliente) then
    FreeAndNil(Cliente);
  if Assigned(ClienteDAO) then
    FreeAndNil(ClienteDAO);
  FrmLogin.Close;
end;

procedure TFrmPrincipal.LimparEdit;
begin
  edtNome.clear;
  edtCPF.clear;
  edtContato.clear;
  edtSalario.clear;
  edtSenha.clear;
  DTDataNasc.DateTime := now;
end;

procedure TFrmPrincipal.PreencherEdit;
begin
  edtNomeEdicao.Text := Vendedor.nome;
  edtCpfEdicao.Text := Vendedor.cpf;
  edtContatoEdicao.Text := Vendedor.contato;
  edtSalarioEdicao.Text := CurrToStr(Vendedor.salario);
  DTDataNascEdicao.DateTime := Vendedor.dataNasc;
  edtSenhaEdicao.Text := Vendedor.senha;

end;

procedure TFrmPrincipal.PreencherListView(pListaCliente: TList<TCliente>);
begin
  var
  I: integer;
  tempItems: TListItem;
  if Assigned(pListaVendedor) then
  begin
    LVVendedor.clear;

    for I := 0 to pListaVendedor.Count - 1 do
    begin
      tempItems := LVVendedor.Items.Add;
      tempItems.Caption := (TVendedor(pListaVendedor[I]).nome);
      tempItems.SubItems.Add(TVendedor(pListaVendedor[I]).cpf);
      tempItems.SubItems.Add(TVendedor(pListaVendedor[I]).contato);
      tempItems.SubItems.Add(CurrToStr(TVendedor(pListaVendedor[I]).salario));
      tempItems.SubItems.Add(FloatToStr(TVendedor(pListaVendedor[I]).comissao));
      tempItems.Data := TVendedor(pListaVendedor[I]);
    end
  end
  else
    ShowMessage('Nada Encontrado')
end;

procedure TFrmPrincipal.PreencherListView(pListaVendedor: TList<TVendedor>);
var
  I: integer;
  tempItems: TListItem;
begin
  if Assigned(pListaVendedor) then
  begin
    LVVendedor.clear;

    for I := 0 to pListaVendedor.Count - 1 do
    begin
      tempItems := LVVendedor.Items.Add;
      tempItems.Caption := (TVendedor(pListaVendedor[I]).nome);
      tempItems.SubItems.Add(TVendedor(pListaVendedor[I]).cpf);
      tempItems.SubItems.Add(TVendedor(pListaVendedor[I]).contato);
      tempItems.SubItems.Add(CurrToStr(TVendedor(pListaVendedor[I]).salario));
      tempItems.SubItems.Add(FloatToStr(TVendedor(pListaVendedor[I]).comissao));
      tempItems.Data := TVendedor(pListaVendedor[I]);
    end
  end
  else
    ShowMessage('Nada Encontrado')
end;

procedure TFrmPrincipal.SBCancelarEdicaoClick(Sender: TObject);
begin
  PEditarVendedor.Hide;
  PListarVendedor.Show;
end;

procedure TFrmPrincipal.SBCancelClick(Sender: TObject);
begin
  LimparEdit;
  PListarVendedor.Show;
  PCadVendedor.Hide;
end;

procedure TFrmPrincipal.SBSalvarClienteClick(Sender: TObject);
begin
  CapturarEditCliente;
  if ClienteDAO.InserirCliente(Cliente) = True then
  begin
    ShowMessage('Cliente Inserido com Sucesso!');
  end;
  PInserirCliente.Hide;
  PListarCliente.Show;
end;

procedure TFrmPrincipal.SBSalvarEdicaoClick(Sender: TObject);
begin
  CapturaEditEdicao;
  if VendedorDAO.AlterarVendedor(Vendedor) = true then
  begin
    ShowMessage('Registro Alterado com Sucesso!');
  end;
  CarregarColecao;
  PEditarVendedor.Hide;
  PListarVendedor.Show;

end;

procedure TFrmPrincipal.SBSaveClick(Sender: TObject);
begin
  CapturaEdit;
  if VendedorDAO.InserirVendedor(Vendedor) = true then
    MessageDlg('Vendedor Inserido com Sucesso!', mtConfirmation, [mbOK], 1);
  LimparEdit;
  CarregarColecao;
  PListarVendedor.Show;
  PCadVendedor.Hide;
end;

procedure TFrmPrincipal.SPEditarClick(Sender: TObject);
begin
  Vendedor := LVVendedor.ItemFocused.Data;
  PreencherEdit;
  PEditarVendedor.Show;
  PCadVendedor.Hide;
  PListarVendedor.Hide;
end;

procedure TFrmPrincipal.SPExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir esse Vendedor?', mtConfirmation, [mbYes, mbNo],
    1) = mrYes then
    if VendedorDAO.ExcluirVendedor(LVVendedor.ItemFocused.Data) then
    begin
      CarregarColecao;
      MessageDlg('Vendedor Excluído com Sucesso!', mtInformation, [mbOK], 1)
    end;
end;

procedure TFrmPrincipal.SPInserirClick(Sender: TObject);
begin
  PCadVendedor.Visible := true;
  PListarVendedor.Hide;
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);

begin
  SBUser.Panels[1].Text := 'Data: ' + FormatDateTime
    ('dddd", "dd" de "mmmm" de "yyyy', now);
  SBUser.Panels[2].Text := 'Hora: ' + FormatDateTime('hh:mm:ss', now);
end;

end.
