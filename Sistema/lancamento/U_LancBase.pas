unit U_LancBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Grids, DBGrids, ExtCtrls, FMTBcd, DBClient,
  Provider, DB, SqlExpr, DBCtrls, StdCtrls, Menus, U_LancItemBase,
  U_PesqLancBase, Generics.Collections, ImgList, System.StrUtils;

type
  Tfrm_LancBase = class(TForm)
    ToolBar1: TToolBar;
    btn_nov: TToolButton;
    btn_con: TToolButton;
    ToolButton26: TToolButton;
    ToolButton25: TToolButton;
    btn_sai: TToolButton;
    DBGrid1: TDBGrid;
    DTS: TSQLDataSet;
    DSP: TDataSetProvider;
    CDS: TClientDataSet;
    DS: TDataSource;
    POP: TPopupMenu;
    NovaPrVenda1: TMenuItem;
    Sair1: TMenuItem;
    btn_can: TToolButton;
    btn_sal: TToolButton;
    btn_alt: TToolButton;
    Icones: TImageList;
    btn_exc: TToolButton;
    Panel3: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DST_ITEM: TSQLDataSet;
    DSP_ITEM: TDataSetProvider;
    CDS_ITEM: TClientDataSet;
    DS_ITEM: TDataSource;
    Label3: TLabel;
    dbNum_Venda: TDBText;
    ExcluirItem1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSAfterPost(DataSet: TDataSet);
    procedure btn_novClick(Sender: TObject);
    procedure btn_saiClick(Sender: TObject);
    procedure btn_conClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDS_ItemAfterPost(DataSet: TDataSet);
    procedure CDSReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DSPAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
    procedure btn_canClick(Sender: TObject);
    procedure btn_salClick(Sender: TObject);
    procedure ConsultaPendentes1Click(Sender: TObject);
    procedure ConsultaProduto1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btn_altClick(Sender: TObject);
    procedure CDS_ItemAfterCancel(DataSet: TDataSet);
    procedure CDS_ItemAfterDelete(DataSet: TDataSet);
    procedure btn_excClick(Sender: TObject);
    procedure CDSAfterDelete(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CDS_ITEMReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure ExcluirItem1Click(Sender: TObject);
  private
    FFrmLancItem: Tfrm_LancItemBaseClass;
    FFrmPesqLanc: Tfrm_PesqBaseClass;
    FPesquisa: TPesquisa;

    procedure ConsultaLanc(SoPendentes: Boolean = False);
  protected
    FTipoLancto: String;
    property LancItemBase: Tfrm_LancItemBaseClass read FFrmLancItem write FFrmLancItem;
    property PesqLancBase: Tfrm_PesqBaseClass read FFrmPesqLanc write FFrmPesqLanc;
  public
    property TipoLancto: String read FTipoLancto;
  end;

var
  frm_LancBase: Tfrm_LancBase;

implementation

uses
  U_DMRet, U_PesqProduto;

{$R *.dfm}

procedure Tfrm_LancBase.btn_novClick(Sender: TObject);
begin
  try
    CDS.Insert;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao inserir o(a)' + TipoLancto + '.' + #13#10 + 'Erro: ' +
          E.Message);
  end;
end;

procedure Tfrm_LancBase.btn_saiClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_LancBase.btn_altClick(Sender: TObject);
begin
  if CDS.IsEmpty then
  begin
    MessageBox(Handle, pchar('N�o h� ' + TipoLancto +' a ser alterado!'),
      'AVISO', MB_ICONINFORMATION);
    Abort;
  end;
  //
  try
    CDS.Edit;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao alterar o(a)' + TipoLancto + '.' + #13#10 + 'Erro: ' +
          E.Message);
  end;
end;

procedure Tfrm_LancBase.btn_conClick(Sender: TObject);
begin
  ConsultaLanc;
end;

procedure Tfrm_LancBase.CDS_ItemAfterCancel(DataSet: TDataSet);
begin
  if CDS.State = dsEdit then
    CDS.Cancel;
end;

procedure Tfrm_LancBase.CDS_ItemAfterDelete(DataSet: TDataSet);
begin
  CDS_ITEM.ApplyUpdates(0);
end;

procedure Tfrm_LancBase.CDS_ItemAfterPost(DataSet: TDataSet);
begin
  CDS_ITEM.ApplyUpdates(0);
end;

procedure Tfrm_LancBase.CDS_ITEMReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
var
  Tipo: Variant;
begin
  Action := raCancel;

  if AnsiContainsStr(E.Message, 'DELETE') or
     AnsiStartsStr('Children still exist in', E.Message) then
    Tipo := 'exclu�-lo.'
  else if AnsiContainsStr(E.Message, 'UPDATE') then
    Tipo := 'alter�-lo.';

  if not VarIsEmpty(Tipo) then
    raise Exception.CreateFmt('Este registro tem movimenta��es e n�o ser� poss�vel %s', [Tipo]);

  raise Exception.Create(E.Message);
end;

procedure Tfrm_LancBase.ConsultaLanc(SoPendentes: Boolean);
var
  IdConsulta: Variant;
begin
  IdConsulta := PesqLancBase.GetIdConsulta(FPesquisa, SoPendentes);
  //
  if VarIsNull(IdConsulta) then
    Exit;
  //
  CDS.Close;
  CDS.Params[0].Value := IdConsulta;
  CDS.Open;
end;

procedure Tfrm_LancBase.ConsultaPendentes1Click(Sender: TObject);
begin
  ConsultaLanc(True);
end;

procedure Tfrm_LancBase.ConsultaProduto1Click(Sender: TObject);
begin
  Tfrm_PesqProduto.GetCodResult;
end;

procedure Tfrm_LancBase.DSPAfterUpdateRecord
  (Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind);
begin
  if (UpdateKind = ukInsert) then
    DeltaDS.Fields[0].NewValue := DMRet.OpenSQL('select @@identity', []);
end;

procedure Tfrm_LancBase.ExcluirItem1Click(Sender: TObject);
begin
  if CDS_ITEM.IsEmpty then Exit;

  CDS_ITEM.Delete;
end;

procedure Tfrm_LancBase.CDSAfterDelete(DataSet: TDataSet);
begin
  CDS.ApplyUpdates(0);
end;

procedure Tfrm_LancBase.CDSAfterPost(DataSet: TDataSet);
begin
  CDS.ApplyUpdates(0);
end;

procedure Tfrm_LancBase.CDSReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
var
  Tipo: Variant;
begin
  Action := raCancel;

  if AnsiContainsStr(E.Message, 'DELETE') or
     AnsiStartsStr('Children still exist in', E.Message) then
    Tipo := 'exclu�-lo.'
  else if AnsiContainsStr(E.Message, 'UPDATE') then
    Tipo := 'alter�-lo.';

  if not VarIsEmpty(Tipo) then
    raise Exception.CreateFmt('Este registro tem movimenta��es e n�o ser� poss�vel %s', [Tipo]);

  raise Exception.Create(E.Message);
end;

procedure Tfrm_LancBase.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDataSet then
      TDataSet(Components[i]).Close;
    //
  Action := caFree;
end;

procedure Tfrm_LancBase.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FPesquisa);
end;

procedure Tfrm_LancBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN: Perform(WM_NEXTDLGCTL,0,0);
    VK_ESCAPE: Close;
  end;
end;

procedure Tfrm_LancBase.FormShow(Sender: TObject);
begin
  CDS.Open;
end;

procedure Tfrm_LancBase.btn_excClick(Sender: TObject);
begin
  if CDS.IsEmpty then
  begin
    MessageBox(Handle, pchar('N�o h� ' + TipoLancto +' a ser exclu�do!'),
      'AVISO', MB_ICONINFORMATION);
    Abort;
  end;

  if MessageBox(Handle, pchar(format('Tem certeza que deseja excluir o(a) %s?',
      [TipoLancto])), pchar(Application.Title), MB_ICONQUESTION + MB_YESNO +
      MB_DEFBUTTON2) = IDNO then
    Abort;

  //
  try
    CDS.Delete;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao excluir o(a)' + TipoLancto + '.' + #13#10 + 'Erro: ' +
          E.Message);
  end;

  CDS_ITEM.Close;
end;

procedure Tfrm_LancBase.btn_canClick(Sender: TObject);
begin
  try
    CDS.Cancel;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao inserir o(a)' + TipoLancto + '.' + #13#10 + 'Erro: ' +
          E.Message);
  end;
end;

procedure Tfrm_LancBase.btn_salClick(Sender: TObject);
begin
  try
    CDS.Post;
  except
    on E: Exception do
      raise Exception.Create
        ('Erro ao inserir o(a)' + TipoLancto + '.' + #13#10 + 'Erro: ' +
          E.Message);
  end;
end;

end.
