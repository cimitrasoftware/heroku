Param(
[string] $AuthorQuote,
[string] $AuthorName
)

# TEMPLATE FILE
$TemplateFile = "C:\Users\tay\heroku\Node-Heroku-Deployment\index_template.html"

# DESTINATION INDEX FILE
$IndexFile = "C:\Users\tay\heroku\Node-Heroku-Deployment\index.html"

# CREATE A TEMPORARY FILE
$TempFile = New-TemporaryFile

# Copy the Template File to the Temporary File
Copy-Item $TemplateFile $TempFile

# Get the content of the Temp search and replace the REPLACE_TEXT string
(Get-Content -path $TempFile  -Raw) -replace 'AUTHOR_QUOTE', $AuthorQuote | Set-Content -path $TempFile 

(Get-Content -path $TempFile  -Raw) -replace 'AUTHOR_NAME', $AuthorName | Set-Content -path $TempFile 

# Move the Temporary file to the index.html file
Move-Item $TempFile $IndexFile -Force

# Update via Git
& "C:\Users\Tay\heroku\Node-Heroku-Deployment\update.ps1"

Write-Output "Thanks, Quote Posted!"
Write-Output "The Heroku Server build will take about 2 minutes."

