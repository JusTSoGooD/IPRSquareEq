unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math;

type
  Tx2Coef = class(TForm)
    CalculateSolution: TButton;
    x2Coef: TEdit;
    xCoef: TEdit;
    numberCoef: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure CalculateSolutionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  x2Coef: Tx2Coef;

implementation

{$R *.dfm}

procedure Tx2Coef.CalculateSolutionClick(Sender: TObject);
var
a, b, c, D, x1, x2: real;
begin
  try
      try
        a:= StrToFloat(x2Coef.Text);
        if a=0 then
          raise Exception.Create('Коэффициент возле x^2 не может равняться нулю');
        b:= StrToFloat(xCoef.Text);
        c:= StrToFloat(numberCoef.Text);
        D := b*b - 4*a*c;
         if D > 0 then
         begin
           x1 := SimpleRoundTo((-b + Sqrt(D))/(2*a), -4);
           x2 := SimpleRoundTo((-b - Sqrt(D))/(2*a), -4);
           ShowMessage('Корни уравнения: x1 = ' + FloatToStr(x1) + '; x2 = ' + FloatToStr(x2));
         end

        else if D = 0 then
          begin
            x1 := SimpleRoundTo((-b)/(2*a), -4);
            ShowMessage('Корень уравнения: x = ' + FloatToStr(x1));
          end

        else
          begin
            ShowMessage ('Решений нет');
          end;

      except
        on Exception: EConvertError do
          ShowMessage('Проверьте корректность ввода');
      end;
  finally
    x2Coef.Clear;
    xCoef.Clear;
    numberCoef.Clear;
   end;



end;

end.
