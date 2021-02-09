unit formapgtoVO;

interface

Type

 TFormaPgtoVo=Class
 Private
    FFormaPgto: char;
    FDescricao: String;
    FValor:     Extended;
    FParcelas:  SmallInt;
    FVencimento: String;
    FValorParcela:Extended;

 Published
    property  FormaPgto: char read FFormapgto Write FFormapgto;
    property  Descricao: String read FDescricao Write FDescricao;
    property  Valor: Extended read FValor Write FValor;
    property  Parcelas: Smallint read FParcelas Write FParcelas;
    property  Vencimento: String read FVencimento Write FVencimento;
    property  Valorparcela: Extended read FValorParcela Write FValorParcela;

 end;


implementation

end.
