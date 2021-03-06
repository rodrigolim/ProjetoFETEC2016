object frm_RelProduto: Tfrm_RelProduto
  Left = 278
  Top = 32
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Produto'
  ClientHeight = 600
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pge_: TPageControl
    Left = 0
    Top = 0
    Width = 783
    Height = 563
    ActivePage = tabTotais
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 0
    object tabTotais: TTabSheet
      Caption = 'Totais'
      DesignSize = (
        775
        517)
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 0
        Width = 775
        Height = 57
        Align = alTop
        Caption = 'Por Ordem'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Alfab'#233'tica'
          'Refer'#234'ncia'
          'Cod. EAN')
        TabOrder = 0
      end
      object grp_DepCustoFornec: TGroupBox
        Left = 0
        Top = 57
        Width = 775
        Height = 89
        Align = alTop
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lbl_TotaisDep: TLabel
          Left = 128
          Top = 41
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Enabled = False
        end
        object spd_TotaisDep: TSpeedButton
          Left = 588
          Top = 38
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_TotaisDepClick
        end
        object lkp_TotaisDep: TDBLookupComboBox
          Left = 185
          Top = 38
          Width = 335
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_TotaisDep: TCheckBox
          Left = 526
          Top = 38
          Width = 57
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_TotaisDepClick
        end
      end
      object chk_naoagrupar: TCheckBox
        Left = 299
        Top = 238
        Width = 175
        Height = 17
        Anchors = []
        Caption = 'N'#227'o agrupar por Departamento'
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Geral'
      ImageIndex = 1
      object pge_TabelaPreco: TPageControl
        Left = 0
        Top = 0
        Width = 775
        Height = 517
        ActivePage = Tab_Geral_AgrupDepto
        Align = alClient
        TabOrder = 0
        object Tab_Geral_AgrupDepto: TTabSheet
          Caption = 'Agrupado por Departamento'
          object GroupBox2: TGroupBox
            Left = 0
            Top = 90
            Width = 767
            Height = 30
            Align = alTop
            TabOrder = 0
            object lbl_DeptoPreco: TLabel
              Left = 20
              Top = 8
              Width = 73
              Height = 13
              Caption = 'Departamento:'
              Enabled = False
            end
            object spd_DeptoPreco: TSpeedButton
              Left = 443
              Top = 4
              Width = 19
              Height = 21
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
                CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
                66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
                F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
                716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
                BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
                DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
                5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
                E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
                FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
                CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
                AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
                C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
                F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
                DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = spd_DeptoPrecoClick
            end
            object lkp_DeptoPreco: TDBLookupComboBox
              Left = 95
              Top = 4
              Width = 286
              Height = 21
              Enabled = False
              KeyField = 'DEP_ID'
              ListField = 'DEP_DESCRICAO'
              ListSource = DM_Geral.DtsCadDepart
              TabOrder = 0
            end
            object chk_DeptoPreco: TCheckBox
              Left = 384
              Top = 4
              Width = 49
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_DeptoPrecoClick
            end
            object chk_agrupado: TCheckBox
              Left = 487
              Top = 4
              Width = 175
              Height = 21
              Caption = 'N'#227'o agrupar por Departamento'
              TabOrder = 2
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 241
            Width = 767
            Height = 248
            Align = alClient
            TabOrder = 1
            object btn_GeralDiscXLS: TSpeedButton
              Left = 600
              Top = 204
              Width = 31
              Height = 30
              Hint = 'Gerar Produtos em Excel'
              Glyph.Data = {
                36100000424D3610000000000000360000002800000020000000200000000100
                2000000000000010000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
                33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
                29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
                1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
                0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
                5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
                47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
                37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
                0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
                66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
                60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
                59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
                000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
                E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
                D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
                D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
                000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
                E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
                DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
                D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
                000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
                E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
                DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
                D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
                00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
                E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
                DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
                D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
                00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
                E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
                B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
                27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
                00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
                2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
                15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
                27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
                0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
                3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
                1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
                D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
                0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
                7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
                A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
                D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
                0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
                75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
                6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
                D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
                000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
                4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
                5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
                DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
                000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
                DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
                5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
                DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
                00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
                F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
                5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
                DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
                00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
                F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
                5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
                DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
                00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
                9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
                5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
                DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
                000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
                5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
                6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
                E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
                000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
                CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
                7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
                E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
                00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
                A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
                75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
                E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
                00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
                92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
                64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
                E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
                00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
                69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
                CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
                E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
                000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
                FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
                F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
                E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
                000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
                FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
                F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
                E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
                000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
                FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
                F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
                E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
                000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
                95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
                86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
                7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
                000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
                C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
                9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
                76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
                000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
                7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
                6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
                5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentShowHint = False
              ShowHint = True
              OnClick = btn_GeralDiscXLSClick
            end
            object chk_mTracejada: TCheckBox
              Left = 4
              Top = 185
              Width = 160
              Height = 17
              Caption = 'N'#227'o imprimir Linha Tracejada'
              TabOrder = 0
            end
            object chk_zerado: TCheckBox
              Left = 4
              Top = 165
              Width = 222
              Height = 17
              Caption = 'N'#227'o imprimir produto com estoque zerado'
              TabOrder = 1
              OnClick = chk_zeradoClick
            end
            object rg_col5: TGroupBox
              Left = 619
              Top = 3
              Width = 145
              Height = 159
              TabOrder = 2
              object chk_mcontagem: TCheckBox
                Left = 4
                Top = 7
                Width = 110
                Height = 17
                Caption = 'Contagem Estoque'
                TabOrder = 0
                OnClick = chkPadraoClick
              end
              object chk_mTotal: TCheckBox
                Left = 4
                Top = 23
                Width = 110
                Height = 17
                Hint = 'O Total ser'#225' calculado sobre o pre'#231'o '#224' vista'
                Caption = 'Total Pre'#231'o Vista'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
                OnClick = chkPadraoClick
              end
              object chk_mTotalCusto: TCheckBox
                Left = 4
                Top = 40
                Width = 107
                Height = 17
                Hint = 'O Total ser'#225' calculado sobre o pre'#231'o de Custo'
                Caption = 'Total Pre'#231'o Custo'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = chkPadraoClick
              end
              object chk_mSugestiva: TCheckBox
                Left = 4
                Top = 73
                Width = 107
                Height = 17
                Caption = 'Susgest'#227'o Compra'
                Enabled = False
                ParentShowHint = False
                ShowHint = False
                TabOrder = 3
                OnClick = chkPadraoClick
              end
              object chk_mTotalCustoReal: TCheckBox
                Left = 4
                Top = 56
                Width = 125
                Height = 17
                Hint = 'O Total ser'#225' calculado sobre o pre'#231'o de Custo'
                Caption = 'Total Pre'#231'o Custo Real'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 4
                OnClick = chkPadraoClick
              end
              object chk_mTotalMedio: TCheckBox
                Left = 4
                Top = 89
                Width = 107
                Height = 17
                Hint = 'O Total ser'#225' calculado sobre o pre'#231'o M'#233'dio'
                Caption = 'Total Pre'#231'o M'#233'dio'
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 5
                OnClick = chkPadraoClick
              end
              object chk_CodFrabric: TCheckBox
                Left = 4
                Top = 106
                Width = 107
                Height = 17
                Caption = 'C'#243'd. Fabricante'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = chkPadraoClick
              end
              object chk_CodNCM: TCheckBox
                Left = 4
                Top = 124
                Width = 107
                Height = 15
                Caption = 'C'#243'd. NCM'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 7
                OnClick = chkPadraoClick
              end
              object chk_CodCest: TCheckBox
                Left = 4
                Top = 140
                Width = 107
                Height = 15
                Caption = 'C'#243'd. CEST'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
                OnClick = chkPadraoClick
              end
            end
            object rg_col4: TGroupBox
              Left = 477
              Top = 3
              Width = 141
              Height = 159
              TabOrder = 3
              object chk_mCusto: TCheckBox
                Left = 5
                Top = 7
                Width = 94
                Height = 17
                Caption = 'Pre'#231'o de Custo'
                TabOrder = 0
                OnClick = chk_mCustoClick
              end
              object chk_mMedio: TCheckBox
                Left = 5
                Top = 40
                Width = 82
                Height = 17
                Caption = 'Pre'#231'o Medio'
                TabOrder = 1
                OnClick = chk_mMedioClick
              end
              object chk_atacado: TCheckBox
                Left = 5
                Top = 56
                Width = 91
                Height = 17
                Caption = 'Pre'#231'o Atacado'
                TabOrder = 2
                OnClick = chk_atacadoClick
              end
              object chk_mMinimo: TCheckBox
                Left = 5
                Top = 73
                Width = 95
                Height = 17
                Hint = 
                  'Seleciona todos os produtos que estiverem com o estoque atual ab' +
                  'aixo do minimo.'
                Caption = 'Estoque Minimo'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = chk_mMinimoClick
              end
              object chk_gaveta: TCheckBox
                Left = 5
                Top = 89
                Width = 95
                Height = 17
                Caption = 'Gaveta'
                TabOrder = 4
                OnClick = chkPadraoClick
              end
              object chk_aliquota: TCheckBox
                Left = 5
                Top = 106
                Width = 95
                Height = 17
                Caption = 'Aliquota ICMS'
                TabOrder = 5
                OnClick = chkPadraoClick
              end
              object chk_mCustoReal: TCheckBox
                Left = 5
                Top = 23
                Width = 116
                Height = 17
                Caption = 'Pre'#231'o de Custo Real'
                TabOrder = 6
                OnClick = chk_mCustoRealClick
              end
              object chk_CodBalanca: TCheckBox
                Left = 5
                Top = 124
                Width = 113
                Height = 17
                Caption = 'C'#243'digo da Balan'#231'a'
                TabOrder = 7
                OnClick = chkPadraoClick
              end
            end
            object rg_col3: TGroupBox
              Left = 365
              Top = 2
              Width = 111
              Height = 160
              TabOrder = 4
              object chk_mPrazo: TCheckBox
                Left = 4
                Top = 7
                Width = 109
                Height = 17
                Caption = 'Pre'#231'o a Prazo'
                Checked = True
                State = cbChecked
                TabOrder = 0
                OnClick = chkPadraoClick
              end
              object chk_cst: TCheckBox
                Left = 4
                Top = 23
                Width = 54
                Height = 17
                Caption = 'CST'
                TabOrder = 1
                OnClick = chkPadraoClick
              end
              object chk_mMinimo2: TCheckBox
                Left = 4
                Top = 40
                Width = 95
                Height = 17
                Hint = 
                  'Seleciona todos os produtos que estiverem com o estoque atual ab' +
                  'aixo do minimo.'
                Caption = 'Estoque Minimo'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
                OnClick = chk_mMinimo2Click
              end
              object chk_mMaximo: TCheckBox
                Left = 4
                Top = 56
                Width = 95
                Height = 17
                Caption = 'Estoque M'#225'ximo'
                TabOrder = 3
                OnClick = chk_mMaximoClick
              end
              object chk_gaveta2: TCheckBox
                Left = 4
                Top = 73
                Width = 95
                Height = 17
                Caption = 'Gaveta'
                TabOrder = 4
                OnClick = chkPadraoClick
              end
              object chkComissao: TCheckBox
                Left = 4
                Top = 89
                Width = 95
                Height = 17
                Caption = 'Comiss'#227'o'
                TabOrder = 5
                OnClick = chkComissaoClick
              end
            end
            object rg_col1: TGroupBox
              Left = 169
              Top = 3
              Width = 97
              Height = 159
              TabOrder = 5
              object chk_mEstoque: TCheckBox
                Left = 4
                Top = 7
                Width = 72
                Height = 17
                Caption = 'Estoque'
                TabOrder = 0
                OnClick = chk_mEstoqueClick
              end
              object chkUnEmbComp1: TCheckBox
                Left = 4
                Top = 24
                Width = 90
                Height = 17
                Caption = 'UN Emb. Comp.'
                TabOrder = 1
                OnClick = chkPadraoClick
              end
            end
            object rg_col2: TGroupBox
              Left = 266
              Top = 3
              Width = 97
              Height = 159
              TabOrder = 6
              object chk_mAvista: TCheckBox
                Left = 4
                Top = 7
                Width = 86
                Height = 17
                Caption = 'Pre'#231'o a Vista'
                Checked = True
                State = cbChecked
                TabOrder = 0
                OnClick = chk_mAvistaClick
              end
              object chkUnEmbComp2: TCheckBox
                Left = 4
                Top = 24
                Width = 89
                Height = 17
                Caption = 'UN Emb. Comp.'
                TabOrder = 1
                OnClick = chkPadraoClick
              end
            end
            object chk_SoZerado: TCheckBox
              Left = 239
              Top = 165
              Width = 244
              Height = 17
              Caption = 'Imprimir somente produto com estoque zerado'
              TabOrder = 7
              OnClick = chk_SoZeradoClick
            end
            object chk_SoNegativo: TCheckBox
              Left = 239
              Top = 185
              Width = 253
              Height = 17
              Caption = 'Imprimir somente produto com estoque negativo'
              TabOrder = 8
              OnClick = chk_SoNegativoClick
            end
            object GroupBox8: TGroupBox
              Left = 83
              Top = 3
              Width = 85
              Height = 159
              TabOrder = 9
              object chk_mQtdeUn: TCheckBox
                Left = 4
                Top = 7
                Width = 64
                Height = 17
                Caption = 'Qtde UN'
                TabOrder = 0
              end
            end
            object chk_AtacadoVarejo: TCheckBox
              Left = 4
              Top = 205
              Width = 160
              Height = 17
              Caption = 'Atacado/Varejo'
              TabOrder = 10
              OnClick = chk_AtacadoVarejoClick
            end
            object chk_TodosMinimos: TCheckBox
              Left = 239
              Top = 205
              Width = 253
              Height = 17
              Caption = 'Imprimir estoque m'#237'nimo de todos produtos'
              TabOrder = 11
              Visible = False
            end
            object GroupBox27: TGroupBox
              Left = 0
              Top = 3
              Width = 82
              Height = 159
              TabOrder = 12
              object chk_mFabric: TCheckBox
                Left = 3
                Top = 7
                Width = 69
                Height = 17
                Caption = 'Fabricante'
                Enabled = False
                TabOrder = 0
              end
            end
            object chkSoPrecoFixo: TCheckBox
              Left = 505
              Top = 165
              Width = 214
              Height = 17
              Caption = 'Imprimir somente produto com pre'#231'o fixo'
              TabOrder = 13
            end
            object chkSoComissao: TCheckBox
              Left = 505
              Top = 185
              Width = 214
              Height = 17
              Caption = 'Imprimir somente produto com comiss'#227'o'
              TabOrder = 14
              Visible = False
            end
          end
          object GroupBox14: TGroupBox
            Left = 0
            Top = 210
            Width = 767
            Height = 31
            Align = alTop
            TabOrder = 2
            object lbl_produto: TLabel
              Left = 51
              Top = 9
              Width = 42
              Height = 13
              Caption = 'Produto:'
              Enabled = False
            end
            object lblGaveta: TLabel
              Left = 471
              Top = 10
              Width = 39
              Height = 13
              Caption = 'Gaveta:'
              Visible = False
            end
            object chk_todos: TCheckBox
              Left = 384
              Top = 6
              Width = 53
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = chk_todosClick
            end
            object edt_produto: TEdit
              Left = 95
              Top = 6
              Width = 286
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 1
            end
            object edtGaveta: TEdit
              Left = 513
              Top = 6
              Width = 90
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
              Visible = False
            end
          end
          object gp_sec4: TGroupBox
            Left = 0
            Top = 120
            Width = 767
            Height = 30
            Align = alTop
            TabOrder = 3
            object Label25: TLabel
              Left = 60
              Top = 8
              Width = 33
              Height = 13
              Caption = 'Se'#231#227'o:'
              Enabled = False
            end
            object DBLookupComboBox9: TDBLookupComboBox
              Left = 95
              Top = 5
              Width = 286
              Height = 21
              Enabled = False
              KeyField = 'SEC_ID'
              ListField = 'SEC_DESCRICAO'
              ListSource = DM_Geral.dtsCadSecao
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
            end
            object CheckBox16: TCheckBox
              Left = 384
              Top = 7
              Width = 50
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = CheckBox16Click
            end
            object chk_agrupado_secao: TCheckBox
              Left = 487
              Top = 5
              Width = 175
              Height = 21
              Caption = 'N'#227'o agrupar por Se'#231#227'o'
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 47
            Width = 767
            Height = 43
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object rg_Tabela: TRadioGroup
              Left = 0
              Top = 0
              Width = 170
              Height = 43
              Align = alLeft
              Caption = 'Filtrar Por:'
              Columns = 2
              ItemIndex = 1
              Items.Strings = (
                'Acumulado'
                'Discriminado')
              TabOrder = 0
              OnClick = rg_TabelaClick
            end
            object rg_tipo: TRadioGroup
              Left = 348
              Top = 0
              Width = 419
              Height = 43
              Align = alClient
              Caption = 'Situa'#231#227'o:'
              Columns = 4
              ItemIndex = 0
              Items.Strings = (
                'Ativo'
                'Inativo'
                'Bens Consumo'
                'Todos')
              TabOrder = 1
            end
            object rg_EanouRef: TRadioGroup
              Left = 170
              Top = 0
              Width = 178
              Height = 43
              Align = alLeft
              Caption = 'Relat'#243'rio por:'
              Columns = 2
              ItemIndex = 1
              Items.Strings = (
                'C'#243'digo EAN'
                'Refer'#234'ncia')
              TabOrder = 2
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 767
            Height = 47
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object rg_ordem: TRadioGroup
              Left = 148
              Top = 0
              Width = 340
              Height = 47
              Align = alLeft
              Caption = 'Por Ordem'
              Columns = 4
              ItemIndex = 0
              Items.Strings = (
                'Alfab'#233'tica'
                'Refer'#234'ncia'
                'Cod. EAN'
                'Gaveta')
              TabOrder = 0
              OnClick = rg_ordemClick
            end
            object rgTipoRel: TRadioGroup
              Left = 0
              Top = 0
              Width = 148
              Height = 47
              Align = alLeft
              Caption = 'Tipo do relat'#243'rio'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Retrato'
                'Paisagem')
              TabOrder = 1
              OnClick = rgTipoRelClick
            end
            object rgDescProduto: TRadioGroup
              Left = 488
              Top = 0
              Width = 279
              Height = 47
              Align = alClient
              Caption = 'Descri'#231#227'o Produto:'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Descri'#231#227'o'
                'Descri'#231#227'o Resumida')
              TabOrder = 2
              OnClick = rgTipoRelClick
            end
          end
          object GroupBox12: TGroupBox
            Left = 0
            Top = 150
            Width = 767
            Height = 30
            Align = alTop
            TabOrder = 6
            object lblFornecedor: TLabel
              Left = 34
              Top = 9
              Width = 59
              Height = 13
              Caption = 'Fornecedor:'
              Enabled = False
            end
            object spd_GeralFornecedor: TSpeedButton
              Left = 443
              Top = 6
              Width = 19
              Height = 21
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
                CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
                66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
                F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
                716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
                BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
                DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
                5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
                E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
                FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
                CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
                AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
                C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
                F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
                DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = spd_GeralFornecedorClick
            end
            object lkpFornecedor: TDBLookupComboBox
              Left = 95
              Top = 6
              Width = 286
              Height = 21
              Enabled = False
              KeyField = 'FOR_ID'
              ListField = 'FOR_NOME'
              ListSource = DM_Geral.dtsCadFornec
              TabOrder = 0
            end
            object chkFornecedor: TCheckBox
              Left = 384
              Top = 6
              Width = 49
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chkFornecedorClick
            end
            object chkAgrupaForn: TCheckBox
              Left = 487
              Top = 6
              Width = 158
              Height = 21
              Caption = 'N'#227'o agrupar por Fornecedor'
              Checked = True
              State = cbChecked
              TabOrder = 2
              OnClick = chkAgrupaFornClick
            end
          end
          object gbMarca: TGroupBox
            Left = 0
            Top = 180
            Width = 767
            Height = 30
            Align = alTop
            TabOrder = 7
            Visible = False
            object lblMarca: TLabel
              Left = 5
              Top = 9
              Width = 88
              Height = 13
              Caption = 'Marca/Fabricante:'
              Enabled = False
            end
            object spdMarca: TSpeedButton
              Left = 443
              Top = 6
              Width = 19
              Height = 21
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
                CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
                66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
                F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
                716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
                BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
                DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
                5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
                E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
                FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
                CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
                AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
                C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
                F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
                DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = spdMarcaClick
            end
            object lkpMarca: TDBLookupComboBox
              Left = 95
              Top = 6
              Width = 286
              Height = 21
              Enabled = False
              KeyField = 'MRC_ID'
              ListField = 'MRC_DESCRICAO'
              ListSource = DM_Geral.dsMarca
              TabOrder = 0
            end
            object chkMarca: TCheckBox
              Left = 384
              Top = 6
              Width = 49
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chkMarcaClick
            end
          end
        end
        object Tab_Geral_Secao: TTabSheet
          Caption = 'Se'#231#227'o'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox24: TGroupBox
            Left = 0
            Top = 0
            Width = 767
            Height = 68
            Align = alTop
            Caption = 'Se'#231#227'o'
            TabOrder = 0
            object lbl_secao: TLabel
              Left = 65
              Top = 29
              Width = 31
              Height = 13
              Caption = 'Nome:'
              Enabled = False
            end
            object lkp_secao: TDBLookupComboBox
              Left = 100
              Top = 26
              Width = 360
              Height = 21
              Enabled = False
              KeyField = 'SEC_ID'
              ListField = 'SEC_DESCRICAO'
              ParentShowHint = False
              ShowHint = False
              TabOrder = 0
            end
            object chk_secao: TCheckBox
              Left = 466
              Top = 27
              Width = 97
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_secaoClick
            end
          end
          object GroupBox33: TGroupBox
            Left = 0
            Top = 68
            Width = 767
            Height = 149
            Align = alTop
            TabOrder = 1
            object GroupBox29: TGroupBox
              Left = 3
              Top = 7
              Width = 162
              Height = 87
              TabOrder = 0
              object chk_MEstoqueSec: TCheckBox
                Left = 5
                Top = 40
                Width = 121
                Height = 17
                Caption = 'Estoque'
                TabOrder = 0
                OnClick = chk_MEstoqueSecClick
              end
            end
            object GroupBox30: TGroupBox
              Left = 165
              Top = 7
              Width = 162
              Height = 87
              TabOrder = 1
              object chk_MVistaSec: TCheckBox
                Left = 5
                Top = 22
                Width = 121
                Height = 17
                Caption = 'Pre'#231'o a Vista'
                Checked = True
                State = cbChecked
                TabOrder = 0
                OnClick = chk_MVistaSecClick
              end
              object chk_mCustoSec: TCheckBox
                Left = 5
                Top = 54
                Width = 134
                Height = 17
                Caption = 'Pre'#231'o de Custo'
                TabOrder = 1
                OnClick = chk_mCustoSecClick
              end
            end
            object GroupBox31: TGroupBox
              Left = 327
              Top = 7
              Width = 162
              Height = 87
              TabOrder = 2
              object chk_MPrazoSec: TCheckBox
                Left = 7
                Top = 40
                Width = 128
                Height = 17
                Caption = 'Pre'#231'o a Prazo'
                Checked = True
                State = cbChecked
                TabOrder = 0
              end
            end
            object GroupBox32: TGroupBox
              Left = 489
              Top = 7
              Width = 162
              Height = 87
              TabOrder = 3
              object chk_MTotalSec: TCheckBox
                Left = 6
                Top = 22
                Width = 121
                Height = 17
                Caption = 'Total Pre'#231'o Vista'
                Enabled = False
                TabOrder = 0
                OnClick = chk_MTotalSecClick
              end
              object chk_mTotalCustoSec: TCheckBox
                Left = 6
                Top = 54
                Width = 121
                Height = 17
                Caption = 'Total Pre'#231'o Custo'
                Enabled = False
                TabOrder = 1
                OnClick = chk_mTotalCustoSecClick
              end
            end
            object chk_SoZeradoSec: TCheckBox
              Left = 304
              Top = 100
              Width = 244
              Height = 17
              Caption = 'Imprimir somente produto com estoque zerado'
              TabOrder = 4
              OnClick = chk_SoZeradoSecClick
            end
            object chk_SoNegativoSec: TCheckBox
              Left = 304
              Top = 124
              Width = 253
              Height = 17
              Caption = 'Imprimir somente produto com estoque negativo'
              TabOrder = 5
              OnClick = chk_SoNegativoSecClick
            end
            object chk_zeradoSec: TCheckBox
              Left = 4
              Top = 99
              Width = 222
              Height = 17
              Caption = 'N'#227'o imprimir produto com estoque zerado'
              TabOrder = 6
              OnClick = chk_zeradoSecClick
            end
            object chk_mTracejadaSec: TCheckBox
              Left = 4
              Top = 124
              Width = 160
              Height = 17
              Caption = 'N'#227'o imprimir Linha Tracejada'
              TabOrder = 7
            end
          end
        end
        object Tab_Geral_Combustivel: TTabSheet
          Caption = 'Combustivel'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label28: TLabel
            Left = 224
            Top = 128
            Width = 197
            Height = 13
            Caption = 'Posi'#231#227'o Atual do Estoque de Combustivel'
          end
        end
        object tab_Obs_CodFab: TTabSheet
          Caption = 'Observa'#231#227'o/Cod. Fabricante'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object GroupBox6: TGroupBox
            Left = 0
            Top = 62
            Width = 767
            Height = 65
            Align = alTop
            TabOrder = 0
            object lbl_For_Obs_CodFab: TLabel
              Left = 115
              Top = 26
              Width = 59
              Height = 13
              Caption = 'Fornecedor:'
              Enabled = False
            end
            object spd_For_Obs_CodFab: TSpeedButton
              Left = 524
              Top = 23
              Width = 19
              Height = 21
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
                CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
                66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
                F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
                716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
                BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
                DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
                5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
                E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
                FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
                CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
                AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
                C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
                F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
                DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = spd_For_Obs_CodFabClick
            end
            object lkp_For_Obs_CodFab: TDBLookupComboBox
              Left = 180
              Top = 23
              Width = 286
              Height = 21
              Enabled = False
              KeyField = 'FOR_ID'
              ListField = 'FOR_NOME'
              ListSource = DM_Geral.dtsCadFornec
              TabOrder = 0
            end
            object chk_For_Obs_CodFab: TCheckBox
              Left = 469
              Top = 23
              Width = 49
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_For_Obs_CodFabClick
            end
          end
          object GroupBox34: TGroupBox
            Left = 0
            Top = 0
            Width = 767
            Height = 62
            Align = alTop
            TabOrder = 1
            object lbl_Dep_Obs_CodFab: TLabel
              Left = 101
              Top = 27
              Width = 73
              Height = 13
              Caption = 'Departamento:'
              Enabled = False
            end
            object spd_Dep_Obs_CodFab: TSpeedButton
              Left = 524
              Top = 24
              Width = 19
              Height = 21
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
                CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
                66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
                F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
                716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
                BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
                DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
                5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
                E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
                FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
                CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
                AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
                C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
                F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
                DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = spd_Dep_Obs_CodFabClick
            end
            object lkp_Dep_Obs_CodFab: TDBLookupComboBox
              Left = 180
              Top = 24
              Width = 286
              Height = 21
              Enabled = False
              KeyField = 'DEP_ID'
              ListField = 'DEP_DESCRICAO'
              ListSource = DM_Geral.DtsCadDepart
              TabOrder = 0
            end
            object chk_Dep_Obs_CodFab: TCheckBox
              Left = 469
              Top = 24
              Width = 49
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_Dep_Obs_CodFabClick
            end
          end
          object chk_Custo_Obs_CodFab: TCheckBox
            Left = 226
            Top = 294
            Width = 171
            Height = 17
            Caption = 'Imprimir coluna Pre'#231'o de Custo'
            TabOrder = 2
            OnClick = chk_zeradoClick
          end
          object GroupBox11: TGroupBox
            Left = 0
            Top = 127
            Width = 767
            Height = 65
            Align = alTop
            TabOrder = 3
            object lbl_Pro_Obs_CodFab: TLabel
              Left = 132
              Top = 30
              Width = 42
              Height = 13
              Caption = 'Produto:'
              Enabled = False
            end
            object chk_Pro_Obs_CodFab: TCheckBox
              Left = 469
              Top = 27
              Width = 53
              Height = 21
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 0
              OnClick = chk_Pro_Obs_CodFabClick
            end
            object edt_Pro_Obs_CodFab: TEdit
              Left = 180
              Top = 27
              Width = 282
              Height = 21
              CharCase = ecUpperCase
              Enabled = False
              TabOrder = 1
            end
          end
          object rg_situacao_Pro_Obs_CodFab: TRadioGroup
            Left = 0
            Top = 192
            Width = 767
            Height = 65
            Align = alTop
            Caption = 'Situa'#231#227'o:'
            Columns = 4
            ItemIndex = 0
            Items.Strings = (
              'Ativo'
              'Inativo'
              'Bens de Consumo'
              'Todos')
            TabOrder = 4
          end
        end
        object Tab_Geral_ProdExcel: TTabSheet
          Caption = 'Gerar Produtos em Excel'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object spd_ImportaExcel: TSpeedButton
            Left = 300
            Top = 289
            Width = 31
            Height = 30
            Hint = 'Gerar Produtos em Excel'
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
              33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
              29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
              1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
              0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
              5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
              47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
              37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
              0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
              66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
              60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
              59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
              000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
              E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
              D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
              D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
              000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
              E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
              DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
              D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
              000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
              E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
              DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
              D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
              00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
              E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
              DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
              D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
              00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
              E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
              B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
              27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
              00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
              2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
              15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
              27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
              0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
              3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
              1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
              D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
              0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
              7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
              A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
              D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
              0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
              75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
              6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
              D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
              000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
              4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
              5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
              DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
              000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
              DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
              5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
              DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
              00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
              F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
              5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
              DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
              00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
              F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
              5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
              DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
              00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
              9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
              5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
              DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
              000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
              5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
              6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
              E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
              000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
              CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
              7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
              E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
              00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
              A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
              75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
              E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
              00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
              92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
              64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
              E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
              00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
              69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
              CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
              E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
              000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
              FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
              F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
              E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
              000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
              FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
              F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
              E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
              000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
              FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
              F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
              E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
              000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
              95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
              86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
              7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
              000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
              C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
              9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
              76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
              000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
              7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
              6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
              5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = spd_ImportaExcelClick
          end
          object rg_GerarProdExcel: TRadioGroup
            Left = 0
            Top = 0
            Width = 767
            Height = 57
            Align = alTop
            Caption = 'Por Ordem'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Alfab'#233'tica'
              'Refer'#234'ncia')
            TabOrder = 0
          end
          object GroupBox36: TGroupBox
            Left = 0
            Top = 57
            Width = 767
            Height = 72
            Align = alTop
            Caption = 'Deparamento'
            TabOrder = 1
            object lbl_GerarProdExcel: TLabel
              Left = 81
              Top = 28
              Width = 73
              Height = 13
              Caption = 'Departamento:'
              Enabled = False
            end
            object lkp_GerarProdExcel: TDBLookupComboBox
              Left = 158
              Top = 24
              Width = 284
              Height = 21
              Enabled = False
              KeyField = 'DEP_ID'
              ListField = 'DEP_DESCRICAO'
              ListSource = DM_Geral.DtsCadDepart
              TabOrder = 0
            end
            object chk_GerarProdExcel: TCheckBox
              Left = 452
              Top = 26
              Width = 97
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_GerarProdExcelClick
            end
          end
          object rgValor: TRadioGroup
            Left = 0
            Top = 129
            Width = 767
            Height = 57
            Align = alTop
            Caption = 'Valor'
            Columns = 3
            ItemIndex = 0
            Items.Strings = (
              'Pre'#231'o Vista'
              'Pre'#231'o Prazo'
              'Pre'#231'o Atacado')
            TabOrder = 2
          end
          object chkProdEstoq: TCheckBox
            Left = 190
            Top = 229
            Width = 256
            Height = 17
            Caption = 'Gerar somente produtos com estoque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
        end
        object tabPrecoSimplificado: TTabSheet
          Caption = 'Tabela de Pre'#231'os'
          ImageIndex = 5
          object rgPrecoSimplificado: TRadioGroup
            Left = 188
            Top = 36
            Width = 340
            Height = 79
            Caption = 'Selecione'
            Columns = 3
            ItemIndex = 1
            Items.Strings = (
              'Pre'#231'o '#224' Vista'
              'Pre'#231'o '#224' Prazo'
              'Ambos')
            TabOrder = 0
            OnClick = rg_ordemClick
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Por Natureza Fiscal / Al'#237'quota'
      ImageIndex = 6
      object pge_1: TPageControl
        Left = 0
        Top = 0
        Width = 775
        Height = 517
        ActivePage = TabSheet14
        Align = alClient
        TabOrder = 0
        object TabSheet14: TTabSheet
          Caption = 'Departamento'
          object SpeedButton3: TSpeedButton
            Left = 317
            Top = 323
            Width = 31
            Height = 30
            Hint = 'Gerar Produtos em Excel'
            Glyph.Data = {
              36100000424D3610000000000000360000002800000020000000200000000100
              2000000000000010000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
              33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
              29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
              1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
              0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
              5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
              47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
              37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
              0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
              66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
              60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
              59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
              000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
              E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
              D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
              D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
              000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
              E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
              DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
              D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
              000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
              E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
              DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
              D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
              00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
              E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
              DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
              D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
              00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
              E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
              B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
              27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
              00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
              2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
              15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
              27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
              0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
              3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
              1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
              D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
              0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
              7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
              A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
              D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
              0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
              75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
              6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
              D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
              000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
              4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
              5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
              DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
              000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
              DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
              5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
              DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
              00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
              F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
              5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
              DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
              00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
              F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
              5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
              DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
              00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
              9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
              5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
              DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
              000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
              5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
              6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
              E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
              000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
              CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
              7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
              E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
              00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
              A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
              75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
              E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
              00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
              92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
              64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
              E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
              00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
              69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
              CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
              E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
              000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
              FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
              F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
              E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
              000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
              FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
              F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
              E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
              000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
              FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
              F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
              E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
              000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
              95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
              86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
              7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
              000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
              C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
              9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
              76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
              000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
              7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
              6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
              5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 0
            Width = 767
            Height = 72
            Align = alTop
            Caption = 'Departamento'
            TabOrder = 0
            object lbl_aliq: TLabel
              Left = 20
              Top = 32
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
              Enabled = False
            end
            object spd_aliq: TSpeedButton
              Left = 475
              Top = 29
              Width = 19
              Height = 21
              Flat = True
              Glyph.Data = {
                26040000424D2604000000000000360000002800000012000000120000000100
                180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
                CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
                66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
                F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
                716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
                BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
                DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
                5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
                E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
                FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
                CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
                AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
                C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
                F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
                DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF0000}
              ParentShowHint = False
              ShowHint = True
              Visible = False
              OnClick = spd_aliqClick
            end
            object lkp_aliq: TDBLookupComboBox
              Left = 72
              Top = 29
              Width = 340
              Height = 21
              Enabled = False
              KeyField = 'DEP_ID'
              ListField = 'DEP_DESCRICAO'
              ListSource = DM_Geral.DtsCadDepart
              TabOrder = 0
            end
            object chk_aliq: TCheckBox
              Left = 417
              Top = 31
              Width = 50
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_aliqClick
            end
          end
          object RadioGroup4: TRadioGroup
            Left = 0
            Top = 213
            Width = 767
            Height = 57
            Align = alTop
            Caption = 'Por Pre'#231'o'
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'Custo'
              'M'#233'dio')
            TabOrder = 1
          end
          object GroupBox38: TGroupBox
            Left = 0
            Top = 72
            Width = 767
            Height = 72
            Align = alTop
            Caption = 'Natureza Fiscal'
            TabOrder = 2
            object Label26: TLabel
              Left = 20
              Top = 32
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
              Enabled = False
            end
            object DBLookupComboBox7: TDBLookupComboBox
              Left = 72
              Top = 29
              Width = 340
              Height = 21
              Enabled = False
              KeyField = 'NAF_CODFISCAL'
              ListField = 'NAF_DESCRICAO'
              ListSource = DM_Geral.dtsnaf_codfiscal
              TabOrder = 0
            end
            object CheckBox14: TCheckBox
              Left = 417
              Top = 30
              Width = 97
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = CheckBox14Click
            end
          end
          object chk_zeradoAliq: TCheckBox
            Left = 55
            Top = 288
            Width = 362
            Height = 17
            Caption = 'N'#227'o imprimir produto com estoque zerado e ou negativo.'
            TabOrder = 3
          end
          object GroupBox39: TGroupBox
            Left = 0
            Top = 144
            Width = 767
            Height = 69
            Align = alTop
            Caption = 'CST'
            TabOrder = 4
            object Label27: TLabel
              Left = 47
              Top = 31
              Width = 23
              Height = 13
              Caption = 'CST:'
              Enabled = False
            end
            object DBLookupComboBox8: TDBLookupComboBox
              Left = 73
              Top = 27
              Width = 339
              Height = 21
              Enabled = False
              KeyField = 'CST_ID'
              ListField = 'CST_ID;CST_DESCRICAO'
              ListSource = DM_Geral.dtsCadCst
              TabOrder = 0
            end
            object CheckBox15: TCheckBox
              Left = 416
              Top = 29
              Width = 97
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = CheckBox15Click
            end
          end
        end
        object TabSheet15: TTabSheet
          Caption = 'Fornecedor'
          ImageIndex = 1
          object GroupBox18: TGroupBox
            Left = 0
            Top = 0
            Width = 767
            Height = 72
            Align = alTop
            Caption = 'Fornecedor'
            TabOrder = 0
            object lbl_aliqfor: TLabel
              Left = 20
              Top = 32
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
              Enabled = False
            end
            object lkp_aliqfor: TDBLookupComboBox
              Left = 71
              Top = 29
              Width = 340
              Height = 21
              Enabled = False
              KeyField = 'FOR_ID'
              ListField = 'FOR_NOME'
              ListSource = DM_Geral.dtsCadFornec
              TabOrder = 0
            end
            object chk_aliqfor: TCheckBox
              Left = 417
              Top = 31
              Width = 97
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_aliqforClick
            end
          end
          object chk_zeradoAliqfor: TCheckBox
            Left = 63
            Top = 171
            Width = 394
            Height = 17
            Caption = 'N'#227'o imprimir produto com estoque zerado e ou negativo.'
            TabOrder = 1
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 72
            Width = 767
            Height = 72
            Align = alTop
            Caption = 'Natureza Fiscal'
            TabOrder = 2
            object lbl_naf_codfiscal: TLabel
              Left = 20
              Top = 32
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
              Enabled = False
            end
            object lkp_naf_codfiscal: TDBLookupComboBox
              Left = 72
              Top = 29
              Width = 340
              Height = 21
              Enabled = False
              KeyField = 'NAF_CODFISCAL'
              ListField = 'NAF_DESCRICAO'
              ListSource = DM_Geral.dtsnaf_codfiscal
              TabOrder = 0
            end
            object chk_naf_codfiscal: TCheckBox
              Left = 417
              Top = 30
              Width = 97
              Height = 17
              Caption = 'Todos'
              Checked = True
              State = cbChecked
              TabOrder = 1
              OnClick = chk_naf_codfiscalClick
            end
          end
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Levantamento Di'#225'rio'
      ImageIndex = 9
      object GroupBox13: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 79
        Align = alTop
        Caption = 'Departamento'
        TabOrder = 0
        object lbl_departamento10: TLabel
          Left = 70
          Top = 35
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_DeptoLevDiario: TSpeedButton
          Left = 520
          Top = 31
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_DeptoLevDiarioClick
        end
        object lkp_departamento10: TDBLookupComboBox
          Left = 105
          Top = 31
          Width = 350
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_departamento10: TCheckBox
          Left = 463
          Top = 31
          Width = 48
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_departamento10Click
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Movimenta'#231#227'o'
      ImageIndex = 10
      object SpeedButton7: TSpeedButton
        Left = 282
        Top = 264
        Width = 31
        Height = 30
        Hint = 'Gerar Produtos em Excel'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
          33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
          29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
          1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
          5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
          47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
          37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
          66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
          60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
          59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
          E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
          D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
          E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
          DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
          E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
          DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
          D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
          B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
          27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
          2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
          15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
          27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
          0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
          3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
          1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
          D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
          7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
          A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
          D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
          75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
          6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
          D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
          4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
          5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
          DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
          DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
          5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
          DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
          5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
          5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
          DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
          9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
          5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
          DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
          5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
          6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
          E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
          CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
          7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
          E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
          A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
          75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
          E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
          92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
          64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
          E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
          69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
          CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
          E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
          FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
          FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
          FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
          F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
          E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
          95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
          86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
          7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
          C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
          9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
          76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
          000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
          7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
          6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
          5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
      object GroupBox15: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 78
        Align = alTop
        Caption = 'Departamento'
        TabOrder = 0
        object lbl_dep11: TLabel
          Left = 70
          Top = 35
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_depMovimentacao: TSpeedButton
          Left = 522
          Top = 30
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_depMovimentacaoClick
        end
        object lkp_dep11: TDBLookupComboBox
          Left = 105
          Top = 31
          Width = 350
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_mov11: TCheckBox
          Left = 463
          Top = 31
          Width = 48
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_mov11Click
        end
      end
      object gp_sec3: TGroupBox
        Left = 0
        Top = 78
        Width = 775
        Height = 74
        Align = alTop
        Caption = 'Se'#231#227'o'
        TabOrder = 1
        object Label21: TLabel
          Left = 65
          Top = 29
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 99
          Top = 26
          Width = 360
          Height = 21
          Enabled = False
          KeyField = 'SEC_ID'
          ListField = 'SEC_DESCRICAO'
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
        object CheckBox4: TCheckBox
          Left = 466
          Top = 27
          Width = 97
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox4Click
        end
      end
      object GroupBox35: TGroupBox
        Left = 0
        Top = 152
        Width = 775
        Height = 73
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 307
          Top = 33
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label22: TLabel
          Left = 105
          Top = 32
          Width = 100
          Height = 13
          Caption = 'Per'#237'odo de Pesquisa:'
        end
        object dt_final: TDateTimePicker
          Left = 331
          Top = 29
          Width = 80
          Height = 21
          Date = 38244.000000000000000000
          Time = 38244.000000000000000000
          TabOrder = 0
        end
        object dt_inicial: TDateTimePicker
          Left = 211
          Top = 29
          Width = 80
          Height = 21
          Date = 38244.000000000000000000
          Time = 38244.000000000000000000
          TabOrder = 1
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Por Fornecedor'
      ImageIndex = 12
      object btn_FornecedorXLS: TSpeedButton
        Left = 302
        Top = 252
        Width = 31
        Height = 30
        Hint = 'Gerar Produtos em Excel'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
          33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
          29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
          1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
          5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
          47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
          37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
          66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
          60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
          59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
          E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
          D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
          E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
          DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
          E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
          DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
          D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
          B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
          27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
          2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
          15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
          27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
          0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
          3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
          1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
          D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
          7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
          A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
          D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
          75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
          6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
          D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
          4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
          5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
          DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
          DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
          5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
          DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
          5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
          5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
          DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
          9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
          5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
          DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
          5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
          6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
          E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
          CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
          7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
          E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
          A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
          75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
          E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
          92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
          64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
          E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
          69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
          CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
          E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
          FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
          FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
          FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
          F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
          E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
          95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
          86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
          7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
          C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
          9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
          76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
          000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
          7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
          6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
          5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = btn_FornecedorXLSClick
      end
      object chk_contagem2: TCheckBox
        Left = 73
        Top = 121
        Width = 137
        Height = 17
        Caption = 'Contagem de Estoque'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object chk_estzero: TCheckBox
        Left = 73
        Top = 147
        Width = 225
        Height = 17
        Caption = 'N'#227'o imprimir produto com estoque zerado'
        TabOrder = 1
      end
      object chk_trac: TCheckBox
        Left = 73
        Top = 173
        Width = 225
        Height = 17
        Caption = 'N'#227'o imprimir Linha Tracejada'
        TabOrder = 2
      end
      object rg_FornecedorPreco: TRadioGroup
        Left = 317
        Top = 116
        Width = 252
        Height = 79
        Caption = 'Valor que ser'#225' visualizado'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Custo / Total'
          'Vista / Prazo')
        TabOrder = 3
      end
      object GroupBox44: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 81
        Align = alTop
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object lbl_fornc: TLabel
          Left = 55
          Top = 37
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_forn: TSpeedButton
          Left = 492
          Top = 32
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_fornClick
        end
        object lkp_fornc: TDBLookupComboBox
          Left = 94
          Top = 33
          Width = 334
          Height = 21
          Enabled = False
          KeyField = 'for_id'
          ListField = 'for_nome'
          ListSource = DM_Geral.dtsCadFornec
          TabOrder = 0
        end
        object chk_fornc: TCheckBox
          Left = 434
          Top = 36
          Width = 52
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_forncClick
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Ativo / Inat. / B. Cons.'
      ImageIndex = 13
      object rg_tipo_ativoinativo: TRadioGroup
        Left = 0
        Top = 0
        Width = 775
        Height = 42
        Align = alTop
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo'
          'Bens de Consumo')
        TabOrder = 0
      end
      object rg_orden_ativoinativo: TRadioGroup
        Left = 0
        Top = 42
        Width = 775
        Height = 54
        Align = alTop
        Caption = 'Por Ordem'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Alfab'#233'tica'
          'Refer'#234'ncia'
          'Cod. EAN')
        TabOrder = 1
      end
      object GroupBox20: TGroupBox
        Left = 0
        Top = 96
        Width = 775
        Height = 76
        Align = alTop
        Caption = 'Produto'
        TabOrder = 2
        object Label5: TLabel
          Left = 50
          Top = 36
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_ProdAitvo: TSpeedButton
          Left = 486
          Top = 32
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_ProdAitvoClick
        end
        object lkp_produto: TDBLookupComboBox
          Left = 84
          Top = 32
          Width = 340
          Height = 21
          Enabled = False
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object chk_ativo_inativo: TCheckBox
          Left = 429
          Top = 34
          Width = 57
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_ativo_inativoClick
        end
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'Altera'#231#227'o de Pre'#231'o'
      ImageIndex = 14
      object GroupBox22: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 60
        Align = alTop
        Caption = 'Departamento'
        TabOrder = 0
        object lbl_DepAltPreco: TLabel
          Left = 111
          Top = 26
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_DepAltPreco: TSpeedButton
          Left = 543
          Top = 22
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_DepAltPrecoClick
        end
        object lkp_DepAltPreco: TDBLookupComboBox
          Left = 146
          Top = 22
          Width = 330
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_DepAltPreco: TCheckBox
          Left = 482
          Top = 22
          Width = 55
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_DepAltPrecoClick
        end
      end
      object GroupBox21: TGroupBox
        Left = 0
        Top = 60
        Width = 775
        Height = 60
        Align = alTop
        Caption = 'Per'#237'odo'
        TabOrder = 1
        object Label7: TLabel
          Left = 332
          Top = 29
          Width = 6
          Height = 13
          Caption = #224
        end
        object Label24: TLabel
          Left = 97
          Top = 27
          Width = 136
          Height = 13
          Caption = 'Data da Altera'#231#227'o de pre'#231'o:'
        end
        object dt_ini: TDateTimePicker
          Left = 239
          Top = 23
          Width = 83
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 0
        end
        object dt_fim: TDateTimePicker
          Left = 351
          Top = 23
          Width = 83
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 1
        end
      end
      object rg_RefEan: TRadioGroup
        Left = 0
        Top = 120
        Width = 775
        Height = 60
        Align = alTop
        Caption = 'Tipo'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Refer'#234'ncia'
          'Cod. EAN')
        TabOrder = 2
      end
      object GroupBox45: TGroupBox
        Left = 0
        Top = 180
        Width = 775
        Height = 60
        Align = alTop
        TabOrder = 3
        object chk_Custo: TCheckBox
          Left = 19
          Top = 22
          Width = 93
          Height = 17
          Caption = 'Pre'#231'o de Custo'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object chk_CustoReal: TCheckBox
          Left = 136
          Top = 22
          Width = 119
          Height = 17
          Caption = 'Pre'#231'o de Custo Real'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object chk_Margem: TCheckBox
          Left = 276
          Top = 22
          Width = 61
          Height = 17
          Caption = 'Margem'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object chk_PrVista: TCheckBox
          Left = 359
          Top = 22
          Width = 84
          Height = 17
          Caption = 'Pre'#231'o '#224' Vista'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object chk_PrPrazo: TCheckBox
          Left = 464
          Top = 22
          Width = 84
          Height = 17
          Caption = 'Pre'#231'o '#224' Prazo'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object chk_AliqValor: TCheckBox
          Left = 572
          Top = 22
          Width = 57
          Height = 17
          Caption = 'Al'#237'quota'
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
      end
    end
    object TabSheet21: TTabSheet
      Caption = 'Gerar Estoque por Data'
      ImageIndex = 16
      object GroupBox26: TGroupBox
        Left = 0
        Top = 120
        Width = 775
        Height = 363
        Align = alTop
        TabOrder = 0
        object btn_EstoquePorDataXLS: TSpeedButton
          Left = 350
          Top = 153
          Width = 31
          Height = 30
          Hint = 'Gerar Estoque por Data em Excel'
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
            33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
            29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
            1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
            0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
            5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
            47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
            37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
            0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
            66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
            60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
            59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
            000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
            E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
            D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
            D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
            000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
            E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
            DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
            D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
            000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
            E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
            DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
            D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
            00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
            E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
            DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
            D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
            00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
            E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
            B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
            27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
            00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
            2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
            15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
            27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
            0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
            3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
            1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
            D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
            0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
            7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
            A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
            D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
            0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
            75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
            6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
            D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
            000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
            4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
            5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
            DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
            000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
            DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
            5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
            DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
            00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
            F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
            5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
            DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
            00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
            F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
            5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
            DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
            00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
            9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
            5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
            DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
            000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
            5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
            6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
            E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
            000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
            CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
            7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
            E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
            00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
            A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
            75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
            E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
            00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
            92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
            64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
            E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
            00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
            69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
            CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
            E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
            000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
            FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
            F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
            E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
            000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
            FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
            F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
            E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
            000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
            FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
            F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
            E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
            000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
            95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
            86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
            7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
            000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
            C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
            9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
            76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
            000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
            7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
            6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
            5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_EstoquePorDataXLSClick
        end
        object rg_GeraEstData: TRadioGroup
          Left = 212
          Top = 15
          Width = 150
          Height = 101
          Caption = 'Considerar o estoque no'
          ItemIndex = 0
          Items.Strings = (
            'Inicio do DIA'
            'Final do DIA')
          TabOrder = 0
        end
        object groupAtivo: TRadioGroup
          Left = 368
          Top = 15
          Width = 150
          Height = 101
          Caption = 'Considerar o produto como'
          ItemIndex = 0
          Items.Strings = (
            'Ativo'
            'Inativo'
            'Bens de Consumo'
            'Todos')
          TabOrder = 1
        end
      end
      object GroupBox43: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 60
        Align = alTop
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object lbl_fornecedor: TLabel
          Left = 28
          Top = 27
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_fornecedor: TSpeedButton
          Left = 458
          Top = 23
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_fornecedorClick
        end
        object lkp_fornecedor: TDBLookupComboBox
          Left = 65
          Top = 23
          Width = 334
          Height = 21
          Enabled = False
          KeyField = 'for_id'
          ListField = 'for_nome'
          ListSource = DM_Geral.dtsCadFornec
          TabOrder = 0
        end
        object chk_fornecedor: TCheckBox
          Left = 402
          Top = 23
          Width = 52
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_fornecedorClick
        end
      end
      object groupDataParaEstoque: TGroupBox
        Left = 0
        Top = 60
        Width = 775
        Height = 60
        Align = alTop
        Caption = 'Informe a data Desejada Para o Estoque'
        TabOrder = 2
        object Dt_GeraEstData: TDateTimePicker
          Left = 65
          Top = 24
          Width = 96
          Height = 21
          Date = 38244.000000000000000000
          Time = 38244.000000000000000000
          TabOrder = 0
        end
      end
      object Pnl_aguarde_estoque_data: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 515
        TabOrder = 3
        Visible = False
        DesignSize = (
          772
          515)
        object Label1: TLabel
          Left = 267
          Top = 222
          Width = 130
          Height = 29
          Anchors = []
          Caption = 'Aguarde ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 251
          ExplicitTop = 208
        end
        object Label29: TLabel
          Left = 271
          Top = 259
          Width = 253
          Height = 19
          Anchors = []
          Caption = 'Gerando Relat'#243'rio de estoques'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 251
          ExplicitTop = 243
        end
      end
    end
    object TabSheet22: TTabSheet
      Caption = 'Por CST'
      ImageIndex = 17
      object GroupBox25: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 81
        Align = alTop
        Caption = 'Departamento'
        TabOrder = 0
        object lbl_DeptoCST: TLabel
          Left = 63
          Top = 33
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object spd_DeptoCST: TSpeedButton
          Left = 462
          Top = 29
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_DeptoCSTClick
        end
        object lkp_DeptoCST: TDBLookupComboBox
          Left = 98
          Top = 29
          Width = 294
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_DeptoCST: TCheckBox
          Left = 398
          Top = 29
          Width = 52
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_DeptoCSTClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 81
        Width = 775
        Height = 82
        Align = alTop
        Caption = 'CST'
        TabOrder = 1
        object lbl_cst: TLabel
          Left = 70
          Top = 41
          Width = 23
          Height = 13
          Caption = 'CST:'
          Enabled = False
        end
        object lkp_cst: TDBLookupComboBox
          Left = 96
          Top = 37
          Width = 295
          Height = 21
          Enabled = False
          KeyField = 'CST_ID'
          ListField = 'CST_ID;CST_DESCRICAO'
          ListSource = DM_Geral.dtsCadCst
          TabOrder = 0
        end
        object chk_todoscst: TCheckBox
          Left = 396
          Top = 39
          Width = 97
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_todoscstClick
        end
      end
    end
    object TabSheet23: TTabSheet
      Caption = 'Promo'#231#227'o'
      ImageIndex = 18
      object grpPromoProduto: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 54
        Align = alTop
        TabOrder = 0
        object lbl_prod: TLabel
          Left = 145
          Top = 19
          Width = 42
          Height = 13
          Caption = 'Produto:'
          Enabled = False
        end
        object spd_prod: TSpeedButton
          Left = 573
          Top = 16
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_prodClick
        end
        object lkp_prod: TDBLookupComboBox
          Left = 191
          Top = 16
          Width = 323
          Height = 21
          Enabled = False
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object chk_prod: TCheckBox
          Left = 519
          Top = 16
          Width = 48
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_prodClick
        end
      end
      object grpPromoPeriodo: TGroupBox
        Left = 0
        Top = 108
        Width = 775
        Height = 53
        Align = alTop
        TabOrder = 2
        DesignSize = (
          775
          53)
        object Label12: TLabel
          Left = 414
          Top = 19
          Width = 6
          Height = 13
          Anchors = []
          Caption = 'a'
          ExplicitLeft = 393
        end
        object Label11: TLabel
          Left = 255
          Top = 19
          Width = 40
          Height = 13
          Anchors = []
          Caption = 'Per'#237'odo:'
          ExplicitLeft = 241
        end
        object dt_termino: TDateTimePicker
          Left = 439
          Top = 15
          Width = 80
          Height = 21
          Anchors = []
          Date = 38244.000000000000000000
          Time = 38244.000000000000000000
          TabOrder = 1
        end
        object dt_comeco: TDateTimePicker
          Left = 312
          Top = 15
          Width = 80
          Height = 21
          Anchors = []
          Date = 38244.000000000000000000
          Time = 38244.000000000000000000
          TabOrder = 0
        end
      end
      object grpPromoFabricante: TGroupBox
        Left = 0
        Top = 54
        Width = 775
        Height = 54
        Align = alTop
        TabOrder = 1
        object lblPromoFabricante: TLabel
          Left = 176
          Top = 19
          Width = 55
          Height = 13
          Caption = 'Fabricante:'
        end
        object lkpPromoFabricante: TDBLookupComboBox
          Left = 235
          Top = 16
          Width = 271
          Height = 21
          KeyField = 'MRC_ID'
          ListField = 'MRC_DESCRICAO'
          ListSource = DM_Geral.dsMarca
          TabOrder = 0
        end
        object chkPromoFabricante: TCheckBox
          Left = 512
          Top = 16
          Width = 48
          Height = 21
          Caption = 'Todos'
          TabOrder = 1
          OnClick = chkPromoFabricanteClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Data '#218'ltima Venda'
      ImageIndex = 14
      DesignSize = (
        775
        517)
      object GroupBox7: TGroupBox
        Left = 0
        Top = 153
        Width = 775
        Height = 80
        Align = alTop
        Caption = 'Data '#218'ltima Venda'
        TabOrder = 0
        object Label8: TLabel
          Left = 323
          Top = 39
          Width = 6
          Height = 13
          Caption = #224
        end
        object dt_inic: TDateTimePicker
          Left = 228
          Top = 36
          Width = 83
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 0
        end
        object dt_fina: TDateTimePicker
          Left = 340
          Top = 36
          Width = 83
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 1
        end
      end
      object rg_ordenar: TRadioGroup
        Left = 0
        Top = 81
        Width = 775
        Height = 72
        Align = alTop
        Caption = 'Ordenar por'
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Produto'
          'Data '#218'ltima Venda')
        TabOrder = 1
      end
      object chk_ProdZerado: TCheckBox
        Left = 240
        Top = 335
        Width = 305
        Height = 17
        Anchors = []
        Caption = 'N'#227'o Imprimir produto com estoque zerado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object GroupBox17: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 81
        Align = alTop
        Caption = 'Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object lbl_produt: TLabel
          Left = 53
          Top = 33
          Width = 51
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Enabled = False
        end
        object spd_product: TSpeedButton
          Left = 536
          Top = 30
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_productClick
        end
        object lkp_produt: TDBLookupComboBox
          Left = 109
          Top = 30
          Width = 364
          Height = 21
          Enabled = False
          KeyField = 'pro_id'
          ListField = 'pro_descricao'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object chk_produt: TCheckBox
          Left = 477
          Top = 30
          Width = 53
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_produtClick
        end
      end
    end
    object tabExtrato: TTabSheet
      Caption = 'Extrato'
      object GroupBox46: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 63
        Align = alTop
        Caption = 'Departamento'
        TabOrder = 0
        object lbl_DepartamentoExtrato: TLabel
          Left = 70
          Top = 27
          Width = 31
          Height = 13
          Caption = 'Nome:'
          Enabled = False
        end
        object btn_LocDepExtrato: TSpeedButton
          Left = 459
          Top = 22
          Width = 24
          Height = 23
          Enabled = False
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_LocDepExtratoClick
        end
        object lkp_DepartamentoExtrato: TDBLookupComboBox
          Left = 105
          Top = 23
          Width = 350
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_DepExtrato: TCheckBox
          Left = 492
          Top = 23
          Width = 48
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_DepExtratoClick
        end
      end
      object GroupBox23: TGroupBox
        Left = 0
        Top = 130
        Width = 775
        Height = 59
        Align = alTop
        Caption = 'Per'#237'odo:'
        TabOrder = 1
        object Label4: TLabel
          Left = 366
          Top = 27
          Width = 6
          Height = 13
          Caption = #224
        end
        object dt_extrato_ini: TDateTimePicker
          Left = 254
          Top = 22
          Width = 89
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 0
        end
        object dt_extrato_fim: TDateTimePicker
          Left = 394
          Top = 22
          Width = 87
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 1
        end
      end
      object GroupBox16: TGroupBox
        Left = 0
        Top = 63
        Width = 775
        Height = 67
        Align = alTop
        Caption = 'Produto'
        TabOrder = 2
        object lbl_ProdutoExtrato: TLabel
          Left = 70
          Top = 28
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object btn_LocProdExtrato: TSpeedButton
          Left = 459
          Top = 24
          Width = 24
          Height = 23
          Hint = '(F5) Consulta Produto'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          OnClick = btn_LocProdExtratoClick
        end
        object lkp_ProdutoExtrato: TDBLookupComboBox
          Left = 105
          Top = 25
          Width = 350
          Height = 21
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
      end
      object rg_extratoAcum: TRadioGroup
        Left = 0
        Top = 230
        Width = 775
        Height = 54
        Align = alTop
        Columns = 2
        ItemIndex = 1
        Items.Strings = (
          'Acumulado'
          'Discriminado')
        TabOrder = 3
        OnClick = rg_extratoAcumClick
      end
      object pnl_Extrado_Inferior: TPanel
        Left = 0
        Top = 189
        Width = 775
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 4
        object chk_Extrato_SoEntradas: TCheckBox
          Left = 82
          Top = 9
          Width = 107
          Height = 21
          Caption = 'Somente Entradas'
          TabOrder = 0
          OnClick = chk_Extrato_SoEntradasClick
        end
        object chk_AgrupaExtPorTipo: TCheckBox
          Left = 250
          Top = 9
          Width = 181
          Height = 21
          Caption = 'Agrupado por Tipo de Movimento'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object chkMovSaldo: TCheckBox
          Left = 485
          Top = 9
          Width = 140
          Height = 21
          Caption = 'Movimenta'#231#245'es com Saldo'
          TabOrder = 2
          OnClick = chkMovSaldoClick
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Media / Movimenta'#231#227'o'
      ImageIndex = 15
      object gp_sec: TGroupBox
        Left = 0
        Top = 211
        Width = 775
        Height = 60
        Align = alTop
        TabOrder = 1
        object lbl_media_secao: TLabel
          Left = 65
          Top = 23
          Width = 33
          Height = 13
          Caption = 'Se'#231#227'o:'
          Enabled = False
        end
        object lkp_media_secao: TDBLookupComboBox
          Left = 104
          Top = 20
          Width = 336
          Height = 21
          Enabled = False
          KeyField = 'SEC_ID'
          ListField = 'SEC_DESCRICAO'
          ListSource = DM_Geral.dtsCadSecao
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
        end
        object chk_media_secao: TCheckBox
          Left = 446
          Top = 22
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_media_secaoClick
        end
        object chk_agrupado_secao_media: TCheckBox
          Left = 541
          Top = 22
          Width = 133
          Height = 17
          Caption = 'N'#227'o agrupar por Se'#231#227'o'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
      object gp_dep: TGroupBox
        Left = 0
        Top = 91
        Width = 775
        Height = 60
        Align = alTop
        TabOrder = 0
        object lbl_media_departamento: TLabel
          Left = 25
          Top = 23
          Width = 73
          Height = 13
          Caption = 'Departamento:'
          Enabled = False
        end
        object spd_media_departamento: TSpeedButton
          Left = 503
          Top = 19
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_media_departamentoClick
        end
        object lkp_media_departamento: TDBLookupComboBox
          Left = 104
          Top = 19
          Width = 336
          Height = 21
          Enabled = False
          KeyField = 'DEP_ID'
          ListField = 'DEP_DESCRICAO'
          ListSource = DM_Geral.DtsCadDepart
          TabOrder = 0
        end
        object chk_media_departamento: TCheckBox
          Left = 446
          Top = 19
          Width = 53
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_media_departamentoClick
        end
        object chk_agrupado_depto_media: TCheckBox
          Left = 541
          Top = 20
          Width = 185
          Height = 20
          Caption = 'N'#227'o agrupar por Departamento'
          TabOrder = 2
        end
      end
      object gp_mes: TGroupBox
        Left = 0
        Top = 271
        Width = 775
        Height = 246
        Align = alClient
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object Label13: TLabel
          Left = 246
          Top = 65
          Width = 144
          Height = 13
          Caption = 'C'#225'lculo de m'#233'dia nos ultimo(s)'
        end
        object lbl_mediaCalculo: TLabel
          Left = 430
          Top = 65
          Width = 30
          Height = 13
          Caption = 'meses'
        end
        object lbl_mediaSugestao: TLabel
          Left = 430
          Top = 94
          Width = 30
          Height = 13
          Caption = 'meses'
        end
        object Label17: TLabel
          Left = 266
          Top = 94
          Width = 123
          Height = 13
          Caption = 'Sugest'#227'o de compra para'
        end
        object Label20: TLabel
          Left = 163
          Top = 9
          Width = 410
          Height = 42
          AutoSize = False
          Caption = 
            'O c'#225'lculo da m'#233'dia, tem como base todas as sa'#237'das na movimenta'#231#227 +
            'o de estoque,'#13'vendas no or'#231'amento de vendas, sa'#237'das na nota fisc' +
            'al e vendas no cupom fiscal,'#13'validando se o parametro esta para ' +
            'baixar estoque em cada caso.'
          ParentShowHint = False
          ShowHint = True
          Transparent = False
        end
        object edt_mediaCalculo: TEdit
          Left = 393
          Top = 62
          Width = 30
          Height = 21
          Hint = 
            'Quantidade de meses/dias para que seje calculado a media de vend' +
            'a de cada produto.'
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 0
          OnKeyPress = edt_mediaCalculoKeyPress
        end
        object edt_mediaSugestao: TEdit
          Left = 393
          Top = 91
          Width = 30
          Height = 21
          Hint = 
            'Quantidade de meses/dias que deseja fazer uma previs'#227'o de compra' +
            '.'
          CharCase = ecUpperCase
          MaxLength = 2
          TabOrder = 1
          OnKeyPress = edt_mediaSugestaoKeyPress
        end
        object chk_SugestaoZerada_Media: TCheckBox
          Left = 163
          Top = 147
          Width = 285
          Height = 16
          Caption = 'N'#227'o imprimir produtos com sugest'#227'o de compra zerada'
          TabOrder = 3
        end
        object btn_excel: TBitBtn
          Left = 526
          Top = 91
          Width = 29
          Height = 30
          Hint = 'Gerar Arquivo em Excel'
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
            33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
            29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
            1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
            0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
            5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
            47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
            37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
            0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
            66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
            60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
            59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
            000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
            E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
            D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
            D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
            000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
            E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
            DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
            D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
            000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
            E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
            DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
            D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
            00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
            E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
            DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
            D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
            00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
            E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
            B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
            27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
            00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
            2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
            15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
            27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
            0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
            3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
            1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
            D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
            0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
            7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
            A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
            D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
            0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
            75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
            6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
            D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
            000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
            4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
            5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
            DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
            000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
            DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
            5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
            DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
            00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
            F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
            5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
            DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
            00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
            F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
            5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
            DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
            00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
            9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
            5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
            DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
            000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
            5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
            6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
            E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
            000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
            CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
            7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
            E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
            00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
            A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
            75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
            E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
            00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
            92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
            64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
            E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
            00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
            69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
            CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
            E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
            000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
            FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
            F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
            E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
            000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
            FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
            F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
            E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
            000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
            FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
            F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
            E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
            000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
            95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
            86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
            7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
            000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
            C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
            9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
            76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
            000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
            7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
            6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
            5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = btn_excelClick
        end
        object chk_ProdAtivos_Media: TCheckBox
          Left = 163
          Top = 130
          Width = 195
          Height = 16
          Caption = 'Pesquisar Somente Produtos ATIVOS'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
        object chk_ProdSemMovto_Media: TCheckBox
          Left = 163
          Top = 164
          Width = 196
          Height = 16
          Caption = 'Imprimir produtos sem movimenta'#231#227'o'
          TabOrder = 5
        end
        object chk_ImpCusto_Media: TCheckBox
          Left = 163
          Top = 181
          Width = 211
          Height = 16
          Caption = 'Imprimir "Custo" em vez de "Custo Real"'
          TabOrder = 6
        end
        object rg_mediaTipo: TRadioGroup
          Left = 56
          Top = 65
          Width = 147
          Height = 45
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'meses'
            'dias')
          TabOrder = 7
          OnClick = rg_mediaTipoClick
        end
      end
      object GroupBox41: TGroupBox
        Left = 0
        Top = 31
        Width = 775
        Height = 60
        Align = alTop
        TabOrder = 3
        object lbl_media_produto: TLabel
          Left = 56
          Top = 25
          Width = 42
          Height = 13
          Caption = 'Produto:'
          Enabled = False
        end
        object spd_media_produto: TSpeedButton
          Left = 503
          Top = 21
          Width = 19
          Height = 21
          Hint = '(F5) Consulta Produto'
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_media_produtoClick
        end
        object lkp_media_produto: TDBLookupComboBox
          Left = 104
          Top = 21
          Width = 336
          Height = 21
          Enabled = False
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object chk_media_produto: TCheckBox
          Left = 446
          Top = 22
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_media_produtoClick
        end
      end
      object gp_marcaFabricante: TGroupBox
        Left = 0
        Top = 151
        Width = 775
        Height = 60
        Align = alTop
        TabOrder = 4
        object lbl_media_marcaFabricante: TLabel
          Left = 10
          Top = 23
          Width = 88
          Height = 13
          Caption = 'Marca/Fabricante:'
          Enabled = False
        end
        object spd_media_marcaFabricante: TSpeedButton
          Left = 505
          Top = 19
          Width = 19
          Height = 21
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_media_marcaFabricanteClick
        end
        object lkp_media_marcaFabricante: TDBLookupComboBox
          Left = 104
          Top = 19
          Width = 336
          Height = 21
          Enabled = False
          KeyField = 'MRC_ID'
          ListField = 'MRC_DESCRICAO'
          ListSource = DM_Geral.dsMarca
          TabOrder = 0
        end
        object chk_media_marcaFabricante: TCheckBox
          Left = 446
          Top = 19
          Width = 53
          Height = 21
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_media_marcaFabricanteClick
        end
        object chkNaoAgrupaMarcaFabric: TCheckBox
          Left = 541
          Top = 20
          Width = 185
          Height = 20
          Caption = 'N'#227'o agrupar por Marca/Fabricante'
          TabOrder = 2
        end
      end
      object rgTipoRelMedMov: TRadioGroup
        Left = 0
        Top = 0
        Width = 775
        Height = 31
        Align = alTop
        Caption = 'Tipo do relat'#243'rio'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Retrato'
          'Paisagem')
        TabOrder = 6
        OnClick = rgTipoRelClick
      end
      object Panel3: TGroupBox
        Left = 3
        Top = 3
        Width = 774
        Height = 482
        Align = alCustom
        TabOrder = 5
        Visible = False
        DesignSize = (
          774
          482)
        object Label18: TLabel
          Left = 326
          Top = 180
          Width = 130
          Height = 29
          Anchors = []
          Caption = 'Aguarde ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 279
          ExplicitTop = 177
        end
        object Label19: TLabel
          Left = 201
          Top = 223
          Width = 365
          Height = 19
          Anchors = []
          Caption = 'Calculando a m'#233'dia de cada produto vendido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 155
          ExplicitTop = 218
        end
      end
    end
    object Pge_PisCofins: TTabSheet
      Caption = 'Pis/Cofins'
      ImageIndex = 14
      object SpeedButton5: TSpeedButton
        Left = 325
        Top = 397
        Width = 31
        Height = 30
        Hint = 'Gerar Produtos em Excel'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
          33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
          29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
          1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
          5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
          47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
          37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
          66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
          60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
          59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
          E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
          D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
          E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
          DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
          E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
          DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
          D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
          B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
          27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
          2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
          15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
          27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
          0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
          3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
          1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
          D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
          7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
          A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
          D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
          75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
          6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
          D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
          4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
          5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
          DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
          DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
          5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
          DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
          5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
          5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
          DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
          9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
          5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
          DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
          5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
          6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
          E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
          CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
          7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
          E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
          A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
          75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
          E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
          92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
          64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
          E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
          69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
          CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
          E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
          FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
          FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
          FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
          F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
          E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
          95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
          86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
          7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
          C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
          9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
          76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
          000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
          7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
          6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
          5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 53
        Width = 775
        Height = 84
        Align = alTop
        Caption = 'Produto'
        TabOrder = 0
        object lbl_ProdPisCofins: TLabel
          Left = 63
          Top = 38
          Width = 42
          Height = 13
          Caption = 'Produto:'
          Enabled = False
        end
        object SpeedButton4: TSpeedButton
          Left = 591
          Top = 33
          Width = 21
          Height = 21
          Hint = '(F5) Consulta Produto'
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton4Click
        end
        object dblkp_ProdPisCofins: TDBLookupComboBox
          Left = 111
          Top = 33
          Width = 410
          Height = 21
          Enabled = False
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object CheckBox5: TCheckBox
          Left = 527
          Top = 37
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox5Click
        end
      end
      object rg_Inativo_PisCofins: TRadioGroup
        Left = 0
        Top = 0
        Width = 775
        Height = 53
        Align = alTop
        Caption = 'Tipo'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo'
          'Bens de Consumo'
          'Todos')
        TabOrder = 1
      end
      object GroupBox28: TGroupBox
        Left = 0
        Top = 137
        Width = 775
        Height = 74
        Align = alTop
        Caption = 'Pis/Cofins'
        TabOrder = 2
        object lbl_CodTribPisCofinsEntrada: TLabel
          Left = 97
          Top = 34
          Width = 87
          Height = 13
          Caption = 'C'#243'd. ST. Entrada:'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl_CodTribPisCofinsSaida: TLabel
          Left = 342
          Top = 34
          Width = 75
          Height = 13
          Caption = 'C'#243'd. ST. Saida:'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dblk_CodTribPisCofinsEntrada: TDBLookupComboBox
          Left = 190
          Top = 30
          Width = 46
          Height = 21
          Color = 16056319
          DropDownWidth = 400
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'STPC_CODIGO'
          ListField = 'STPC_CODIGO;STPC_DESCRICAO'
          ListSource = DM_Geral.Ds_SitTribPisCofinsEntrada
          ParentFont = False
          TabOrder = 0
        end
        object chk_CodTribPisCofinsEntrada: TCheckBox
          Left = 242
          Top = 33
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_CodTribPisCofinsEntradaClick
        end
        object dblk_CodTribPisCofinsSaida: TDBLookupComboBox
          Left = 422
          Top = 30
          Width = 46
          Height = 21
          Color = 16056319
          DropDownWidth = 400
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'STPC_CODIGO'
          ListField = 'STPC_CODIGO;STPC_DESCRICAO'
          ListSource = DM_Geral.Ds_SitTribPisCofinsSaida
          ParentFont = False
          TabOrder = 2
        end
        object chk_CodTribPisCofinsSaida: TCheckBox
          Left = 474
          Top = 33
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 3
          OnClick = chk_CodTribPisCofinsSaidaClick
        end
      end
      object r: TGroupBox
        Left = 0
        Top = 286
        Width = 775
        Height = 75
        Align = alTop
        Caption = 'Natureza Receita'
        TabOrder = 3
        object lbl_NaturezaReceita: TLabel
          Left = 97
          Top = 36
          Width = 87
          Height = 13
          Caption = 'Natureza Receita:'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lkp_NatReceita: TDBLookupComboBox
          Left = 190
          Top = 32
          Width = 46
          Height = 21
          Color = 16056319
          DropDownWidth = 400
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'NAT_CODIGO'
          ListField = 'NAT_CODIGO'
          ListSource = DM_Geral.ds_NatReceita
          ParentFont = False
          TabOrder = 0
        end
        object chk_NatReceita: TCheckBox
          Left = 242
          Top = 35
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_NatReceitaClick
        end
        object chk_SemNatReceita: TCheckBox
          Left = 309
          Top = 35
          Width = 323
          Height = 17
          Caption = 'Somente os registros que n'#227'o possuem Natureza da Receita'
          TabOrder = 2
          OnClick = chk_SemNatReceitaClick
        end
      end
      object rg_NatCredito: TGroupBox
        Left = 0
        Top = 211
        Width = 775
        Height = 75
        Align = alTop
        Caption = 'Natureza Cr'#233'dito'
        TabOrder = 4
        object lbl_NatCredito: TLabel
          Left = 98
          Top = 36
          Width = 86
          Height = 13
          Caption = 'Natureza Cr'#233'dito:'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lkp_NatCredito: TDBLookupComboBox
          Left = 190
          Top = 32
          Width = 46
          Height = 21
          Color = 16056319
          DropDownWidth = 400
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'NAT_BC_CODIGO'
          ListField = 'NAT_BC_CODIGO'
          ListSource = DM_Geral.ds_NatCredito
          ParentFont = False
          TabOrder = 0
        end
        object chk_NatCredito: TCheckBox
          Left = 242
          Top = 35
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_NatCreditoClick
        end
        object chk_SemNatCredito: TCheckBox
          Left = 309
          Top = 35
          Width = 323
          Height = 17
          Caption = 'Somente os registros que n'#227'o possuem Natureza de Cr'#233'dito'
          TabOrder = 2
          OnClick = chk_SemNatCreditoClick
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Produtos N'#227'o Movimentados'
      ImageIndex = 15
      object grpProdSemMovMargem: TGroupBox
        Left = 0
        Top = 209
        Width = 775
        Height = 47
        Align = alTop
        TabOrder = 6
        object lblMargemProdSemMov: TLabel
          Left = 310
          Top = 15
          Width = 42
          Height = 13
          Caption = 'Margem:'
        end
        object btnProdSemMovMargemHelp: TSpeedButton
          Left = 403
          Top = 11
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000C9AEFFC9AEFF
            C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFE8D1C5E9D6CBC9AEFFC9AEFFC9AEFFC9AE
            FFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFD79978CF5C1AD9661FDE
            7127E37D31E88739E29656E1C9B8C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF
            C9AEFFC75117D25A18D86B2BDB702BE07A37E47F34EB9148F19B4DF8A54DE5B1
            7FC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC4470ECF591CD46426D76927E08C5CF5
            FFFFEFCEBDEA8A3BF09C51F5A758FFB157E5B17EC9AEFFC9AEFFC9AEFFCA724B
            CB4D10CF5C20D36326D66826DF8A59F4FFFFEBC8B5E88739EE984DF2A254F5A7
            57F8A44CE0C9B8C9AEFFC9AEFFC23C00CC541ACE5A1FD26125D6692AD96822DA
            661BE07222E68A43EB9148EE984DF09C51F19A4CE19657C9AEFFE2BCAAC8480D
            CA5118CD581ED15F23D36120E09973EFDFDCE9BFAAE27A2FE78A42E98F46EA91
            48EA9147E88639C9AEFFDBA086CF612CCC561FCB5319CF5B20D25F20D97844F7
            FFFFF3F5FCDD7028E2803AE4853FE58741E58740E47C31E8D6CBDB9E82CE5E2A
            D16936CF602ACD561CD05C20D15815E4AB90F6FEFFEEDAD3DA691FDF7B37E07E
            39E07E39DE7228E8D2C6E0B29DCE5B27D06533D16834D36A36D1632AD15F23CE
            4E08EAC4B3F6FEFFE6B094D96B25DB7432DB7331D9641EC9AEFFC9AEFFCC5824
            CF6433D06633D16732D16631D16128D36328D87540F8FDFFF3EDEFD5611DD971
            33D97133D16323C9AEFFC9AEFFCB6C41CE602DCF6534CD5822F3E1D9F2DDD4DB
            885FF1DBD3F8F8FBF4ECECD56526D8733AD76B2DD99F80C9AEFFC9AEFFECDAD3
            CB5723CE6230CF6230F9EDE9FFFFFFFFFFFFFDFFFFFEFFFFDD906AD4682FD56B
            33CC6128C9AEFFC9AEFFC9AEFFC9AEFFE1BDAECB5723CE5F2CCA521ADA8762E7
            B29BE4AB91D4703FD16128D2642CCA5922C9AEFFC9AEFFC9AEFFC9AEFFC9AEFF
            C9AEFFEDDBD3CB6C42CC5924CC5620CC561ECD571FCE5A22CB561FCE7D58C9AE
            FFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFFE0B29DDA
            9D82DAA086E1BAA7C9AEFFC9AEFFC9AEFFC9AEFFC9AEFFC9AEFF}
          OnClick = btnProdSemMovMargemHelpClick
        end
        object edtMargemProdSemMov: TMaskEdit
          Left = 358
          Top = 12
          Width = 40
          Height = 21
          TabOrder = 0
          Text = ''
          OnExit = edtMargemProdSemMovExit
          OnKeyPress = edtMargemProdSemMovKeyPress
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 84
        Align = alTop
        Caption = 'Produto'
        TabOrder = 0
        object lbl_ProdNaoMovto: TLabel
          Left = 63
          Top = 38
          Width = 42
          Height = 13
          Caption = 'Produto:'
          Enabled = False
        end
        object SpeedButton6: TSpeedButton
          Left = 586
          Top = 33
          Width = 20
          Height = 21
          Hint = '(F5) Consulta Produto'
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = SpeedButton6Click
        end
        object dblkp_ProdNaoMovto: TDBLookupComboBox
          Left = 111
          Top = 33
          Width = 410
          Height = 21
          Enabled = False
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object chk_ProdnaoMovto: TCheckBox
          Left = 527
          Top = 35
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_ProdnaoMovtoClick
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 144
        Width = 775
        Height = 65
        Align = alTop
        Caption = 'Per'#237'odo:'
        TabOrder = 1
        object Label30: TLabel
          Left = 365
          Top = 33
          Width = 6
          Height = 13
          Caption = #224
        end
        object dt_ini_ProdNaoMovto: TDateTimePicker
          Left = 252
          Top = 28
          Width = 89
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 0
        end
        object dt_fim_ProdNaoMovto: TDateTimePicker
          Left = 396
          Top = 28
          Width = 87
          Height = 21
          Date = 39044.000000000000000000
          Time = 39044.000000000000000000
          TabOrder = 1
        end
      end
      object rg_tipo_ProdNMovto: TRadioGroup
        Left = 0
        Top = 84
        Width = 775
        Height = 60
        Align = alTop
        Caption = 'Tipo'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo'
          'Bens de Consumo'
          'Todos')
        TabOrder = 2
      end
      object chk_ProdnaoMovto_EstoqueZerado: TCheckBox
        Left = 231
        Top = 304
        Width = 274
        Height = 17
        Caption = 'N'#227'o imprimir produto com estoque zerado ou negativo'
        TabOrder = 3
        OnClick = chk_zeradoClick
      end
      object btn_GeraExcel_prodNaoMovimentados: TBitBtn
        Left = 353
        Top = 371
        Width = 31
        Height = 32
        Hint = 'Gerar Relat'#243'rio em Excel'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000417B57FF214F39FF214F39FF214F39FF214F39FF214F39FF214F39FF1A45
          33FF1A4533FF1A4533FF1A4533FF1A4533FF1A4533FF133529FF133529FF1335
          29FF133529FF133529FF133529FF0D281FFF0D281FFF0D281FFF0D281FFF0D28
          1FFF0A1F19FF0A1F19FF0A1F19FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF45A35FFF45A35FFF45A35FFF45A35FFF3F9E5AFF3F9E
          5AFF3F9E5AFF399755FF399755FF399755FF358C4FFF358C4FFF2D8747FF2D87
          47FF2D8747FF227F40FF227F40FF227F40FF1A7A3CFF1A7A3CFF127437FF1274
          37FF127437FF0F6C33FF0A6D30FF0A1F19FF0000000000000000000000000000
          0000417B57FF5CAA65FF6C977EFF517666FF517666FF517666FF517666FF5176
          66FF517666FF517666FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B60FF4B6B
          60FF4B6B60FF435F59FF435F59FF435F59FF435F59FF435F59FF435F59FF435F
          59FF435F59FF435F59FF0F6C33FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFE8F1E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EE
          E3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9DAFFD9E8
          D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0A1F19FF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0E6FFE4EF
          E4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEADBFFDAE9
          DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4D2FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          000047815DFF63B276FF6C977EFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1E8FFE6F0
          E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEADBFFDCEA
          DBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5D5FFD2E4
          D2FFD2E4D2FF435F59FF127437FF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFFDAE9DAFFD9E8D9FFD8E7D8FFD8E7D8FFD5E5D5FFD5E5D5FFD5E5
          D5FFD2E4D2FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF73BA83FF6C977EFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FFE6F0E6FFE4EFE4FFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFAAD6
          B2FF619964FF26422DFF213B27FF213B27FF213B27FF213B27FF213B27FF213B
          27FFD5E5D5FF435F59FF1A7A3CFF0D281FFF0000000000000000000000000000
          00004D8762FF7CC185FF76A086FFEFF6EFFF4B964DFF26422DFF26422DFF2642
          2DFF26422DFF26422DFF26422DFF26422DFF26422DFF26422DFF1A4D2AFF0F60
          15FF328735FF328735FF127437FF1C6C3AFF2C6642FF2C6642FF3A5F51FF213B
          27FFD5E5D5FF435F59FF227F40FF0D281FFF0000000000000000000000000000
          0000558E67FF81BC90FF76A086FFF1F7F1FF4B964DFF127437FF127437FF1C6C
          3AFF1C6C3AFF2C6642FF2C6642FF3A5F51FF3A5F51FF3A5F51FF046904FF1D78
          1EFF88C792FF6DB675FF2D8747FF2D8747FF227F40FF227F40FF046904FFD8E7
          D8FFD5E5D5FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF88C792FF76A086FFF3F8F3FFDAE9DAFF4B964DFF6DB675FF73BB
          7CFF73BB7CFF6DB675FF68B06FFF5CAA65FF55A45AFF046904FF409347FF9DD0
          A7FF6DB675FF409347FF358C4FFF2D8747FF2D8747FF046904FF94C79CFFD8E7
          D8FFD8E7D8FF435F59FF227F40FF133529FF0000000000000000000000000000
          0000558E67FF94C79CFF76A086FFF3F8F3FFF3F8F3FFDAE9DAFF4B964DFF6DB6
          75FF73BB7CFF73BB7CFF64AC69FF55A45AFF046904FF409347FF9DD0A7FF68B0
          6FFF499B54FF499B54FF409347FF358C4FFF046904FF1A4D2AFFA8C2A8FFD9E8
          D9FFD8E7D8FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF94C79CFF76A086FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9DAFF4B96
          4DFF6DB675FF68B06FFF55A45AFF046904FF409347FF9DD0A7FF6DB675FF55A4
          5AFF55A45AFF499B54FF499B54FF046904FF2D8747FF227F40FF0F6015FFDAE9
          DAFFD9E8D9FF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          000058966BFF9DD0A7FF81AA8DFFF6FAF5FFF5F9F5FFF3F8F3FFF3F8F3FFDAE9
          DAFF4B964DFF55A45AFF046904FF409347FFAAD6B2FF73BB7CFF55A45AFF55A4
          5AFF55A45AFF55A45AFF046904FF3A734CFF57825AFF558E67FF57825AFFDCEA
          DBFFDAE9DAFF4B6B60FF2D8747FF133529FF0000000000000000000000000000
          00005F9B72FF9DD0A7FF81AA8DFFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFDAE9DAFF1D781EFF409347FFAAD6B2FF7CC185FF5CAA65FF5CAA65FF55A4
          5AFF55A45AFF3A734CFFA8C2A8FFE2EEE3FFE0EEE0FFDFECDFFFDEEBDEFFDCEA
          DBFFDCEADBFF4B6B60FF358C4FFF133529FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FF94C79CFF4B964DFFBADEC0FF88C792FF64AC69FF64AC69FF5CAA65FF55A4
          5AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFECDFFFDEEB
          DEFFDCEADBFF4B6B60FF358C4FFF1A4533FF0000000000000000000000000000
          00005F9B72FFAAD6B2FF81AA8DFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FF94C7
          9CFF499B54FFBADEC0FF94C79CFF6DB675FF68B06FFF64AC69FF5CAA65FF5782
          5AFF579A5EFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EEE0FFDFEC
          DFFFDEEBDEFF4B6B60FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFAAD6B2FF81AA8DFFFAFDFAFFF9FBFAFFF8FAF8FF94C79CFF55A4
          5AFFC4E5CAFF94C79CFF73BB7CFF73BB7CFF6DB675FF64AC69FF57825AFF68B0
          6FFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EEE3FFE0EE
          E0FFDFECDFFF517666FF399755FF1A4533FF0000000000000000000000000000
          000066A077FFBADEC0FF81AA8DFFFAFDFAFFFAFDFAFF94C79CFF5CAA65FFC4E5
          CAFF88C792FF7CC185FF7CC185FF73BB7CFF68B06FFF57825AFF68B06FFF73BB
          7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EEE3FFE2EE
          E3FFE0EEE0FF517666FF399755FF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFBFEFBFF94C79CFF68B06FFFC4E5CAFF9DD0
          A7FF88C792FF7CC185FF7CC185FF73BB7CFF619964FFA8C2A8FF619964FF6DB6
          75FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFCDDACDFFE2EE
          E3FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFBADEC0FF8AB795FFFDFEFDFF6DB675FFC4E5CAFF9DD0A7FF88C7
          92FF88C792FF88C792FF73BA83FF619964FFD8E7D8FFF3F8F3FFCDDACDFF6199
          64FF6DB675FF73BB7CFF73BB7CFF6DB675FF55A45AFF57825AFF046904FFE4EF
          E4FFE2EEE3FF517666FF3F9E5AFF1A4533FF0000000000000000000000000000
          00006CA67CFFC4E5CAFF8AB795FFFEFFFEFF6DB675FF6DB675FF68B06FFF64AC
          69FF64AC69FF619964FF619964FFE3EBE3FFF5F9F5FFF3F8F3FFF3F8F3FFCDDA
          CDFF619964FF619964FF619964FF558E67FF57825AFF57825AFF57825AFFE6F0
          E6FFE4EFE4FF517666FF3F9E5AFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFEFFFEFFFDFEFDFFFBFEFBFFFAFD
          FAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8F3FFF3F8
          F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1E8FFE8F1
          E8FFE6F0E6FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFC4E5CAFF8AB795FFFFFFFFFFFFFFFFFFFEFFFEFFFDFEFDFFFBFE
          FBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9F5FFF3F8
          F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2E9FFE8F1
          E8FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000071AA81FFCCE9D2FF8AB795FFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFDFE
          FDFFFBFEFBFFFAFDFAFFFAFDFAFFF9FBFAFFF8FAF8FFF6FAF6FFF6FAF5FFF5F9
          F5FFF3F8F3FFF3F8F3FFF1F7F1FFEFF6EFFFEDF5EDFFEDF5EDFFEBF3EBFFEAF2
          E9FFE8F1E8FF517666FF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FF81AA8DFF8AB795FF8AB795FF8AB795FF8AB795FF8AB7
          95FF8AB795FF8AB795FF81AA8DFF81AA8DFF81AA8DFF81AA8DFF81AA8DFF76A0
          86FF76A086FF76A086FF76A086FF76A086FF76A086FF6C977EFF6C977EFF6C97
          7EFF6C977EFF6C977EFF45A35FFF214F39FF0000000000000000000000000000
          000076AF85FFCCE9D2FFCCE9D2FFCCE9D2FFC4E5CAFFC4E5CAFFC4E5CAFFBADE
          C0FFBADEC0FFBADEC0FFAAD6B2FFAAD6B2FFAAD6B2FF9DD0A7FF9DD0A7FF94C7
          9CFF94C79CFF88C792FF81BC90FF7CC185FF73BA83FF73BA83FF63B276FF63B2
          76FF63B276FF5CAA65FF5CAA65FF214F39FF0000000000000000000000000000
          000076AF85FF76AF85FF76AF85FF71AA81FF71AA81FF71AA81FF6CA67CFF6CA6
          7CFF6CA67CFF66A077FF66A077FF66A077FF5F9B72FF5F9B72FF5F9B72FF5896
          6BFF558E67FF558E67FF558E67FF4D8762FF4D8762FF4D8762FF47815DFF4781
          5DFF47815DFF417B57FF417B57FF214F39FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btn_GeraExcel_prodNaoMovimentadosClick
      end
      object pnl_aguarde_nao_movimentados: TGroupBox
        Left = -4
        Top = 3
        Width = 741
        Height = 480
        Align = alCustom
        TabOrder = 5
        Visible = False
        DesignSize = (
          741
          480)
        object Label10: TLabel
          Left = 306
          Top = 176
          Width = 130
          Height = 29
          Anchors = []
          Caption = 'Aguarde ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 275
          ExplicitTop = 174
        end
        object Label16: TLabel
          Left = 181
          Top = 217
          Width = 367
          Height = 19
          Anchors = []
          Caption = 'Consultando todas as saidas de cada produto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object tab_lote: TTabSheet
      Caption = 'Lote'
      ImageIndex = 16
      object GroupBox42: TGroupBox
        Left = 0
        Top = 0
        Width = 775
        Height = 84
        Align = alTop
        Caption = 'Produto'
        TabOrder = 0
        object lbl_lote_produto: TLabel
          Left = 63
          Top = 38
          Width = 42
          Height = 13
          Caption = 'Produto:'
          Enabled = False
        end
        object spd_lote_produto: TSpeedButton
          Left = 586
          Top = 33
          Width = 20
          Height = 21
          Hint = '(F5) Consulta Produto'
          Flat = True
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F0030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFB8B8B77D7D7DCCCC
            CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFBEBDBC64606565635F555555CDCDCDFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFA7B1CA5888E6767FA87A766D565657CDCDCDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFDDECFF
            66C5FF4B99F5787EA57C7870535353CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFD2EBFF68C5FF4A97
            F4767CA37B776E5F5F5FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFD1EBFF66C4FF4B97F6737DA673
            716DCECFCFA8AAAD8B8B8F87878A8C8E90D2D3D3FFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFD2EBFF6CC7FF6E98E8757374747272A0937F
            BCB598C6C5B0B1A18D5E5C578F8F90FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF1F9FFDDE4EB9B8984E8BD9EFFF6CBFFFFD4FFFFD3FFFF
            DBE0DBCD5E5F62949494F9F9F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF1E9E4F5C5A0FFEBBFFFF6CBFFFFD1FFFFEBFFFFFCFFFFFFD6CBC052
            5151E2E2E2FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE6C8BEFD
            E7B9FFE4B6FFF6C5FFFFD1FFFFEDFFFFFFFFFFF2F9F8CD767676DCDCDDFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFCEC9FFE3BAFFD59CFFEDC3
            FFFFD2FFFFD0FFFFD9FFFFD8FFFFCE9C907BD7D8DCFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFFFFE2C9C1FFEABAFFDEA8FFDFAEFFF4C4FFFED0FFFF
            CFFFFECFFEFDCBAA8C77D8DCDFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFEFFFFD3D0CAEEE1BBFFFCE5FFE8C4FFDEACFFE4B6FFEAC4FFF7CCE6C8A2B6
            AEABFBFCFCFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F2F5CE
            C2B2F7F3F1FFFFE5FFEDC0FFE5B4FFECBFF7DCB9BEA89BE7E7E9FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4BAB4B3D2CDB6
            F3E4B6F8E6B6DBCCAABBA297E5EAECFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F2F2D1D0D1D3CCC5D6CEC5DFDD
            DCEEF2F4FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
          ParentShowHint = False
          ShowHint = True
          Visible = False
          OnClick = spd_lote_produtoClick
        end
        object lkp_lote_produto: TDBLookupComboBox
          Left = 111
          Top = 33
          Width = 410
          Height = 21
          Enabled = False
          KeyField = 'PRO_ID'
          ListField = 'PRO_DESCRICAO'
          ListSource = DM_Geral.Dts_CadastroProduto
          TabOrder = 0
        end
        object chk_lote_produto: TCheckBox
          Left = 527
          Top = 35
          Width = 51
          Height = 17
          Caption = 'Todos'
          Checked = True
          State = cbChecked
          TabOrder = 1
          OnClick = chk_lote_produtoClick
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 563
    Width = 783
    Height = 37
    Align = alBottom
    TabOrder = 1
    object btn_imprimir: TBitBtn
      Left = 252
      Top = 6
      Width = 84
      Height = 25
      Caption = '&Gerar'
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
      ParentFont = False
      TabOrder = 0
      OnClick = btn_imprimirClick
    end
    object btn_fechar: TBitBtn
      Left = 421
      Top = 6
      Width = 84
      Height = 25
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000E3DFE0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE3DFE0FFFFFF52ADFF185294185A9C185A9C185A9C185AA518
        5AA5185A9C185A9C18529418529418528C184A844AADFFFFFFFFFFFFFF185AA5
        186BBD1873CE1873CE1873CE1873CE1873CE1873CE1873CE1873CE186BC6186B
        BD185AA5104A7BFFFFFFFFFFFF1863AD1873CE187BDE187BDE187BE71884E718
        8CF7188CF7188CF7188CF7187BDE186BC61863AD18528CFFFFFFFFFFFF186BC6
        187BDE1884EFFFFFFF84C6FF188CF7188CF7188CF7188CF784C6FFFFFFFF1873
        CE186BBD185294FFFFFFFFFFFF1873CE1884E7188CF7188CFFFFFFFF84C6FF18
        8CF7188CF784C6FFFFFFFF1884E71873D6186BC6185A9CFFFFFFFFFFFF187BDE
        188CF7188CFF188CF7188CF7FFFFFF84C6FF84C6FFFFFFFF188CF71884E71873
        D61873CE185AA5FFFFFFFFFFFF1884E7188CFF188CF7188CF7188CF7188CF7FF
        FFFF84C6FF188CF71884EF187BDE1873CE1873CE1863ADFFFFFFFFFFFF1884EF
        188CFF188CFF188CF7188CF784C6FFFFFFFFFFFFFF84C6FF1884E71873D61873
        CE1873CE1863ADFFFFFFFFFFFF188CFF2194FF2194FF188CFF84C6FFFFFFFF18
        84F71884EFFFFFFF84C6FF1873CE1873CE1873CE1863ADFFFFFFFFFFFF188CFF
        39A5FF39A5FF84C6FFFFFFFF188CFF188CFF1884EF1884E7FFFFFF84C6FF1873
        CE1873CE1863ADFFFFFFFFFFFF2194FF52ADFF4AADFFFFFFFF2194FF2194FF18
        94FF188CF71884EF1884E7FFFFFF1873CE1873CE1863ADFFFFFFFFFFFF39A5FF
        6BBDFF52ADFF39A5FF319CFF299CFF299CFF2194FF188CFF1884F71884EF187B
        DE1873CE1863ADFFFFFFFFFFFF4AADFF84C6FF6BBDFF52ADFF4AADFF39A5FF31
        9CFF299CFF2194FF1894FF188CF71884EF1873CE185A9CFFFFFFFFFFFFADDEFF
        4AADFF319CFF2194FF188CFF188CFF188CF7188CF71884EF1884E7187BDE1873
        CE186BBD63B5FFFFFFFFE3DFE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3DFE0}
      ParentFont = False
      TabOrder = 1
      OnClick = btn_fecharClick
    end
  end
end
