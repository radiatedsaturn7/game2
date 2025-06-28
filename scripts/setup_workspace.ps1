# PowerShell script to install development tools on a Windows AWS WorkSpace
$ProgressPreference = 'SilentlyContinue'

# Install Visual Studio Code
Invoke-WebRequest -Uri https://update.code.visualstudio.com/latest/win32-x64-user/stable -OutFile vscode.exe
Start-Process vscode.exe -ArgumentList '/silent','/mergetasks=!runcode' -NoNewWindow -Wait
Remove-Item vscode.exe

# Install Unity Hub
Invoke-WebRequest -Uri https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.exe -OutFile UnityHubSetup.exe
Start-Process UnityHubSetup.exe -ArgumentList '/S' -NoNewWindow -Wait
Remove-Item UnityHubSetup.exe

# Install Roblox Studio
Invoke-WebRequest -Uri https://setup.roblox.com/download?type=studio -OutFile RobloxStudioSetup.exe
Start-Process RobloxStudioSetup.exe -ArgumentList '/S' -NoNewWindow -Wait
Remove-Item RobloxStudioSetup.exe
