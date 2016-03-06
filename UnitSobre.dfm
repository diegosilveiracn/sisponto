object FormSobre: TFormSobre
  Left = 294
  Top = 151
  BorderIcons = []
  BorderStyle = bsSingle
  ClientHeight = 215
  ClientWidth = 285
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 28
    Top = 24
    Width = 229
    Height = 23
    Caption = 'Sistema de Controle de Ponto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 104
    Width = 265
    Height = 13
    Caption = 'Programador: Diego Silveira Costa Nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 96
    Top = 128
    Width = 93
    Height = 13
    Caption = 'Telefone: 320-1068'
  end
  object Label5: TLabel
    Left = 98
    Top = 144
    Width = 89
    Height = 13
    Caption = 'Celular: 9969-3223'
  end
  object Label6: TLabel
    Left = 77
    Top = 160
    Width = 130
    Height = 13
    Caption = 'E - Mail: diego@ofm.com.br'
  end
  object ButOk: TBitBtn
    Left = 82
    Top = 176
    Width = 121
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = ButOkClick
  end
  object Panel1: TPanel
    Left = 22
    Top = 53
    Width = 241
    Height = 41
    Color = clRed
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 227
      Height = 28
      Caption = 'DIREITOS RESERVADOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clYellow
      Font.Height = -23
      Font.Name = 'Impact'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
