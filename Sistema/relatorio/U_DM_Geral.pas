unit U_DM_Geral;

interface

uses
  SysUtils, Classes, DB, ADODB, ppDB, ppComm, ppRelatv, ppDBPipe, Controls;

type
  TDM_Geral = class(TDataModule)
    pipemp: TppDBPipeline;
    dtsEmp: TDataSource;
    qryEmp: TADOQuery;
    qryEmpEMP_NOME: TStringField;
    qryEmpEMP_CGC: TStringField;
    qryEmpEMP_INSCRICAOESTADUAL: TStringField;
    qry_CadastroCliente: TADOQuery;
    Dts_CadastroCliente: TDataSource;
    qry_CadastroProduto: TADOQuery;
    qry_CadastroProdutoPRO_ID: TAutoIncField;
    qry_CadastroProdutoPRO_DESCRICAO: TStringField;
    Dts_CadastroProduto: TDataSource;
    qryEmpEMP_LICENCA: TStringField;
    qryCadServico: TADOQuery;
    qryCadServicoSERV_CODIGO: TAutoIncField;
    qryCadServicoSERV_DESCRICAO: TStringField;
    dtsCadServico: TDataSource;
    qryCadDepart: TADOQuery;
    qryCadDepartdep_id: TIntegerField;
    qryCadDepartdep_descricao: TStringField;
    DtsCadDepart: TDataSource;
    qryCadCfop: TADOQuery;
    qryCadCfopCFO_ID: TIntegerField;
    qryCadCfopCFO_DESCRICAO: TStringField;
    dtsCadCfop: TDataSource;
    dtsCadFornec: TDataSource;
    qryCadFornec: TADOQuery;
    qryCadFornecfor_id: TStringField;
    qryCadFornecfor_nome: TStringField;
    qryCadFornecfor_cgc: TStringField;
    qryCadFornecfor_inscricao: TStringField;
    qryCadComb: TADOQuery;
    qryCadCombCOM_CODIGO: TIntegerField;
    qryCadCombCOM_DESCRICAO: TStringField;
    qryCadCombTAN_CODIGO: TIntegerField;
    dtsCadComb: TDataSource;
    dtsCidade: TDataSource;
    qryCidade: TADOQuery;
    qryCidadecli_cidade: TStringField;
    dtsVendedor: TDataSource;
    qryVendedor: TADOQuery;
    qryVendedorvdd_id: TIntegerField;
    qryVendedorvdd_nome: TStringField;
    qryVendedorvdd_comissao: TBCDField;
    qryTransporta: TADOQuery;
    qryTransportatrp_id: TIntegerField;
    qryTransportatrp_nome: TStringField;
    dsTransporta: TDataSource;
    qry_params: TADOQuery;
    qry_paramsPAR_SAI_PARCELA: TStringField;
    qryCadSecao: TADOQuery;
    dtsCadSecao: TDataSource;
    qryCadSecaoSEC_ID: TAutoIncField;
    qryCadSecaoSEC_DESCRICAO: TStringField;
    qry_Usuario: TADOQuery;
    qry_Usuariousu_id: TAutoIncField;
    qry_Usuariousu_nome: TStringField;
    Dts_Usuario: TDataSource;
    qry_paramsPAR_ESTABELECIMENTO: TStringField;
    qry_paramsPAR_PRODUTO_SECAO: TStringField;
    qrynaf_codfiscal: TADOQuery;
    qrynaf_codfiscalNAF_CODFISCAL: TStringField;
    qrynaf_codfiscalNAF_DESCRICAO: TStringField;
    dtsnaf_codfiscal: TDataSource;
    dtsCadCst: TDataSource;
    qryCadCst: TADOQuery;
    qryCadCstCST_ID: TStringField;
    qryCadCstCST_DESCRICAO: TStringField;
    qry_SitTribPisCofinsSaida: TADOQuery;
    qry_SitTribPisCofinsSaidaSTPC_CODIGO: TStringField;
    qry_SitTribPisCofinsSaidaSTPC_DESCRICAO: TStringField;
    qry_SitTribPisCofinsEntrada: TADOQuery;
    qry_SitTribPisCofinsEntradaSTPC_CODIGO: TStringField;
    qry_SitTribPisCofinsEntradaSTPC_DESCRICAO: TStringField;
    Ds_SitTribPisCofinsEntrada: TDataSource;
    Ds_SitTribPisCofinsSaida: TDataSource;
    qry_NatReceita: TADOQuery;
    ds_NatReceita: TDataSource;
    qry_NatReceitaNAT_CODIGO: TSmallintField;
    qry_NatReceitaNAT_OBSERVACAO: TStringField;
    qry_NatReceitaNAT_ATIVO: TStringField;
    qry_CadastroProdutoPRO_EAN1: TStringField;
    qry_CadastroProdutoPRO_REFERENCIA: TStringField;
    qryCadDepartDEP_DESCONTO: TBCDField;
    Dts_FormaPagto: TDataSource;
    qry_FormaPagto: TADOQuery;
    qry_FormaPagtoFPG_ID: TAutoIncField;
    qry_FormaPagtoFPG_DESCRICAO: TStringField;
    qry_FormaPagtoFPG_TIPO: TStringField;
    qry_NatFiscal: TADOQuery;
    qry_NatFiscalNAF_CODFISCAL: TStringField;
    qry_NatFiscalNAF_CODIMPRES: TStringField;
    qry_NatFiscalNAF_DESCRICAO: TStringField;
    qry_NatFiscalNAF_ALIQUOTA: TBCDField;
    qry_NatFiscalNAF_CTSN: TStringField;
    qry_NatFiscalNAF_ISSQN: TStringField;
    dts_NatFiscal: TDataSource;
    qryVendedorVDD_SENHA: TStringField;
    qry_ecf: TADOQuery;
    Dts_ecf: TDataSource;
    qryBico: TADOQuery;
    qryBicoBIC_CODIGO: TIntegerField;
    qryBicoCOM_DESCRICAO: TStringField;
    dsBico: TDataSource;
    qry_ecfNUM_CAIXA_PARAM: TStringField;
    ds_NatCredito: TDataSource;
    qry_NatCredito: TADOQuery;
    qry_NatCreditoNAT_BC_CODIGO: TSmallintField;
    qry_NatCreditoNAT_BC_DESCRICAO: TStringField;
    qryOficina: TADOQuery;
    qryTipoPagto: TADOQuery;
    dsOficina: TDataSource;
    dsTipoPagto: TDataSource;
    qryTipoPagtoTPG_ID: TAutoIncField;
    qryTipoPagtoTPG_DESCRICAO: TStringField;
    qryOficinaOFI_ID: TAutoIncField;
    qryOficinaOFI_DESCRICAO: TStringField;
    qry_Tipo: TADOQuery;
    qry_TipoTIP_ID: TAutoIncField;
    qry_TipoTIP_DESCRICAO: TStringField;
    Dts_tipo: TDataSource;
    qry_Classificacao: TADOQuery;
    Dts_Classificacao: TDataSource;
    qry_Local: TADOQuery;
    qry_LocalLOC_ID: TIntegerField;
    qry_LocalLOC_DESCRICAO: TStringField;
    Dts_Local: TDataSource;
    qryEmpEMP_ENDERECO: TStringField;
    qryEmpEMP_BAIRRO: TStringField;
    qryEmpEMP_CIDADE: TStringField;
    qryEmpEMP_TELEFONE: TStringField;
    qryEmpEMP_ESTADO: TStringField;
    qryEmpEMP_CEP: TIntegerField;
    qryEmpEMP_NUMERO: TIntegerField;
    qry_paramsPAR_MENS_COBRANCA: TStringField;
    qry_paramsPAR_MENS_COBRANCA_OBS: TStringField;
    qry_paramsPAR_REC_VLRRECEBER_CARTA: TStringField;
    dtsParams: TDataSource;
    pipParams: TppDBPipeline;
    qry_CadastroClienteCLI_ID: TStringField;
    qry_CadastroClienteCLI_NOME: TStringField;
    qry_CadastroClienteCLI_ENDERECO: TStringField;
    qry_CadastroClienteCLI_BAIRRO: TStringField;
    qry_CadastroClienteCLI_CIDADE: TStringField;
    qry_CadastroClienteCLI_ESTADO: TStringField;
    qry_CadastroClienteCLI_CEP: TStringField;
    qry_CadastroClienteCLI_TELEFONE: TStringField;
    qry_CadastroClienteCLI_CELULARFAX: TStringField;
    qry_CadastroClienteCLI_CGC: TStringField;
    qry_CadastroClienteCLI_CPF: TStringField;
    qry_CadastroClienteCLI_INSCRICAO: TStringField;
    qry_CadastroClienteCLI_END_BAIRRO: TStringField;
    qry_paramsPAR_REC_CONTROLEREC: TStringField;
    qry_ClassificacaoCLF_ID: TIntegerField;
    qry_ClassificacaoCLF_DESCRICAO: TStringField;
    qry_paramsPAR_REC_CORRECAOTELA: TStringField;
    qry_paramsPAR_FATOR_COEF2: TBCDField;
    qryEspecial: TADOQuery;
    qryEspecialesp_descricao: TStringField;
    qryEspecialesp_id: TIntegerField;
    dsEspecial: TDataSource;
    qry_ClassificacaoCLF_NATUREZA: TStringField;
    qry_Banco: TADOQuery;
    Dts_Banco: TDataSource;
    qry_BancoBAN_ID: TIntegerField;
    qry_BancoBAN_NOME: TStringField;
    qry_BancoBAN_CIDADE: TStringField;
    qry_BancoBAN_CONTA: TStringField;
    qry_BancoBAN_AGENCIA: TStringField;
    qry_BancoBAN_SALDO: TBCDField;
    qry_BancoBAN_SALDOINI: TBCDField;
    qry_BancoBAN_CAIXACONTABIL: TStringField;
    qry_BancoBAN_TIPOMOVIMENTO: TStringField;
    qry_BancoBAN_EMP_CGC: TStringField;
    qry_BancoBAN_EMP_NOME: TStringField;
    qry_BancoBAN_EMP_INSCRICAOESTADUAL: TStringField;
    qry_BancoBAN_CH_VLRLIN: TIntegerField;
    qry_BancoBAN_CH_VLRCOL: TIntegerField;
    qry_BancoBAN_CH_LI1LIN: TIntegerField;
    qry_BancoBAN_CH_LI1COL: TIntegerField;
    qry_BancoBAN_CH_LI2LIN: TIntegerField;
    qry_BancoBAN_CH_LI2COL: TIntegerField;
    qry_BancoBAN_CH_NOMLIN: TIntegerField;
    qry_BancoBAN_CH_NOMCOL: TIntegerField;
    qry_BancoBAN_CH_CIDLIN: TIntegerField;
    qry_BancoBAN_CH_CIDCOL: TIntegerField;
    qry_BancoBAN_CH_DIALIN: TIntegerField;
    qry_BancoBAN_CH_DIACOL: TIntegerField;
    qry_BancoBAN_CH_MESLIN: TIntegerField;
    qry_BancoBAN_CH_MESCOL: TIntegerField;
    qry_BancoBAN_CH_ANOLIN: TIntegerField;
    qry_BancoBAN_CH_ANOCOL: TIntegerField;
    qry_BancoBAN_CH_BOMLIN: TIntegerField;
    qry_BancoBAN_CH_BOMCOL: TIntegerField;
    qry_BancoBAN_CH_NUMLINHAS: TIntegerField;
    qry_BancoBAN_CH_CARACLIN1: TIntegerField;
    qry_BancoBAN_CH_CARACLIN2: TIntegerField;
    qry_BancoBAN_CH_TAMFONTE: TIntegerField;
    qryEmpENDERECO: TStringField;
    qryRestricao: TADOQuery;
    qryRestricaoRES_ID: TIntegerField;
    qryRestricaoRES_DESCRICAO: TStringField;
    dtsRestricao: TDataSource;
    qry_Tanque: TADOQuery;
    qry_TanqueTAN_CODIGO: TStringField;
    qry_TanqueCOM_DESCRICAO: TStringField;
    dts_Tanque: TDataSource;
    qryEmpEMP_DATAREGISTROJUNTA: TDateTimeField;
    qryEmpEMP_NUMEROREGISTROJUNTA: TStringField;
    qryEmpEMP_NOMEREPRES: TStringField;
    qryEmpEMP_REPRESCPF: TStringField;
    qryEmpEMP_NOMECONTADOR: TStringField;
    qryEmpEMP_CRCCONTADOR: TStringField;
    qryEmpEMP_NUMEROORDEM: TIntegerField;
    dtsMecanico: TDataSource;
    qryMecanico: TADOQuery;
    qryMecanicomec_id: TIntegerField;
    qryMecanicomec_nome: TStringField;
    qry_paramsPAR_ORC_IMPORTA_EXCEL: TStringField;
    qry_paramsPAR_SENHAEXCEL: TStringField;
    qry_paramsPAR_REL_PROD_DIR_PICTURE: TStringField;
    dsMarca: TDataSource;
    qryMarca: TADOQuery;
    qryMarcaMRC_ID: TAutoIncField;
    qryMarcaMRC_DESCRICAO: TStringField;
    qryEmpEMP_MENSAGEMRODAPE: TStringField;
    qryEmpEMP_FAX: TStringField;
    qry_paramsPAR_PRO_TIPO_PROMOCAO: TStringField;
    qryImagens: TADOQuery;
    qryImagensPAR_REL_DISTRIB_PICTURE1: TStringField;
    qryImagensPAR_REL_DISTRIB_PICTURE2: TStringField;
    qry_paramsPAR_CAD_PRO_ALT_NOME_CAMPOS: TStringField;
    qryVendedorvdd_email: TStringField;
    dsPrestServ: TDataSource;
    qryPrestServ: TADOQuery;
    qryPrestServPRE_ID: TAutoIncField;
    qryPrestServPRE_NOME: TStringField;
    dsCargas: TDataSource;
    qryCargas: TADOQuery;
    qryCargasCAG_ID: TAutoIncField;
    qryCargasCAG_DESCRICAO: TStringField;
    qry_CadastroClienteCLI_TIPOPES: TStringField;
    qry_CadastroClienteCLI_NUMERO: TStringField;
    qry_CadastroClienteCLI_TELEFONE2: TStringField;
    qry_paramsPAR_TIPO_CARTA_COB: TStringField;
    qryContribPis: TADOQuery;
    Ds_ContribPis: TDataSource;
    qryContribPisCCO_ID: TAutoIncField;
    qryContribPisCCO_CODIGO: TStringField;
    qryContribPisCCO_DENOMINACAO: TStringField;
    qryContribCofins: TADOQuery;
    Ds_ContribCofins: TDataSource;
    qryContribCofinsCCO_ID: TAutoIncField;
    qryContribCofinsCCO_CODIGO: TStringField;
    qryContribCofinsCCO_DENOMINACAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qryEmpEMP_CGCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    function GetSituacaoProduto(sFlag: Char): string;
  end;

var
  DM_Geral: TDM_Geral;

implementation

uses U_DM, Forms, U_FuncUtils;

{$R *.dfm}

{ TDM_Geral }

procedure TDM_Geral.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount -1 do
    if (Components[i] is TDataSet) then
      TDataSet(Components[i]).Open;
    //
end;

procedure TDM_Geral.DataModuleDestroy(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount -1 do
    if (Components[i] is TDataSet) then
      TDataSet(Components[i]).Close;
    //
end;

function TDM_Geral.GetSituacaoProduto(sFlag: Char): string;
begin
  case sFlag of
    'A': Result := 'ATIVO';
    'I': Result := 'INATIVO';
    'B': Result := 'BENS CONS./ATIVO IMOBILIZADO';
    else Result := 'ERROR!!!';
  end;
end;

procedure TDM_Geral.qryEmpEMP_CGCGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   Text := TFuncUtils.FormataCPFeCNPJ(Sender.AsString);
end;

initialization
  DM_Geral := TDM_Geral.Create(Application);

end.
