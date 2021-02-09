{

@author Fabio Saraiva
*******************************************************************************}
Unit vendedorcontroller;

interface

uses
  Classes, SQLExpr, SysUtils,  rotinas,VendedorVO,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TVendedorController = class
  public
    class Function ConsultaCodigo(pCodigo: String): TVendedorVO;
end;

implementation

Uses dados;

var
  ConsultaSQL: String;
  Query: TFDQuery;



{ TProdutoController }

class function TVendedorController.ConsultaCodigo(
  pCodigo: String): TVendedorVO;
var
  Vendedor: TvendedorVO;
begin
  ConsultaSQL := 'select * from tabvend where codvend=:p00';
  try
    try
      Query := TFDQuery.Create(nil);
      Query.connection:=dmMod.fdConPrinc;
      Query.sql.Text := ConsultaSQL;
      query.Params[0].asInteger:=StrtoInt(pCodigo);
      Query.Open;
      If not query.IsEmpty Then
      begin
        Vendedor := TVendedorVO.Create;
        Vendedor.Codigo   := Query.FieldByName('codvend').AsInteger;
        Vendedor.nome     := Query.FieldByName('cognome').AsString;
        Vendedor.senha := Query.FieldByName('senha').AsString;
        result := vendedor;
      End
      Else
        result := nil;
    except
      result := nil;
    end;
  finally
      Query.Free;
   end;

end;

end.
