unit UFrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Buttons;

type
  TFrmConsulta = class(TForm)
    DBGConsulta: TDBGrid;
    PNEdicao: TPanel;
    DBNConsulta: TDBNavigator;
    CBConsulta: TCoolBar;
    CBExibirExcluidos: TCheckBox;
    DBTXExcluido: TDBText;
    DSConsulta: TDataSource;
    DBCBAtivo: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DSConsultaStateChange(Sender: TObject);
    procedure DBGConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CBExibirExcluidosClick(Sender: TObject);
  private
    { Private declarations }
    procedure FiltrarExcluidos;
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

uses UDMMain;

procedure TFrmConsulta.DBGConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DSConsulta.DataSet.FieldByName('STEXCLUIDO').AsString = 'S' then
    DBGConsulta.Canvas.Brush.Color := clSilver;

  DBGConsulta.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmConsulta.DSConsultaStateChange(Sender: TObject);
begin
 PNEdicao.Visible := (DSConsulta.State in dsEditModes);
  if (PNEdicao.Visible and PNEdicao.CanFocus) then
  begin
    PNEdicao.SetFocus;
  end;
  PNEdicao.Enabled := (DSConsulta.DataSet.FieldByName('STEXCLUIDO').AsString <> 'S');
end;

procedure TFrmConsulta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmConsulta.FormShow(Sender: TObject);
begin
  DSConsulta.DataSet.Filter := 'STEXCLUIDO <> ''S''';
  DSConsulta.DataSet.Active := True;

  FiltrarExcluidos;
end;

procedure TFrmConsulta.CBExibirExcluidosClick(Sender: TObject);
begin
  FiltrarExcluidos;
end;

procedure TFrmConsulta.FiltrarExcluidos;
begin
  if DSConsulta.DataSet.Active then
    DSConsulta.DataSet.Filtered := not CBExibirExcluidos.Checked;
end;

end.
