$url = "https://raw.githubusercontent.com/heitorrosa/batch-cleaner/main/Cleaner.bat"
$batchFile = "$env:TEMP\Cleaner.bat"
(New-Object Net.WebClient).DownloadFile($url, $batchFile)
Start-Process -Wait -FilePath $batchFile -WindowStyle Hidden
