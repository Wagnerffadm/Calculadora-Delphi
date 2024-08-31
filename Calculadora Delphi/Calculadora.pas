unit Calculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  type
  TForm1 = class(TForm)
    edtDisplay: TEdit;
    sgHistory: TStringGrid;
    btn0: TButton;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btnAdd: TButton;
    btnSubtract: TButton;
    btnMultiply: TButton;
    btnDivide: TButton;
    btnEquals: TButton;
    btnClear: TButton;
    procedure btnNumberClick(Sender: TObject);
    procedure btnOperatorClick(Sender: TObject);
    procedure btnEqualsClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FFirstNumber: Double;
    FOperator: Char;
    FWaitingForSecondNumber: Boolean;
    procedure AddToDisplay(Value: string);
    procedure PerformCalculation;
    procedure InitializeHistoryGrid;
  public
  end;
  procedure TForm1.FormCreate(Sender: TObject);
begin
  // Configuração inicial do StringGrid
  InitializeHistoryGrid;
end;

procedure TForm1.InitializeHistoryGrid;
begin
  sgHistory.ColCount := 1;
  sgHistory.RowCount := 2;
  sgHistory.Cells[0, 0] := 'Histórico';
end;

procedure TForm1.btnNumberClick(Sender: TObject);
begin
  if FWaitingForSecondNumber then
  begin
    edtDisplay.Text := '';
    FWaitingForSecondNumber := False;
  end;
  AddToDisplay((Sender as TButton).Caption);
end;

procedure TForm1.btnOperatorClick(Sender: TObject);
begin
  // Verifica se a tela já tem um valor antes de aplicar um operador
  if edtDisplay.Text = '' then Exit;

  FFirstNumber := StrToFloat(edtDisplay.Text);
  FOperator := (Sender as TButton).Caption[1];
  FWaitingForSecondNumber := True;
end;

procedure TForm1.btnEqualsClick(Sender: TObject);
begin
  PerformCalculation;
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtDisplay.Text := '';
  FFirstNumber := 0;
  FOperator := #0;
  FWaitingForSecondNumber := False;
end;

procedure TForm1.AddToDisplay(Value: string);
begin
  edtDisplay.Text := edtDisplay.Text + Value;
end;

procedure TForm1.PerformCalculation;
var
  SecondNumber: Double;
  Result: Double;
begin
  if FWaitingForSecondNumber then Exit;
  SecondNumber := StrToFloat(edtDisplay.Text);

  case FOperator of
    '+': Result := FFirstNumber + SecondNumber;
    '-': Result := FFirstNumber - SecondNumber;
    '*': Result := FFirstNumber * SecondNumber;
    '/':
      begin
        if SecondNumber = 0 then
        begin
          ShowMessage('Erro: Divisão por zero!');
          Exit;
        end;
        Result := FFirstNumber / SecondNumber;
      end;
  end;

  edtDisplay.Text := FloatToStr(Result);

  // Adicionar ao histórico
  sgHistory.RowCount := sgHistory.RowCount + 1;
  sgHistory.Cells[0, sgHistory.RowCount - 1] := Format('%f %s %f = %f', [FFirstNumber, FOperator, SecondNumber, Result]);
end;
       procedure TForm1.FormCreate(Sender: TObject);
begin
  sgHistory.ColCount := 1;
  sgHistory.RowCount := 2;
  sgHistory.Cells[0, 0] := 'Histórico';
end;


var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
