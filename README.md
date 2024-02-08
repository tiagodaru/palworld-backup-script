# palworld-backup-script

*A Powershell script that creates the Backup from Saved to Palworld and sends a message to Discord*

Um script Powershell que faz o Backup da pasta Saved do Palworld e envia uma mensagem no Discord


Before executing the script we need to ensure that the Poweshell script execution policy is set to unrestricted
Antes de excutar o script precisamos garantir que a politica de execução de scripts no Poweshell esteja definida para irrestrita

Open Powershell with administrator privileges
Abra o Powershell com privilegios de administrador

Using the command below to exit PowerShell should tell whether the mode is unrestricted or otherwise
Usando o comando abaixo a saída do PowerShell deve dizer se o modo está irrestrito ou outro

```
Get-ExecutionPolicy
```
(Optional) Type the following command to view the effective PowerShell execution policies and press Enter:
(Opcional) Digite o seguinte comando para visualizar as políticas de execução efetivas do PowerShell e pressione Enter:

```
Get-ExecutionPolicy -List
```

To set the policy as unrestricted and be able to execute the script, enter the command below
Para definir a politica como irestrita e conseguir executar o script entre com o comando abaixo
```
Set-ExecutionPolicy UnRestricted
```

Now to run the script, access the folder where the script is and from there type the PowerShell execution command
Agora para executar o script acesse a pasta onde está o script e de dentro dela digite o comando de execução do PowerShell
```
.\script-backup-palworld-saved.ps1
```
If you want to automate Backup, you can check out this step-by-step guide
Caso queira automatizar o Backup pode conferir este passo a passo
[How to Create a PowerShell Scheduled Task](https://lazyadmin.nl/powershell/how-to-create-a-powershell-scheduled-task/).

In my case I set the backup to run every hour so if I have a problem I can get the folder before the problem and I don't lose so many hours of gameplay
No meu caso eu coloquei o backup para executar a cada uma hora assim caso eu tenha problema pode pegar a pasta anterior ao problema e não perco tantas horas de jogo

