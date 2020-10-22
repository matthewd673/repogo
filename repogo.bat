@ECHO OFF

ECHO repogo running...

git init
git add .
git commit -m "Initial commit"

for %%I in (.) do set dirName=%%~nxI

ECHO repogo will attempt to push to repository %dirName% on the specified GitHub account...
set /p ghName=Enter GitHub account to push to: 

git remote add origin https://github.com/%ghName%/%dirName%.git
git branch -M main
git push -u origin main