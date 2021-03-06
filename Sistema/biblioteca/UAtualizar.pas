unit UAtualizar;

interface

type
  TAtualizarEstoque = class
  strict private
    FEstoque: Double;
    FRef: Integer;

  public
    procedure AtualizarEstoque(AMovimento: string; AQtde: Double; ARef: string);

  end;

implementation

uses
  U_DMRet;

{ TAtualizarEstoque }

procedure TAtualizarEstoque.AtualizarEstoque(AMovimento: string; AQtde:
  Double; ARef: string);
const
  EXECUTA_ATUALIZAR =
    'EXEC ATUALIZA_ESTOQUE :MOVIMENTO, :QTDE, :PRO_ID';
begin
  DMRet.ExecuteSQL(EXECUTA_ATUALIZAR, [AMovimento, AQtde, ARef]);
end;

end.
