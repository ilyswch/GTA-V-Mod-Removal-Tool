Write-Host " 
 +-+-+-+ +-+ +-+-+-+ +-+-+-+-+-+-+-+ +-+-+-+-+ 
 |G|T|A| |V| |M|o|d| |R|e|m|o|v|a|l| |T|o|o|l| 
 +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ +-+-+-+-+ 
 |b|y| |i|l|y|s|w|c|h|                         
 +-+-+ +-+-+-+-+-+-+-+      " -ForegroundColor Red
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "!!!This script requires administrator privileges, please run it as an administrator!!!" -ForegroundColor Yellow
    break
}
$excluded = @("Redistributables", "update", "x64", "bink2w64.dll", "common.rpf", "d3dcompiler_46.dll", "d3dcsx_46.dll", "fvad.dll", "GFSDK_ShadowLib.win64.dll", "GFSDK_TXAA.win64.dll", "GFSDK_TXAA_AlphaResolve.win64.dll", "GPUPerfAPIDX11-x64.dll", "GTA5.exe", "GTAVLanguageSelect.exe", "GTAVLauncher.exe", "installscript.vdf", "installscript_sdk.vdf", "NvPmApi.Core.win64.dll", "opus.dll", "opusenc.dll", "PlayGTAV.exe", "steam_api64.dll", "title.rgl", "toxmod.dll", "title.rgl", "uninstall.exe", "version.txt", "x64a.rpf", "x64b.rpf", "x64c.rpf", "x64d.rpf", "x64e.rpf", "x64f.rpf", "x64g.rpf", "x64h.rpf", "x64i.rpf", "x64j.rpf", "x64k.rpf", "x64l.rpf", "x64m.rpf", "x64n.rpf", "x64o.rpf", "x64p.rpf", "x64q.rpf", "x64r.rpf", "x64s.rpf", "x64t.rpf", "x64u.rpf", "x64v.rpf", "x64w.rpf", "zlib1.dll")
$folder = Read-Host -Prompt "Enter the path of your GTA V Instalaltion (e.g. C:\Program Files (x86)\Steam\steamapps\common\Grand Theft Auto V)"
Get-ChildItem -Path $folder -Exclude $excluded | Remove-Item -Recurse
Write-Host "Cleaned up successfully!" -ForegroundColor Green
Read-Host
