object FormEscolha: TFormEscolha
  Left = 318
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio por C'#243'digo'
  ClientHeight = 201
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 24
    Top = 64
    Width = 44
    Height = 13
    Caption = 'C'#243'digo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 120
    Width = 70
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 152
    Top = 120
    Width = 63
    Height = 13
    Caption = 'Data Final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelNome: TLabel
    Left = 72
    Top = 88
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButGerar: TBitBtn
    Left = 56
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Gerar'
    TabOrder = 0
    OnClick = ButGerarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
      0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
      F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
      005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
      0555557575757575755555505050505055555557575757575555}
    NumGlyphs = 2
  end
  object ButCancelar: TBitBtn
    Left = 144
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = ButCancelarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 8
    Width = 145
    Height = 49
    Items.Strings = (
      'Relat'#243'rio Geral '
      'Relat'#243'rio por C'#243'digo')
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object EditCodigo: TEdit
    Left = 24
    Top = 80
    Width = 41
    Height = 21
    TabOrder = 3
    OnExit = Edit3Exit
  end
  object EditDataInicial: TMaskEdit
    Left = 24
    Top = 136
    Width = 89
    Height = 21
    EditMask = '!99/99/0000;1; '
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
    OnExit = EditDataInicialExit
  end
  object EditDataFinal: TMaskEdit
    Left = 152
    Top = 136
    Width = 89
    Height = 21
    EditMask = '!99/99/0000;1; '
    MaxLength = 10
    TabOrder = 5
    Text = '  /  /    '
    OnExit = EditDataFinalExit
  end
  object SQLQuery1: TSQLQuery
    SQLConnection = FormPrincipal.SQLConnection1
    Params = <>
    Left = 192
    Top = 8
  end
end
