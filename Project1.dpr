program Project1;

uses
  Vcl.Forms,
  Residenciasql in '..\Residenciasql.pas' {frmPedido},
  ConsultaSql in ',,\ConsultaSql.pas' {frmConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedido, frmPedido);
  Application.CreateForm(TfrmConsulta, frmConsulta);
  Application.Run;
end.

