unit UDMMain;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDMMain = class(TDataModule)
    FDCPrincipal: TFDConnection;
    FDQEmpresas: TFDQuery;
    FDQEmpregados: TFDQuery;
    FDQEnderecos: TFDQuery;
    FDQEmpresasIDEMPRESA: TIntegerField;
    FDQEmpresasNMEMPRESA: TStringField;
    FDQEmpresasNUCNPJ: TStringField;
    FDQEmpresasNUINSCRICAO: TStringField;
    FDQEmpresasSTATIVO: TStringField;
    FDQEmpresasDTCADASTRO: TDateField;
    FDQEmpresasDTABERTURA: TDateField;
    FDQEmpresasTLCOMERCIAL: TStringField;
    FDQEmpresasTLCELULAR: TStringField;
    FDQEmpresasTXOBS: TIntegerField;
    FDQEmpresasTXEMAIL: TStringField;
    FDQEmpresasSTEXCLUIDO: TStringField;
    FDQEmpresasDTEXCLUIDO: TDateField;
    FDQEmpresasTXExcluido: TStringField;
    FDQEmpregadosIDFUNCIONARIO: TIntegerField;
    FDQEmpregadosIDEMPRESA: TIntegerField;
    FDQEmpregadosNMFUNCIONARIO: TStringField;
    FDQEmpregadosNUCPF: TStringField;
    FDQEmpregadosNURG: TStringField;
    FDQEmpregadosDTNASCIMENTO: TDateField;
    FDQEmpregadosTXEMAIL: TStringField;
    FDQEmpregadosNUCARTEIRATRAB: TStringField;
    FDQEmpregadosNUTITULOELEITOR: TStringField;
    FDQEmpregadosNUCARTEIRAMOTORISTA: TStringField;
    FDQEmpregadosTPCATERORIA: TStringField;
    FDQEmpregadosDTVALIDADECARTEIRAMOT: TDateField;
    FDQEmpregadosTLRESIDENCIAL: TStringField;
    FDQEmpregadosTLCELULAR: TStringField;
    FDQEmpregadosTLCONTATO: TStringField;
    FDQEmpregadosNMCONTATO: TStringField;
    FDQEmpregadosDTCONTRATACAO: TDateField;
    FDQEmpregadosDTDEMISSAO: TDateField;
    FDQEmpregadosDTCADASTRO: TDateField;
    FDQEmpregadosSTATIVO: TStringField;
    FDQEmpregadosTXOBS: TStringField;
    FDQEmpregadosNMENDERECO: TStringField;
    FDQEmpregadosNUENDERECO: TStringField;
    FDQEmpregadosNMBAIRRO: TStringField;
    FDQEmpregadosIDCIDADE: TIntegerField;
    FDQEmpregadosIDUF: TIntegerField;
    FDQEmpregadosNUCEP: TStringField;
    FDQEmpregadosSTEXCLUIDO: TStringField;
    FDQEmpregadosDTEXCLUIDO: TDateField;
    FDQEmpregadosTXExcluido: TStringField;
    FDQEnderecosIDENDERECO: TIntegerField;
    FDQEnderecosIDTITULAR: TIntegerField;
    FDQEnderecosIDEMPRESA: TIntegerField;
    FDQEnderecosNMENDERECO: TStringField;
    FDQEnderecosNUENDERECO: TStringField;
    FDQEnderecosNMBAIRRO: TStringField;
    FDQEnderecosIDCIDADE: TIntegerField;
    FDQEnderecosIDUF: TIntegerField;
    FDQEnderecosNUCEP: TStringField;
    FDQEnderecosSTATIVO: TStringField;
    FDQEnderecosSTEXCLUIDO: TStringField;
    FDQEnderecosDTEXCLUIDO: TDateField;
    FDQEnderecosTPCADASTRO: TStringField;
    FDQEnderecosNMTITULAR: TStringField;
    FDQEnderecosNMEMPRESA: TStringField;
    FDQEnderecosNMCIDADE: TStringField;
    FDQEnderecosNMESTADO: TStringField;
    FDQEnderecosTXEXCLUIDO: TStringField;
    FDQCidades: TFDQuery;
    FDEstados: TFDQuery;
    FDEstadosIDUF: TIntegerField;
    FDEstadosNMESTADO: TStringField;
    FDEstadosSGESTADO: TStringField;
    FDQCidadesIDCIDADE: TIntegerField;
    FDQCidadesNMCIDADE: TStringField;
    FDQCidadesIDUF: TIntegerField;
    FDQCidadesNOIBGE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDQEmpresasBeforeDelete(DataSet: TDataSet);
    procedure FDQEmpregadosBeforeDelete(DataSet: TDataSet);
    procedure FDQEnderecosBeforeDelete(DataSet: TDataSet);
    procedure FDQEmpresasCalcFields(DataSet: TDataSet);
    procedure FDQEmpregadosCalcFields(DataSet: TDataSet);
    procedure FDQEnderecosCalcFields(DataSet: TDataSet);
    procedure FDQEmpregadosNewRecord(DataSet: TDataSet);
    procedure FDQEmpresasNewRecord(DataSet: TDataSet);
  private
    procedure MarcarComoExcluido(DataSet: TDataSet);
    procedure CalcularCampoParaMensagemDeRegistroExcluido(DataSet: TDataSet);
    procedure DefinirValoresIniciais(DataSet: TDataSet);
    function BuscarProximoIDDaTabela(ATabela: String): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMain: TDMMain;

implementation

{$R *.dfm}

procedure TDMMain.DataModuleCreate(Sender: TObject);
const
  FDB_FILENAME = 'DADOS.FDB';
var
  WorkingPath: string;
begin
  WorkingPath := ExtractFilePath(ParamStr(0));
  FDCPrincipal.Params.Database := WorkingPath + FDB_FILENAME;
  FDCPrincipal.Connected := True;
end;

procedure TDMMain.FDQEmpregadosNewRecord(DataSet: TDataSet);
begin
  DefinirValoresIniciais(DataSet);
  DataSet.FieldByName('IDFUNCIONARIO').AsInteger := BuscarProximoIDDaTabela('CADFUNCIONARIOS');
end;

procedure TDMMain.FDQEmpresasNewRecord(DataSet: TDataSet);
begin
  DefinirValoresIniciais(DataSet);
  DataSet.FieldByName('IDEMPRESA').AsInteger := BuscarProximoIDDaTabela('CADEMPRESA');
end;

procedure TDMMain.DefinirValoresIniciais(DataSet: TDataSet);
begin
  DataSet.FieldByName('DTCADASTRO').AsDateTime := Now;
  DataSet.FieldByName('STATIVO').AsString := 'S';
end;

function TDMMain.BuscarProximoIDDaTabela(ATabela: String): Integer;
var
  Consulta: TFDQuery;
begin
  Consulta := TFDQuery.Create(Nil);
  try
    Consulta.Connection := FDCPrincipal;
    Consulta.SQL.Text := 'SELECT GEN_ID(GEN_'+
      ATabela +
      '_ID, 1) FROM RDB$DATABASE;';
    Consulta.Open;

    Result := Consulta.Fields[0].AsInteger;

    Consulta.Close;
  finally
    Consulta.Free;
  end;
end;

procedure TDMMain.FDQEmpresasCalcFields(DataSet: TDataSet);
begin
  CalcularCampoParaMensagemDeRegistroExcluido(DataSet);
end;

procedure TDMMain.FDQEmpregadosCalcFields(DataSet: TDataSet);
begin
  CalcularCampoParaMensagemDeRegistroExcluido(DataSet);
end;

procedure TDMMain.FDQEnderecosCalcFields(DataSet: TDataSet);
begin
  CalcularCampoParaMensagemDeRegistroExcluido(DataSet);
end;

procedure TDMMain.CalcularCampoParaMensagemDeRegistroExcluido(DataSet: TDataSet);
begin
  if DataSet.FieldByName('STEXCLUIDO').AsString = 'S' then
  DataSet.FieldByName('TXEXCLUIDO').AsString := 'ATENÇÃO: Este registro foi marcado como excluído na data de ' +
    FormatDateTime('dd/mm/yyyy', DataSet.FieldByName('DTEXCLUIDO').AsDateTime) +
    ' e não pode ser editado';
end;

procedure TDMMain.FDQEnderecosBeforeDelete(DataSet: TDataSet);
begin
  MarcarComoExcluido(DataSet);
end;

procedure TDMMain.FDQEmpregadosBeforeDelete(DataSet: TDataSet);
begin
  MarcarComoExcluido(DataSet);
end;

procedure TDMMain.FDQEmpresasBeforeDelete(DataSet: TDataSet);
begin
  MarcarComoExcluido(DataSet);
end;

procedure TDMMain.MarcarComoExcluido(DataSet: TDataSet);
begin
  DataSet.Cancel;

  if DataSet.FieldByName('STEXCLUIDO').AsString <> 'S' then
  begin
    DataSet.Edit;
    DataSet.FieldByName('STEXCLUIDO').AsString := 'S';
    DataSet.FieldByName('DTEXCLUIDO').AsDateTime := Now;
    DataSet.Post;
  end;
end;

end.
