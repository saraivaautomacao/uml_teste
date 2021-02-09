{

@author Fabio Saraiva
*******************************************************************************}
Unit produtocontroller;

interface

uses
  Classes, SQLExpr, SysUtils, ProdutoVO,  Variants,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;



type
  TProdutoController = class
  public
    class Function ConsultaCodigo(pCodigo: String): TProdutoVO;
    class function ConsultaCodigoAuxiliar(pCodigo: String): TProdutoVO;
end;

implementation

uses
  Dados,rotinas;

var
  ConsultaSQL: String;
  Query: TFDQuery;



{ TProdutoController }

class function TProdutoController.ConsultaCodigo(
  pCodigo: String): TProdutoVO;
var
  Produto : TProdutoVO;
begin

  ConsultaSQL := 'select * from tabest1 where codigo=:p00';
  try
    try

      Pcodigo:=geraCod(Pcodigo,5);
      Query := TFDQuery.Create(nil);
      Query.connection:=dmMod.fdConPrinc;
      Query.sql.Text := ConsultaSQL;
      query.Params[0].asString:=pCodigo;
      Query.Open;
      If not query.IsEmpty Then
      begin
        Produto := TProdutoVO.Create;
        Produto.Codigo := Query.FieldByName('codigo').AsString;
        Produto.Unidade := Query.FieldByName('Unidade').AsString;
        Produto.Produto := Query.FieldByName('produto').AsString;
        Produto.Estoque := Query.FieldByName('quant').AsFloat;
        Produto.PrecoVenda := Query.FieldByName('precovenda').AsCurrency;
        Produto.PrecoCusto := Query.FieldByName('precocusto').AsCurrency;
        produto.cst:= Query.FieldByName('cts').AsString;
        produto.idcontrole:=Query.FieldByName('controle').AsInteger;
        produto.precorevenda:=Query.FieldByName('precorevenda').AsExtended;
        produto.desconto:=Query.FieldByName('desconto').AsCurrency;
        produto.descontoExtra:=Query.FieldByName('sgf_descextra').AsCurrency;
        produto.codsetor:=Query.FieldByName('lksetor').Asinteger;
        result := Produto;
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



class function TProdutoController.ConsultaCodigoAuxiliar(
  pCodigo: String): TProdutoVO;
var
  Produto : TProdutoVO;
begin

  ConsultaSQL := 'select * from tabest1 where codigoAuxliar=:p00';
  try
    try

      Pcodigo:=geraCod(Pcodigo,5);
      Query := TFDQuery.Create(nil);
      Query.connection:=dmMod.fdConPrinc;
      Query.sql.Text := ConsultaSQL;
      query.Params[0].asString:=pCodigo;
      Query.Open;
      If not query.IsEmpty Then
      begin
        Produto := TProdutoVO.Create;
        Produto.Codigo := Query.FieldByName('codigo').AsString;
        Produto.Unidade := Query.FieldByName('Unidade').AsString;
        Produto.Produto := Query.FieldByName('produto').AsString;
        Produto.Estoque := Query.FieldByName('quant').AsFloat;
        Produto.PrecoVenda := Query.FieldByName('precovenda').AsCurrency;
        Produto.PrecoCusto := Query.FieldByName('precocusto').AsCurrency;
        produto.cst:= Query.FieldByName('cts').AsString;
        produto.idcontrole:=Query.FieldByName('controle').AsInteger;
        produto.precorevenda:=Query.FieldByName('precorevenda').AsExtended;
        produto.desconto:=Query.FieldByName('desconto').AsCurrency;
        produto.descontoExtra:=Query.FieldByName('sgf_descextra').AsCurrency;
        produto.codsetor:=Query.FieldByName('lksetor').Asinteger;
        result := Produto;
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
