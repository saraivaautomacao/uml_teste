{

@author Fabio Saraiva
*******************************************************************************}
Unit ClienteController;

interface

uses
  Classes, SQLExpr, SysUtils, ClienteVO,
 FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TClienteController = class
  public
    class Function ConsultaCodigo(pCodigo: String): TClienteVO;
    class Procedure UpdateCliente(pCodigo,pTipoCli,pDoc:String);
end;

implementation
uses dados, rotinas;
var
  ConsultaSQL: String;
  Query: TFDQuery;



{ TProdutoController }

class function TClienteController.ConsultaCodigo(
  pCodigo: String): TClienteVO;
var
  Cliente: TClienteVO;
begin
  ConsultaSQL := 'select * from tabcli where codigo=:p00';
  try
    try
      If TipoString(pCodigo) Then
        pCodigo:=StrZero(StrToInt(pCodigo),5);
      Query := TFDQuery.Create(nil);
      Query.Connection:=dmMod.fdConPrinc;
      Query.sql.Text := ConsultaSQL;
      query.Params[0].asString:=pCodigo;
      Query.Open;
      If not query.IsEmpty Then
      begin
        Cliente := TClienteVO.Create;
        Cliente.Codigo   := Query.FieldByName('codigo').AsString;
        Cliente.nome     := Query.FieldByName('nome').AsString;
        Cliente.endereco := Query.FieldByName('endereco').AsString;
        Cliente.bairro   := Query.FieldByName('bairro').AsString;
        Cliente.cidade   := Query.FieldByName('cidade').AsString;
        Cliente.codbloqueio := Query.FieldByName('lktipo').AsInteger;
        Cliente.cnpj     := Query.FieldByName('cnpj').AsString;
        Cliente.cpf      := Query.FieldByName('cpf').AsString;
        Cliente.rg       := RemoveChar(Query.FieldByName('rg').AsString);
        cliente.limitecredito:=Query.FieldByName('limitecred').AsCurrency;
        cliente.renda:=Query.FieldByName('renda').AsCurrency;
        cliente.percentualrenda:=Query.FieldByName('percentualrenda').AsFloat;
        If Query.FieldByName('tagfisica').asString='S' Then
          cliente.tipopessoa:='F'
        else
          cliente.tipopessoa:='J';

        result := Cliente;
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

class procedure TClienteController.UpdateCliente(pCodigo,ptipoCli,pDoc: String);
Var
  qryQuery:TFDQuery;
  doc:string;

begin
   qryQuery:=TFDQuery.Create(nil);
   qryQuery.connection:=dmMod.fdConPrinc;
   if ptipocli='F' then
      doc:='cpf'
   Else
     doc:='cnpj';
   qryQuery.sql.add('update tabcli set '+doc+'=:p00 where codigo=:p01');
   qryQuery.params[0].asString:=pdoc;
   qryQuery.params[1].asString:=pcodigo;
   qryQuery.ExecSql;
   FreeAndNil(qryQuery);
  //
end;

end.
