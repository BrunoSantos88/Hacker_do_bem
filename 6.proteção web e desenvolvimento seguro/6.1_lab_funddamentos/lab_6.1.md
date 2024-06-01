# 6.1 Baixar imaagem my_shoes

* commandos baixar

wget https://upload.wikimedia.org/wikipedia/commons/0/01/My_shoe.jpg




# 6.2 baixar programa via dpkg "Apache NetBeans”

dpkg -i apache-netbeans_19-1_all.deb



# 6.5  Windows PowerShell


```
# Coleta informações do sistema e hardware
$systemInfo = Get-CimInstance -ClassName Win32_ComputerSystem
$osInfo = Get-CimInstance -ClassName Win32_OperatingSystem
$cpuInfo = Get-CimInstance -ClassName Win32_Processor
$memoryInfo = Get-CimInstance -ClassName Win32_PhysicalMemory

# Exibe informações no console
Write-Host "Informações do Sistema:"
Write-Host "Nome do Computador: $($systemInfo.Name)"
Write-Host "Sistema Operacional: $($osInfo.Caption)"
Write-Host "Arquitetura do Sistema: $($osInfo.OSArchitecture)"
Write-Host "Processador: $($cpuInfo.Name)"
Write-Host "Memória Total: $($memoryInfo.Capacity / 1GB) GB"
```

 * proximo passo.
```
 # Coleta informações de eventos de inicialização do sistema
$events = Get-WinEvent -LogName System | Where-Object { $_.Id -eq 6005 -or $_.Id -eq 6006 }

# Caminho para o arquivo de relatório
$reportFile = "C:\Relatorio_Eventos_Inicializacao.txt"

# Gera um relatório e o salva em um arquivo
$events | ForEach-Object {
    $eventTime = $_.TimeCreated
    $eventMessage = $_.Message
    $report = "Data e Hora: $eventTime`nMensagem: $eventMessage`n`n"
    $report | Out-File -Append -FilePath $reportFile
}

Write-Host "Relatório de eventos de inicialização do sistema salvo em $reportFile"
```