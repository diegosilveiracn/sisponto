object FormRelPorCodigo: TFormRelPorCodigo
  Left = 212
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Ponto por C'#243'digo'
  ClientHeight = 401
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = SQLQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Relat'#243'rio de Ponto por C'#243'digo'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 129
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 16
        Top = 16
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          42.3333333333333
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'NOME'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 256
        Top = 16
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          677.333333333333
          42.3333333333333
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'FUNCAO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 448
        Top = 16
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1185.33333333333
          42.3333333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'ACAO'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 568
        Top = 16
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          42.3333333333333
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'DATA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 656
        Top = 16
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1735.66666666667
          42.3333333333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = SQLQuery1
        DataField = 'HORA'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 89
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbColumnHeader
      object QRLabel1: TQRLabel
        Left = 16
        Top = 16
        Width = 61
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          42.3333333333333
          42.3333333333333
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 256
        Top = 16
        Width = 78
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          677.333333333333
          42.3333333333333
          206.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fun'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel3: TQRLabel
        Left = 448
        Top = 16
        Width = 55
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1185.33333333333
          42.3333333333333
          145.520833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel4: TQRLabel
        Left = 568
        Top = 16
        Width = 50
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1502.83333333333
          42.3333333333333
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel5: TQRLabel
        Left = 656
        Top = 16
        Width = 52
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.8541666666667
          1735.66666666667
          42.3333333333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 169
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333
        1899.70833333333)
      BandType = rbPageFooter
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        134.9375
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel6: TQRLabel
        Left = 264
        Top = 16
        Width = 188
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          698.5
          42.3333333333333
          497.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio de Ponto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRImage1: TQRImage
        Left = 16
        Top = 8
        Width = 129
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666667
          42.3333333333333
          21.1666666666667
          341.3125)
        Picture.Data = {
          07544269746D617012180000424D121800000000000036040000280000007900
          0000290000000100080000000000DC130000120B0000120B0000000100000000
          00004D008B004D018B004E028B004F038C004F048B0051078D0051068D00520A
          8D00550E8E00540B8F00560D910056118E0059168F0058138F005A1493005B19
          90005C1B90005E1C92005F219200621E98006223940065239A00652B94006A2B
          9C00682B98006A3496006D319C006E399900733F9C006D2EA0007033A200763C
          A40074449B00784D9B00794B9D0076489A007C549D007A44A5007A41A8007D46
          A9007D4AA6007F48AC007F57A000409200004192010042930200449405004796
          090048960A004A970D004B980F004D991100519B1600559D1B005AA022005CA2
          250063A62E005FA329006EAC3D0068A8350071AE410075B047007AB34D0077B1
          49007DB45100815C9E00814AAC00834EAD00814FA9008553AD008359A4008255
          A6008955B2008D5CB4008D7B9C008765A1008562A0008A64A9008869A2008C6E
          A4008E6CAA008866A4008D71A3009163B6009466B900976ABB00996EBC00936B
          B3009076A5009374AD00937CA600957EA600937AA7009D73BF00A27AC200A57E
          C400A47DC4009F76C00085B95C0086A073008CBD65008FBF6A0092C06D0095C2
          710099C576009CC67B008D8892009986A8009A82AD009E8FAA009C8CA9009B89
          A9009781A9009F91AA00A08FAE00A28CB400A78ABD009F7FB900A49AAD00A59C
          AD00A69DAD00A79EAF00A398AC00A194AC00AA9EB300A793B700A9A2AE00AAA4
          AF00ACA7AF00ADA9B100AEACB100ADA3B400B1AEB400B4ABBB00B2A6BD00B2B2
          B200B5B5B500B2B1B300BDBCBD00B6B4B800A682C200A882C600AA85C700AA86
          C800AA8BC300AD8AC900AF8CCA00AF92C600B69CCB00B18FCC00B798D000BC9F
          D300BA9CD200B8A7C600BDA1D400BFA9D100BDB9C000B9B1C000A3CA8500AACE
          8E00A7CD8A00AFD19500ACD09100B6D59D00B4D49B00BED9A900BBD8A500C1A6
          D600C2ABD400C5ADD900C6B4D400CCB6DD00C9B2DB00C9BDD300CEBADF00D1BD
          E100C2DCAE00C6DFB300C8DFB600CCE1BB00C5C5C500C2C2C200C6C2CA00C9C2
          CE00CACACA00CECECE00CCC6D100D1C1DE00D4CCDA00D4CCDB00D2D2D200D5D5
          D500D4D0D700D7D1DD00DADADA00DCDCDC00DEDEDE00DCDADF00D4C2E300D7C6
          E500D9C9E600DBCCE700DCCEE800DAD2E200DFD1EA00DFDDE000CFE4C000D9E9
          CD00D5E7C700DCEBD100E3D7EC00E1D4EB00E0DAE500E6DCEF00E0EDD600E3EF
          DA00E2EED900E4F0DC00E1E1E100E4E4E400E7E7E700E9E9E900E8E8E800EAEA
          EA00EBEBEB00EAE8EB00ECECEC00EEEEEE00EFEFEF00EAE1F100ECE5F200EFE9
          F400EBF3E400EFF6EA00F1EBF500F2EEF600F1F7ED00F0F2EF00F3F8EF00F2F2
          F200F4F4F400F7F7F700F5F2F900F7F5F900F5F9F200F8F6FA00F8F8F800FAFA
          FA00FAF9FC00FCFBFD00FCFCFC00FCFDFD00FFFFFF00FEFEFE00FDFDFE00FBFC
          FA00FCFCFCFCFCFCFCFCFCFCFCFCFCD99EA1B2D1ECFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFC
          FCFCFCFCFCFCFCFCFCFCFCE82D2B2B2B2BA3FCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFCFCFCFCFC
          FCFCFCFCFCFCFCFC3C2B2B2B2BA0FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFCFCFCFCFCFCFCFCFC
          FCFCFCFCA02B2B2B2B68FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCD73A66A5E8FCFCFCFCFCFCFCFC
          A52B2B2B2B64FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFC000000FC622B2B2B2B3662A1D0F4FCFCFCCE2B2B2B
          2B40FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFC000000EC2F2B2B2B2B2B2B2B2B2B353F68662B2B2B2B3AFCFC
          FCFCECD7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7
          D7E9FC000000A32B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2E3EFCFCFC9E2B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
          2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B65FC00
          0000E9382B2B2B2B2B2B2B2B2BA3E8B164342B2B2B2B30FCFCFCA63D3D3D3D3D
          3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
          3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D
          3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3DA1FC000000FCFA
          A6362B2B2B2B2B2B36FDFCFCFCFCED854A6A63DAFAFCFCFCFCFCFCFCD39386BF
          EFFCF9E6BCBCC5E4EACBBCBCBCC5E3FCFCEBD4BCBCBCC1DCFCFAF3AA755973B6
          DBFAFCFCFCFCFCFCF9BB754D4D597DBFFCE6C1BCBCBCCDF0FCFCFCFCFCFCFCD2
          744720417DB7DFFCFCFCFCFCFCF9D4BDBCBCBCBCBCC5E4000000FCFCFCF4A035
          2B2B2B2BA2FCFCFCF9920D000000042A8AE3FCFCFCFCFC97020000147BBFAE00
          001686F6960900001685F6FCFCAB1500000F6CEF491B050000000004418AF0FC
          FCFCFCAC1300000000001688FF5D00000020BAFAFCFCFCFCFCEA490100000000
          0024B4FCFCFCFCAF1F040000000000001485F6000000FCFCFC65326464332B2B
          62FBFCF843000019745601001889EFFCFCFCF50E00000708065C5900005ADAFC
          FC53000071DDFCFCFCFCA900004EBFFC0E00092A9BAC5503004BB4FCFCFC9500
          000D50CBC7430381DDFC1D000582F6FCFCFCFCFCC90E000124BCF2960A1888FF
          FCFC910000042074A85500005ADAFC000000FCFCEC2F2B2B2C3A3B302B35CE5D
          000020BEFCFC9200004EB8FCFCFCD200000F8BF2540519000076DDFCFC5F0000
          7EE2FCFCFCFCC800006FDBFC0A1286F6FCFCFC91000884EFFCC602001085F7FC
          FCFC4994BFFC42000C87FAFCFCFCFCEA0E000052DEFCFCFCCC0A9CE0FCAB0000
          0F83F6FCFC9700007EE2FC000000FCFCA42B2B2B2B2B2B322D2B3B5200057FF1
          FCFCF50E001688FCFCFCAF000041BEFCFE4300000077DDFCFC5F00007EE2FCFC
          FCFCCA00006DDBFC097CEFFCFCFCFCD200006BC2FC1F000377F0FCFCFCFCF261
          BFFC42000C87FAFCFCFCFC5600001BB9FCFCFCFCFC92A8C2FE1E000579F1FCFC
          FC97000080E3FC000000FCFCE9332B2B2B2B2B2B2B2BB3E705198AFDFCFCFC48
          000B87F1FCFCAB000052C2FCFCD300000077DDFCFC5F00007EE2FCFCFCFCCA00
          006DDBFE48B9FCFCFCFCFC9700004EBEE5000021BEFCFCFCFCFCFCCAF7FC4200
          0C87FAFCFCFCF80E000178EFFCFCFCFCFCF28DC3A9000021BEFCFCFCFC970000
          80E3FC000000FCFCFCA42B2B2B2B2B2B2B33FAFC5345B4FBFCFCFC56000081E2
          FCFCAB00005AC3FCFCFC26000077DDFCFC5F00007EE2FCFCFCFCCA00006DDBF5
          8DC2FCFCFCFCD213000058C4A7000071DEFCFCFCFCFCFCFCFCFC42000C87FAFC
          FCFCC90000168AFCFCFCFCFCFCFCF2FC5400006BDAFCFCFCFC97000080E3FC00
          0000FCFCFCFC662B2B2B2B2B2B2BA6FCCC48B5FCFCFCFC8D000078DFFCFCAB00
          005AC3FCFCFC60000077DDFCFC5F00007EE2FCFCFCFCCA00006DDBF9D5FFFCFE
          AE45050000047EF055000282F0FCFCFCFCFCFCFCFCFC42000C87FAFCFCFC9A00
          0024B5EFFCFCFCFCFCFCFCFC1F00007ADFFCFCFCFC97000080E3FC000000FCFC
          FCFCFA662B2B2B2B2B2B2EECFC56C4FBFCFCFC8F000078DFFCFCAB00005AC3FC
          FCFC8D000077DDFCFC5F00007EE2FCFCFCFCCA00006DDBFCFCFCA91500000000
          004BDBFC26000F87FDFCFCFCFCFCFCFCFCFC42000C87FAFCFCFC8E0000001041
          85C4F6FCFCFCFCFC0E000081E4FCFCFCFC97000080E3FC000000FCFCFCFCFCFC
          A5312B2B2B2B2B34F4F2FCFCFCFCFC8F000078DFFCFCAB00005AC3FCFCFC8D00
          0077DDFCFC5F000076DCFCFCFCFCCA00006DDBFCFC5400000000000759E2FCFC
          26001087FAFCFCFCFCFCFCFCFCFC42000887F1FCFCFC910000212503021958B6
          DCFBFCFC1500007EDDFCFCFCFC97000080E3FC000000FCFCFCFCFCFCFCD6382B
          2B2B2B2B33D8FCFCFCFCFC8F000078DFFCFCAB00005AC3FCFCFC8D000077DDFC
          FC5F00006EDAFCFCFCFCCA00006DDBFCAF000000000B4DBDFBFCFDFC53000787
          F0FCFCFCFCFCFCFCFCFC42000184E4FCFCFC9A00004FBEE68D1300072372BFEF
          4300006FC3FCFCFCFC97000080E3FC000000FCFCFCFCFCFCFCFCFF9F372B2B2B
          2B2BA0FBFCFCFC8F000078DFFCFCAB00005AC3FCFCFC8D000077DDFCFC5F0000
          4CB8FCFCFCFCCA00006DDBFC8F00000B59E1FCFCF8AFDAFC8D000080DFFCFCFC
          FCFCE7E3FCFC4200006BC2FCFCFCD500002AB4FCFCF9AB1D000058C35E00004C
          B8FCFCFCFC97000080E3FC000000FCFCFCFCFCFCFCFCB130679F372B2B2B9FD6
          D6FDFC8F000078DFFCFCAB00005AC3FCFCFC8D000077DDFCFC5F00001081E0FC
          FEF6CA00006DDBFC4900016EE4FCFCFCC894C2FCC800004FB8FCFCFCFCF55EBE
          FCFC4200001B8BF0FEFAF71F001087F0FCFCF815000681F6E505000C82E3FCFC
          FC97000080E3FC000000FCFCFCFCFCFCFCFC3D2B2B3167693630EEFCFCF4FC8F
          000078DFFCFC9A00005AC3FCFCFC60000077DDFCFC5E00080C1A584673C2C800
          006DDBFC5F000D87F6FCFCEB1A6CC2FCFC1E001080DDFCFCF94959BFFCFC2900
          1204205C1C85DFC703004CB5F7FC61000020BEFCFC560000208BEFFCFC950000
          80E3FC000000FCFCFCFCFCFCFCD72B2B2B2B2B2C3A3AFAFCFCFCFC8F000078DF
          FCFC4900005AC3FCFCF91F000077DDFCF9260011700300004BB99600006DDBFC
          D205004F9DAD750E005BC4FCFCA70000126BB7991A005BDAFCF211001C4D0000
          006EC4FC97060120511A0000119CFAFCFCEA1500001976C2CB15000080E3FC00
          0000FCFCFCFCFCFCFCEE332B2B2B2B2B2B2BA6FCFCFCFC8F000078DFFC970900
          0070C3FCFC6105000079DDFC26010022B8A7030021500600006DDBFCFC980600
          00000000057DDCFCFCFC56000000000000007AE0E61700004FC25D000052BEFC
          FCC715000000001BB7FAFCFCFCFCE627000000070100000080E3FC000000FCFC
          FCFCFCFCFCFCB02B2B2B2B2B2B2B2FECFCFCFC8F000078DFFCFCFCEAC8E7FDFC
          FCFCF9E5C6F5FDFCFCF3CAE5FDFCD28F93D4C7975ECBF1FCFCFCCC61272857AA
          F7F5FCFCFCFCFCA9431717285727CDF1FCFCEBC7EBFDFCC6609BE4FCFCFCF9C8
          9191BBFBFCFCFCFCFCFCFCFCC661431F251A000080E3FC000000FCFCFCFCFCFC
          FCFCFC682B2B2B2B2B2B2B37FFFCFC8F000078DFFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFBFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFC97000080E3FC000000FCFCFCFCFCFCFCFCFCFC
          692B2B2B2B2B2B2B39F4FC8F000078DFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCF2492284E3FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFC98000080E3FC000000FCFCFCFCFCFCFCFCFCFCFC9F2C2B
          2B2B2B2BA1CFFD54000076DBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFC6000004EB9FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFC91000080E3FC000000FCFCFCFCFCFCFCFCFCFCFCFCB1322B2B2B2B
          68F9AE0A00002384DBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFC42000021B8FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          CC17000080E3FC000000FCFCFCFCFCFCFCFCFCFCFCFCFCD8392B2B2B34E7918C
          8C8C8CA8F0FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC6100
          004BC2FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC8E1D0200
          81E3FC000000FCFCFCFCFCFCFCFCFCFCFCFCFB67A5392B2B2BB2FCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCE62644C0FBFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCEBA9F3FAFC00
          0000FCFCFCFCFCFCFCFCFCFCFCFCCE2B2B2B2B2B2B3AFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFC
          FCFCFCFCFCFCFCFCFCFC652B2B2B2B2B2B2BE8FCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFCFCFCFCFC
          FCFCFCFCFCFC352B2B2B2B2B2B2B3EFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFCFCFCFCFCFCFCFCFC
          FCFC9E2B2B2B2B2B389EECFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000FCFCFCFCFCFCFCFCFCFCFCFCFF38
          2B2B2B2B9EFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFC000000FCFCFCFCFCFCFCFCFCFCFCFCFCD1312B2B2B
          2DD6FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFC000000FCFCFCFCFCFCFCFCFCFCFCFCFCFCB22F2B2B2BA6FCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFC000000FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCCF352B2BCFFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC00
          0000FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCEEA5A6FCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC000000}
      end
    end
  end
  object SQLQuery1: TSQLQuery
    SQLConnection = FormPrincipal.SQLConnection1
    Params = <>
    SQL.Strings = (
      '')
    Left = 40
  end
end
