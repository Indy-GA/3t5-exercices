# Exercice 2: Commandes PowerShell

# Dans cet exercice, trouvez la ligne de commande PowerShell à utiliser pour obtenir l'information demandée.
# Pour chaque question, inscrivez la ligne de commande et insérez une copie d'écran pour votre référence personnelle. 
# Vous devriez pouvoir répondre à la question en utilisant une seule ligne de commande, en chaînant plusieurs 
# commandes à l'aide de l'opérateur | (pipe).



# 1. À l'aide des commandes Get-ChildItem et Select-Object, obtenez la liste de tous les fichiers se terminant par 
#    l'extension .EXE du répertoire C:\Windows, en affichant seulement le nom complet, la date de dernière modification 
#    et la date de création.

    Get-ChildItem C:\Windows *.exe | Select-Object FullName, LastWriteTime, CreationTime

# 2. Sauvegardez toute l'information retournée par Get-ComputerInfo dans le fichier info.txt (à créer dans le répertoire 
#    courant).

    Get-ComputerInfo | New-Item -Path .\info.txt


# 3. À l'aide de la commande Get-Item, affichez le texte contenu dans ce fichier.

    Get-Item "R03 - Pipeline\exercice3.2.ps1" | Get-Content

# 4. Dressez la liste des cartes réseau à l'aide de la commande Get-NetAdapter sous forme de tableau avec seulement leur 
#    nom, leur description et leur adresse MAC.

    Get-NetAdapter | Select-Object name, InterfaceDescription, MacAddress

# 5. Créez un nouveau répertoire nommé Minou dans le répertoire courant, puis utilisez le pipeline pour entrer dans ce 
#    répertoire immédiatement après en une seule ligne de commande.

    new-item -ItemType Directory .\Minou | Set-Location

# 6. Démarrez Notepad à l'aide de la commande Start-Process, mais faites-le en affichant son numéro de processus (PID) 
#    dans la console. N'affichez que son numéro de processus, rien d'autre, sans l'en-tête de colonne "PID". (*Attention, 
#    cette commande ne produit pas d'objet de manière automatique, il faut le provoquer*).

    Start-Process -PassThru  notepad.exe | Select-Object -ExpandProperty Id

# 7. 🏆 Obtenez la liste de toutes les adresses IPv4 de votre ordinateur. On souhaite avoir les informations détaillées 
#    enregistrées dans un fichier texte, tout en affichant un tableau sommaire dans la console avec seulement une 
#    colonne IPaddress et une colonne InterfaceAlias. Tout ceci doit se faire en une seule ligne de commande en 
#    utilisant le pipeline. Pour répondre à cette question, vous aurez besoin, entre autres, des commandes 
#    Get-NetIPAddress et Tee-Object.

    Get-NetIPAddress -AddressFamily ipv4 | Tee-Object -Append "ipv4.txt"