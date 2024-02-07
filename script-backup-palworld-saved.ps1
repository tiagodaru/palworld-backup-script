#Define the source folder the character "*" will copy the files recursively, taking all files and folders and subfolders.
#Definir a pasta de origem o caractere "*" ira copiar o arquivos de maneira recursiva pegando todos os arquivos e pastas e subpastas. 
$sourcePath = "C:\YourServerfiles\Pal\Saved*"

#Defines the destination folder where the Palworld save folder will be saved.
#Define a pasta do de destino onde será salvo a pasta de salvamento do Palworld.
$destinyPath = "C:\YourDocuments\palworld\Backup"
 
#Insert the current date in the format day-month-year-Hour-minute to use the American format use MM-dd-yyyy-HHmm
#Insere a data atual no formato dia-mês-ano-Hora e minuto
$date = Get-Date -Format dd-mm-yyyy-HHmm
 
#Copy from source to destination - the "Recurse" parameter says it will copy all subfolders
#Faz uma copia da origem para o destino e o parâmetro "Recurse" diz que vai copiar todas as subpastas

#The "Verbose" parameter says which actions will be shown
#O parâmetro "Verbose" diz que as ações serão mostradas

#Send over payload, converting it to JSON
Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'

#Store webhook url
$webHookUrl = 'URLYourDiscordWebHook'

#Create embed array
[System.Collections.ArrayList]$embedArray = @()

#Store embed values
$title       = 'Palworld Backup run now'
$description = 'In case of disaster we will upload the backup previous to the problem'
$color       = '9442302'

#Create thumbnail object
$thumbUrl = 'https://tiagodaru.com/wp-content/uploads/2024/02/Lyleen.jpg' 
$thumbnailObject = [PSCustomObject]@{

    url = $thumbUrl

}

#Create embed object, also adding thumbnail
$embedObject = [PSCustomObject]@{

    title       = $title
    description = $description
    color       = $color
    thumbnail   = $thumbnailObject

}

#Add embed object to array
$embedArray.Add($embedObject) | Out-Null

#Create the payload
$payload = [PSCustomObject]@{

    embeds = $embedArray

}

#Send over payload, converting file it to JSON
Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
