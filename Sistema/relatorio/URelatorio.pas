unit URelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, U_DMRet, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider,
  Data.SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppBands, ppCache, ppDesignLayer, ppParameter, ppCtrls, ppPrnabl;

type
  Tfrm_Relatorio = class(TForm)
    pnl_Relatorio: TPanel;
    btnGerar: TButton;
    edtNome: TEdit;
    lblNome: TLabel;
    chkTodos: TCheckBox;
    DsAcumulado: TDataSource;
    DsDiscriminado: TDataSource;
    DTSAcumulado: TSQLDataSet;
    DSPAcumulado: TDataSetProvider;
    CDSAcumulado: TClientDataSet;
    SQLDiscriminado: TSQLDataSet;
    DSPDiscriminado: TDataSetProvider;
    CDSDiscriminado: TClientDataSet;
    DTSAcumuladoVEN_DATA: TSQLTimeStampField;
    DTSAcumuladoVEN_OBSERVACAO: TStringField;
    DTSAcumuladoITE_PRO_DESCRICAO: TStringField;
    DTSAcumuladoITE_QTDE: TFMTBCDField;
    CDSAcumuladoVEN_DATA: TSQLTimeStampField;
    CDSAcumuladoVEN_OBSERVACAO: TStringField;
    CDSAcumuladoITE_PRO_DESCRICAO: TStringField;
    CDSAcumuladoITE_QTDE: TFMTBCDField;
    SQLDiscriminadoITE_REFERENCIA: TStringField;
    SQLDiscriminadoITE_PRO_DESCRICAO: TStringField;
    SQLDiscriminadoQTDE: TFMTBCDField;
    SQLDiscriminadoQTDE_COPO: TFMTBCDField;
    CDSDiscriminadoITE_REFERENCIA: TStringField;
    CDSDiscriminadoITE_PRO_DESCRICAO: TStringField;
    CDSDiscriminadoQTDE: TFMTBCDField;
    CDSDiscriminadoQTDE_COPO: TFMTBCDField;
    repAcumulado: TppReport;
    pipAcumulado: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    procedure chkTodosClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Relatorio: Tfrm_Relatorio;

implementation

{$R *.dfm}

procedure Tfrm_Relatorio.btnGerarClick(Sender: TObject);
begin
  CDSAcumulado.Close;

  CDSAcumulado.Params[0].Value := '10/11/2016';
  CDSAcumulado.Params[1].Value := date;
  CDSAcumulado.Open;

  repAcumulado.Print;

end;

procedure Tfrm_Relatorio.chkTodosClick(Sender: TObject);
begin
  lblNome.Enabled := not chkTodos.Checked;
  edtNome.Enabled := not chkTodos.Checked;
end;

end.
