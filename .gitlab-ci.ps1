$env:MOZILLABUILD = "C:\mozilla-build\"
$env:USERPROFILE = 'C:\Users\librewolf'
$env:HOME = '/c/Users/librewolf'
$env:PATH = "$env:SystemRoot\System32;$env:SystemRoot;$env:SystemRoot\System32\Wbem;"

& ($env:MOZILLABUILD + "msys\bin\bash.exe") -i -c ("/bin/bash.exe build.sh " + $args)

Exit $LASTEXITCODE
