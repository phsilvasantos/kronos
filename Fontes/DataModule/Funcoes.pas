unit Funcoes;

interface
uses Vcl.Forms, System.SysUtils, ACBrValidador, System.Classes,
   krnConst, Vcl.Dialogs, Winapi.Windows, Vcl.Controls;


function FsMesExtenso(Value : TDateTime) : string;
function FsDataExtenso(Value : TDateTime) : string;

function FsPastaApp : string;
function FsTemp : string;
function fsMascara(numCasa: Integer; const moeda : string = ''): string;
function fsCopyChar(vezes:Integer; const caracter : Char = '#'): string;
function PreencheString(Texto: String; Tamanho:Integer; CampoNumerico: Boolean): String;
Procedure PMontaStringList(VSParametros: String; var VStrLstAux: TStringList); overload;
Procedure PMontaStringList(VSParametros: String; var VStrLstAux: TStringList; VsSeparador: String); overload;
Function FsValorStringList(VsString: String; ViPosicao: Integer): String;

procedure AlertaInfo(Mensagem : PWideChar);
procedure AlertaError(Mensagem : PWideChar);
function Perguntar(Mensagem : PWideChar; const defaultrespostayes: boolean = true) : integer;
function CurrentMonth : Word;
function AddMonth(const dData: TDateTime; const Months: Extended;const DiaFixo: integer = 0): TDateTime;
Function VersaoExe: String;
function NumSerie (const disco : string = 'C'): string;

implementation

function NumSerie (const disco : string = 'C'): string;
var
  Serial:DWORD;
  DirLen, Flag: DWORD;
  DLabel: array[0..11] of Char;
begin
  try
    GetVolumeInformation( PChar(disco+':\'), DLabel,12,@Serial, DirLen, Flag, nil,0 );
    Result := IntToHex(Serial,8);
  except
    Result:='';
  end;
end;
Function VersaoExe: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F       : PFFI;
   Handle  : Dword;
   Len     : Longint;
   Data    : Pchar;
   Buffer  : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo  := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
                          [HiWord(F^.dwFileVersionMs),
                           LoWord(F^.dwFileVersionMs),
                           HiWord(F^.dwFileVersionLs),
                           Loword(F^.dwFileVersionLs)

                           ]
                         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);
end;

function FsDataExtenso(Value : TDateTime) : string;
var
  Dia, Mes, Ano : Word;
begin
  DecodeDate(Value,Ano,Mes, Dia);

  Result := IntToStr(dia) + ' de ' +
  FsMesExtenso(Value) + ' de ' + IntToStr(Ano);

end;
function FsMesExtenso(Value : TDateTime) : string;
var
  Dia, Mes, Ano : Word;
  const Meses : array[1..12] of string =
  ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho',
  'Agosto', 'Setembro', 'Outubro','Novembro','Dezembro');
begin
  DecodeDate(Value,Ano,Mes, Dia);
  Result := Meses[Mes];


end;
function AddMonth(const dData: TDateTime; const Months: Extended;const DiaFixo: integer = 0): TDateTime;
 {***
  *  IsBisexto()
  *  Retorna 'True' caso o ano seja bisexto
  *
  *}
  function IsBisexto(Ano: Word): Boolean;
  begin
    Result := (Ano mod 4 = 0) and ((Ano mod 100 <> 0) or (Ano mod 400 = 0));
  end;
var
  Dia, Mes, Ano: Word;
  iMes: Integer;
begin
  DecodeDate (dData, Ano, Mes, Dia);
  if diafixo > 0 then
    Dia := DiaFixo;

  iMes := Mes + Trunc (Months);

  if iMes > 12 then begin
    Ano := Ano + (iMes - 1) div 12;
    iMes := iMes mod 12;
    if iMes = 0 then
      iMes := 12;
  end
  else
  if iMes < 1 then begin
    Ano := Ano + (iMes div 12) - 1;
    iMes := 12 - Abs(iMes) mod 12;
  end;
  Mes := iMes;

  // Ensure Day of Month is valid
  if Mes = 2 then  begin
    if IsBiSexto(Ano) and (Dia > 29) then
      Dia := 29
    else if not IsBiSexto(Ano) and (Dia > 28) then
      Dia := 28;
  end
  else if (Mes in [9, 4, 6, 11]) and (Dia = 31) then
    Dia := 30;

  if Months < 0 then
    Result := EncodeDate(Ano, Mes, Dia) - Frac(Abs(Months)) * 30 - Frac(dData)
  else
    Result := EncodeDate (Ano, Mes, Dia) + Frac(Months) * 30 + Frac(dData);
end;
function CurrentMonth : Word;
var
  MesAtual: TSystemTime;
begin
  GetLocalTime(Mesatual);
  Result :=  MesAtual.wMonth;
end;

function Perguntar(Mensagem : PWideChar; const defaultrespostayes: boolean = true) : integer;
begin
  if defaultrespostayes then
    result:= MessageBox(0, Mensagem,NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON1)
  else
    result:= MessageBox(0, Mensagem,NOME_SISTEMA, MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2);

end;

procedure AlertaError(Mensagem : PWideChar);
begin
  Application.MessageBox(Mensagem, NOME_SISTEMA,MB_ICONERROR);
end;
procedure AlertaInfo(Mensagem : PWideChar);
begin
  Application.MessageBox( PChar( Mensagem), NOME_SISTEMA,MB_ICONINFORMATION);
end;

Procedure PMontaStringList(VSParametros: String; var VStrLstAux: TStringList; VsSeparador: String); overload;
var
  vi, viAux, viQuantParametros: Integer;
  vsAux: String;
  VPchParametros: PChar;
  ArrsParametros: Array[0..300] of String;
begin
  vi := 0;
  viAux:=0;
  vsAux:='';
  VPchParametros:=Pchar(VsParametros);
  //Trata parametros
  If Length(VPchParametros)>0 then
  Repeat
      If VPchParametros[vi] <> VsSeparador Then
         vsAux:=vsAux+VPchParametros[vi]
      else
      Begin
         Inc(viAux);
         vsAux:='';
      end;
      ArrsParametros[viAux]:=vsAux;
      Inc(vi);
  Until vi = Length(VPchParametros);
  If Length(VPchParametros)>0 then
      viQuantParametros:=viAux+1
  else
      viQuantParametros:=0;
  Try
     For ViAux:=0 to viQuantParametros-1 do
        VStrLstAux.Add((ArrsParametros[viAux]));
  Finally

  end;
end;

Procedure PMontaStringList(VSParametros: String; var VStrLstAux: TStringList); overload;
begin
  PMontaStringList(VSParametros, VStrLstAux, '|');
end;

Function FsValorStringList(VsString: String; ViPosicao: Integer): String;
var
  VStrLstAux: TStringList;
begin
  Try
    Try
      VStrLstAux:=TStringList.Create;
      PMontaStringList(VsString, VStrLstAux);
      If ViPosicao>VStrLstAux.Count-1 then
        Result:=''
      else
        Result:=VStrLstAux.Strings[ViPosicao];// (VStrLstAux.IndexOf(VsString)>-1);
    Finally
        FreeAndNil(VStrLstAux);
    end;
  except
    Result:='';
  end;
end;

function PreencheString(Texto: String; Tamanho: Integer;
                                      CampoNumerico: Boolean): String;
var
  Espacos: Integer;
  AuxTexto: String;
begin
  Espacos:= Tamanho - Length(Texto);
  Result:= Copy(Texto,1,Tamanho);

  if Espacos > 0 then
  begin
     if CampoNumerico then
      begin
        repeat
           AuxTexto:= AuxTexto + '0'
        until Length(AuxTexto) = Espacos;
        Result:=  AuxTexto+Result;
      end
     else
      begin
        repeat
           Result := Result +  ' ';
           Espacos:= Espacos -1;
        until Espacos = 0
     end;
  end;
end;

function fsCopyChar(vezes:Integer; const caracter : Char = '#'): string;
var
  I: Integer;
  sAux: string;
  sAuxZero: string;
begin
  sAux:='';
  sAuxZero := '';
  for I := 0 to vezes-1 do
  begin
    sAux := sAux + caracter;
    sAuxZero := sAuxZero + '0';
  end;
  Result := caracter +','+  sAux+'0.'+sAuxZero;
end;
function fsMascara(numCasa: Integer; const moeda : string = ''): string;
var
  sAux: string;
begin
  sAux := moeda;

  if sAux<> '' then
    sAux := sAux+ ' ';
  if numCasa<0 then
    Result :=fsCopyChar(2)
  else
  begin
    case numCasa of
      0: Result :=sAux+fsCopyChar(2);
      1: Result := sAux+'#0';
      else
        Result := sAux+fsCopyChar(numCasa);
    end;
  end;
end;


function FsTemp : string;
begin
 result:=  fspastaApp+'\temp\';
end;
function FsPastaApp : string;
begin
  result := ExtractFilePath(Application.ExeName);
end;
end.
