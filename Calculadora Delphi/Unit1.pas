unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btn01: TButton;
    btn02: TButton;
    btn03: TButton;
    btn07: TButton;
    btn04: TButton;
    btn05: TButton;
    btn06: TButton;
    btn08: TButton;
    btn09: TButton;
    btn00: TButton;
    btnIgual: TButton;
    btnSoma: TButton;
    btnSubtrair: TButton;
    btnMultiplicar: TButton;
    Button5: TButton;
    btnDividir: TButton;
    moResultado: TMemo;
    edtVisor: TEdit;
    bntLimpar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn00Click(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure btn02Click(Sender: TObject);
    procedure btn03Click(Sender: TObject);
    procedure btn04Click(Sender: TObject);
    procedure btn05Click(Sender: TObject);
    procedure btn06Click(Sender: TObject);
    procedure btn07Click(Sender: TObject);
    procedure btn08Click(Sender: TObject);
    procedure btn09Click(Sender: TObject);
    procedure FormeKeyPress(Sender: TObject; var Key: Char);
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure bntLimparClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
  private
    { Private declarations }
    valor_atual : double;
    operacao : integer;
    limpar : boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bntLimparClick(Sender: TObject);
begin
valor_atual := 0;
edtVisor.Text := '0';
operacao := 0;
limpar := true;

end;

procedure TForm1.btn00Click(Sender: TObject);
begin
 if limpar then

   begin
     edtVisor.Text := '';
     limpar := false;
   end;

 if edtVisor.Text = '0' then

   begin
     edtVisor.Text := '';
   end;

 edtVisor.Text := edtVisor.Text + '0';

end;

procedure TForm1.btn01Click(Sender: TObject);
begin
  if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '1';
end;

procedure TForm1.btn02Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '2';
end;

procedure TForm1.btn03Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '3';
end;

procedure TForm1.btn04Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '4';
end;

procedure TForm1.btn05Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '5';
end;

procedure TForm1.btn06Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '6';
end;

procedure TForm1.btn07Click(Sender: TObject);
begin
    if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '7';
end;

procedure TForm1.btn08Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '8';
end;

procedure TForm1.btn09Click(Sender: TObject);
begin
if limpar then
 begin
   edtVisor.Text := '';
   limpar := false;
 end;
 if edtVisor.Text = '0' then
 begin
   edtVisor.Text := '';
 end;
 edtVisor.Text := edtVisor.Text + '9';
end;

procedure TForm1.btnDividirClick(Sender: TObject);
begin
operacao := 4;
  limpar := true;
  valor_atual := strtofloat(edtVisor.Text);
end;

procedure TForm1.btnIgualClick(Sender: TObject);
begin
      if operacao = 1 then

 begin
      valor_atual := valor_atual + StrToFloat(edtvisor.Text);
 end else if operacao = 2 then

 begin
      valor_atual := valor_atual - StrToFloat(edtvisor.Text);
 end else if operacao = 3 then
 begin
      valor_atual := valor_atual * StrToFloat(edtvisor.Text);
 end else
 begin
   valor_atual := valor_atual / StrToFloat(edtvisor.Text);
 end;
  limpar := true;
  edtvisor.Text := FloatToStr(valor_atual);
end;

procedure TForm1.btnMultiplicarClick(Sender: TObject);
begin
operacao := 3;
  limpar := true;
  valor_atual := strtofloat(edtVisor.Text);
end;

procedure TForm1.btnSomaClick(Sender: TObject);
begin
  operacao := 1;
  limpar := true;
  valor_atual := strtofloat(edtVisor.Text);
end;

procedure TForm1.btnSubtrairClick(Sender: TObject);
begin
operacao := 2;
  limpar := true;
  valor_atual := strtofloat(edtVisor.Text);
end;

procedure TForm1.FormCreate(Sender: TObject);

  begin
  operacao := 0;
  valor_atual := 0;
  limpar := false;
  end;

procedure TForm1.FormeKeyPress(Sender: TObject; var Key: Char);
begin

    if key = char ('0') then

     begin
       btn00.Click;
     end;

    if key = char ('1') then

     begin
       btn01.Click;
     end;

    if key = char ('2') then

     begin
       btn02.Click;
     end;

    if key = char ('3') then

     begin
       btn03.Click;
     end;

     if key = char ('4') then

     begin
       btn04.Click;
     end;

     if key = char ('5') then

     begin
       btn05.Click;
     end;

     if key = char ('6') then

     begin
       btn06.Click;
     end;

     if key = char ('7') then

     begin
       btn08.Click;
     end;

     if key = char ('9') then

     begin
       btn09.Click;
     end;


end;

end.
