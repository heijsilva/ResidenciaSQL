unit ConsultaSql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Menus;

type
  TfrmConsulta = class(TForm)
    lblPesquisarNota: TLabel;
    edtNota: TEdit;
    btnPesquisar: TButton;
    stgConsulta: TStringGrid;
    btnFechar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    procedure ConfigurarStringGrid; // M�todo para configurar o TStringGrid
  public
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

// Impede a depend�ncia circular
uses Residenciasql;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
  // Configura o TStringGrid ao criar o formul�rio
  ConfigurarStringGrid;
end;

procedure TfrmConsulta.ConfigurarStringGrid;
begin
  with stgConsulta do
  begin
    // Define o n�mero de colunas e linhas
    ColCount := 4;       // 4 colunas (C�digo, Data Movim, Valor Total, Fornecedor)
    RowCount := 2;       // 1 linha fixa para t�tulos + 1 linha para dados

    // Define os t�tulos das colunas
    Cells[0, 0] := 'C�digo';        // Coluna 0
    Cells[1, 0] := 'Data Movim';    // Coluna 1
    Cells[2, 0] := 'Valor Total';   // Coluna 2
    Cells[3, 0] := 'Fornecedor';    // Coluna 3

    // Configura as larguras das colunas
    ColWidths[0] := 100; // C�digo
    ColWidths[1] := 120; // Data Movim
    ColWidths[2] := 100; // Valor Total
    ColWidths[3] := 200; // Fornecedor

    // Configura��es visuais adicionais
    FixedRows := 1;       // Define 1 linha fixa para os t�tulos
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect];
    DefaultRowHeight := 24; // Altura padr�o das linhas
    ScrollBars := ssVertical; // Barra de rolagem vertical
  end;
end;

procedure TfrmConsulta.btnFecharClick(Sender: TObject);
begin
  frmPedido.Show;   // Exibe o formul�rio de pedidos novamente
  frmConsulta.Hide; // Oculta o formul�rio de consulta
end;

end.

