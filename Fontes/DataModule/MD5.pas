unit MD5;

interface

uses IdHashMessageDigest, Classes, SysUtils;
  function MD5String(const value : string) : string;
implementation
function MD5String(const value : string) : string;
var
  xMD5 : TIdHashMessageDigest5;

begin
  xMD5 := TIdHashMessageDigest5.Create;
  try
    Result := xMD5.HashStringAsHex(value)
  finally
    xMD5.Free;
  end;
end;



end.
