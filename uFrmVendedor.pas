unit uFrmVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,
  uFrmCadVendedor;

type
  TFrmVendedor = class(TForm)
    Panel1: TPanel;
    LVVendedor: TListView;
    Panel2: TPanel;
    btnInserir: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedor: TFrmVendedor;

implementation

{$R *.dfm}

procedure TFrmVendedor.btnInserirClick(Sender: TObject);
begin
  FrmCadVendedor.ShowModal;
end;

end.
