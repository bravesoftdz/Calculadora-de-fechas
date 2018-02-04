unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  DateUtils, Vcl.Buttons;

type
  TFPrinc = class(TForm)
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    ETotDias: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LMensaje: TLabel;
    SpeedButton1: TSpeedButton;
    SBReset: TSpeedButton;
    procedure DTP1KeyPress(Sender: TObject; var Key: Char);
    procedure ETotDiasKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SBResetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function  Mensaje: string;
    procedure OrdenarFechas;
    procedure Calculadora1;
    procedure Calculadora2;
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

{$R *.dfm}

function TFPrinc.Mensaje: string;
begin
  LMensaje.Caption:='Años transcurridos: '+IntToStr(YearsBetween(DTP2.Date,DTP1.Date));
end;

procedure TFPrinc.OrdenarFechas;
var
  Aux: TDate;
begin
  //se determina cuál es la mayor:
  if DTP1.Date>DTP2.Date then
  begin
    Aux:=DTP2.Date;
    DTP2.Date:=DTP1.Date;
    DTP1.Date:=Aux;
  end;
end;

procedure TFPrinc.Calculadora1;
begin
  OrdenarFechas;
  //se calculan la cantidad de días entre esas fechas:
  ETotDias.Text:=IntToStr(DaysBetween(DTP2.Date,DTP1.Date));
  Mensaje;
end;

procedure TFPrinc.Calculadora2;
begin
  OrdenarFechas;
  //se calcula la fecha resultante:
  DTP2.Date:=DTP1.Date+StrToInt(ETotDias.Text);
  Mensaje;
end;

procedure TFPrinc.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage('Calculadora de fechas'+#13+'v1.0'+#13#13+
              'Autor: Ing. Francisco Sáez'+#13#13+
              'Calabozo, 30 de enero de 2018');
end;

procedure TFPrinc.SBResetClick(Sender: TObject);
begin
  DTP1.Date:=Date;
  DTP2.Date:=Date;
  ETotDias.Text:='0';
  LMensaje.Caption:='Años transcurridos: 0';
  DTP1.SetFocus;
end;

procedure TFPrinc.DTP1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Calculadora1;
end;

procedure TFPrinc.ETotDiasKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then Calculadora2;
end;

procedure TFPrinc.FormShow(Sender: TObject);
begin
  SBReset.Click;
end;

end.
