$url = "ลิงก์_Raw_ของ_ไฟล์_BasX_SHOP.exe_ที่คุณก๊อปไว้"
$tempPath = "$env:TEMP\BasX_Setup.exe"

# ดาวน์โหลดและรัน
Invoke-WebRequest -Uri $url -OutFile $tempPath
Start-Process -FilePath $tempPath -Verb RunAs -Wait

# รันเสร็จลบทิ้ง
Remove-Item -Path $tempPath -Force
