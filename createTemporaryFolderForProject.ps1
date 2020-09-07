#Create a folder for the temporary project to save
param(
[String]$path
)

if([string]::IsNullOrEmpty($path))
{
#Creates Folder in temp folder
$path = Join-Path $env:TEMP ([guid]::NewGuid())
}

else{

}

Write-Host("Creating temporary folder: "+$path)

if(-not (Test-Path -LiteralPath $path) -and (Test-Path -IsValid $path)){
    try {
        New-Item -Path $path -ItemType Directory -ErrorAction Stop | Out-Null #-Force
    }
    catch {
        Write-Error -Message "Unable to create directory '$DirectoryToCreate'. Error was: $_" -ErrorAction Stop
    }
    Write-Host("Successfully created directory '$path'.")
 }

 return $path