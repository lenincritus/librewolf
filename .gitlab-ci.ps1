$env:MOZILLABUILD = "C:\mozilla-build\"
$env:USERPROFILE = 'C:\Users\librewolf'
$env:HOME = '/c/Users/librewolf'
$env:PATH = "$env:SystemRoot\System32;$env:SystemRoot;$env:SystemRoot\System32\Wbem;"

# yes, our path is too long..
if (Test-Path b:\settings) {
  subst b: /d
}
subst b: .
pushd b:\

& ($env:MOZILLABUILD + "msys\bin\bash.exe") -i -c ("/bin/bash.exe build.sh " + $args)
$retval = $LASTEXITCODE

popd
subst b: /d

Exit $retval
