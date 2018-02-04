{  Calculadora de fechas
        v1.0

  Autor: Ing. Francisco J. Sáez S.

  Calcula la cantidad de días transcurridos entre 2 fechas, así como también
  la fecha resultante de la suma de una fecha y una cantidad determinada de
  días. Incluso muestra la cantidad de años transcurridos.

  Desarrollado en Delphi XE10.2 Tokyo Starter Edition. Sólo se emplearon
  componentes nativos.

  Calabozo, enero 30 de 2018.
}

program CalcFechas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FPrinc},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.Title := 'Calculadora de fechas';
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
