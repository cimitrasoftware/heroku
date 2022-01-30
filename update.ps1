# git config --global credential.helper 'cache --timeout 108000000'
# git config --global credential.helper store
Set-Location C:\Users\tay\heroku\Node-Heroku-Deployment
git pull > $null
git add . > $null
git commit -am "update" -q | Out-Null > $null
git push -q | Out-Null > $null 