unit UFrmEmpregado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmConsulta, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Mask;

type
  TFrmEmpregado = class(TFrmConsulta)
    Label1: TLabel;
    DBECodigo: TDBEdit;
    Label2: TLabel;
    DBEIdEmpresa: TDBEdit;
    Label3: TLabel;
    DBENome: TDBEdit;
    Label4: TLabel;
    DBECPF: TDBEdit;
    Label5: TLabel;
    DBERG: TDBEdit;
    Label6: TLabel;
    Label17: TLabel;
    DBEDataContratacao: TDBEdit;
    Label18: TLabel;
    DBEDataDemissao: TDBEdit;
    Label19: TLabel;
    DBEDataCadastro: TDBEdit;
    Label21: TLabel;
    DBEObs: TDBEdit;
    Label30: TLabel;
    GBDocumentos: TGroupBox;
    Label8: TLabel;
    DBECTPS: TDBEdit;
    Label9: TLabel;
    DBETituloEleitor: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBENuCNH: TDBEdit;
    Label11: TLabel;
    DBECatCNH: TDBEdit;
    Label12: TLabel;
    DBEValCNH: TDBEdit;
    GBComunicacao: TGroupBox;
    Label7: TLabel;
    DBEEmail: TDBEdit;
    Label13: TLabel;
    DBETelResidencial: TDBEdit;
    Label14: TLabel;
    DBETelCelular: TDBEdit;
    Label16: TLabel;
    DBENomeContato: TDBEdit;
    Label15: TLabel;
    DBETelContato: TDBEdit;
    GBEndereco: TGroupBox;
    DBECEP: TDBEdit;
    DBEIDUF: TDBEdit;
    DBEIdCidade: TDBEdit;
    DBENumeroEndereco: TDBEdit;
    DBENomeEndereco: TDBEdit;
    Label32: TLabel;
    Label31: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    DBEBairro: TDBEdit;
    DBLCBPesquisaEmpresa: TDBLookupComboBox;
    DSPesquisaEmpresa: TDataSource;
    DBLCBPesquisaCidade: TDBLookupComboBox;
    DBLCBPesquisaEstado: TDBLookupComboBox;
    DSPesquisaCidade: TDataSource;
    DSPesquisaEstado: TDataSource;
    procedure DSConsultaStateChange(Sender: TObject);
    procedure DBEIdCidadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmpregado: TFrmEmpregado;

implementation

{$R *.dfm}

uses UDMMain;

procedure TFrmEmpregado.DBEIdCidadeChange(Sender: TObject);
begin
  inherited;

  if (DSConsulta.State in dsEditModes) then
    DSConsulta.DataSet.FieldByName('IDUF').AsInteger := DSPesquisaCidade.DataSet.FieldByName('IDUF').AsInteger;
 end;

procedure TFrmEmpregado.DSConsultaStateChange(Sender: TObject);
var
  Editando: boolean;
begin
  inherited;

  Editando := (DSConsulta.State in dsEditModes);

  DSPesquisaEmpresa.DataSet.Active := Editando;
  DSPesquisaCidade.DataSet.Active := Editando;
  DSPesquisaEstado.DataSet.Active := Editando;
end;

end.
