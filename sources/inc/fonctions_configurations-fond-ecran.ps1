# Paramétrage fond ecran
function Set-background {
    Write-Host "Parametrage du fond d'ecran de bureau..."
    Write-Host "--------------------------------------------"
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    $SourceImagePath = "$WallpaperFolder\ecranVerrouillage.jpg"
    $PublicPicturesFolder = "C:\Users\Public\Pictures"
    $DestinationImagePath = Join-Path -Path $PublicPicturesFolder -ChildPath (Split-Path -Leaf $SourceImagePath)
	Copy-Item -Path $SourceImagePath -Destination $DestinationImagePath -Force
    Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value $DestinationImagePath
    Add-Type -TypeDefinition @"
	using System;
	using System.Runtime.InteropServices;
	public class Wallpaper {
    [DllImport("user32.dll", CharSet = CharSet.Auto)]
    public static extern int SystemParametersInfo (int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@
    [Wallpaper]::SystemParametersInfo(0x0014, 0, $DestinationImagePath, 0x0001 -bor 0x0002)
}