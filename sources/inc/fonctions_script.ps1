# Fonction de pause
Function Pause($M="Appuyer sur une touche pour continuer...") {
    If($psISE){
        $S=New-Object -ComObject "WScript.Shell";$B=$S.Popup("$M",0,"Script Paused",0);
        Return
    };
    
    Write-Host -NoNewline $M;$I=16,17,18,20,91,92,93,144,145,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183;
    While($K.VirtualKeyCode -Eq $Null -Or $I -Contains $K.VirtualKeyCode){
        $K=$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")};
    Write-Host
}

# Function New-Shortcut
Function New-Shortcut {
    param(
       [parameter(Mandatory=$true)][string]$ShortcutFullName,
       [parameter(Mandatory=$true)][string]$ShortcutTarget,
       [parameter(Mandatory=$true)][string]$ShortcutIco
    )

    $ShortcutObject = New-Object -comObject WScript.Shell
    $Shortcut = $ShortcutObject.CreateShortcut($ShortcutFullName)
    $Shortcut.TargetPath = $ShortcutTarget
    $Shortcut.IconLocation = $ShortcutIco
    $Shortcut.Save()
}

# Red�marrer l'ordinateur
Function Set-RedémarragePC {
    Write-Host ""
    Write-Host "Redemarrage de l'ordinateur..."

    Start-Sleep -Seconds 5
    Restart-Computer
}

# Question : Installation de SAP ?
Function Request-SAP {
    # On demande � l'utilisteur si il souhaite installer SAP
    $choixSAP = Read-Host "Souhaitez vous installer SAP ?"

    # On test les r�ponses de l'utilisateur
    if ($choixSAP -eq 0 -or $choixSAP -eq 1){
	    return $choixSAP
    }
    else {
	    Write-Host "Votre saisi n'est pas valable !"
        Request-SAP
    }
}

Function Request-Copieur_ADV {
    $choixCopieurADV = Read-Host "Souhaitez vous installer le Copieur_ADV ?"

    if ($choixCopieurADV -eq 0 -or $choixCopieurADV -eq 1){
	    return $choixCopieurADV
    }
    else {
	    Write-Host "Votre saisi n'est pas valable !"
        Request-Copieur_ADV
    }
}

Function Request-Copieur_RDC {
    $choixCopieurRDC = Read-Host "Souhaitez vous installer le Copieur_RDC ?"

    if ($choixCopieurRDC -eq 0 -or $choixCopieurRDC -eq 1){
	    return $choixCopieurRDC
    }
    else {
	    Write-Host "Votre saisi n'est pas valable !"
        Request-Copieur_RDC
    }
}

Function Request-Copieur_S11 {
    $choixCopieurS11 = Read-Host "Souhaitez vous installer le Copieur_S11 ?"

    if ($choixCopieurS11 -eq 0 -or $choixCopieurS11 -eq 1){
	    return $choixCopieurS11
    }
    else {
	    Write-Host "Votre saisi n'est pas valable !"
        Request-Copieur_S11
    }
}

#Fonction de modification du fichier hosts
Function Modification-Hosts {
    param(
       [parameter(Mandatory=$true)][string]$IP,
       [parameter(Mandatory=$true)][string]$Hostname
    )
    Add-Content -Path "$env:windir\System32\drivers\etc\hosts" -Value "$IP`t$Hostname" -Force
    Start-Sleep -s 1
}

# Fonction de nettoyage de windows
Function Clear-Windows {
    Remove-Item -Path "$env:windir\temp\*" -Force -Recurse -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
    Remove-Item -Path "$env:LOCALAPPDATA\temp\*" -Force -Recurse -ErrorAction SilentlyContinue -WarningAction SilentlyContinue

    Invoke-Expression -Command "$env:windir\system32\cleanmgr.exe"
}