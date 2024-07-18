unit UConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids,
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
  FireDAC.Comp.Client,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  UDMMain;

type
  TConsulta = class
  private
    FQuery: TFDQuery;
    FCaption: String;
    FSQL: String;
    FHeaders: String;
  public
    property Caption: String read FCaption write FCaption;
    property SQL: String read FSQL write FSQL;
    property Headers: String read FHeaders write FHeaders;

    function AbrirConsulta:TForm;
  end;

implementation

function TConsulta.AbrirConsulta: TForm;
begin
end;

end.
