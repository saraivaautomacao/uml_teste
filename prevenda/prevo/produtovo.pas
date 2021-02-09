Unit ProdutoVo;

interface

type
  TProdutoVO = class
  private
    FCODIGO: String;
    FPRODUTO: String;
    FUNIDADE: String;
    FQUANT  : Extended;
    FPRECOVENDA: Extended;
    FPRECOCUSTO: Extended;
    FMOVESTOQUE:string;
    FCST:string;
    FIDCONTROLE:integer;
    FPRECOREVENDA: Extended;
    FDESCEXTRA: Extended;
    FDESCONTO: Extended;
    FCODSETOR: Integer;
  published
    property Codigo: String read FCODIGO write FCODIGO;
    property Produto: String read FPRODUTO write FPRODUTO;
    property Unidade: String read FUNIDADE write FUNIDADE;
    property Estoque : Extended read FQUANT write FQUANT;
    property PrecoVenda: Extended read FPRECOVENDA write FPRECOVENDA;
    property PrecoCusto: Extended read FPRECOCUSTO write FPRECOCUSTO;
    property MovEstoque: String read FMOVESTOQUE write FMOVESTOQUE;
    property cst: String read FCST write  FCST;
    property desconto: Extended read FDESCONTO  write FDESCONTO;
    property descontoExtra: Extended read FDESCEXTRA  write FDESCEXTRA;
    property codsetor: Integer read FCODSETOR  write FCODSETOR;
    property idcontrole: integer read FIDCONTROLE  write FIDCONTROLE;
    property PrecoRevenda: Extended read FPRECOREVENDA write FPRECOREVENDA;
  end;


implementation

end.
