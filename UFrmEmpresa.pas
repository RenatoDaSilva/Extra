unit UFrmEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmConsulta, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Mask, Vcl.Buttons;

type
  TFrmEmpresa = class(TFrmConsulta)
    Label1: TLabel;
    DBECodigo: TDBEdit;
    Label2: TLabel;
    DBENome: TDBEdit;
    Label3: TLabel;
    DBECNPJ: TDBEdit;
    Label4: TLabel;
    DBEIE: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBETelefoneComercial: TDBEdit;
    Label9: TLabel;
    DBETelefoneCelular: TDBEdit;
    Label10: TLabel;
    DBEObs: TDBEdit;
    Label11: TLabel;
    DBEEmail: TDBEdit;
    DTPAbertura: TDateTimePicker;
    Label5: TLabel;
    DBEDTCADASTRO: TDBEdit;
    procedure DSConsultaStateChange(Sender: TObject);
    procedure DTPAberturaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpresa: TFrmEmpresa;

implementation

{$R *.dfm}

uses UDMMain;

procedure TFrmEmpresa.DSConsultaStateChange(Sender: TObject);
begin
  inherited;

  if DSConsulta.State in [dsEdit] then
    DTPAbertura.DateTime := DSConsulta.DataSet.FieldByName('DTABERTURA').AsDateTime;
end;

procedure TFrmEmpresa.DTPAberturaChange(Sender: TObject);
begin
  inherited;

  DSConsulta.DataSet.FieldByName('DTABERTURA').AsDateTime := DTPAbertura.DateTime;
end;

end.
