unit UVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_LancBase, Data.FMTBcd, Vcl.ImgList,
  Vcl.Menus, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Mask, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup,
  UAtualizar, vcl.Wwdbdatetimepicker;

type
  TfrmVendas = class(Tfrm_LancBase)
    Label2: TLabel;
    Edit2: TEdit;
    DTSVEN_ID: TIntegerField;
    DTSVEN_DESCONTO: TFMTBCDField;
    DTSVEN_OBSERVACAO: TStringField;
    DTSVEN_TOTAL: TFMTBCDField;
    CDSVEN_ID: TIntegerField;
    CDSVEN_DESCONTO: TFMTBCDField;
    CDSVEN_OBSERVACAO: TStringField;
    CDSVEN_TOTAL: TFMTBCDField;
    DST_ITEMITE_ID: TIntegerField;
    DST_ITEMVEN_ID: TIntegerField;
    DST_ITEMPRO_ID: TIntegerField;
    DST_ITEMITE_REFERENCIA: TStringField;
    DST_ITEMITE_PRO_DESCRICAO: TStringField;
    DST_ITEMITE_PRECO_VENDA: TFMTBCDField;
    DST_ITEMITE_PRECO_CUSTO: TFMTBCDField;
    DST_ITEMITE_QTDE: TFMTBCDField;
    DST_ITEMITE_TOTAL: TFMTBCDField;
    CDS_ITEMITE_ID: TIntegerField;
    CDS_ITEMVEN_ID: TIntegerField;
    CDS_ITEMPRO_ID: TIntegerField;
    CDS_ITEMITE_REFERENCIA: TStringField;
    CDS_ITEMITE_PRO_DESCRICAO: TStringField;
    CDS_ITEMITE_PRECO_VENDA: TFMTBCDField;
    CDS_ITEMITE_PRECO_CUSTO: TFMTBCDField;
    CDS_ITEMITE_QTDE: TFMTBCDField;
    CDS_ITEMITE_TOTAL: TFMTBCDField;
    dbObservacao: TDBEdit;
    lblObservcao: TLabel;
    CDS_ITEMVALORTOTAL: TAggregateField;
    DTSVEN_DATA: TSQLTimeStampField;
    CDSVEN_DATA: TSQLTimeStampField;
    lblData: TLabel;
    dtLancamento: TwwDBDateTimePicker;
    btnZerarEstoque: TButton;
    procedure btn_novClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DSPAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure CDSAfterInsert(DataSet: TDataSet);
    procedure dbDescontoExit(Sender: TObject);
    procedure CDSAfterPost(DataSet: TDataSet);
    procedure DSP_ITEMAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure CDS_ITEMReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDS_ITEMAfterPost(DataSet: TDataSet);
    procedure CDS_ITEMAfterInsert(DataSet: TDataSet);
    procedure dbObservacaoExit(Sender: TObject);
    procedure btn_altClick(Sender: TObject);
    procedure btn_conClick(Sender: TObject);
    procedure btn_excClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtLancamentoChange(Sender: TObject);
    procedure btn_salClick(Sender: TObject);
    procedure DExcluir1Click(Sender: TObject);
    procedure CDS_ITEMAfterDelete(DataSet: TDataSet);
    procedure btn_canClick(Sender: TObject);
    procedure btnZerarEstoqueClick(Sender: TObject);
  private
    { Private declarations }
  public
    FAtualizar: TAtualizarEstoque;
    procedure HabilitaPanelCabecalho(ASituacao: Boolean);
    function AtualizaTotal: Double;

  end;

var
  frmVendas: TfrmVendas;

implementation

uses
  U_DmRet, UPesqVendas;
{$R *.dfm}

function TfrmVendas.AtualizaTotal: Double;
const
  TotalVenda =
    'SELECT SUM(ITE_TOTAL) AS TOTAL FROM ITEM_VENDA WHERE VEN_ID = :VEN_ID';
begin
  if DMRet.OpenSQL(TotalVenda, [CDSVEN_ID.AsInteger]) = null then
    Result := 0
  else
    Result := DMRet.OpenSQL(TotalVenda, [CDSVEN_ID.AsInteger]);
end;

procedure TfrmVendas.btnZerarEstoqueClick(Sender: TObject);
const
  DELETE_VENDAS =
    'DELETE FROM VENDA';
begin
  try
    if MessageBox(Handle, 'Deseja continuar ?', 'ATEN��O', MB_ICONEXCLAMATION+MB_YESNO) = IDYES then
      DMRet.ExecuteSQL(DELETE_VENDAS, [])
    else
      exit;

    MessageBox(Handle, 'Conclu�do com sucesso!', 'ATEN��O', MB_OK);
  except
    MessageBox(Handle, 'Erro ao Excluir pedido', 'ATEN��O', MB_OK);
  end;
end;

procedure TfrmVendas.btn_altClick(Sender: TObject);
begin
  inherited;

  HabilitaPanelCabecalho(True);
  dtLancamento.SetFocus;
end;

procedure TfrmVendas.btn_canClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmVendas.btn_conClick(Sender: TObject);
begin
  FrmPesqVendas := TFrmPesqVendas.Create(self);
  FrmPesqVendas.ShowModal;

end;

procedure TfrmVendas.btn_excClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmVendas.btn_novClick(Sender: TObject);
begin
  CDS.Insert;
  CDS_ITEM.Close;

  CDSVEN_DATA.AsDateTime := Date;
end;

procedure TfrmVendas.btn_salClick(Sender: TObject);
begin
  inherited;

  HabilitaPanelCabecalho(false);
end;

procedure TfrmVendas.CDSAfterInsert(DataSet: TDataSet);
begin
  inherited;
  HabilitaPanelCabecalho(True);

  CDSVEN_DESCONTO.AsFloat := 0;
  CDSVEN_TOTAL.AsFloat    := 0;
  dtLancamento.SetFocus;
end;

procedure TfrmVendas.CDSAfterPost(DataSet: TDataSet);
begin
  inherited;

  HabilitaPanelCabecalho(False);
  Edit1.SetFocus;
end;

procedure TfrmVendas.CDS_ITEMAfterDelete(DataSet: TDataSet);
const
  UPD_VALOR_TOTAL =
    'UPDATE VENDA SET VEN_TOTAL = :VALOR WHERE VEN_ID = :VEN_ID';
begin
  inherited;

  DMRet.ExecuteSQL(UPD_VALOR_TOTAL, [AtualizaTotal, CDSVEN_ID.AsInteger]);
end;

procedure TfrmVendas.CDS_ITEMAfterInsert(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmVendas.CDS_ITEMAfterPost(DataSet: TDataSet);
const
  UPD_VALOR_TOTAL =
    'UPDATE VENDA SET VEN_TOTAL = :VALOR WHERE VEN_ID = :VEN_ID';
begin
  inherited;

  DMRet.ExecuteSQL(UPD_VALOR_TOTAL, [AtualizaTotal, CDSVEN_ID.AsInteger]);

  FAtualizar.AtualizarEstoque('S', CDS_ITEMITE_QTDE.AsFloat, CDS_ITEMITE_REFERENCIA.AsString);

  Edit1.SetFocus;
  Edit2.Text := '0,000';
end;

procedure TfrmVendas.CDS_ITEMReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
//
end;

procedure TfrmVendas.dbDescontoExit(Sender: TObject);
begin
  inherited;

  if cds.State = dsInsert then
    btn_salClick(sender);
end;

procedure TfrmVendas.dbObservacaoExit(Sender: TObject);
begin
  inherited;

  btn_salClick(sender);
end;

procedure TfrmVendas.DExcluir1Click(Sender: TObject);
begin
  CDS_ITEM.Delete;
end;

procedure TfrmVendas.DSPAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
  DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  if UpdateKind <> ukInsert then exit;

  if DeltaDS.Fields[0].IsNull then
  begin
    if DeltaDS.Fields[0].FieldName = 'VEN_ID' then
      DeltaDS.Fields[0].NewValue := DMRet.OpenSQL('SELECT IDENT_CURRENT(''VENDA'')', [])
    else
      DeltaDS.Fields[0].NewValue := DMRet.OpenSQL('SELECT IDENT_CURRENT(''ITEM_VENDA'')', []);
  end;

end;

procedure TfrmVendas.DSP_ITEMAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  if UpdateKind <> ukInsert then exit;

  if DeltaDS.Fields[0].IsNull then
  begin
    if DeltaDS.Fields[0].FieldName = 'ITE_ID' then
      DeltaDS.Fields[0].NewValue := DMRet.OpenSQL('SELECT IDENT_CURRENT(''ITEM_VENDA'')', []);
  end;

end;

procedure TfrmVendas.dtLancamentoChange(Sender: TObject);
begin
  inherited;

  dtLancamento.DateTime := Date;
end;

procedure TfrmVendas.Edit1Exit(Sender: TObject);
const
  SQL_PRODUTO =
    'SELECT '+
    '   PRO_ID, PRO_REFERENCIA, PRO_DESCRICAO, PRO_PRECO_VENDA, PRO_PRECO_CUSTO '+
    'FROM '+
    '   PRODUTO WHERE PRO_REFERENCIA = :REFERENCIA ';
begin
  if not (CDSVEN_ID.AsInteger > 0) then Exit;

  if CDS.State in [dsInsert, dsEdit] then
  begin
    if (trim(Edit1.Text) = '') then
      Exit;

    MessageBox(Handle, 'N�o � poss�vel inserir item sem salvar o cabe�alho.', 'Aten��o',
      MB_ICONEXCLAMATION+MB_OK);

    Edit1.Text := '';
    Abort;
  end;

  with TClientDataSet.Create(nil) do
  try
    Data := DMRet.GetData(SQL_PRODUTO, [Edit1.Text]);

    if IsEmpty then
    begin
      if trim(Edit1.Text) = '' then
      begin
        Exit;
      end else
      begin
        MessageBox(Handle, 'N�o foi encontrado Produto.', 'Aten��o',
          MB_ICONEXCLAMATION+MB_OK);
        Edit1.SetFocus;
        Exit;
      end;
    end else
    begin
      CDS_ITEM.Open;
      CDS_ITEM.Insert;
    end;

    CDS_ITEMPRO_ID.AsInteger             := FieldByName('PRO_ID').AsInteger;
    CDS_ITEMITE_REFERENCIA.AsString      := FieldByName('PRO_REFERENCIA').AsString;
    CDS_ITEMITE_PRO_DESCRICAO.AsString   := FieldByName('PRO_DESCRICAO').AsString;
    CDS_ITEMITE_PRECO_VENDA.AsFloat      := FieldByName('PRO_PRECO_VENDA').AsFloat;
    CDS_ITEMITE_PRECO_CUSTO.AsFloat      := FieldByName('PRO_PRECO_CUSTO').AsFloat;
    CDS_ITEMVEN_ID.AsInteger             := CDSVEN_ID.AsInteger;
  finally
    Free;
  end;

end;

procedure TfrmVendas.Edit2Exit(Sender: TObject);
begin
  if not (CDSVEN_ID.AsInteger > 0) then Exit;

  if CDS.State in [dsInsert, dsEdit] then
  begin
    if trim(Edit1.Text) = '' then
      Exit;

    MessageBox(Handle, 'N�o � poss�vel inserir item sem salvar o cabe�alho.', 'Aten��o',
      MB_ICONEXCLAMATION+MB_OK);

    Edit1.Text := '';
    Abort;
  end;

  if not (CDS_ITEM.State in [dsInsert, dsEdit]) then
  begin
    edit1.SetFocus;
    Exit;
  end else
  begin
    if (trim(Edit2.Text) = '') or (StrToFloat(Edit2.Text) = 0) then
    begin
      MessageBox(Handle, 'Quantidade deve ser maior que 0.', 'Aten��o',
        MB_ICONEXCLAMATION+MB_OK);
      Abort;
    end;
  end;

  CDS_ITEMITE_QTDE.AsFloat  := StrToFloat(Edit2.Text);
  CDS_ITEMITE_TOTAL.AsFloat := (CDS_ITEMITE_QTDE.AsFloat * CDS_ITEMITE_PRECO_VENDA.AsFloat);

  try
    CDS_ITEM.Post;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao inserir o(a) Item ' + E.Message);
  end;

  Edit1.Text := '';
  Edit2.Text := '';
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
  inherited;
//
end;

procedure TfrmVendas.HabilitaPanelCabecalho(ASituacao: Boolean);
begin
  if ASituacao then
    Panel3.Enabled := True
  else
    Panel3.Enabled := False;

end;

end.
