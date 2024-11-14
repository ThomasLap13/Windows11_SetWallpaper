############################################################
# Script de paramètrage automatique d'un poste Windows 11 
# Auteur : ThomasLap13
# Date : 14/11/2024 
# Version BETA : Testé sur Windows 11 23H2 
############################################################

. "$PSScriptRoot\inc\fonctions_configurations-fond-ecran.ps1" -WallpaperFolder $WallpaperFolder
$WallpaperFolder = "$PSScriptRoot\wallpaper"
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File "$PSCommandPath"" -Verb RunAs; exit }
Write-Host ""
Write-Host "==============================================================================="
Write-Host "======        Bienvenue dans le script de parametrage automatique        ======"
Write-Host "==============================================================================="
Write-Host ""
Set-background