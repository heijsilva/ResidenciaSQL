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
    procedure ConfigurarStringGrid; // Método para configurar o TStringGrid
  public
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

// Impede a dependência circular
uses Residenciasql;

procedure TfrmConsulta.FormCreate(Sender: TObject);
begin
  // Configura o TStringGrid ao criar o formulário
  ConfigurarStringGrid;
end;

procedure TfrmConsulta.ConfigurarStringGrid;
begin
  with stgConsulta do
  begin
    // Define o número de colunas e linhas
    ColCount := 4;       // 4 colunas (Código, Data Movim, Valor Total, Fornecedor)
    RowCount := 2;       // 1 linha fixa para títulos + 1 linha para dados

    // Define os títulos das colunas
    Cells[0, 0] := 'Código';        // Coluna 0
    Cells[1, 0] := 'Data Movim';    // Coluna 1
    Cells[2, 0] := 'Valor Total';   // Coluna 2
    Cells[3, 0] := 'Fornecedor';    // Coluna 3

    // Configura as larguras das colunas
    ColWidths[0] := 100; // Código
    ColWidths[1] := 120; // Data Movim
    ColWidths[2] := 100; // Valor Total
    ColWidths[3] := 200; // Fornecedor

    // Configurações visuais adicionais
    FixedRows := 1;       // Define 1 linha fixa para os títulos
    Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect];
    DefaultRowHeight := 24; // Altura padrão das linhas
    ScrollBars := ssVertical; // Barra de rolagem vertical
  end;
end;

procedure TfrmConsulta.btnFecharClick(Sender: TObject);
begin
  frmPedido.Show;   // Exibe o formulário de pedidos novamente
  frmConsulta.Hide; // Oculta o formulário de consulta
end;

end.

