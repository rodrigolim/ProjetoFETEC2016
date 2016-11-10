object frm_Relatorio: Tfrm_Relatorio
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio'
  ClientHeight = 174
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_Relatorio: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 174
    Align = alClient
    TabOrder = 0
    object lblNome: TLabel
      Left = 9
      Top = 18
      Width = 52
      Height = 19
      AutoSize = False
      Caption = 'Nome: '
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnGerar: TButton
      Left = 163
      Top = 111
      Width = 165
      Height = 33
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = btnGerarClick
    end
    object edtNome: TEdit
      Left = 68
      Top = 15
      Width = 361
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object chkTodos: TCheckBox
      Left = 434
      Top = 22
      Width = 51
      Height = 17
      Caption = 'Todos'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = chkTodosClick
    end
  end
  object DsAcumulado: TDataSource
    DataSet = CDSAcumulado
    Left = 104
    Top = 116
  end
  object DsDiscriminado: TDataSource
    DataSet = CDSDiscriminado
    Left = 440
    Top = 120
  end
  object DTSAcumulado: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10#9'VEN_DATA, VEN_OBSERVACAO, ITE_PRO_DESCRICAO, ITE_QTDE'#13 +
      #10'FROM '#13#10#9'VENDA V '#13#10'INNER JOIN '#13#10#9'ITEM_VENDA I ON V.VEN_ID = I.VE' +
      'N_ID'#13#10'WHERE'#13#10#9'VEN_DATA BETWEEN :DT_INI AND :DT_FIN'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQLConnection = DMRet.Con
    Left = 24
    Top = 58
    object DTSAcumuladoVEN_DATA: TSQLTimeStampField
      FieldName = 'VEN_DATA'
    end
    object DTSAcumuladoVEN_OBSERVACAO: TStringField
      FieldName = 'VEN_OBSERVACAO'
      Size = 70
    end
    object DTSAcumuladoITE_PRO_DESCRICAO: TStringField
      FieldName = 'ITE_PRO_DESCRICAO'
      Size = 50
    end
    object DTSAcumuladoITE_QTDE: TFMTBCDField
      FieldName = 'ITE_QTDE'
      Precision = 12
      Size = 2
    end
  end
  object DSPAcumulado: TDataSetProvider
    DataSet = DTSAcumulado
    Options = [poFetchDetailsOnDemand, poAutoRefresh, poPropogateChanges, poRetainServerOrder, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 59
  end
  object CDSAcumulado: TClientDataSet
    Active = True
    Aggregates = <>
    IndexName = 'DEFAULT_ORDER'
    PacketRecords = 50
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAcumulado'
    Left = 26
    Top = 116
    object CDSAcumuladoVEN_DATA: TSQLTimeStampField
      FieldName = 'VEN_DATA'
    end
    object CDSAcumuladoVEN_OBSERVACAO: TStringField
      FieldName = 'VEN_OBSERVACAO'
      Size = 70
    end
    object CDSAcumuladoITE_PRO_DESCRICAO: TStringField
      FieldName = 'ITE_PRO_DESCRICAO'
      Size = 50
    end
    object CDSAcumuladoITE_QTDE: TFMTBCDField
      FieldName = 'ITE_QTDE'
      Precision = 12
      Size = 2
    end
  end
  object SQLDiscriminado: TSQLDataSet
    SchemaName = 'sa'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10#9'ITE_REFERENCIA, ITE_PRO_DESCRICAO, SUM(ITE_QTDE) AS QT' +
      'DE, SUM(ITE_QTDE)/10 AS QTDE_COPO'#13#10'FROM '#13#10#9'VENDA V '#13#10'INNER JOIN ' +
      #13#10#9'ITEM_VENDA I ON V.VEN_ID = I.VEN_ID'#13#10'WHERE'#13#10#9'VEN_DATA BETWEEN' +
      ' :DT_INI AND :DT_FIN'#13#10'GROUP BY'#13#10'               ITE_REFERENCIA, I' +
      'TE_PRO_DESCRICAO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQLConnection = DMRet.Con
    Left = 352
    Top = 66
    object SQLDiscriminadoITE_REFERENCIA: TStringField
      FieldName = 'ITE_REFERENCIA'
      Size = 9
    end
    object SQLDiscriminadoITE_PRO_DESCRICAO: TStringField
      FieldName = 'ITE_PRO_DESCRICAO'
      Size = 50
    end
    object SQLDiscriminadoQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 32
      Size = 2
    end
    object SQLDiscriminadoQTDE_COPO: TFMTBCDField
      FieldName = 'QTDE_COPO'
      Precision = 32
      Size = 6
    end
  end
  object DSPDiscriminado: TDataSetProvider
    DataSet = SQLDiscriminado
    Options = [poFetchDetailsOnDemand, poAutoRefresh, poPropogateChanges, poRetainServerOrder, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 432
    Top = 67
  end
  object CDSDiscriminado: TClientDataSet
    Aggregates = <>
    IndexName = 'DEFAULT_ORDER'
    PacketRecords = 50
    Params = <>
    ProviderName = 'DSPDiscriminado'
    Left = 354
    Top = 124
    object CDSDiscriminadoITE_REFERENCIA: TStringField
      FieldName = 'ITE_REFERENCIA'
      Size = 9
    end
    object CDSDiscriminadoITE_PRO_DESCRICAO: TStringField
      FieldName = 'ITE_PRO_DESCRICAO'
      Size = 50
    end
    object CDSDiscriminadoQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 32
      Size = 2
    end
    object CDSDiscriminadoQTDE_COPO: TFMTBCDField
      FieldName = 'QTDE_COPO'
      Precision = 32
      Size = 6
    end
  end
  object repAcumulado: TppReport
    AutoStop = False
    DataPipeline = pipAcumulado
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 184
    Top = 56
    Version = '16.02'
    mmColumnWidth = 0
    DataPipelineName = 'pipAcumulado'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 14288
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Caption = 'Relat'#243'rio FETEC - 2016'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 7673
        mmLeft = 9525
        mmTop = 3175
        mmWidth = 69850
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 0
        mmTop = 12434
        mmWidth = 203730
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Caption = 'Obs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5027
        mmLeft = 1588
        mmTop = 795
        mmWidth = 9789
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        DataField = 'VEN_OBSERVACAO'
        DataPipeline = pipAcumulado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipAcumulado'
        mmHeight = 4498
        mmLeft = 12168
        mmTop = 795
        mmWidth = 81030
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Caption = 'Produto: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5027
        mmLeft = 93927
        mmTop = 265
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        DataField = 'ITE_PRO_DESCRICAO'
        DataPipeline = pipAcumulado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipAcumulado'
        mmHeight = 4498
        mmLeft = 111460
        mmTop = 264
        mmWidth = 50025
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Caption = 'Qtde: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormField = False
        Transparent = True
        mmHeight = 5027
        mmLeft = 163535
        mmTop = 265
        mmWidth = 12171
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        DataField = 'ITE_QTDE'
        DataPipeline = pipAcumulado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pipAcumulado'
        mmHeight = 4498
        mmLeft = 176235
        mmTop = 265
        mmWidth = 25380
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'VEN_DATA'
      DataPipeline = pipAcumulado
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pipAcumulado'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Caption = 'Data: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5027
          mmLeft = 1588
          mmTop = 265
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          DataField = 'VEN_DATA'
          DataPipeline = pipAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pipAcumulado'
          mmHeight = 4498
          mmLeft = 14280
          mmTop = 265
          mmWidth = 38365
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 1319
          mmLeft = 0
          mmTop = 5026
          mmWidth = 203730
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          Caption = 'Total Qtde: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = [fsBold]
          FormField = False
          Transparent = True
          mmHeight = 5027
          mmLeft = 152383
          mmTop = 1325
          mmWidth = 23283
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          DataField = 'ITE_QTDE'
          DataPipeline = pipAcumulado
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 12
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DataPipelineName = 'pipAcumulado'
          mmHeight = 4498
          mmLeft = 176213
          mmTop = 1325
          mmWidth = 25413
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1319
          mmLeft = 0
          mmTop = 0
          mmWidth = 203730
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pipAcumulado: TppDBPipeline
    DataSource = DsAcumulado
    UserName = 'pipAcumulado'
    Left = 253
    Top = 56
    object pipAcumuladoppField1: TppField
      FieldAlias = 'VEN_DATA'
      FieldName = 'VEN_DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object pipAcumuladoppField2: TppField
      FieldAlias = 'VEN_OBSERVACAO'
      FieldName = 'VEN_OBSERVACAO'
      FieldLength = 70
      DisplayWidth = 70
      Position = 1
    end
    object pipAcumuladoppField3: TppField
      FieldAlias = 'ITE_PRO_DESCRICAO'
      FieldName = 'ITE_PRO_DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pipAcumuladoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ITE_QTDE'
      FieldName = 'ITE_QTDE'
      FieldLength = 2
      DataType = dtDouble
      DisplayWidth = 13
      Position = 3
    end
  end
end
