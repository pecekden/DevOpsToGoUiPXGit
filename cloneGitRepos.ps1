#Download Git Repository
param(
[String]$GitURL,
[String]$pathForGitRepo
)

"Cloning "+$GitURL

git clone --quiet $GitURL $pathForGitRepo

"Cloning finished"

cd $pathForGitRepo

$branch = git branch --show-current

if($branch -contains 'master'){

}
else{
    git checkout master
}