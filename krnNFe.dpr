library krnNFe;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  ShareMem,
  System.Classes,
  UfrmCCe in 'C:\Kronos\Projeto\Fontes\NFe\UfrmCCe.pas' {frmCCe},
  UfrmDadosAdicionais in 'C:\Kronos\Projeto\Fontes\NFe\UfrmDadosAdicionais.pas' {frmDadosAdicionais},
  UfrmEnvioNFe in 'C:\Kronos\Projeto\Fontes\NFe\UfrmEnvioNFe.pas' {frmEnvioNFe},
  udmAcesso in 'C:\Kronos\Projeto\Fontes\DataModule\udmAcesso.pas' {dmAcesso: TDataModule},
  Funcoes in 'C:\Kronos\Projeto\Fontes\DataModule\Funcoes.pas',
  krnConst in 'C:\Kronos\Projeto\Fontes\DataModule\krnConst.pas',
  krnVarGlobais in 'C:\Kronos\Projeto\Fontes\DataModule\krnVarGlobais.pas',
  PMensagem in 'C:\Kronos\Projeto\Fontes\Sistema\PMensagem.pas' {FrmMensagem};

{$R *.res}

procedure StatusServico; stdcall;
begin
  nfStatusServico;
end;
  exports StatusServico;
begin


end.
