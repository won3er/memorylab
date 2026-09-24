$r = 'C:\Users\woner\Desktop\MemoryLab\release'
New-Item -ItemType Directory -Force -Path (Join-Path $r 'downloads') | Out-Null
Copy-Item 'C:\Users\woner\Desktop\MemoryLab\dist\MemoryLab-Setup.exe' (Join-Path $r 'downloads\MemoryLab-Setup.exe') -Force
Set-Location $r
git init
git add -A
git -c user.name='won3er' -c user.email='jadsonpavia@gmail.com' commit -m 'MemoryLab: instalador e instrucoes de uso'
git branch -M main
git remote remove origin 2>$null
git remote add origin https://github.com/won3er/memorylab.git
git push -u origin main 2>&1
