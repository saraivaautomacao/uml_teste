unit configuracaovo;

interface

type
  TConfiguracaoVO = class
  private
    FImporEstoque: String;
    FEstNegativo: String;
    FPrazoCliente: Smallint;
    FImprimeComp: String;
    FAvancoLinha:Smallint;
    FNumeroPrevenda:Integer;
    FSenha: String;
  Published
     property ImporEstoque: String read FImporEstoque Write FImporEstoque;
     property EstoqueNegativo: String read FEstNegativo Write FEstNegativo;
     property PrazoCliente: Smallint read FPrazoCliente Write FPrazoCliente;
     property ImprimeComp: string read FImprimeComp Write FImprimeComp;
     property AvancoLinha: smallint read FAvancoLinha Write FAvancoLinha;
     property numeroprevenda: integer read  FNumeroPrevenda Write FNumeroPrevenda;
     property Senha:String read  FSenha Write FSenha;
  end;

implementation

end.
