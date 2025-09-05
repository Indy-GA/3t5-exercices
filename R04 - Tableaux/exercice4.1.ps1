## Exercice 1: Les fichiers

# 4.1.1. Obtenir tous les fichiers contenus dans le répertoire C:\Windows.
   
    Get-ChildItem C:\\Windows

# 4.1.2. Obtenir tous les fichiers contenus dans le répertoire C:\Windows, triés par ordre 
#        décroissant de taille.

    Get-ChildItem C:\\Windows | Sort-Object length -Descending

# 4.1.3. Même chose, mais montrer seulement les fichiers plus grands que 1 mégaoctet.

    Get-ChildItem C:\\Windows | Sort-Object length -Descending |Where-Object length -GT 1mb

# 4.1.4. Même chose, mais montrer seulement les fichiers qui pèsent entre 1 et 10 mégaoctets.

    Get-ChildItem C:\\Windows | Sort-Object length -Descending |Where-Object {$_.length -gt 1mb -and $_.length -lt 10mb}

# 4.1.5. Même chose, mais montrer seulement les fichiers qui pèsent soit plus de 1 mégaoctet 
#        ou moins de 1 kilooctet.

    Get-ChildItem C:\\Windows | Sort-Object length -Descending |Where-Object {$_.length -gt 10mb -or $_.length -lt 1mb}
