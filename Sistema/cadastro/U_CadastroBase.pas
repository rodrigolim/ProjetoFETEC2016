unit U_CadastroBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Vcl.ImgList;

type
  TFrm_CadastroBase = class(TForm)
    pnlBottom: TPanel;
    pnlBackground: TPanel;
    DS: TDataSource;
    Icones: TImageList;
    btnConfirm: TButton;
    btnCancel: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    function IsValidFields: boolean; overload;
  protected
    MultEmp: shortstring;
    procedure LookupComboBoxEnter(Sender: TObject);
    procedure CriaForm(AFrmClass: TFormClass; AModal: boolean = False);
    procedure FocusControl(AField: TField);
    function IsValidFields(AFields: array of TField): Boolean; overload;
    function IsValidNumberFields(const AFields: array of TField): boolean;
    function Count(const ATable, AField: string; const AValue: variant): integer;
  published
    {$REGION 'OnKeyPress Events'}
    procedure NoAccentKeyPress(Sender: TObject; var Key: Char);
    procedure OnlyIntegerKeyPress(Sender: TObject; var Key: Char);
    procedure OnlyNumberKeyPress(Sender: TObject; var Key: Char);
    {$ENDREGION}

    {$REGION 'OnExit Events'}
    procedure NumberFieldNotIsNullExit(Sender: TObject);
    {$ENDREGION}
  public
    { Public declarations }
  end;

var
  Frm_CadastroBase: TFrm_CadastroBase;

implementation

uses U_DMRet, DBCtrls, ComCtrls, U_FuncUtils;

{$R *.dfm}

procedure TFrm_CadastroBase.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CadastroBase.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_CadastroBase.btnConfirmarClick(Sender: TObject);
var
  msg: string;
begin
  if not IsValidFields then Exit;

  case DS.DataSet.State of
    dsEdit: msg := 'Confirma a altera��o deste Registro?';
    dsInsert: msg := 'Confirma essa novo Registro?';
  end;

  if Messagebox(handle,pchar(msg),'ATEN��O',MB_ICONQUESTION+MB_YESNO) = IDYES then
  try
    DS.DataSet.Post;
  except
    on E: Exception do
      if E.Message <> 'Operation aborted' then
        raise Exception.Create(E.Message);
      //
  end;

  ModalResult := mrOk;
end;

procedure TFrm_CadastroBase.btnConfirmClick(Sender: TObject);
var
  msg: string;
begin
  if not IsValidFields then Exit;

  case DS.DataSet.State of
    dsEdit: msg := 'Confirma a altera��o deste Registro?';
    dsInsert: msg := 'Confirma essa novo Registro?';
  end;

  if Messagebox(handle,pchar(msg),'ATEN��O',MB_ICONQUESTION+MB_YESNO) = IDYES then
  try
    DS.DataSet.Post;
  except
    on E: Exception do
      if E.Message <> 'Operation aborted' then
        raise Exception.Create(E.Message);
      //
  end;

  ModalResult := mrOk;
end;

function TFrm_CadastroBase.Count(const ATable, AField: string;
  const AValue: variant): integer;
const
  SQL_COUNT = 'select count(*) from %s where %s = :VALUE';
var
  Sql: string;
begin
  Sql    := Format(SQL_COUNT, [ATable, AField]);
  Result := DMRet.OpenSQL(Sql, [AValue]);
end;

procedure TFrm_CadastroBase.CriaForm(AFrmClass: TFormClass; AModal: boolean);
begin
  with AFrmClass.Create(nil) do
  try
    if not AModal then
    begin
      Show;
      Exit;
    end;

    try
      Visible := False;
      ShowModal;
    finally
      Free;
    end;
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;
end;

procedure TFrm_CadastroBase.FocusControl(AField: TField);
var
  Controls: TStringList;
  PageControl, TabSheet: TComponent;
  i, j: Integer;
begin
  Controls := TStringList.Create;

  try
    if Trim(AField.Origin) <> '' then
    begin
      TFuncUtils.Split('>', AField.Origin, Controls);

      for i := 0 to Controls.Count div 2 - 1 do
      begin
        j := i * 2;
        PageControl := Self.FindComponent(Controls[j]);
        TabSheet    := Self.FindComponent(Controls[j+1]);

        if not Assigned(PageControl) then
          raise Exception.CreateFmt('O controle "%s" n�o foi encontrado', [Controls[j]]);

        if not Assigned(TabSheet) then
          raise Exception.CreateFmt('O controle "%s" n�o foi encontrado', [Controls[j+1]]);

        TPageControl(PageControl).ActivePage := TabSheet as TTabSheet;
      end;
    end;

    AField.FocusControl;
  finally
    Controls.Free;
  end;
end;

procedure TFrm_CadastroBase.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: integer;
begin
  if (DS.Dataset.State in [dsInsert, dsEdit]) then
    DS.DataSet.Cancel;
  //
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDataSet then
      (Components[i] as TDataSet).Close;
    //
end;

procedure TFrm_CadastroBase.FormCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TEdit then
      (Components[i] as TEdit).CharCase := ecUpperCase
    else if Components[i] is TDBEdit then
      (Components[i] as TDBEdit).CharCase := ecUpperCase
    else if Components[i] is TDBLookupComboBox then
        (Components[i] as TDBLookupComboBox).OnEnter := LookupComboBoxEnter;

  Application.HintPause     := 500;   //meio segundo para mostrar o hint
  Application.HintHidePause := 10000; //tempo de dura��o = 10 segundos
end;

procedure TFrm_CadastroBase.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN: Perform(WM_NEXTDLGCTL,0,0);
    VK_ESCAPE: Close;
  end;
end;

procedure TFrm_CadastroBase.FormShow(Sender: TObject);
begin
   if MultEmp = 'F' then
    btnConfirm.Visible := False;
  //
  case DS.DataSet.State of
    dsEdit: Caption := Caption + ' - Alterar';
    dsInsert: Caption := Caption + ' - Novo';
  end;
end;

function TFrm_CadastroBase.IsValidFields(AFields: array of TField): Boolean;
var
  Controls: TStringList;
  PageControl, TabSheet: TComponent;
  Field: TField;
begin
  Result := True;

  for Field in AFields do
    if Field.IsNull or (Trim(Field.Value) = '') then
    begin
      Application.MessageBox(
        Pchar('O campo "'+Field.DisplayLabel+'" n�o pode ficar vazio.'),
        'AVISO',MB_ICONINFORMATION);
      FocusControl(Field);
      Result := False;
      Break;
    end
end;

function TFrm_CadastroBase.IsValidNumberFields(
  const AFields: array of TField): boolean;
var
  Field: TField;
begin
  Result := True;

  for Field in AFields do
    if not (Field is TNumericField) then
      Continue
    else
    if Field.Required and (Field.AsFloat <= 0) then
    begin
      Application.MessageBox(PChar('O campo "' + Field.DisplayName + '" deve ser maior que "0,00".'),
        'ATEN��O!', MB_ICONINFORMATION);
      FocusControl(Field);
      Result := False;
      Break;
    end;
end;

function TFrm_CadastroBase.IsValidFields: boolean;
var
  Field: TField;
  Fields: array of TField;
begin
  Result := True;

  for Field in DS.DataSet.Fields do
    if Field.Required then
    begin
      SetLength(Fields, Length(Fields)+1);
      Fields[High(Fields)] := Field;
    end;

  Result := IsValidFields(Fields);
end;

procedure TFrm_CadastroBase.NoAccentKeyPress(Sender: TObject;
  var Key: Char);
begin
  case Key of
    '�': Key := 'a';
    '�': Key := 'e';
    '�': Key := 'i';
    '�': Key := 'o';
    '�': Key := 'u';
    '�': Key := 'a';
    '�': Key := 'e';
    '�': Key := 'i';
    '�': Key := 'o';
    '�': Key := 'u';
    '�': Key := 'a';
    '�': Key := 'e';
    '�': Key := 'i';
    '�': Key := 'o';
    '�': Key := 'u';
    '�': Key := 'a';
    '�': Key := 'e';
    '�': Key := 'i';
    '�': Key := 'o';
    '�': Key := 'u';
    '�': Key := 'a';
    '�': Key := 'o';
    '�': Key := 'n';
    '�': Key := 'c';
    '�': Key := 'A';
    '�': Key := 'E';
    '�': Key := 'I';
    '�': Key := 'O';
    '�': Key := 'U';
    '�': Key := 'A';
    '�': Key := 'E';
    '�': Key := 'I';
    '�': Key := 'O';
    '�': Key := 'U';
    '�': Key := 'A';
    '�': Key := 'E';
    '�': Key := 'I';
    '�': Key := 'O';
    '�': Key := 'U';
    '�': Key := 'A';
    '�': Key := 'E';
    '�': Key := 'I';
    '�': Key := 'O';
    '�': Key := 'U';
    '�': Key := 'A';
    '�': Key := 'O';
    '�': Key := 'N';
    '�': Key := 'C';
  end;

  if not(Key in ['0'..'9', 'A'..'Z', 'a'..'z', '.', '/', '-', ',', '\', Chr(8), Chr(32)]) then
    Key := #0;
  //
end;

procedure TFrm_CadastroBase.NumberFieldNotIsNullExit(Sender: TObject);
begin
  if not (Sender is TDBEdit) then Exit;

  if TDBEdit(Sender).Field.IsNull then
    TDBEdit(Sender).Field.AsFloat := 0;
  //
end;

procedure TFrm_CadastroBase.LookupComboBoxEnter(Sender: TObject);
begin
   if Sender is TDBLookupComboBox then
   begin
     if TDBLookupComboBox(Sender).Field.IsNull then
       TDBLookupComboBox(Sender).DropDown;
   end;
  //
end;

procedure TFrm_CadastroBase.OnlyIntegerKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9', Chr(8)]) then Key := #0;
end;

procedure TFrm_CadastroBase.OnlyNumberKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['0'..'9', Chr(8), ',']) then Key := #0;
end;

end.
