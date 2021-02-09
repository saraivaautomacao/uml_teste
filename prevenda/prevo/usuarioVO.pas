unit usuarioVO;

interface
Type
   TUsuarioVo=Class
 Private
   FUSUARIO: string;
   FNIVEL:   string;
 Published
  property usuario: String read FUSUARIO write FUSUARIO;
  property nivel:  string  read  FNIVEL  write FNIVEL;
end;

implementation

end.
