inherited frm_PesqProduto: Tfrm_PesqProduto
  Left = 484
  Top = 40
  Caption = 'Consulta de Produto'
  ClientWidth = 792
  PopupMenu = PopupMenu1
  OnKeyDown = FormKeyDown
  ExplicitWidth = 798
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel4: TPanel
    Width = 792
    ExplicitWidth = 792
    inherited Grid: TDBGrid
      Width = 792
      Height = 327
      Columns = <
        item
          Expanded = False
          FieldName = 'PRO_REFERENCIA'
          Title.Caption = 'Refer'#234'ncia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LAB_DESCRICAO'
          Title.Caption = 'Laborat'#243'rio'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRO_UNIDADE'
          Title.Caption = 'UN'
          Width = 21
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_CODFAB1'
          Title.Caption = 'Fabricante (F12)'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_ESTOQUE'
          Title.Caption = 'Estoque'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_VLRVENDA'
          Title.Caption = 'Pre'#231'o Vista'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_VLRPRAZO'
          Title.Caption = 'Pre'#231'o Prazo'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_VLRATACADO'
          Title.Caption = 'Atacado'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRO_GAVETA'
          Title.Caption = 'Gaveta'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRO_CUSTONOTA'
          Title.Caption = 'Custo Real'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRO_VLRPREPOS'
          Title.Caption = 'Pr. Repos'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRO_DTALTPRECO'
          Title.Caption = 'Dt.Alt.Pre'#231'o'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRO_PROMOCAO_VLR'
          Title.Caption = 'Promo'#231#227'o'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRO_VLRMINIMO'
          Title.Caption = 'Vlr. Minimo'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAF_CODFISCAL'
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Fiscal'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IAT'
          Title.Alignment = taCenter
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IPPT'
          Title.Alignment = taCenter
          Visible = False
        end>
    end
    inherited Panel2: TPanel
      Top = 327
      Width = 792
      Height = 88
      ExplicitTop = 327
      ExplicitWidth = 792
      ExplicitHeight = 88
      inherited lblBusca: TLabel
        Left = 313
        ExplicitLeft = 313
      end
      object Label1: TLabel [1]
        Left = 406
        Top = 67
        Width = 319
        Height = 13
        Caption = 'Para observa'#231#245'es do produto, selecione um produto e pressione F9'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      inherited edt_pesq: TEdit
        Left = 349
        Width = 318
        OnChange = edt_pesqChange
        ExplicitLeft = 349
        ExplicitWidth = 318
      end
      inherited rgTipoBusca: TRadioGroup
        Left = 3
        Top = 6
        Width = 227
        Height = 78
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          '&Descri'#231#227'o'
          'De&sc. Resumida'
          '&EAN'
          '&Refer'#234'ncia'
          'C'#243'digo &NCM'
          'C'#243'digo &Balan'#231'a'
          '&C'#243'digo Fabricante')
        Visible = True
        ExplicitLeft = 3
        ExplicitTop = 6
        ExplicitWidth = 227
        ExplicitHeight = 78
      end
      inherited btn_confirma: TBitBtn
        Left = 682
        Top = 25
        ExplicitLeft = 682
        ExplicitTop = 25
      end
    end
  end
  inherited DTS: TADODataSet
    CommandText = 
      'SELECT PRO_ID, PRO_EAN1, PRO_EAN2, PRO_EAN3, PRO_REFERENCIA, CST' +
      '_ID, NAF_CODFISCAL,'#13#10'DEP_ID, PRO_UNIDADE, PRO_QUANT_UNID, PRO_ES' +
      'TOQUE, PRO_ESTOQMIN, PRO_VLRCUSTO, PRO_VLRPREPOS,'#13#10'PRO_VLRMEDIO,' +
      ' PRO_VLRPRAZO, PRO_ULTCOMP, PRO_ULTVENDA, PRO_QTDEULTCOM, PRO_DT' +
      'ALTPRECO,'#13#10'PRO_DESCRICAO, PRO_MARGEM, PRO_COMISSAO, PRO_VLRVENDA' +
      ', PRO_OBSERVACOES, PRO_BALANCA,'#13#10'PRO_CODBALANCA, PRO_VALIDADE, P' +
      'RO_ESTOQUE_DEP, PRO_VLRCUSTO_DEP, PRO_ATIVO, PRO_CUSTONOTA,'#13#10'PRO' +
      '_VLRATACADO, PRO_MARGEMPRAZO, PRO_GAVETA, FOR_ID, PRO_CODFAB1, P' +
      'RO_PROMOCAO_VLR, '#13#10'PRO_VLRMINIMO, PRO_RESUMIDO, P.LAB_ID, LAB_DE' +
      'SCRICAO, PRO_REGISTRO_MS '#13#10'FROM '#13#10'   PRODUTO P'#13#10'LEFT JOIN'#13#10'   LA' +
      'BORATORIO L ON (P.LAB_ID = L.LAB_ID)'#13#10'where pro_descricao like :' +
      'desc'
    Parameters = <
      item
        Name = 'desc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 120
        Value = Null
      end>
  end
  inherited QRY: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'DESC'
        ParamType = ptInput
      end>
  end
  inherited CDS: TClientDataSet
    CommandText = 
      'SELECT PRO_ID, PRO_EAN1, PRO_EAN2, PRO_EAN3, PRO_REFERENCIA, CST' +
      '_ID, NAF_CODFISCAL, DEP_ID, PRO_UNIDADE, PRO_QUANT_UNID, PRO_EST' +
      'OQUE, PRO_ESTOQMIN, PRO_VLRCUSTO, PRO_VLRPREPOS, PRO_VLRMEDIO, P' +
      'RO_VLRPRAZO, PRO_ULTCOMP, PRO_ULTVENDA, PRO_QTDEULTCOM, PRO_DTAL' +
      'TPRECO, PRO_DESCRICAO, PRO_MARGEM, PRO_COMISSAO, PRO_VLRVENDA, P' +
      'RO_OBSERVACOES, PRO_BALANCA, PRO_CODBALANCA, PRO_VALIDADE, PRO_E' +
      'STOQUE_DEP, PRO_VLRCUSTO_DEP, PRO_ATIVO, PRO_CUSTONOTA, PRO_VLRA' +
      'TACADO, PRO_MARGEMPRAZO, PRO_GAVETA, FOR_ID, PRO_CODFAB1, PRO_PR' +
      'OMOCAO_VLR, PRO_VLRMINIMO, PRO_RESUMIDO, P.LAB_ID, LAB_DESCRICAO' +
      ', PRO_REGISTRO_MS, cast(PRO_COD_ORIGEM as varchar(1)) as IPPT, c' +
      'ast('#39'T'#39' as varchar(1)) as IAT FROM PRODUTO P LEFT JOIN LABORATOR' +
      'IO L ON P.LAB_ID = L.LAB_ID WHERE PRO_DESCRICAO LIKE :DESC'
    Params = <
      item
        DataType = ftString
        Name = 'DESC'
        ParamType = ptInput
      end>
    object CDSPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
    end
    object CDSPRO_EAN1: TStringField
      FieldName = 'PRO_EAN1'
    end
    object CDSPRO_EAN2: TStringField
      FieldName = 'PRO_EAN2'
    end
    object CDSPRO_EAN3: TStringField
      FieldName = 'PRO_EAN3'
    end
    object CDSPRO_REFERENCIA: TStringField
      FieldName = 'PRO_REFERENCIA'
    end
    object CDSCST_ID: TStringField
      FieldName = 'CST_ID'
      Size = 10
    end
    object CDSNAF_CODFISCAL: TStringField
      Alignment = taCenter
      FieldName = 'NAF_CODFISCAL'
      Size = 10
    end
    object CDSDEP_ID: TIntegerField
      FieldName = 'DEP_ID'
    end
    object CDSPRO_UNIDADE: TStringField
      FieldName = 'PRO_UNIDADE'
      Size = 10
    end
    object CDSPRO_QUANT_UNID: TFMTBCDField
      FieldName = 'PRO_QUANT_UNID'
      Precision = 13
      Size = 3
    end
    object CDSPRO_ESTOQUE: TFMTBCDField
      FieldName = 'PRO_ESTOQUE'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object CDSPRO_ESTOQMIN: TFMTBCDField
      FieldName = 'PRO_ESTOQMIN'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object CDSPRO_VLRCUSTO: TFMTBCDField
      FieldName = 'PRO_VLRCUSTO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object CDSPRO_VLRPREPOS: TFMTBCDField
      FieldName = 'PRO_VLRPREPOS'
      DisplayFormat = '#,##0.00'
      Precision = 13
      Size = 3
    end
    object CDSPRO_VLRMEDIO: TFMTBCDField
      FieldName = 'PRO_VLRMEDIO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object CDSPRO_VLRPRAZO: TFMTBCDField
      FieldName = 'PRO_VLRPRAZO'
      DisplayFormat = '#,##0.00'
      Precision = 20
      Size = 10
    end
    object CDSPRO_ULTCOMP: TSQLTimeStampField
      FieldName = 'PRO_ULTCOMP'
    end
    object CDSPRO_ULTVENDA: TSQLTimeStampField
      FieldName = 'PRO_ULTVENDA'
    end
    object CDSPRO_QTDEULTCOM: TFMTBCDField
      FieldName = 'PRO_QTDEULTCOM'
      Precision = 15
      Size = 3
    end
    object CDSPRO_DTALTPRECO: TSQLTimeStampField
      FieldName = 'PRO_DTALTPRECO'
    end
    object CDSPRO_DESCRICAO: TStringField
      FieldName = 'PRO_DESCRICAO'
      Size = 120
    end
    object CDSPRO_MARGEM: TFMTBCDField
      FieldName = 'PRO_MARGEM'
      Precision = 15
      Size = 4
    end
    object CDSPRO_COMISSAO: TFMTBCDField
      FieldName = 'PRO_COMISSAO'
      Precision = 13
      Size = 3
    end
    object CDSPRO_VLRVENDA: TFMTBCDField
      FieldName = 'PRO_VLRVENDA'
      DisplayFormat = '#,##0.000'
      Precision = 20
      Size = 10
    end
    object CDSPRO_OBSERVACOES: TStringField
      FieldName = 'PRO_OBSERVACOES'
      Size = 5000
    end
    object CDSPRO_BALANCA: TStringField
      FieldName = 'PRO_BALANCA'
      Size = 1
    end
    object CDSPRO_CODBALANCA: TStringField
      FieldName = 'PRO_CODBALANCA'
      Size = 10
    end
    object CDSPRO_VALIDADE: TSQLTimeStampField
      FieldName = 'PRO_VALIDADE'
    end
    object CDSPRO_ESTOQUE_DEP: TFMTBCDField
      FieldName = 'PRO_ESTOQUE_DEP'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object CDSPRO_VLRCUSTO_DEP: TFMTBCDField
      FieldName = 'PRO_VLRCUSTO_DEP'
      Precision = 15
      Size = 3
    end
    object CDSPRO_ATIVO: TStringField
      FieldName = 'PRO_ATIVO'
      Size = 1
    end
    object CDSPRO_CUSTONOTA: TFMTBCDField
      FieldName = 'PRO_CUSTONOTA'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 3
    end
    object CDSPRO_VLRATACADO: TFMTBCDField
      FieldName = 'PRO_VLRATACADO'
      Precision = 20
      Size = 10
    end
    object CDSPRO_MARGEMPRAZO: TFMTBCDField
      FieldName = 'PRO_MARGEMPRAZO'
      Precision = 15
      Size = 4
    end
    object CDSPRO_GAVETA: TStringField
      FieldName = 'PRO_GAVETA'
      Size = 10
    end
    object CDSFOR_ID: TIntegerField
      FieldName = 'FOR_ID'
    end
    object CDSPRO_CODFAB1: TStringField
      FieldName = 'PRO_CODFAB1'
    end
    object CDSPRO_PROMOCAO_VLR: TFMTBCDField
      FieldName = 'PRO_PROMOCAO_VLR'
      Precision = 15
      Size = 3
    end
    object CDSPRO_VLRMINIMO: TFMTBCDField
      FieldName = 'PRO_VLRMINIMO'
      DisplayFormat = '#,##0.000'
      Precision = 15
      Size = 3
    end
    object CDSPRO_RESUMIDO: TStringField
      FieldName = 'PRO_RESUMIDO'
      Size = 50
    end
    object CDSLAB_ID: TIntegerField
      FieldName = 'LAB_ID'
    end
    object CDSLAB_DESCRICAO: TStringField
      FieldName = 'LAB_DESCRICAO'
    end
    object CDSPRO_REGISTRO_MS: TStringField
      FieldName = 'PRO_REGISTRO_MS'
    end
    object CDSIPPT: TStringField
      Alignment = taCenter
      FieldName = 'IPPT'
      Size = 1
    end
    object CDSIAT: TStringField
      Alignment = taCenter
      FieldName = 'IAT'
      Size = 1
    end
  end
  object qryParams: TADOQuery
    Connection = DM.Con
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      #9'PAR_CONSPRODUTO, PAR_ESTABELECIMENTO, PAR_BLOQ_EST_NEGATIVO,'
      
        #9'PAR_PRO_PESQUISA ,PAR_ORC_CONSAUTOMATICA, PAR_ORC_PESQ_CUSTONOT' +
        'A,'
      #9'PAR_PRODUTO_CODFABRIC, PAR_ORC_DTALTPRECO,PAR_ORC_PESQ_GAVETA,'
      
        #9'PAR_ORC_PESQ_VLRATACADO, PAR_ORC_PESQ_VLRPREPOS, PAR_ORC_PESQ_V' +
        'LRVISTA,'
      
        #9'PAR_ORC_PRO_PROMOCAO, PAR_ORC_PESQ_VLRMINIMO, PAR_ORC_PESQ_VLRP' +
        'RAZO, '
      
        '                PAR_ORC_PESQ_RED_DESC,  PAR_ORC_PESQ_TAM_DESC, P' +
        'AR_ORC_TIPO_ATIVO,'
      
        '                PAR_ORC_TIPO_INATIVO, PAR_ORC_TIPO_BENSCONS, PAR' +
        '_MULTIEMP, '
      '                PAR_ORC_NATFISCAL, PAR_ORC_IAT_IPPT'
      'from'
      #9'PARAMS')
    Left = 272
    Top = 136
    object qryParamspar_estabelecimento: TStringField
      FieldName = 'par_estabelecimento'
      Size = 1
    end
    object qryParamsPAR_BLOQ_EST_NEGATIVO: TStringField
      FieldName = 'PAR_BLOQ_EST_NEGATIVO'
      Size = 1
    end
    object qryParamspar_pro_pesquisa: TStringField
      FieldName = 'par_pro_pesquisa'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_CUSTONOTA: TStringField
      FieldName = 'PAR_ORC_PESQ_CUSTONOTA'
      Size = 1
    end
    object qryParamsPAR_PRODUTO_CODFABRIC: TStringField
      FieldName = 'PAR_PRODUTO_CODFABRIC'
      Size = 1
    end
    object qryParamsPAR_ORC_DTALTPRECO: TStringField
      FieldName = 'PAR_ORC_DTALTPRECO'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_GAVETA: TStringField
      FieldName = 'PAR_ORC_PESQ_GAVETA'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_VLRATACADO: TStringField
      FieldName = 'PAR_ORC_PESQ_VLRATACADO'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_VLRPREPOS: TStringField
      FieldName = 'PAR_ORC_PESQ_VLRPREPOS'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_VLRVISTA: TStringField
      FieldName = 'PAR_ORC_PESQ_VLRVISTA'
      Size = 1
    end
    object qryParamsPAR_ORC_PRO_PROMOCAO: TStringField
      FieldName = 'PAR_ORC_PRO_PROMOCAO'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_VLRMINIMO: TStringField
      FieldName = 'PAR_ORC_PESQ_VLRMINIMO'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_VLRPRAZO: TStringField
      FieldName = 'PAR_ORC_PESQ_VLRPRAZO'
      Size = 1
    end
    object qryParamsPAR_CONSPRODUTO: TStringField
      FieldName = 'PAR_CONSPRODUTO'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_RED_DESC: TStringField
      FieldName = 'PAR_ORC_PESQ_RED_DESC'
      Size = 1
    end
    object qryParamsPAR_ORC_PESQ_TAM_DESC: TIntegerField
      FieldName = 'PAR_ORC_PESQ_TAM_DESC'
    end
    object qryParamsPAR_ORC_TIPO_ATIVO: TStringField
      FieldName = 'PAR_ORC_TIPO_ATIVO'
      Size = 1
    end
    object qryParamsPAR_ORC_TIPO_INATIVO: TStringField
      FieldName = 'PAR_ORC_TIPO_INATIVO'
      Size = 1
    end
    object qryParamsPAR_ORC_TIPO_BENSCONS: TStringField
      FieldName = 'PAR_ORC_TIPO_BENSCONS'
      Size = 1
    end
    object qryParamsPAR_MULTIEMP: TStringField
      FieldName = 'PAR_MULTIEMP'
      FixedChar = True
      Size = 1
    end
    object qryParamsPAR_ORC_CONSAUTOMATICA: TStringField
      FieldName = 'PAR_ORC_CONSAUTOMATICA'
      Size = 1
    end
    object qryParamsPAR_ORC_NATFISCAL: TStringField
      FieldName = 'PAR_ORC_NATFISCAL'
      Size = 1
    end
    object qryParamsPAR_ORC_IAT_IPPT: TStringField
      FieldName = 'PAR_ORC_IAT_IPPT'
      Size = 1
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 443
    Top = 210
    object ConsultaProduto1: TMenuItem
      Caption = 'Consulta Produto'
      ShortCut = 116
      OnClick = ConsultaProduto1Click
    end
    object CodigoFabricante1: TMenuItem
      Caption = 'Codigo Fabricante'
      ShortCut = 123
      Visible = False
      OnClick = CodigoFabricante1Click
    end
    object ObservaodeProduto1: TMenuItem
      Caption = 'Observa'#231#227'o de Produto'
      ShortCut = 120
      OnClick = ObservaodeProduto1Click
    end
  end
end
