unit rotinas;

interface

Uses
   Variants, Windows, Messages, SysUtils, Classes, Graphics,
   Controls, Forms, Dialogs, qrctrls, ExtCtrls, Menus, Buttons, ComCtrls,
   stdctrls, jpeg,  dados2, extdlgs, Typinfo, printers, IdIcmpClient,db,
   winspool,   filectrl,inifiles, pngimage,DBGrids,REGISTRY,usuariovo,configuracaoVO,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;


function Alltrim(const Search: string): string;
Function Confirma(Mensagem: pWidechar): Integer;
Procedure Mensagem(Mensagem: Pchar);
Function Moedas(Valor: Currency; unid: String): Integer;
Function Extenso(nN: Real): ShortString;
Function StrZero(Valor: Real; Digitos: Integer): String;
Procedure Inicializa(b1, b2, b3, b4, b5: TSpeedButton);
Function Cgc(xCGC: String): Boolean;
Function Cpf(xCpf: String): Boolean;
Function ReverseStr(S: ShortString): ShortString;
Function RightStr(StrX: String; IntX: ShortInt): String;
Function ValidCartao(Const S: String): Boolean;
Procedure FechaIndice(Banco: TDataSet);
procedure Excecao(Sender: TObject; E: Exception);
Function TipoString(Texto: String): Boolean;
Function AbreviaNomes(Nome: String): String;
Function UltimodoMes(Mes, Ano: Word): TDateTime;
Function PrinterOnLine: Boolean;
Procedure Imprime(Linha: String; Avanco: Boolean; Destino: String);
Function TamStr(Texto: String; N: SmallInt; Direcao: Char): String;

Function TiraPonto(Valor: String): String;
function SysComputerName: string;
function FullFill(Str: String; FLen: byte; symb: Char): string;
function NumeroSerie(Unidade: Pchar): String;
Function GeraCod(Valor: String; N: SmallInt): String;
function ReplChar(const Ch: Char; const Len: Integer): string;
function PadL(const S: string; const Len: Integer; const Ch: Char): string;
function PadR(const S: string; const Len: Integer; const Ch: Char): string;
function GetBiosInfoAsText: string;
//function PasswordInputBox(const ACaption, APrompt: string): string;
procedure EnDecryptFile(INFName, OutFName: String; Chave: Word);
Function SerialNum(FDrive: String): String;
Function Codifica1(Senha: String): String;
function EliminarFormatacao(sTexto: String): String;
Function OnLine(Porta: Word): Boolean;
function GetBuildInfo: string;
function MesExtenso(Mes: Word): string;
Function GeraCodigo(Campo: String): Integer;
function RemoveChar(Const Texto: String): String;
procedure AtribuiProp(Comp: TComponent; Const PropName: string; Val: string);
function AchaComponente(Nome: string; F: TForm): TComponent;
function LeProp(Comp: TComponent; Const PropName: string): string;
function VerImpressoraONLINE: Cardinal;
function DataParaTexto(pData: TDate): string;

Function MenorDataValida(Ano, Mes, Dia: Word): TDateTime;
Function PegaSysDir: string;
Function FCnfSenha(Senha: string): string;
function RetZero(ZEROS: string; Quant: Integer): String;
Function Inscricao(Inscricao, Tipo: String): Boolean;
procedure Grava_Carga(codigo, Tipo: string);
Function Verifica_Aliquota(Aliq: string): Boolean;
Function TruncaValor(Value:Extended;Casas:Integer):Extended;
function Iif(Teste: Boolean; ValorTrue, ValorFalse:String): String; overload;
function Iif(Teste: Boolean; ValorTrue, ValorFalse:Real): Extended; overload;
function Iif(Teste: Boolean; ValorTrue, ValorFalse:Integer): Integer; overload;
//Procedure Log(Mensagem: String;const Nomearquivo: String='Log');

Procedure Imprime_Cabecalho;
function Codifica(Action, Src: String): String;
function GetHDNumber: string;
 function StrIsFloat(const S: string): boolean;
//Function LerChave:String;
//Function GravaChave:Boolean;

function ReadRegistry: string;
Function WriteRegistry(const chave:string):boolean;


//Rotina que usam dataset
//-------------------------------------------------------------------------------------

Procedure PesquisaAvancada(Tabela: TDataSet; Campo, Valor: String);
Function TotalReg(Banco: TDataSet): Integer;
Procedure CloseAll(modulo: TdataModule; Indice, Filtro: Boolean);
Procedure SaidaForm(Banco: TDataSet);
Function Estado(Banco: TDataSet): Boolean;
Procedure ATualiza(Banco: TDataset; Tipo: Integer);
Function Soma(Banco: TDataSet; Campo: String): String;
Function AutoIncrementoManual(Const pAlias: String; pTabela: String;pCampo: String): Integer;
Function Soma1(Banco: TDataSet; Campo: String): Variant;
Procedure GeraEt(Banco: TDataSet; Campo1: String; Campo2: String;Campo3: String; Quant: Integer);
Procedure Verifica(dsTemp: TDataSource);
Procedure CommitTab(Banco: TDataSet);
Procedure FiltraPeriodo(Banco: TDataSet; Data1: TDateTime; Data2: TDateTime; Mens: TLabel);
Procedure GeraEt1(Banco: TDataSet; Campo1: String; Campo11: String;Campo2: String; Campo3: String; Quant: Integer);
Function ImpFIscalModelo(Banco: TDataSet): Char;
Procedure ModoEdicao(Banco: TDataSet);
procedure ExibeFoto(DataSet : TDataSet; BlobFieldName : String; ImageExibicao :TImage);
procedure GravaFoto(DataSet : TDataSet; BlobFieldName, FileName : String);
procedure ExcluiFoto(DataSet : TDataSet; BlobFieldName : String);
Function VersaoExe: String;


Procedure Le_Imagem_JPEG_Rel(DataSet : TDataSet; BlobFieldName : String; Foto: TQrImage);
Function Pingador(HostName: String): boolean;

procedure ConfiguraRegiaoBR;
procedure TrimAppMemorySize;
function ExecAndWait(const FileName, Params: string; const WindowState: Word): boolean;
Procedure ConfiguraImpressora(modelo:string);
function GetDBGridIndex( DBGrid: TDBGrid; coluna: String ): integer;



Const
  Incluir = 1;
  Gravar = 2;
  Excluir = 3;
  Cancelar = 4;
  cJustif = #27#97#51;
  cEject = #12;
  { Tamanho da fonte }
  {c10cpi = #18;
  c12cpi = #27#77;
  c17cpi = #15;
  cIExpandido = #14;
  cFExpandido = #20;

  cINegrito = #27#71;
  cFNegrito = #27#72;
  cIItalico = #27#52;
  cFItalico = #27#53;}


  meses: array [0 .. 11] of Pchar = ('Janeiro', 'Fevereiro', 'Mar�o', 'Abril',
    'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro',
    'Dezembro');
  idAplicacao: string = '4178';

Var
  Botoes: Array [1 .. 5] Of TSpeedButton;
  // Usada para controles gerais
  Geral: Variant;
  Cabecalho, SitCaixa: Boolean;
  // tipo de impressora
  Rota, Modelo: String;
  PosRegistro: String;
  usuario:TusuarioVo;
  // informa ultima posicao do registro busca rapida

  aplicativo:string;
  cIExpandido:string= #14;
  cFExpandido:string =#20;
  cINegrito :string= #27#71;
  cFNegrito:string = #27#72;
  cIItalico:string = #27#52;
  cFItalico:string = #27#53;
  Guilhotina:string = #29 +'V'+ #1;
  c10cpi:String= ''; // #18;
  c12cpi:String= ''; //#27#77;
  c17cpi:String= ''; //#15;
  Gaveta:String='';
  senhapadrao:string='sa351*';
  configuracao:TconfiguracaoVo;
  ImpModelo,ImpName:String;
  CortarPApel:Boolean;
  AvancoLinha:Byte;
   ScreenWidth: LongInt =1366; {I designed my form in 800x600 mode.}
  ScreenHeight: LongInt = 768;

  implementation

Uses Dados1, dados3, dados;



Procedure ConfiguraImpressora(modelo:string);
Begin


   if (modelo='ELGIN')  then
   begin
     cINegrito:= #27 + 'E' + #1;
     cFNegrito:= #27 + 'E' + #0;
     cIExpandido:= #29  + '!' + #16;
     cFExpandido:= #29  + '!' + #0;
     Guilhotina:=#10#10#29+  'V' + #1;
     Gaveta:= #29+#102+#0;
   end
   Else if  (modelo='EPSON') then
   begin
     cINegrito:= #27 + 'E' + #1;
     cFNegrito:= #27 + 'E' + #0;
     cIExpandido:= #29  + '!' + #16;
     cFExpandido:= #29  + '!' + #0;
      Guilhotina:=#10#10#29+  'V' + #1;
      Gaveta:= #29#102#0;
    // Chr(27)+Chr(112)+Chr(0)+Chr(60)+Chr(120)


   end
   Else if (modelo='DIEBOLD') then
   Begin
     cIExpandido:= #14;
     cFExpandido:=#20;
     cINegrito := #27#71;
     cFNegrito:= #27#72;
     cIItalico:= #27#52;
     cFItalico:= #27#53;
     Guilhotina:= #10#27#119;
     Gaveta:=#27+'&'+'0'+#12+#48;
  end
  Else if (modelo='DARUMA') then
  Begin
     gaveta:= #254;
     guilhotina:=#27+ 'm';
     cINegrito:= #27 + 'E';
     cFNegrito:= #27 + 'F';
     cIExpandido:= #27  + 'W' + #1;
     cFExpandido:= #27  + 'W' + #0;

  End
  Else if (modelo='BEMATECH') then
  Begin
      //gaveta:= #254;
     guilhotina:=#10#27+ 'm';
     cINegrito:= #27 + 'E';
     cFNegrito:= #27 + 'F';
     cIExpandido:= #27  + 'W' + #1;
     cFExpandido:= #27  + 'W' + #0;
  End
  Else If (modelo='GENERICA') Then
  begin
     guilhotina:=#10#27+ 'm';
     cINegrito:= #27 + 'E' + #1;
     cFNegrito:= #27 + 'E' + #0;
     cIExpandido:=#29 + '!' + #16;
     cFExpandido:=#29  + '!' + #0;
     c12cpi := #27 + 'M' + #1;
     c17cpi :=  #27 + 'M' + #1;
     c10cpi := #27 + 'M' + #1;
  end;
End;


function ExecAndWait(const FileName, Params: string; const WindowState: Word): boolean;
var
SUInfo: TStartupInfo;
ProcInfo: TProcessInformation;
CmdLine: string;

begin
{ Coloca o nome do arquivo entre aspas. Isto � necess�rio devido aos espa�os contidos em nomes longos }
CmdLine := '"' + Filename + '"' + ' "' + Params + '"';
FillChar(SUInfo, SizeOf(SUInfo), #0);
with SUInfo do
begin
cb := SizeOf(SUInfo);
dwFlags := STARTF_USESHOWWINDOW;
wShowWindow := WindowState;
end;
Result := CreateProcess(nil, PwideChar(CmdLine), nil, nil, false,
CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
nil, SUInfo, ProcInfo);
{ Aguarda at� ser finalizado }
if Result then
begin
WaitForSingleObject(ProcInfo.hProcess, INFINITE);
{ Libera os Handles }
CloseHandle(ProcInfo.hProcess);
CloseHandle(ProcInfo.hThread);
end;
end;


// ReadRegistry
function ReadRegistry: string;
var
  Reg: TRegistry;
begin
  result := '';
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\SOFTWARE\Tecbyte Automacao\protect\SGE', False) then
      Result :=  Codifica('D', Reg.ReadString('LockInfo'));
  finally
    Reg.CloseKey;
    Reg.Free;
  end;
end;

// WriteRegistry
Function WriteRegistry(const chave:String) :boolean;
var
  Reg: TRegistry;
begin
 try
  result:=true;
  Reg := TRegistry.Create(KEY_WRITE);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\SOFTWARE\Tecbyte Automacao\protect\SGE', True) then
      Reg.WriteString('LockInfo',Codifica('C',trim(chave)));
  Except
    Result:=false;
  end;
 Finally
   Reg.CloseKey;
   Reg.Free;
 end;
end;


function DataParaTexto(pData: TDate): string;
begin
  if pData > 0 then
    Result := FormatDateTime('YYYY-MM-DD',pData)
  else
    Result := '0000-00-00';
end;
 function StrIsFloat(const S: string): boolean;
begin
  try
  StrToFloat(S);
  Result := true;
  except
  Result := false;
  end;
end;
function Codifica(Action, Src: String): String;
Label Fim; //Fun��o para criptografar e descriptografar string's
var
  KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  try
    if (Src = '') Then
    begin
      Result:= '';
      Goto Fim;
    end;
   Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
    Dest := '';
    KeyLen := Length(Key);
    KeyPos := 0;
    SrcPos := 0;
    SrcAsc := 0;
    Range := 256;
    if (Action = UpperCase('C')) then
    begin
      Randomize;
      OffSet := Random(Range);
      Dest := Format('%1.2x',[OffSet]);
      for SrcPos := 1 to Length(Src) do
      begin
        Application.ProcessMessages;
        SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
        if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
        SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
        Dest := Dest + Format('%1.2x',[SrcAsc]);
        OffSet := SrcAsc;
      end;
    end
    Else if (Action = UpperCase('D')) then
    begin
      OffSet := StrToInt('$'+ copy(Src,1,2));
      SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
    end;
    Result:= Dest;
    Fim:
  Except
    Result:= '1';

  end;
end;

//remove garbage
procedure TrimAppMemorySize;
var
MainHandle : THandle;
begin
  try
   MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
  SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
  CloseHandle(MainHandle) ;
 except
 end;
  Application.ProcessMessages;
end;


procedure ConfiguraRegiaoBR;
Var
   WFormatoBR: TFormatSettings;
begin
  WFormatoBR                     := TFormatSettings.Create;
  WFormatoBR.DecimalSeparator    := ',';
  WFormatoBR.ThousandSeparator   := '.';
  WFormatoBR.CurrencyDecimals    := 2;
  WFormatoBR.DateSeparator       := '/';
  WFormatoBR.ShortDateFormat     := 'dd/mm/yyyy';
  WFormatoBR.LongDateFormat      := 'dd/mm/yyyy';
  WFormatoBR.TimeSeparator       := ':';
  WFormatoBR.TimeAMString        := 'AM';
  WFormatoBR.TimePMString        := 'PM';
  WFormatoBR.ShortTimeFormat     := 'hh:nn';
  WFormatoBR.LongTimeFormat      := 'hh:nn:ss';
  WFormatoBR.CurrencyString      := 'R$';
  System.SysUtils.FormatSettings := WFormatoBR;
end;


Procedure Imprime_cabecalho;
Begin


  { dmMod.tblEmpresa.Open;
   dmMod.RDprint1.Abrir;
   dmMod.RDprint1.Impressora       := BOBINA;  // Depois do Abrir para FOR�AR o modelo BOBINA (sem comando)
   dmMod.RDprint1.TamanhoQteLinhas := 1;       // Evita o salto indesejado no finaldmMod.
   dmMod.RDprint1.MostrarProgresso := false;
   dmMod.RDprint1.Acentuacao       := SemAcento;
   dmMod.RDprint1.Imp(01,02,cIexpandido+dmMod.tblEmpresaFantasia.Value+cFExpandido);
   dmMod.RDprint1.Imp(02,02,'CNPJ:'+dmMod.tblEmpresaCGC.asString);
   dmMod.RDprint1.Imp(03,02,dmMod.tblEmpresaEndereco.asString+', '+dmMod.tblEmpresaNumero.asString);
   dmMod.RDprint1.Imp(04,02,dmMod.tblEmpresafone1.Value+' '+dmMod.tblEmpresaCidade.Value+'-'+dmMod.tblEmpresaEstado.Value);
   dmMod.RDprint1.Imp(05,02, 'DATA: ' + DateToStr(Date) + '  HORA: ' + TimeToStr(time));
   dmMod.RDprint1.Imp(06,02,'  ');
   dmMod.RDprint1.Imp(07,02,'  ');
   dmMOd.RDPrint1.Fechar;
  finally
   dmMod.tblEmpresa.Close;
  end;    }
end;




function GetDBGridIndex( DBGrid: TDBGrid; coluna: String ): integer;
Var
   Indice,i:Smallint;
Begin
  indice:= 0;
  for i := 0 to DBGrid.Columns.Count - 1 do
    if UpperCase(coluna) = UpperCase(DBGrid.Columns.Items[i].FieldName) then
  Indice := i;
  Result:= indice;
end;


Function Pingador(HostName: String): boolean;
var
  i, Soma, BytesRecebidos: Integer;
  PckEntregue: Array [1 .. 3] of Integer;
  ICMP: TIdIcmpClient;
begin
  try
    ICMP := TIdIcmpClient.Create(nil);
    try
      ICMP.Host := HostName;
      ICMP.ReceiveTimeout := 500;
      ICMP.Ping;
      if ICMP.ReplyStatus.BytesReceived > 0 then
        result := true
      else
        result := false;
    except
      result := false;
    end;

  finally
    ICMP.Destroy;
  end;
end;


function Iif(Teste: Boolean; ValorTrue, ValorFalse:String): String; overload;
begin
  If Teste then
    Result := ValorTrue
  else
    Result := ValorFalse;
end;

function Iif(Teste: Boolean; ValorTrue, ValorFalse:Real): Extended;
begin
  If Teste then
    Result := ValorTrue
  else
    Result := ValorFalse;
end;

function Iif(Teste: Boolean; ValorTrue, ValorFalse:Integer): Integer;
begin
  If Teste then
    Result := ValorTrue
  else
    Result := ValorFalse;
end;



 Function TruncaValor(Value:Extended;Casas:Integer):Extended;
Var sValor:String;
    nPos:Integer;
begin
   //Transforma o valor em string
   sValor := FloatToStr(Value);

   //Verifica se possui ponto decimal
   nPos := Pos(FormatSettings.DecimalSeparator,sValor);
   If ( nPos > 0 ) Then begin
      sValor := Copy(sValor,1,nPos+Casas);
   End;

   Result := StrToFloat(sValor);
end;
function BuscaTroca(Text, Busca, Troca: string): string;
{ Substitui um caractere dentro da string }
var
  N: Integer;
begin
  for N := 1 to length(Text) do
  begin
    if Copy(Text, N, 1) = Busca then
    begin
      Delete(Text, N, 1);
      Insert(Troca, Text, N);
    end;
  end;
  Result := Text;
end;

Function Verifica_Aliquota(Aliq: string): Boolean;
Var
  Cont: Integer;
  Aliquota: Array [1 .. 11] of String;
begin
  Aliquota[1] := 'N';
  Aliquota[2] := 'NN';
  Aliquota[3] := 'F';
  Aliquota[4] := 'FF';
  Aliquota[5] := 'I';
  Aliquota[6] := 'II';
  Aliquota[7] := '07';
  Aliquota[9] := '12';
  Aliquota[10] := '17';
  Aliquota[11] := '25';
  Aliq := trim(Aliq);
  Result := false;
  for Cont := 1 to 11 do
  begin
    if Aliq = Aliquota[Cont] then
    begin
      Result := true;
      break;
    end;
  end;
end;

function IsInteger(TestaString: String): Boolean;
begin
  Result := true;
  try
    StrToInt(TestaString);
  except
    On EConvertError do
      Result := false;
  end;
end;

Function AbrangeInteger(Valor: string): Boolean;
var
  Valor1: Integer;
begin
  Result := true;
  try
    Valor1 := StrToInt(Valor);
  Except
    Result := false;
  end;
End;


procedure Grava_Carga(codigo, Tipo: string);
begin
  //apenas para comentar - removido carga automatica
end;




function RetZero(ZEROS: string; Quant: Integer): String;
var
  I, Tamanho: Integer;
  aux: string;
begin
  aux := ZEROS;
  Tamanho := length(ZEROS);
  ZEROS := '';
  If Tamanho >= Quant Then
  Begin
    RetZero := aux;
    exit;
  End;
  for I := 1 to Quant - Tamanho do
    ZEROS := ZEROS + '0';
  aux := aux + ZEROS;
  RetZero := aux;
end;


Function FCnfSenha(Senha: string): string;
var

  I, p, ntam: Longint;
  cLet, cStr, cnum, cRes: string;

begin

  cnum := '92547816781692586965';
  cStr := '1ABC2DEF3GHI4JKL5MN6PQR7STU8WXY9Z';
  ntam := length(Senha);
  cRes := '';

  For I := 1 To ntam do
  begin
    cLet := Copy(Senha, I, 1);
    p := Pos(cLet, cStr) + StrToInt(Copy(cnum, I, 1));
    p := IIf(p > ntam, p - ntam, p);
    cRes := cRes + Copy(cStr, p, 1);
  end;
  Result := cRes;

end;

Function PegaSysDir: string;
var
  MeuBuffer: Array [1 .. 128] of Char;
  retorno: Integer;
Begin
  retorno := GetSystemDirectory(@MeuBuffer, 128);
  if (retorno > 128) OR (retorno = 0) then
    PegaSysDir := ''
  else
    PegaSysDir := StrPas(PAnsiChar(@MeuBuffer));
End;

Function MenorDataValida(Ano, Mes, Dia: Word): TDateTime;
Var
  Continua: Boolean;
  DataAux: TDateTime;
begin
  Continua := true;
  DataAux := date;
  while Continua do
    Try
      DataAux := EncodeDate(Ano, Mes, Dia);
      Continua := false;
    Except
      Dec(Dia);
    End;
  MenorDataValida := DataAux;
end;


function GetCurrentPrinterHandle: THandle;
var
  Device, Driver, Port: array [0 .. 255] of Char;
  hDeviceMode: THandle;
begin
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  if not OpenPrinter(@Device, Result, nil) then
    RaiseLastWin32Error;
end;

function VerImpressoraONLINE: Cardinal;
Begin
  Result := 1;
End;
{ var
  hPrinter  : THandle;
  pInfo:  PPrinterInfo2;
  bytesNeeded: DWORD;
  begin
  hprinter := GetCurrentPrinterHandle;
  try
  Winspool.GetPrinter( hPrinter, 2, Nil, 0, @bytesNeeded );
  pInfo := AllocMem( bytesNeeded );
  try
  Winspool.GetPrinter( hPrinter, 2, pInfo, bytesNeeded, @bytesNeeded );
  Result := pInfo^.Status;
  ShowmEssage(IntToStr(Result));
  finally
  FreeMem( pInfo );
  end;
  finally
  ClosePrinter( hPrinter );
  end; }

Procedure PesquisaAvancada(Tabela: TDataSet; Campo, Valor: String);
var
  PrStr: String; // Vai obter o texto de Edit1.Text
  PrTam: Integer; // Tamanho do texto em Edit1.Text
  DbStr: String; // Vai obter o texto no registro da Tabela
  DbTam: Integer; // Tamanho do texto no registro da Tabela

  LocalStr: Integer; // Vari�vel de Localiza��o na String
  Continua: String; // Vari�vel de Controle no Loop
begin
  Tabela.first;
  Tabela.DisableControls;

  PrStr := TrimRight(Valor);
  PrTam := length(PrStr);

  While not Tabela.eof Do
  Begin
    DbStr := TrimRight(Tabela.FieldByname('Produto').asString);
    DbTam := length(DbStr);
    LocalStr := 1;
    Continua := 'S';
    While Continua = 'S' Do
    Begin
      If PrStr = Copy(DbStr, LocalStr, PrTam) Then
        Continua := 'N'
      else
      Begin
        LocalStr := LocalStr + 1;
        Continua := 'S';
        If (LocalStr + PrTam) > (DbTam + 1) Then
          break;
      end;
    end;
    If Continua = 'N' Then
    Begin
      break;
    End;
    Tabela.next;

  end;
  If Tabela.eof Then
    Mensagem('refer�ncia n�o encontrada');
  Tabela.EnableControls;
end;

function AchaComponente(Nome: string; F: TForm): TComponent;
var
  I: Integer;
  C: TComponent;
begin
  Result := nil;
  // Converte nome para mai�scula
  Nome := Uppercase(Nome);
  // Varre o formul�rio � procura do componente
  for I := 0 to F.ComponentCount - 1 do
  begin
    C := F.Components[I];
    // O nome est� correto?
    if Uppercase(C.Name) = Nome then
    begin
      // Retorna o componente
      Result := C;
      // Sai do loop
      exit;
    end;
  end;
end;

// Atibui propriedade ao componente, dado seu valor como string
procedure AtribuiProp(Comp: TComponent; Const PropName: string; Val: string);
var
  PInfo: PPropInfo;
begin
  // Pega informa��es de tipo da propriedade
  PInfo := GetPropInfo(Comp.ClassInfo, PropName);
  // Achou?
  if PInfo <> nil then
  begin
    // Trata conforme o tipo
    case PInfo^.Proptype^.Kind of
      tkInteger:
        SetOrdProp(Comp, PInfo, StrToInt(Val));
      tkChar, tkWChar:
        SetOrdProp(Comp, PInfo, ord(Val[1]));
      tkEnumeration:
        SetOrdProp(Comp, PInfo, GetEnumValue(PInfo^.Proptype^, Val));
      tkFloat:
        SetFloatProp(Comp, PInfo, StrToFloat(Val));
      tkString, tkLString, tkWString:
        SetStrProp(Comp, PInfo, Val);
      tkVariant:
        SetVariantProp(Comp, PInfo, Val);
      tkInt64:
        SetInt64Prop(Comp, PInfo, StrToInt64(Val));
    else
      ShowMessage('Este tipo n�o � suportado por este programa');
    end;
  end
  else
    ShowMessage('Propriedade n�o achada');
end;

// L� valor da propriedade do componente
function LeProp(Comp: TComponent; Const PropName: string): string;
var
  PInfo: PPropInfo;
begin
  Result := '';
  // Pega informa��es de tipo da propriedade
  PInfo := GetPropInfo(Comp.ClassInfo, PropName);
  // Achou?
  if PInfo <> nil then
  begin
    // Trata conforme o tipo
    case PInfo^.Proptype^.Kind of
      tkInteger:
        Result := InttoStr(GetOrdProp(Comp, PInfo));
      tkChar, tkWChar:
        Result := Char(GetOrdProp(Comp, PInfo));
      tkEnumeration:
        Result := GetEnumName(PInfo^.Proptype^, GetOrdProp(Comp, PInfo));
      tkFloat:
        Result := FloatToStr(GetFloatProp(Comp, PInfo));
      tkString, tkLString, tkWString:
        Result := GetStrProp(Comp, PInfo);
      tkVariant:
        GetVariantProp(Comp, PInfo);
      tkInt64:
        Result := InttoStr(GetInt64Prop(Comp, PInfo));
    else
      ShowMessage('Este tipo n�o � suportado por este programa');
    end;
  end
  else
    ShowMessage('Propriedade n�o achada');
end;

function RemoveChar(Const Texto: String): String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
  I: Integer;
  S: string;
begin
  S := '';
  for I := 1 To length(Texto) Do
  begin
    if (Texto[I] in ['0' .. '9']) then
    begin
      S := S + Copy(Texto, I, 1);
    end;
  end;
  Result := S;
end;

Procedure GeraEt1(Banco: TDataSet; Campo1: String; Campo11: String;
  Campo2: String; Campo3: String; Quant: Integer);
Var
  Cont: Integer;
Begin
  For Cont := 1 To Quant Do
  Begin
    Banco.append;
    Banco.FieldByname('Descricao1').asString := Copy(Campo1, 1, 32);
    Banco.FieldByname('Descricao2').asString := Copy(Campo2, 1, 32);
    Banco.FieldByname('Descricao3').asString := Copy(Campo3, 1, 32);
    Banco.FieldByname('Descricao4').asString := Copy(Campo11, 1, 32);
    Banco.Post;
  End;
End;


Function ImpFIscalModelo(Banco: TDataSet): Char;
Begin
  If Not Banco.active Then
    Banco.open;
  If Banco.FieldByname('modelo').asString = 'Daruma Sigtron 345' Then
    Result := '0'
  Else If Banco.FieldByname('modelo').asString = 'Bematech' Then
    Result := '1'
  Else If Banco.FieldByname('modelo').asString = 'Zanthus' Then
    Result := '2';
End;

function MesExtenso(Mes: Word): string;
const
  meses: array [0 .. 11] of Pchar = ('Janeiro', 'Fevereiro', 'Mar�o', 'Abril',
    'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro',
    'Dezembro');
begin
  Result := meses[Mes - 1];
End;

Function GeraCodigo(Campo: String): Integer;
var
   query:TFDQuery;
Begin
  try
   query:=TFDQuery.Create(nil);
   query.connection:=dmMod.fdConPrinc;
   query.sql.text:='select '+campo +' from codigoinc';
   query.open;
   Result := query.FieldByname(Campo).asInteger;
   query.close;
   query.sql.Text:='update codigoinc  set '+campo+'='+campo+'+ :campo1';
   query.parambyname('Campo1').asInteger := 1 ;
   query.execsql;
  finally
     FreeAndNil(query);
  end;
End;


Procedure Le_Imagem_JPEG_Rel(DataSet : TDataSet; BlobFieldName : String; Foto: TQrImage);
Var
  Jpg : TJpegImage;
  Png : TPngImage;
  Bitmap : TBitmap;
  Stream:TStream;
  erro:boolean;
begin
  if not(DataSet.IsEmpty) and not
    ((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
  begin
      Stream := TMemoryStream.Create;
      Jpg := TJpegImage.Create;
      Png := TPngImage.Create;
      bitMap:=TBitMap.Create;
      try
        TBlobField(DataSet.FieldByName(BlobFieldName)).SaveToStream(Stream);
        Stream.Position := 0;
        try
          Jpg.LoadFromStream(Stream);
          foto.Picture.Assign(Jpg);
        except On E: Exception Do
         try
           Stream.Position := 0;
           png.LoadFromStream(Stream);
           foto.Picture.Assign(png);
         except  On E: Exception Do
         begin
              Stream.Position := 0;
              bitmap.LoadFromStream(Stream);
              foto.Picture.Assign(bitmap);
            end;
          end;
        end;
      Finally
        Stream.Free;
        Jpg.Free;
        bitmap.free;
        png.free;
     end;
  end
  else
   foto.Picture.Assign(nil);
end;







procedure ExcluiFoto(DataSet : TDataSet; BlobFieldName : String);
begin
 if not((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
   if not(DataSet.State in [dsEdit,dsInsert]) Then
      dataset.edit;
   (DataSet.FieldByName(BlobFieldName) as TBlobField).Clear;

end;

procedure GravaFoto(DataSet : TDataSet; BlobFieldName, FileName : String);
var
   ext : string;
   stImagem: TFileStream;
Begin
  If not  (DataSet.State in [dsEdit, dsInsert]) Then
       DataSet.edit;
  ext := UpperCase(ExtractFileExt(FileName));
  if (ext <> '.BMP') and (ext <> '.JPG') and (ext <> '.JPEG') and  (ext <> '.PNG') then
  begin
    raise EAccessViolation.Create(
      'Formato de imagem n�o suportado! Formato suportado: Jpeg ou Bitmap');
    Abort;
  end;
  stImagem := TFileStream.Create( FileName, fmOpenRead Or fmShareDenyWrite );
  Try
    TBlobField( DataSet.FieldByName( BlobFieldName ) ).LoadFromStream( stImagem );
  Finally
    stImagem.Free;
  End;
end;



procedure ExibeFoto(DataSet : TDataSet; BlobFieldName : String; ImageExibicao :TImage);
Var
  Jpg : TJpegImage;
  Png : TPngImage;
  Bitmap : TBitmap;
  Stream:TStream;
  erro:boolean;
begin
  if not(DataSet.IsEmpty) and not
    ((DataSet.FieldByName(BlobFieldName) as TBlobField).IsNull) then
  begin
      Stream := TMemoryStream.Create;
      Jpg := TJpegImage.Create;
      Png := TPngImage.Create;
      bitMap:=TBitMap.Create;
      try
        TBlobField(DataSet.FieldByName(BlobFieldName)).SaveToStream(Stream);
        Stream.Position := 0;
        try
          Jpg.LoadFromStream(Stream);
          ImageExibicao.Picture.Assign(Jpg);
        except On E: Exception Do
         try
           Stream.Position := 0;
           png.LoadFromStream(Stream);
           ImageExibicao.Picture.Assign(png);
         except  On E: Exception Do
         begin
              Stream.Position := 0;
              bitmap.LoadFromStream(Stream);
              ImageExibicao.Picture.Assign(bitmap);
            end;
          end;
        end;
      Finally
        Stream.Free;
        Jpg.Free;
        bitmap.free;
        png.free;
     end;
  end
  else
   ImageExibicao.Picture.Assign(nil);
end;




function GetBuildInfo: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog: string;
begin
  Prog := Application.ExeName;
  VerInfoSize := GetFileVersionInfoSize(Pchar(Prog), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(Pchar(Prog), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
  Result := Copy(InttoStr(100 + V1), 3, 2) + '.' + Copy(InttoStr(100 + V2), 3,
    2) + '.' + Copy(InttoStr(100 + V3), 3, 2) + '.' + Copy(InttoStr(100 + V4),
    3, 2);
end;

Function VersaoExe: String;
type
PFFI = ^vs_FixedFileInfo;
var
F : PFFI;
Handle : Dword;
Len : Longint;
Data : Pchar;
Buffer : Pointer;
Tamanho : Dword;
Parquivo: Pchar;
Arquivo : String;
begin
Arquivo := Application.ExeName;
Parquivo := StrAlloc(Length(Arquivo) + 1);
StrPcopy(Parquivo, Arquivo);
Len := GetFileVersionInfoSize(Parquivo, Handle);
Result := '';
if Len > 0 then
begin
Data:=StrAlloc(Len+1);
if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
begin
VerQueryValue(Data, '\',Buffer,Tamanho);
F := PFFI(Buffer);
Result := Format('%d.%d.%d.%d',
[HiWord(F^.dwFileVersionMs),
LoWord(F^.dwFileVersionMs),
HiWord(F^.dwFileVersionLs),
Loword(F^.dwFileVersionLs)]
);
end;
StrDispose(Data);
end;
StrDispose(Parquivo);
end;


Function OnLine(Porta: Word): Boolean;
bEGIN
  { Const
    Portas :Byte = $02;
    Var
    Res :Byte;
    Begin
    Try

    Asm
    mov ah,Portas;
    mov dx,Porta;
    Int $17;
    mov Res,ah;
    end;
    Except
    Result:=true;

    END; }
  // Result := (Res and $80) = $80; {Testa o valor de sa�da}
  Result := true;
End;

Procedure FiltraPeriodo(Banco: TDataSet; Data1: TDateTime; Data2: TDateTime;
  Mens: TLabel);
Begin (Banco)
  .close;
  (Banco AS TFDQuery).Params[0].ASDateTime := Data1;
  (Banco AS TFDQuery).Params[1].ASDateTime := Data2;
  Banco.open;
  Mens.CAption := 'De ' + DatetoStr(Data1) + ' at� ' + DatetoStr(Data2);

End;

function EliminarFormatacao(sTexto: String): String;
var
  iPos: Integer;
  iTamanho: Integer;
  sTextoSemFormato: String;
  sCaractere: String;
  sCaracMascaras: String;
begin
  Result := sTexto;
  if sTexto = '' then
  begin
    exit;
  end;
  sTextoSemFormato := '';
  sCaracMascaras := './><_+=[]{}()-$&@*,';
  iTamanho := length(sTexto);
  for iPos := 1 to iTamanho do
  begin
    sCaractere := Copy(sTexto, iPos, 1);
    if Pos(sCaractere, sCaracMascaras) = 0 then
    begin
      sTextoSemFormato := sTextoSemFormato + sCaractere;
    end;
  end;
  Result := sTextoSemFormato;
end;

Function Codifica1(Senha: String): String;
Var
  nX: Integer;
  cCod: String[9];
  cLetra: Char;
Begin
  If length(Senha) < 9 Then
    For nX := length(Senha) + 1 To 9 Do
      Senha := Senha + ' ';
  cCod := Senha;
  Senha := '';
  For nX := 9 DownTo 1 Do
    Senha := Senha + Copy(cCod, nX, 1);
  Senha := Copy(Senha, 4, 3) + Copy(Senha, 1, 3) + Copy(Senha, 7, 3);
  cCod := '';
  For nX := 1 To 9 Do
  Begin
    If nX / 2 = Int(nX / 2) Then
    Begin
      IF ord(Senha[nX]) = 255 Then
        cCod := cCod + Chr(0)
      Else
        cCod := cCod + Chr(ord(Senha[nX]) + 1);
    End
    Else
    Begin
      If ord(Senha[nX]) = 0 Then
        cCod := cCod + Chr(255)
      Else
        cCod := cCod + Chr(ord(Senha[nX]) - 1)
    End;
  End;
  Codifica1 := cCod;
End;

procedure EnDecryptFile(INFName, OutFName: String; Chave: Word);
var
  InMS, OutMS: TMemoryStream;
  I: Integer;
  C: byte;
begin
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;
  try
    InMS.LoadFromFile(INFName);
    InMS.Position := 0;
    for I := 0 to InMS.Size - 1 do
    begin
      InMS.Read(C, 1);
      C := (C xor not(ord(Chave shr I)));
      OutMS.Write(C, 1);
    end;
    OutMS.SaveToFile(OutFName);
  finally
    InMS.Free;
    OutMS.Free;
  end;
end;

Function SerialNum(FDrive: String): String;
Var
  Serial: DWORD;
  DirLen, Flags: DWORD;
  DLabel: Array [0 .. 11] of Char;
begin
  Try
    GetVolumeInformation(Pchar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  Except
    Result := '';
  end;
end;
{
function PasswordInputBox(const ACaption, APrompt: string): string;
var
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
  value: string;
  I: Integer;
  Buffer: array [0 .. 51] of Char;
begin
  Result := '';
  Form := TForm.Create(Application);
  with Form do
    try
      Canvas.Font := Font;
      for I := 0 to 25 do
        Buffer[I] := Chr(I + ord('A'));
      for I := 0 to 25 do
        Buffer[I + 26] := Chr(I + ord('a'));
      GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(DialogUnits));
      DialogUnits.X := DialogUnits.X div 52;
      BorderStyle := bsDialog;
      CAption := ACaption;
      ClientWidth := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(63, DialogUnits.Y, 8);
      Position := poScreenCenter;
      Prompt := TLabel.Create(Form);
      with Prompt do
      begin
        Parent := Form;
        AutoSize := true;
        Left := MulDiv(8, DialogUnits.X, 4);
        Top := MulDiv(8, DialogUnits.Y, 8);
        CAption := APrompt;
      end;
      Edit := TEdit.Create(Form);
      with Edit do
      begin
        Parent := Form;
        Left := Prompt.Left;
        Top := MulDiv(19, DialogUnits.Y, 8);
        Width := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        PasswordChar := '*';
        SelectAll;
      end;
      ButtonTop := MulDiv(41, DialogUnits.Y, 8);
      ButtonWidth := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do
      begin
        Parent := Form;
        CAption := 'OK';
        ModalResult := mrOk;
        Default := true;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do
      begin
        Parent := Form;
        CAption := 'Cancel';
        ModalResult := mrCancel;
        Cancel := true;
        SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      if ShowModal = mrOk then
      begin
        value := Edit.Text;
        Result := value;
      end
      Else
        Result := '';
    finally
      Form.Free;
      Form := nil;
    end;
end;}

function GetBiosInfoAsText: string;
var
  p, q: Pchar;
begin
  q := nil;
  p := Pchar(Ptr($FE000));
  repeat
    if q <> nil then
    begin
      if not(p^ in [#10, #13, ' ' .. '~', '�', '�']) then
      begin
        if (p^ = #0) and (p - q >= 8) then
        begin
          Result := Result + TrimRight(String(q)) + #13#10;
        end;
        q := nil;
      end;
    end
    else if p^ in ['!' .. '~', '�', '�'] then
      q := p;
    inc(p);
  until p > Pchar(Ptr($FFFFF));
  Result := TrimRight(Result);
end;

function ReplChar(const Ch: Char; const Len: Integer): string;
var
  I: Integer;
begin
  SetLength(Result, Len);
  for I := 1 to Len do
    Result[I] := Ch;
end;

function PadL(const S: string; const Len: Integer; const Ch: Char): string;
var
  LenS: Integer;
begin
  LenS := length(S);
  if LenS < Len then
    Result := ReplChar(Ch, Len - LenS) + S
  else if LenS > Len then
    Result := Copy(S, LenS - Len + 1, Len)
  else
    Result := S;
end;

function PadR(const S: string; const Len: Integer; const Ch: Char): string;
var
  LenS: Integer;
begin
  LenS := length(S);
  if LenS < Len then
    Result := S + ReplChar(Ch, Len - LenS)
  else if LenS > Len then
    Result := Copy(S, 1, Len)
  else
    Result := S;
end;

Function GeraCod(Valor: String; N: SmallInt): String;
Begin
  Result := Valor;
  If (length(Alltrim(Valor)) = 0) or (length(Alltrim(Valor)) > N) Then
    exit;

  If TipoString(Valor) Then
    If length(Valor) <= N Then
      Result := StrZero((StrToFloat(Valor)), N);
End;

function NumeroSerie(Unidade: Pchar): String;
{ Retorna o N�mero serial da unidade especificada }
var
  VolName, SysName: AnsiString;
  SerialNo, MaxCLength, FileFlags: DWORD;
begin
  try
    SetLength(VolName, 255);
    SetLength(SysName, 255);
    GetVolumeInformation(Unidade, Pchar(VolName), 255, @SerialNo, MaxCLength,
      FileFlags, Pchar(SysName), 255);
    Result := IntToHex(SerialNo, 8);
  except
    Result := ' ';
  end;
end;

 // GetHDNumber
function GetHDNumber: string;
var
  LabName: array[0..199] of Char;
  FileSys: array[0..19] of Char;
  SerNumber, CompLen, SysFlags: DWORD;
begin
  if GetVolumeInformation('C:\', @LabName, 200, @SerNumber, CompLen,
    SysFlags, @FileSys, 20) then
    Result := Format('%.8x', [SerNumber]);
end;

function FullFill(Str: String; FLen: byte; symb: Char): string;
// Preenche o restante da string com um caractere especificado
var
  S: String;
  I: byte;
begin
  S := Str;
  if length(S) >= FLen then
  begin
    Result := S;
    exit;
  end;
  for I := length(S) to FLen do
  begin
    S := S + symb;
  end;
  Result := S;
end;

Procedure GeraEt(Banco: TDataSet; Campo1: String; Campo2: String;
  Campo3: String; Quant: Integer);
Var
  Cont: Integer;
Begin
  For Cont := 1 To Quant Do
  Begin
    Banco.append;
    Banco.FieldByname('Descricao1').asString := Campo1;
    Banco.FieldByname('Descricao2').asString := Campo2;
    Banco.FieldByname('Descricao3').asString := Campo3;
    Banco.Post;
  End;
End;

Function TamStr(Texto: String; N: SmallInt; Direcao: Char): String;
Var
  Cont: Integer;
  Str: String;
Begin
  Result := Alltrim(Texto);
  Texto := Alltrim(Texto);
  Str := '';
  If length(Texto) < N Then
  Begin
    For Cont := 1 To Abs(length(Texto) - N) Do
      Str := Str + ' ';
    If Uppercase(Direcao) = 'D' Then
      Texto := Str + Texto
    Else If Uppercase(Direcao) = 'E' Then
      Texto := Texto + Str;
    Result := Texto;
  End;
End;

// Verifica se impressora ON-Line
Function PrinterOnLine: Boolean;
Const
  PrnStInt: byte = $17;
  StRq: byte = $02;
  PrnNum: Word = 0; { 0 para LPT1, 1 para LPT2, etc. }
Var
  nResult: byte;
Begin (* PrinterOnLine *)
  Asm
  mov ah,StRq;
  mov dx,PrnNum;
  Int $17;
  mov nResult,ah;
end;
  PrinterOnLine := (nResult and $80) = $80;
End;

// impress�o direta para impressora
Procedure Imprime(Linha: String; Avanco: Boolean; Destino: String);
var
  F: textfile;
begin
  // While not PrinterOnline() do
  // Mensagem('Verifique a Impressora!');
  assignfile(F, Destino);
  rewrite(F);
  If Avanco Then
    Write(F, Linha, #10#13)
  Else
    Write(F, Linha, #13);
  closefile(F);
end;

Function UltimodoMes(Mes, Ano: Word): TDateTime;
Begin
  inc(Mes);
  If Mes > 12 Then
  Begin
    Mes := 1;
    inc(Ano);
  End;
  Result := EncodeDate(Ano, Mes, 1) - 1;
End;

Function AutoIncrementoManual(Const pAlias:String; pTabela:String; pCampo:String):Integer;
var
vQry : TFDQuery;
int : integer;
  begin
  vQry := TFDQuery.Create(Application);
  with vQry do begin
  connection := dmMod.fdConPrinc;
  SQL.Add('Select Max(' + pCampo +') as Proximo');
  SQL.Add('From '+ pTabela);
  Open;
  If FieldByName('Proximo').AsString='' Then
    Int:=1
  Else
    int:= FieldByName('Proximo').asInteger + 1;
  Result := int;
  free;
  end; {with vQry}
end;


Function AbreviaNomes(Nome: String): String;
Var
  Nomes: Array [1 .. 20] Of String;
  I, TotalNomes: Integer;
Begin
  Nome := trim(Nome);
  Result := Nome;
  // Insere um espa�o para garanatir que todas as letras sejam testadas
  Nome := Nome + #32;
  // pega  posi��o do primeiro espa�o
  I := Pos(#32, Nome);
  If I > 0 Then
  Begin
    TotalNomes := 0;
    While I > 0 Do
    Begin
      inc(TotalNomes);
      Nomes[TotalNomes] := Copy(Nome, 1, I - 1);
      Delete(Nome, 1, I);
      I := Pos(#32, Nome);
    End;
    If TotalNomes > 1 Then
    Begin
      // abreviar a partir do segundo nome, exceto o ultimo
      For I := 1 to TotalNomes Do
      Begin
        // contem mais de 3 letras
        If length(Nomes[I]) > 3 Then
          Nomes[I] := Nomes[I][1]
        Else
          Nomes[I] := '';
      End;
      Result := '';
      For I := 1 To TotalNomes Do
        Result := Result + trim(Nomes[I]);
      Result := trim(Result);
    End;
  End;
End;

Function TipoString(Texto: String): Boolean;
Var
  Cont: SmallInt;
begin
  Result := false;
  If Alltrim(Texto) <> '' Then
  Begin
    Texto := Alltrim(Texto);
    For Cont := 1 To length(Texto) Do
    Begin
      If Not(Texto[Cont] In ['0' .. '9']) Then
      Begin
        Result := false;
        exit;
      End;
    End;
    Result := true;
  End;
End;

// Usada no fechamento de formalarios p/ tables modificadas
Procedure SaidaForm(Banco: TDataSet);
Begin
  If not Banco.active Then
    exit;
  If Estado(Banco) Then
    If Confirma('Deseja Salvar Modifica��es') = idYes Then
      Banco.Post
    Else
      Banco.Cancel;
End;

// Fecha tabelas,Indices e Filtros de todas as tabelas
// do datamodule
Procedure CloseAll(modulo: TdataModule; Indice, Filtro: Boolean);
Var
  I: Integer;
begin
  for I := 0 to modulo.ComponentCount - 1 do
  Begin
    if (modulo.Components[I] is TDataSet) then
    Begin
      If not((modulo.Components[I] As TDataSet).active) Then
        continue;
    End
    Else
      continue;
    If (modulo.Components[I]) Is TFDTable then
    Begin
      // fecha indice caso seja uma tabela
      If Indice Then (modulo.Components[I] As TFDTable)
        .IndexFieldNames := '';
    End;
    If Filtro Then
    Begin (modulo.Components[I] As TDataSet)
      .Filter := ''; (modulo.Components[I] As TDataSet)
      .Filtered := false;
    End;
    // Fecha Table ou Query
(modulo.Components[I] As TDataSet)
    .active := false;
  end;
end;

Function TotalReg(Banco:TDataSet):Integer;
Var
  Total:Integer;
Begin
   ToTalReg:=(Banco As TFDTable).recordCount;
End;

Procedure FechaIndice(Banco: TDataSet);
Begin (Banco As TFDTable)
  .IndexFieldNames := '';
End;

// Valida cartao de credito
Function ValidCartao(Const S: String): Boolean;
Var
  Valor, Soma, Multiplicador, Tamanho, I: Integer;
Begin
  Result := false;
  Multiplicador := 2;
  Soma := 0;
  Tamanho := length(Alltrim(S));
  For I := 1 To Tamanho - 1 Do
  Begin
    Try
      Valor := StrToInt(Copy(S, I, 1)) * Multiplicador;
    Except
      Valor := 0;
    End;
    Soma := Soma + (Valor Div 10) + (Valor Mod 10);
    If Multiplicador = 1 Then
      Multiplicador := 2
    Else
      Multiplicador := 1;
  End;
  If InttoStr((10 - (Soma mod 10)) Mod 10) = Copy(S, Tamanho, 1) Then
    Result := true;
End;

// Inverte uma string
Function ReverseStr(S: ShortString): ShortString;
Var
  I: Integer;
Begin
  Result := '';
  For I := length(S) DownTo 1 Do
    Result := Result + S[I];
End;

// Retira caracteres � partir da direita
Function RightStr(StrX: String; IntX: ShortInt): String;
Begin
  RightStr := ReverseStr(Copy(ReverseStr(StrX), 1, IntX));
End;

// Valida cpf
Function Cpf(xCpf: String): Boolean;
Var
  d1, d4, xx, nCount, resto, digito1, digito2: Integer;
  Check: String;
Begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  For nCount := 1 To length(xCpf) - 2 Do
  Begin
    Try
      If Pos(Copy(xCpf, nCount, 1), '/-.') = 0 Then
      Begin
        d1 := d1 + (11 - xx) * StrToInt(Copy(xCpf, nCount, 1));
        d4 := d4 + (12 - xx) * StrToInt(Copy(xCpf, nCount, 1));
        xx := xx + 1;
      End;
    Except
      exit;
    End;
  End;
  resto := (d1 Mod 11);
  If resto < 2 Then
    digito1 := 0
  Else
    digito1 := 11 - resto;
  d4 := d4 + 2 * digito1;
  resto := (d4 Mod 11);
  If resto < 2 Then
    digito2 := 0
  Else
    digito2 := 11 - resto;
  Check := InttoStr(digito1) + InttoStr(digito2);
  If Check <> RightStr(xCpf, 2) Then
    Result := false
  Else
    Result := true;
End;

// Valida CGC
Function Cgc(xCGC: String): Boolean;
Var
  d1, d4, xx, nCount, Fator, resto, digito1, digito2: Integer;
  Check: String;
Begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  For nCount := 1 to length(xCGC) - 2 Do
  Begin
    Try
      If Pos(Copy(xCGC, nCount, 1), '/-.') = 0 Then
      Begin
        If xx < 5 Then
          Fator := 6 - xx
        Else
          Fator := 14 - xx;
        d1 := d1 + StrToInt(Copy(xCGC, nCount, 1)) * Fator;
        If xx < 6 Then
          Fator := 7 - xx
        Else
          Fator := 15 - xx;
        d4 := d4 + StrToInt(Copy(xCGC, nCount, 1)) * Fator;
        xx := xx + 1;
      End;
    Except
      exit;
    End;
  End;
  resto := (d1 Mod 11);
  If resto < 2 Then
    digito1 := 0
  Else
    digito1 := 11 - resto;
  d4 := d4 + 2 * digito1;
  resto := (d4 Mod 11);
  If resto < 2 Then
    digito2 := 0
  Else
    digito2 := 11 - resto;
  Check := InttoStr(digito1) + InttoStr(digito2);
  If Check <> RightStr(xCGC, 2) Then
    Result := false
  Else
    Result := true;
End;

// Atualiza fisicamente o banco de dados
Procedure CommitTab(Banco: TDataSet);
Begin
 (Banco As TFDTable).Post;
  (Banco As TFDTable).ApplyUpdates;

End;

// Verifica estado dos botoes Habilitando/Desabilitando
Procedure Verifica(dsTemp: TDataSource);
Begin
  If (dsTemp.Dataset).active Then
  Begin
    If ((dsTemp.Dataset).ISEmpty) and ((dsTemp.Dataset).State In [dsBrowse])
      Then
    Begin
      Botoes[1].Enabled := true;
      Botoes[2].Enabled := false;
      Botoes[3].Enabled := false;
      Botoes[4].Enabled := false;
      Botoes[5].Enabled := true;
      dsTemp.AutoEdit := false;
      exit;
    End;
  End;
  If not dsTemp.AutoEdit Then
    dsTemp.AutoEdit := true;
  Botoes[2].Enabled := dsTemp.State In [dsInsert, dsEdit];
  Botoes[1].Enabled := Not Botoes[2].Enabled;
  Botoes[5].Enabled := Botoes[1].Enabled;
  Botoes[4].Enabled := Botoes[2].Enabled;
  Botoes[3].Enabled := not(dsTemp.State In [dsInsert, dsEdit]);
End;

// Inicializa botoes do formulario corrente
Procedure Inicializa(b1, b2, b3, b4, b5: TSpeedButton);
Begin
  Botoes[1] := b1;
  Botoes[2] := b2;
  Botoes[3] := b3;
  Botoes[4] := b4;
  Botoes[5] := b5;
  Botoes[1].Enabled := false;
  Botoes[2].Enabled := false;
  Botoes[3].Enabled := false;
  Botoes[4].Enabled := false;
  Botoes[5].Enabled := false;
End;

{rocedure TZConnection_ApplyUpdates(aConn: TZConnection; DataSets: array of TZAbstractDataset);
var
  I: Integer;
  DS: TZAbstractDataset;
begin
  aConn.StartTransaction;
  try
    for I := 0 to High(DataSets) do
    begin
      DS := DataSets[I];
     // if DS.Connection <> aConn then
      //  raise  EZSQLException.Create(Format(SUpdateWrongDB, [DS.Name, aConn.Name]));
      DataSets[I].ApplyUpdates;
    end;
    aConn.Commit;
  except
    aConn.Rollback;
    raise;
  end;
  for I := 0 to High(DataSets) do
    DataSets[I].CommitUpdates;
end;}

// Atauliza o banco de dados conforme opera��o desejada
// Incluir, alterar, excluir, cancelar
Procedure ATualiza(Banco:TDataSet;Tipo:Integer);
var
  inclusao:boolean;
Begin
    If Tipo=Incluir Then
       Banco.Append
    Else If Tipo=Gravar Then
    Begin
        IF Estado(Banco) Then
        begin
          Inclusao:=(Banco.state=dsInsert);
          banco.post;
         { if (Banco is TFDQuery)  Then
          begin
             (Banco as TFDQuery).applyupdates;
             (Banco as TFDQuery).CommitUpdates;
          end}
          if Inclusao then
          begin
          If (Banco is TFDTable) then
          begin
            (Banco as TFDTable).refresh;
             Banco.Last;
          end;
          end;

        end ;
    End
    Else If Tipo=Excluir Then
    Begin
        If Banco.RecordCount=0 Then
             Mensagem('Banco de dados est� vazio')
         Else
         Begin
          If Confirma('Confirma Exclus�o')=IdYes Then
             Banco.Delete;
         End;
    End
    Else If Tipo=Cancelar Then
       banco.Cancel;
End;



// Efetua soma para um campo monet�rio
Function Soma1(Banco: TDataSet; Campo: String): Variant;
Var
  Posicao: TBookMark;
  Soma: Currency;
Begin
  Posicao := Banco.GetBookMark;
  Banco.DisableControls;
  Banco.first;
  Soma := 0;
  While not Banco.eof Do
  Begin
    Soma := Soma +Banco.FieldByname(Campo).AsCurrency;
    Banco.next;
  End;
  Banco.EnableControls;
  Banco.GotoBookMark(Posicao);
  Banco.FreeBookMark(Posicao);
  Result := FloatToStr(Soma); // ,ffCurrency,12,2);
End;

// Efetua soma para um campo monet�rio
Function Soma(Banco: TDataSet; Campo: String): String;
Var
  Posicao: TBookMark;
  Soma: Currency;
Begin
  Posicao := Banco.GetBookMark;
  Banco.DisableControls;
  Banco.first;
  Soma := 0;
  While not Banco.eof Do
  Begin
    Soma := Soma + Banco.FieldByname(Campo).AsCurrency;
    Banco.next;
  End;
  Banco.EnableControls;
  Banco.GotoBookMark(Posicao);
  Banco.FreeBookMark(Posicao);
  Result := FloatToStrf(Soma, ffCurrency, 12, 2);
End;

// Coloca zeros � esquerda de um n�mero
Function StrZero(Valor: Real; Digitos: Integer): String;
Var
  Cont: Integer;
Begin
  Result := Alltrim(FloatToStr(Valor));
  If length(InttoStr(Trunc(Valor))) < Digitos Then
  Begin
    For Cont := 1 To Digitos - length(InttoStr(Trunc(Valor))) Do
      Result := '0' + Result;
  End;
End;

// Retorna o estado de uma tabela
Function Estado(Banco: TDataSet): Boolean;
Begin
  Result := (Banco.State IN [dsEdit, dsInsert]);
End;

// Coloca um a tabela em modo de edi��o
Procedure ModoEdicao(Banco: TDataSet);
Begin
  If not(Banco.State IN [dsEdit, dsInsert]) Then
    Banco.Edit;
End;

// Confirma�ao para uma determinada mensagem
Function Confirma(Mensagem: PWideChar): Integer;
Begin
  Result := Application.MessageBox(Mensagem, 'Confirma��o',
    mb_YESNO + mb_IconQuestion + mb_DefButton1);
End;

// Mensagem informativa
Procedure Mensagem(Mensagem: Pchar);
Begin
  Application.MessageBox(Mensagem, 'Informa��o', mb_OK + mb_IconInformation);
End;

// Retira espa�os em branco
Function Rat(cString: ShortString; cSub: ShortString): Integer;
Var
  Cont: Integer;
  Pal, Espacos: String;
Begin
  Pal := '';
  Espacos := '';
  For Cont := length(cString) Downto 1 Do
  Begin
    IF cSub = cString[Cont] Then
    Begin
      Pal := cSub;
      break;
    End;
    If cString[Cont] <> ' ' Then
    Begin
      Pal := cString[Cont] + Pal;
      IF cSub = Copy(Pal, 1, length(cSub)) Then
      Begin
        Pal := Copy(Pal, 1, length(cSub));
        break;
      End;
    End
    Else
    Begin
      Espacos := Espacos + ' ';
      If Espacos = cSub Then
      Begin
        Pal := Espacos;
        break;
      End;
      Pal := '';
    End;
  End;
  IF cSub = Pal Then
    Result := (length(cString) - Cont) + 1
  Else
    Result := 0;
End;

function Alltrim(const Search: string): string;
{ Remove os espa�os em branco de ambos os lados da string }
const
  BlackSpace = [#33 .. #126];
var
  Index: byte;
begin
  Index := 1;
  while (Index <= length(Search)) and not(Search[Index] in BlackSpace) do
  begin
    Index := Index + 1;
  end;
  Result := Copy(Search, Index, 255);
  Index := length(Result);
  while (Index > 0) and not(Result[Index] in BlackSpace) do
  begin
    Index := Index - 1;
  end;
  Result := Copy(Result, 1, Index);
end;

// Usado pela fun��o Extenso
Function Moedas(Valor: Currency; unid: String): Integer;
Var
  Decimal: Integer;
  Valor1: String;
Begin
  Result := 0;
  Valor1 := '0000000' + FloatToStrf(Valor, ffNumber, 10, 2);
  // Conta Centavos
  IF (unid = '0.05') or (unid = '0.01') Then
    Decimal := StrToInt(Copy(Valor1, length(Valor1), 1))
  Else If (unid = '0.10') or (unid = '0.50') Then
    Decimal := StrToInt(Copy(Valor1, length(Valor1) - 1, 1))
  Else If (unid = '1') or (unid = '5') Then
    Decimal := StrToInt(Copy(Valor1, length(Valor1) - 3, 1))
  Else If (unid = '10') or (unid = '50') Then
    Decimal := StrToInt(Copy(Valor1, length(Valor1) - 4, 1))
  Else If (unid = '100') Then
  Begin
    Decimal := StrToInt(Copy(Valor1, length(Valor1) - 5, 1));
    Decimal := Decimal + 10 * (StrToInt(Copy(Valor1, length(Valor1) - 7, 1)));
    Decimal := Decimal + 10 * (StrToInt(Copy(Valor1, length(Valor1) - 8, 1)));
    Decimal := Decimal + 10 * (StrToInt(Copy(Valor1, length(Valor1) - 9, 1)));
  End;
  IF Decimal = 0 Then
  Begin
    Result := 0;
    exit;
  End;
  IF (unid = '0.01') OR (unid = '0.10') OR (unid = '1') OR (unid = '10') Then
  Begin
    IF Decimal < 5 Then
      Result := Decimal
    ELSE IF Decimal > 5 Then
      Result := Decimal - 5;
  End
  ELSE IF ((unid = '0.05') OR (unid = '0.50') OR (unid = '5') OR (unid = '50'))
    Then
  Begin
    IF Decimal >= 5 Then
      Result := 1;
  End
  ELSE IF unid = '100' Then
    Result := Decimal
End;

// Retorna o extenso para determinado valor
Function Extenso(nN: Real): ShortString;
Var
  cDezUnid, cDigUnid, cDigDez, cDigCen, cSing, cPlur, cExt: String;
  cCn: String;
  _Proc: Real;
  nConv, nConty, nVar1, ntam, code: Integer;
  lVary: Boolean;
  cProc, nAux: String;
Begin
  cDezUnid := 'DEZ      ONZE     DOZE     TREZE    QUATORZE QUINZE' +
    '   DEZESSEISDEZESSETEDEZOITO  DEZENOVE ';
  cDigUnid := 'UM    DOIS  TRES  QUATROCINCO SEIS  SETE  OITO  NOVE  ';
  cDigDez := 'VINTE    TRINTA   QUARENTA CINQUENTASESSENTA SETENTA' +
    '  OITENTA  NOVENTA  ';
  cDigCen := 'CENTO       DUZENTOS    TREZENTOS   QUATROCENTOSQUINHENTOS' +
    '  SEISCENTOS  SETECENTOS  OITOCENTOS  NOVECENTOS  ';
  cSing := 'CENTAVO REAL    MIL     MILHAO  BILHAO  TRILHAO ';
  cPlur := 'CENTAVOS REAIS    MIL      MILHOES  BILHOES  TRILHOES ';
  Str(nN: 19: 2, cCn);
  For nConty := 1 TO length(cCn) Do
    If cCn[nConty] <> ' ' Then
      break;
  Delete(cCn, 1, nConty - 1);
  nVar1 := length(cCn) - 3 * Trunc(length(cCn) / 3);
  IF nVar1 <> 0 Then
    For nConty := 1 To 3 - nVar1 Do
      cCn := '0' + cCn;
  ntam := Trunc(length(cCn) / 3);
  nVar1 := ntam;
  cCn := Copy(cCn, 1, nVar1 * 3 - 3) + '0' + Copy(cCn, nVar1 * 3 - 1,
    length(cCn));
  cExt := '';
  nConty := 0;
  lVary := true;
  While nVar1 > 0 Do
  Begin
    cProc := Copy(cCn, nVar1 * 3 - 2, 3);
    Val(cProc, _Proc, code);
    If _Proc <> 0 Then
    Begin
      If _Proc = 1 Then
        nAux := trim(Copy(cSing, (ntam - nVar1) * 8 + 1, 8))
      Else
        nAux := trim(Copy(cPlur, (ntam - nVar1) * 9 + 1, 9));
      IF (Copy(cCn, ntam * 3 - 5, 3) = '000') And (lVary) And (nVar1 < ntam)
        Then
      Begin
        If ntam - nVar1 > 2 Then
          nAux := nAux + ' DE REAIS'
        Else
          nAux := nAux + ' REAIS';
        lVary := false;
      End;
      If '' = cExt Then
        cExt := nAux + cExt
      Else
      Begin
        If nConty = 1 Then
          cExt := nAux + ' ' + cExt
        Else
          cExt := nAux + ', ' + cExt
      End;
      Val(Copy(cProc, 3, 10), nConv, code);
      If Copy(cProc, 2, 1) = '1' Then
        cExt := trim(Copy(cDezUnid, nConv * 9 + 1, 9)) + ' ' + cExt
      Else
      Begin
        IF Copy(cProc, 3, 10) <> '0' Then
          cExt := trim(Copy(cDigUnid, nConv * 6 - 5, 6)) + ' ' + cExt;
        If Copy(cProc, 2, 1) <> '0' Then
        Begin
          Val(Copy(cProc, 2, 1), nConv, code);
          If Copy(cProc, 3, 10) = '0' Then
            cExt := trim(Copy(cDigDez, nConv * 9 - 17, 9)) + ' ' + cExt
          Else
            cExt := trim(Copy(cDigDez, nConv * 9 - 17, 9)) + ' E ' + cExt
        End;
      End;
      If _Proc > 100 Then
      Begin
        If Copy(cProc, 2, 2) = '00' Then
          nAux := trim(Copy(cDigCen, Trunc(_Proc / 100) * 12 - 11, 12)) + ' '
        Else
          nAux := trim(Copy(cDigCen, Trunc(_Proc / 100) * 12 - 11, 12)) + ' E ';
      End
      Else
        nAux := '';
      If _Proc = 100 Then
        cExt := 'CEM ' + cExt
      Else
        cExt := nAux + cExt;
      nConty := nConty + 1;
    End;
    nVar1 := nVar1 - 1;
  End;
  Result := cExt;
End;

// � necessario o componente AppEventos e a rotina abaixo
// abaixo atribuida ao evento OnException do Componente
procedure Excecao(Sender: TObject; E: Exception);
var
  Posicao, Posicao2, Posicao3: Integer;
  Campo, Campo2, Campo3, Campo4: String;
begin
  if E.message = 'Key violation' then
    MessageDlg('N�o foi poss�vel inserir este Registro. Viola��o de Chave!!',
      mtInformation, [mbOk], 0)
  else

    if E.message = 'Master has detail records. Cannot delete or modify.' then
    MessageDlg('N�o � possivel deletar este registro.' + Chr(13) +
        'Est� sendo utilizado em outro(s) cadastro(s).' + Chr(13) + Chr(13)
        + 'Verifique e tente novamente...', mtInformation, [mbOk], 0)
  else

    if Pos('a valid date', E.message) > 0 then
    MessageDlg('Data inv�lida, favor redigit�-la.', mtInformation, [mbOk], 0)
  else if Pos('must have a value', E.message) > 0 then
  begin
    Posicao := Pos('must have a value', E.message);
    Campo := Copy(E.message, 7, (Posicao - 8));
    MessageDlg('O Campo ' + Campo + ' deve ser preenchido!!', mtInformation,
      [mbOk], 0)
  end
  else

    if Pos('Record locked by another user', E.message) > 0 then
  begin
    Posicao := Pos('User:', E.message);
    Campo := Copy(E.message, (Posicao + 5), 15);
    MessageDlg('Acesso ao registro foi negado.' + Chr(13) + Chr(13) +
        'O mesmo esta em uso por outro usu�rio.' + Chr(13) + Chr(13)
        + 'Verifique, ou tente mais tarde.', mtInformation, [mbOk], 0)
  end
  else

    if E.message = 'Record/Key deleted' then
    MessageDlg('Este registro foi exclu�do por outro usu�rio!!', mtInformation,
      [mbOk], 0)
  else

    if Pos('Field value required', E.message) > 0 then
  begin
    Posicao := Pos('Field:', E.message);
    Campo := Copy(E.message, (Posicao + 7), (Posicao + 27));
    MessageDlg('O Campo ' + Campo + ' deve ser preenchido!!', mtInformation,
      [mbOk], 0)
  end
  else

    if E.message = 'Cannot perform this operation on a closed dataset' then
    MessageDlg('Um Arquivo utilizado por esta janela n�o est� Aberto!!',
      mtInformation, [mbOk], 0)
  else if Pos('There is no default printer currently selected', E.message)
    > 0 then
    MessageDlg('ATEN��O! N�o exite impressora instala ou definida como padr�o.'
        , mtInformation, [mbOk], 0)
  else if Pos('Table does not exist', E.message) > 0 then
  begin
    Posicao := Pos('File:', E.message);
    Campo := Copy(E.message, (Posicao + 6),
      (length(E.message) - (Posicao + 5)));
    MessageDlg('O Arquivo n�o existe. -> ' + Campo, mtInformation, [mbOk], 0)
  end
  else if Pos('Dataset not in edit or insert mode', E.message) > 0 then
    MessageDlg('O Arquivo n�o est� em modo edi��o ou inser��o!!',
      mtInformation, [mbOk], 0)
  else if Pos('Cannot focus a disable', E.message) > 0 then
    MessageDlg('N�o � poss�vel focar uma janela invis�vel ou inexistente!!',
      mtInformation, [mbOk], 0)
  else if Pos('empty dataset', E.message) > 0 then
    MessageDlg('Opera��o inv�lida em uma tabela vazia!!', mtInformation,
      [mbOk], 0)
  else if Pos('Circular datalinks are not', E.message) > 0 then
    MessageDlg('Ocorreu um Circular Datalink!!', mtInformation, [mbOk], 0)
  else if Pos('is not a valid floating point', E.message) > 0 then
    MessageDlg('N�mero inv�lido favor redigit�-lo!', mtInformation, [mbOk], 0)
  else if Pos('Invalid input value.', E.message) > 0 then
    MessageDlg(
      'Conte�do do campo informado Inv�lido!! Ap�s [Ok], Pressione [Esc] para retornar o conte�do anterior', mtInformation, [mbOk], 0)
  else if Pos('is not a valid value for field', E.message) > 0 then
  begin
    Posicao := Pos('is not a valid value for field', E.message);
    Posicao2 := Pos('The allowed range is', E.message);
    Posicao3 := Pos('to', E.message);
    Campo := Copy(E.message, 1, (Posicao - 1));
    Campo2 := Copy(E.message, Posicao + 32, (Posicao2 - (Posicao + 35)));
    Campo3 := Copy(E.message, Posicao2 + 20, (Posicao3 - (Posicao2 + 20)));
    Campo4 := Copy(E.message, Posicao3 + 2, (length(E.Message) - Posicao3 + 2));
    if Campo2 = 'PercConsumo' then
      Campo2 := 'Percentual de Consumo'
    else if Campo2 = 'PercPerda' then
      Campo2 := 'Percentual da Perda';
    MessageDlg('O Valor Informado de: <' + trim(Campo) +
        '%> � Inv�lido!!  O Valor do Campo  <' + trim(Campo2)
        + '>  deve estar entre  <' + trim(Campo3) + '>  e  <' + trim(Campo4)
        + '%>', mtInformation, [mbOk], 0)
  end
  else if E.message <> '' then
    MessageDlg(E.message, mtInformation, [mbOk], 0);

End;


{Function Abre_Porta: Boolean;
Var
  Taxa: String;
Begin
  Result := true;
  If Modelo = '0' Then
  Begin
    If not fileExists(PegaSysDir + '\fs345_32.dll') Then
      Result := false
    else
    Begin
      Taxa := '9600';
      If trim(dmMod1.tblImpTaxatrs.value) <> EmptyStr Then
        Taxa := dmMod1.tblImpTaxatrs.value;
      If Dar_AbreSerial(dmMod1.tblImpPorta.value + ':' + Taxa + ',n,8,1')
        = -1 Then
      Begin

        Daruma_Erro(Dar_Erro);
        Result := false;
      End;
    End;
  End
  Else If Modelo = '1' Then
  Begin
    If not fileExists(PegaSysDir + '\bemafi32.ini') Then
      Result := false
    else
    begin
      Bema_Erro(Bematech_FI_AbrePortaSerial());
      Result := Bematech_FI_VerificaImpressoraLigada() = 1;
    end;
  End;
End;  }

Function TiraPonto(Valor: String): String;
Var
  Teste: String;
  Cont: Integer;
Begin
  Valor := FloatToStr(StrToFloat(Valor) * 100);
  Teste := '';

  For Cont := 1 to length(Valor) Do
  Begin
    If Valor[Cont] <> ',' Then
      Teste := Teste + Valor[Cont];
  End;
  Result := Teste;
End;

function SysComputerName: string;
var
  I: DWORD;
begin
  I := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, I);
  Windows.GetComputerName(Pchar(Result), I);
  Result := string(Pchar(Result));
end;


Function Inscricao(Inscricao, Tipo: String): Boolean;
Var

  Contador: ShortInt;

  Casos: ShortInt;

  Digitos: ShortInt;

  Tabela_1: String;

  Tabela_2: String;

  Tabela_3: String;

  Base_1: String;

  Base_2: String;

  Base_3: String;

  Valor_1: ShortInt;

  Soma_1: Integer;

  Soma_2: Integer;

  Erro_1: ShortInt;

  Erro_2: ShortInt;

  Erro_3: ShortInt;

  Posicao_1: string;

  Posicao_2: String;

  Tabela: String;

  Rotina: String;

  modulo: ShortInt;

  Peso: String;

  Digito: ShortInt;

  Resultado: String;

  retorno: Boolean;

Begin

  Try

    Tabela_1 := ' ';

    Tabela_2 := ' ';

    Tabela_3 := ' ';

    { }
    { }

    { Valores possiveis para os digitos (j) }

    { }

    { 0 a 9 = Somente o digito indicado. }

    { N = Numeros 0 1 2 3 4 5 6 7 8 ou 9 }

    { A = Numeros 1 2 3 4 5 6 7 8 ou 9 }

    { B = Numeros 0 3 5 7 ou 8 }

    { C = Numeros 4 ou 7 }

    { D = Numeros 3 ou 4 }

    { E = Numeros 0 ou 8 }

    { F = Numeros 0 1 ou 5 }

    { G = Numeros 1 7 8 ou 9 }

    { H = Numeros 0 1 2 ou 3 }

    { I = Numeros 0 1 2 3 ou 4 }

    { J = Numeros 0 ou 9 }

    { K = Numeros 1 2 3 ou 9 }

    { }

    { -------------------------------------------------------- }

    { }

    { Valores possiveis para as rotinas (d) e (g) }

    { }

    { A a E = Somente a Letra indicada. }

    { 0 = B e D }

    { 1 = C e E }

    { 2 = A e E }

    { }

    { -------------------------------------------------------- }

    { }

    { C T  F R M  P  R M  P }

    { A A  A O O  E  O O  E }

    { S M  T T D  S  T D  S }

    { }

    { a b  c d e  f  g h  i  jjjjjjjjjjjjjj }

    { 0000000001111111111222222222233333333 }

    { 1234567890123456789012345678901234567 }

    IF Tipo = 'AC' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';

    IF Tipo = 'AC' Then
      Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';

    IF Tipo = 'AL' Then
      Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';

    IF Tipo = 'AP' Then
      Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';

    IF Tipo = 'AP' Then
      Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';

    IF Tipo = 'AP' Then
      Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';

    IF Tipo = 'AM' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';

    IF Tipo = 'BA' Then
      Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';

    IF Tipo = 'BA' Then
      Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';

    IF Tipo = 'CE' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';

    IF Tipo = 'DF' Then
      Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';

    IF Tipo = 'ES' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';

    IF Tipo = 'GO' Then
      Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';

    IF Tipo = 'GO' Then
      Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';

    IF Tipo = 'MA' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';

    IF Tipo = 'MT' Then
      Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';

    IF Tipo = 'MS' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';

    IF Tipo = 'MG' Then
      Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';

    IF Tipo = 'PA' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';

    IF Tipo = 'PB' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';

    IF Tipo = 'PR' Then
      Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';

    IF Tipo = 'PE' Then
      Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';

    IF Tipo = 'PI' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';

    IF Tipo = 'RJ' Then
      Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';

    IF Tipo = 'RN' Then
      Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';

    IF Tipo = 'RS' Then
      Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';

    IF Tipo = 'RO' Then
      Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';

    IF Tipo = 'RO' Then
      Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';

    IF Tipo = 'RR' Then
      Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';

    IF Tipo = 'SC' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';

    IF Tipo = 'SP' Then
      Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';

    IF Tipo = 'SP' Then
      Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';

    IF Tipo = 'SE' Then
      Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';

    IF Tipo = 'TO' Then
      Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';

    IF Tipo = 'CNPJ' Then
      Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';

    IF Tipo = 'CPF' Then
      Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';

    { Deixa somente os numeros }

    Base_1 := '';

    For Contador := 1 TO 30 Do
      IF Pos(Copy(Inscricao, Contador, 1), '0123456789') <> 0 Then
        Base_1 := Base_1 + Copy(Inscricao, Contador, 1);

    { Repete 3x - 1 para cada caso possivel }

    Casos := 0;

    Erro_1 := 0;

    Erro_2 := 0;

    Erro_3 := 0;

    While Casos < 3 Do
    Begin

      Casos := Casos + 1;

      IF Casos = 1 Then
        Tabela := Tabela_1;

      IF Casos = 2 Then
        Erro_1 := Erro_3;

      IF Casos = 2 Then
        Tabela := Tabela_2;

      IF Casos = 3 Then
        Erro_2 := Erro_3;

      IF Casos = 3 Then
        Tabela := Tabela_3;

      Erro_3 := 0;

      IF Copy(Tabela, 1, 1) <> ' ' Then
      Begin

        { Verifica o Tamanho }

        IF length(trim(Base_1)) <> (StrToInt(Copy(Tabela, 3, 2))) Then
          Erro_3 := 1;

        IF Erro_3 = 0 Then
        Begin

          { Ajusta o Tamanho }

          Base_2 := Copy('              ' + Base_1,
            length('              ' + Base_1) - 13, 14);

          { Compara com valores possivel para cada uma da 14 posi��es }

          Contador := 0;

          While (Contador < 14) AND (Erro_3 = 0) Do
          Begin

            Contador := Contador + 1;

            Posicao_1 := Copy(Copy(Tabela, 24, 14), Contador, 1);

            Posicao_2 := Copy(Base_2, Contador, 1);

            IF (Posicao_1 = ' ') AND (Posicao_2 <> ' ') Then
              Erro_3 := 1;

            IF (Posicao_1 = 'N') AND (Pos(Posicao_2, '0123456789') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'A') AND (Pos(Posicao_2, '123456789') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'B') AND (Pos(Posicao_2, '03578') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'C') AND (Pos(Posicao_2, '47') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'D') AND (Pos(Posicao_2, '34') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'E') AND (Pos(Posicao_2, '08') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'F') AND (Pos(Posicao_2, '015') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'G') AND (Pos(Posicao_2, '1789') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'H') AND (Pos(Posicao_2, '0123') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'I') AND (Pos(Posicao_2, '01234') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'J') AND (Pos(Posicao_2, '09') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 = 'K') AND (Pos(Posicao_2, '1239') = 0) Then
              Erro_3 := 1;

            IF (Posicao_1 <> Posicao_2) AND (Pos(Posicao_1, '0123456789') > 0)
              Then
              Erro_3 := 1;

          End;

          { Calcula os Digitos }

          Rotina := ' ';

          Digitos := 000;

          Digito := 000;

          While (Digitos < 2) AND (Erro_3 = 0) Do
          Begin

            Digitos := Digitos + 1;

            { Carrega peso }

            Peso := Copy(Tabela, 5 + (Digitos * 8), 2);

            IF Peso <> '  ' Then
            Begin

              Rotina := Copy(Tabela, 0 + (Digitos * 8), 1);

              modulo := StrToInt(Copy(Tabela, 2 + (Digitos * 8), 2));

              IF Peso = '01' Then
                Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';

              IF Peso = '02' Then
                Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';

              IF Peso = '03' Then
                Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';

              IF Peso = '04' Then
                Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';

              IF Peso = '05' Then
                Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';

              IF Peso = '06' Then
                Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';

              IF Peso = '07' Then
                Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';

              IF Peso = '08' Then
                Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';

              IF Peso = '09' Then
                Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';

              IF Peso = '10' Then
                Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';

              IF Peso = '11' Then
                Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';

              IF Peso = '12' Then
                Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';

              IF Peso = '13' Then
                Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';

              IF Peso = '21' Then
                Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';

              IF Peso = '22' Then
                Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';

              IF Peso = '31' Then
                Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';

              IF Peso = '32' Then
                Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';

              { Multiplica }

              Base_3 := Copy(('0000000000000000' + trim(Base_2)),
                length(('0000000000000000' + trim(Base_2))) - 13, 14);

              Soma_1 := 0;

              Soma_2 := 0;

              For Contador := 1 To 14 Do
              Begin

                Valor_1 := (StrToInt(Copy(Base_3, Contador, 01)) * StrToInt
                    (Copy(Peso, Contador * 3 - 2, 2)));

                Soma_1 := Soma_1 + Valor_1;

                IF Valor_1 > 9 Then
                  Valor_1 := Valor_1 - 9;

                Soma_2 := Soma_2 + Valor_1;

              End;

              { Ajusta valor da soma }

              IF Pos(Rotina, 'A2') > 0 Then
                Soma_1 := Soma_2;

              IF Pos(Rotina, 'B0') > 0 Then
                Soma_1 := Soma_1 * 10;

              IF Pos(Rotina, 'C1') > 0 Then
                Soma_1 := Soma_1 + (5 + 4 * StrToInt(Copy(Tabela, 6, 1)));

              { Calcula o Digito }

              IF Pos(Rotina, 'D0') > 0 Then
                Digito := Soma_1 Mod modulo;

              IF Pos(Rotina, 'E12') > 0 Then
                Digito := modulo - (Soma_1 Mod modulo);

              IF Digito < 10 Then
                Resultado := InttoStr(Digito);

              IF Digito = 10 Then
                Resultado := '0';

              IF Digito = 11 Then
                Resultado := Copy(Tabela, 6, 1);

              { Verifica o Digito }

              IF (Copy(Base_2, StrToInt(Copy(Tabela, 36 + (Digitos * 3), 2)),
                  1) <> Resultado) Then
                Erro_3 := 1;

            End;

          End;

        End;

      End;

    End;

    { Retorna o resultado da Verifica��o }

    retorno := false;

    IF (trim(Tabela_1) <> '') AND (Erro_1 = 0) Then
      retorno := true;

    IF (trim(Tabela_2) <> '') AND (Erro_2 = 0) Then
      retorno := true;

    IF (trim(Tabela_3) <> '') AND (Erro_3 = 0) Then
      retorno := true;

    IF trim(Inscricao) = 'ISENTO' Then
      retorno := true;

    Result := retorno;

  Except

    Result := false;

  End;

End;

{ Mascara_Inscricao __________________________________ }

Function Mascara_Inscricao(Inscricao, Estado: String): String;
Var

  Mascara: String;

  Contador_1: Integer;

  Contador_2: Integer;

Begin

  IF Estado = 'AC' Then
    Mascara := '**.***.***/***-**';

  IF Estado = 'AL' Then
    Mascara := '*********';

  IF Estado = 'AP' Then
    Mascara := '*********';

  IF Estado = 'AM' Then
    Mascara := '**.***.***-*';

  IF Estado = 'BA' Then
    Mascara := '******-**';

  IF Estado = 'CE' Then
    Mascara := '********-*';

  IF Estado = 'DF' Then
    Mascara := '***********-**';

  IF Estado = 'ES' Then
    Mascara := '*********';

  IF Estado = 'GO' Then
    Mascara := '**.***.***-*';

  IF Estado = 'MA' Then
    Mascara := '*********';

  IF Estado = 'MT' Then
    Mascara := '**********-*';

  IF Estado = 'MS' Then
    Mascara := '*********';

  IF Estado = 'MG' Then
    Mascara := '***.***.***/****';

  IF Estado = 'PA' Then
    Mascara := '**-******-*';

  IF Estado = 'PB' Then
    Mascara := '********-*';

  IF Estado = 'PR' Then
    Mascara := '********-**';

  IF Estado = 'PE' Then
    Mascara := '**.*.***.*******-*';

  IF Estado = 'PI' Then
    Mascara := '*********';

  IF Estado = 'RJ' Then
    Mascara := '**.***.**-*';

  IF Estado = 'RN' Then
    Mascara := '**.***.***-*';

  IF Estado = 'RS' Then
    Mascara := '***/*******';

  IF Estado = 'RO' Then
    Mascara := '***.*****-*';

  IF Estado = 'RR' Then
    Mascara := '********-*';

  IF Estado = 'SC' Then
    Mascara := '***.***.***';

  IF Estado = 'SP' Then
    Mascara := '***.***.***.***';

  IF Estado = 'SE' Then
    Mascara := '*********-*';

  IF Estado = 'TO' Then
    Mascara := '***********';

  Contador_2 := 1;

  Result := '';

  Mascara := Mascara + '****';

  For Contador_1 := 1 To length(Mascara) Do
  Begin

    IF Copy(Mascara, Contador_1, 1) = '*' Then
      Result := Result + Copy(Inscricao, Contador_2, 1);

    IF Copy(Mascara, Contador_1, 1) <> '*' Then
      Result := Result + Copy(Mascara, Contador_1, 1);

    IF Copy(Mascara, Contador_1, 1) = '*' Then
      Contador_2 := Contador_2 + 1;

  End;

  Result := trim(Result);

End;

end.
