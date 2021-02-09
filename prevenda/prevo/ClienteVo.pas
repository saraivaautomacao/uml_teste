unit ClienteVo;

interface
Type
  TClienteVo=Class
 Private
     FCODIGO:   String;
     FNOME:     String;
     FENDERECO: String;
     FBAIRRO:   String;
     FCIDADE:   String;
     FCODBLOQUEIO: Smallint;
     FCNPJ:     String;
     FCPF:      String;
     FRG:       String;
     FLIMITECREDITO: Extended;
     FTIPOPESSOA:string;
    FRENDA: extended;
    FPERCENTUALRENDA: extended;
 Published
    property codigo: string read FCODIGO write FCODIGO;
    property nome:   string read FNOME write FNOME;
    property endereco: string read FENDERECO write FENDERECO;
    property bairro: string read FBAIRRO write FBAIRRO;
    property cidade: string read FCIDADE write FCIDADE;
    property codbloqueio: smallint read FCODBLOQUEIO write FCODBLOQUEIO;
    property cnpj: string read FCNPJ write FCNPJ;
    property cpf: string read FCPF write FCPF;
    property rg:  string read FRG  write FRG;
    property limitecredito:  extended read FLIMITECREDITO write FLIMITECREDITO;
    property Renda: extended read FRENDA write FRENDA;
    property PercentualRenda:extended read FPERCENTUALRENDA write FPERCENTUALRENDA;
    property tipopessoa:  string read FTIPOPESSOA  write FTIPOPESSOA;

end;

implementation

end.
