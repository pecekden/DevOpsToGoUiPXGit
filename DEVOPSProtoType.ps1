

#Get the Git Repo and create a new folder with its content
git clone --quiet "https://github.com/pecekdenBusn/sds-extraction-and-import"
cd "\sds-extraction-and-import"
git checkout master

#PACK THAT SHIIIT UUUUUUUUP
C:\Users\DenisPecekanovicBoyd\AppData\Local\UiPath\app-20.6.0-beta0093\UiRobot.exe pack "C:\temp\Packages\TempGIT\sds-extraction-and-import\project.json" --output "C:\temp\Packages"

#Update the Git Repo (remote)
git add .
git status

#Commit the stuff
git commit -m "Robot Update of Versioning"
git status

#PUSH THAAAT SHIIIIIIIIT
git push --quiet

#Delete temp folder
cd $RootRepoFolder

Remove-Item -Path "C:\temp\Packages\TempGIT\sds-extraction-and-import" -Recurse -Force