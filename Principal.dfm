object FPrinc: TFPrinc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora de fechas'
  ClientHeight = 268
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 75
    Top = 21
    Width = 85
    Height = 19
    Caption = 'Fecha inicial'
  end
  object Label2: TLabel
    Left = 258
    Top = 21
    Width = 75
    Height = 19
    Caption = 'Fecha final'
  end
  object Label3: TLabel
    Left = 163
    Top = 85
    Width = 74
    Height = 19
    Caption = 'Total d'#237'as '
  end
  object LMensaje: TLabel
    Left = 31
    Top = 152
    Width = 385
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = 'A'#241'os transcurridos: 0'
  end
  object SpeedButton1: TSpeedButton
    Left = 416
    Top = 8
    Width = 23
    Height = 22
    Caption = 'XD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SBReset: TSpeedButton
    Left = 141
    Top = 200
    Width = 165
    Height = 27
    Caption = 'Reiniciar valores'
    OnClick = SBResetClick
  end
  object DTP1: TDateTimePicker
    Left = 75
    Top = 40
    Width = 113
    Height = 27
    Date = 43130.947318252310000000
    Time = 43130.947318252310000000
    TabOrder = 0
    OnKeyPress = DTP1KeyPress
  end
  object DTP2: TDateTimePicker
    Left = 258
    Top = 40
    Width = 113
    Height = 27
    Date = 43130.947464664350000000
    Time = 43130.947464664350000000
    TabOrder = 1
    OnKeyPress = DTP1KeyPress
  end
  object ETotDias: TEdit
    Left = 163
    Top = 104
    Width = 121
    Height = 27
    Alignment = taCenter
    MaxLength = 6
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
    OnKeyPress = ETotDiasKeyPress
  end
end
