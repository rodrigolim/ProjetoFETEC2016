object frm_Percentual: Tfrm_Percentual
  Left = 351
  Top = 125
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Percentual de Corre'#231#227'o'
  ClientHeight = 138
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 296
    Height = 138
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 21
      Width = 256
      Height = 16
      Caption = 'Percentual de Juros Mensal para Corre'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 78
      Top = 52
      Width = 28
      Height = 13
      Caption = 'Juros:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt_Correcao: TEdit
      Left = 108
      Top = 49
      Width = 90
      Height = 21
      TabOrder = 0
      OnKeyPress = edt_CorrecaoKeyPress
    end
    object btn_confirma: TBitBtn
      Left = 110
      Top = 85
      Width = 83
      Height = 25
      Hint = '<F9> Confirma'
      Caption = '&OK'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000E3DFE0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE3DFE0FFFFFF84B584107310187318187318187318187B1818
        7B18107B10107B10087B08087B08007B000073007BB57BFFFFFFFFFFFF108410
        218C21299429319431319431299429299C29219C2118A51818A51810A51008A5
        08009400006B00FFFFFFFFFFFF188C18299429399C39399C39399C3939A5394A
        A54A4AA54A4AA54A4AA54A29A52910A510009C00007B00FFFFFFFFFFFF219421
        399C3942A54242A54242A5429CCE9C4AA54A4AA54A4AA54A4AA54A39A53918A5
        1808A508087B08FFFFFFFFFFFF299429429C424AA54A52A5529CCE9CFFFFFF9C
        CE9C4AA54A4AA54A4AA54A39A53921A52110A510088408FFFFFFFFFFFF319C31
        4AA54A52A5529CCE9CFFFFFF9CCE9CFFFFFF9CCE9C4AA54A4AA54A39A53921A5
        2118A518108410FFFFFFFFFFFF429C4252A5529CCE9CFFFFFF9CCE9C4AA54A4A
        A54AFFFFFF9CCE9C42A54231A53121A521219C21188418FFFFFFFFFFFF42A542
        52AD5252A5529CCE9C4AA54A4AA54A4AA54A4AA54AFFFFFF9CCE9C299C29219C
        21219C21217B21FFFFFFFFFFFF52A5525AAD5A5AAD5A52AD524AA54A4AA54A4A
        A54A429C42429C42FFFFFF9CCE9C299429299429217B21FFFFFFFFFFFF52A552
        6BB56B6BB56B5AAD5A52AD5252A5524AA54A429C42429C42399C39FFFFFF9CCE
        9C299429217B21FFFFFFFFFFFF5AAD5A7BBD7B73BD7363AD635AAD5A5AAD5A52
        AD524AA54A429C42399C39319C31FFFFFF319431217B21FFFFFFFFFFFF6BB56B
        8CC68C7BBD7B6BB56B63B56363AD6363AD635AAD5A4AA54A42A54242A542399C
        39319431217B21FFFFFFFFFFFF73BD739CCE9C8CC68C7BBD7B73BD736BB56B63
        B56363AD635AAD5A52AD524AA54A42A542319431187318FFFFFFFFFFFFB5DEB5
        73BD7363B5635AAD5A52A55252A5524AA54A4AA54A42A542429C42399C393194
        31218C218CBD8CFFFFFFE3DFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DFE0}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btn_confirmaClick
    end
  end
end
