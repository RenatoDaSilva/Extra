unit UMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  UDMMain;

type
  TFMain = class(TForm)
    BarraDeBotoes: TControlBar;
    sbEmpregados: TSpeedButton;
    sbEmpresas: TSpeedButton;
    procedure FormDestroy(Sender: TObject);
    procedure sbEmpresasClick(Sender: TObject);
    procedure sbEmpregadosClick(Sender: TObject);
  private
    DMMain: TDMMain;
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

uses UFrmEmpresa, UFrmEmpregado;

procedure TFMain.FormDestroy(Sender: TObject);
begin
  DMMain.Free;
end;

procedure TFMain.sbEmpregadosClick(Sender: TObject);
begin
  with TFrmEmpregado.Create(nil) do
    Show;
end;

procedure TFMain.sbEmpresasClick(Sender: TObject);
begin
  with TFrmEmpresa.Create(nil) do
    Show;
end;

end.
