unit vendedorvo;

interface
Type TVendedorVo=Class
   private
     FCODIGO: smallint;
     FNOME:   string;
     FSENHA:  string;
  published
    Property codigo: smallint  read FCODIGO write FCODIGO;
    Property nome: string  read FNOME write FNOME;
    Property senha: string  read FSENHA write FSENHA;
end;    
implementation
end.
