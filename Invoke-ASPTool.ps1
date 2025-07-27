Invoke-WebRequest https://github.com/SpringTec3D/ASPTool/raw/refs/heads/main/ASPTool.zip -OutFile ASPTool.zip -Method Get
Expand-Archive -Path ASPTool.zip -DestinationPath ASPTool
Invoke-Expression ASPTool/RanSIM.exe
Start-Sleep -Seconds 5
Remove-Item -Path "ASPTool.zip" -Force
Remove-Item -Path "ASPTool" -Recurse -Force
