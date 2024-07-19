unit UConsulta;

interface

uses
  System.Classes,
  FireDAC.Comp.Client,
  Data.DB;

type
  TConsulta = class(TObject)
    constructor Create(AConexao: TFDConnection);
    destructor Destroy; override;
  private
    FQuery: TFDQuery;
    FListaNomesExibicao: TStrings;

    function GetSQL: String;
    procedure SetSQL(const Value: String);
    function GetNomesDeExibicao: String;
    procedure SetNomesDeExibicao(const Value: String);
    procedure CriarCampos;
  public
    property DataSet: TFDQuery read FQuery write FQuery;
    property SQL: String read GetSQL write SetSQL;
    property NomesDeExibicao: String read GetNomesDeExibicao write SetNomesDeExibicao;

    function Conectar: boolean;
    function Desconectar: boolean;

    class function BuscarProximoIDDaTabela(AConexao: TFDConnection; ATabela: String): Integer;
  end;

implementation

{ TConsulta }

constructor TConsulta.Create(AConexao: TFDConnection);
begin
  FQuery := TFDQuery.Create(nil);
  FQuery.Connection := AConexao;
  FListaNomesExibicao := TStringList.Create;
end;

destructor TConsulta.Destroy;
begin
  FQuery.Active := False;
  FQuery.Fields.Clear;
  FQuery.Free;
  FListaNomesExibicao.Free;
end;

function TConsulta.Conectar: boolean;
begin
  if not FQuery.Active then
    CriarCampos;
  FQuery.Active := True;
  Result := FQuery.Active;
end;

procedure TConsulta.CriarCampos;
var
  contar: Integer;
  Campo: TField;
begin
  if not FQuery.Active then
  begin
    FQuery.Fields.Clear;
    FQuery.FieldDefs.Updated := False;
    FQuery.FieldDefs.Update;
    for contar := 0 to FQuery.FieldDefs.Count - 1 do
    begin
      Campo := FQuery.FieldDefs[contar].CreateField(FQuery);
      if FListaNomesExibicao.Count > contar then
        Campo.DisplayLabel := FListaNomesExibicao[contar];
    end;
  end;
end;

function TConsulta.Desconectar: boolean;
begin
  FQuery.Active := False;
  Result := not FQuery.Active;
end;

function TConsulta.GetNomesDeExibicao: String;
begin
  Result := FListaNomesExibicao.CommaText;
end;

function TConsulta.GetSQL: String;
begin
  Result := FQuery.SQL.Text;
end;

procedure TConsulta.SetNomesDeExibicao(const Value: String);
begin
  FListaNomesExibicao.CommaText := Value;
end;

procedure TConsulta.SetSQL(const Value: String);
begin
  FQuery.SQL.Text := Value;
end;

class function TConsulta.BuscarProximoIDDaTabela(AConexao: TFDConnection; ATabela: String): Integer;
var
  Consulta: TFDQuery;
begin
  Consulta := TFDQuery.Create(Nil);
  try
    Consulta.Connection := AConexao;
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

end.
