object FrmPrincipal: TFrmPrincipal
  Left = 200
  Top = 121
  Caption = 'Calculo de indice corporal'
  ClientHeight = 313
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 29
  object Label1: TLabel
    Left = 71
    Top = 80
    Width = 117
    Height = 29
    Caption = 'Sua Altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 83
    Top = 115
    Width = 105
    Height = 29
    Caption = 'Seu Peso:'
  end
  object Label3: TLabel
    Left = 82
    Top = 161
    Width = 106
    Height = 29
    Caption = 'Seu Sexo:'
  end
  object BtnResultado: TButton
    Left = 120
    Top = 256
    Width = 97
    Height = 25
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BtnResultadoClick
  end
  object BtnRequisitos: TButton
    Left = 272
    Top = 256
    Width = 121
    Height = 25
    Caption = 'Ver Requisitos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnRequisitosClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 41
    Align = alTop
    Caption = 'Calculadora - '#205'ndice de Massa Corporal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object EdtAltura: TEdit
    Left = 200
    Top = 77
    Width = 193
    Height = 37
    TabOrder = 3
    TextHint = 'Digite sua altura'
  end
  object EdtPeso: TEdit
    Left = 200
    Top = 115
    Width = 193
    Height = 37
    TabOrder = 4
    TextHint = 'Digite seu peso'
  end
  object CmbSexo: TComboBox
    Left = 200
    Top = 158
    Width = 193
    Height = 37
    Style = csDropDownList
    TabOrder = 5
    TextHint = 'Escolha o sexo'
    Items.Strings = (
      'M'
      'F')
  end
end
