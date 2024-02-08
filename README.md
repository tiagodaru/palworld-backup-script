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
