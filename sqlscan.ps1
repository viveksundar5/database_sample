$sonarScannerPath = ".\.sonar\scanner\bin"
$projectKey = "sql-server-test"
$sqlFilesPath = ".\dbo\"

# Change directory to the SonarScanner bin folder
Set-Location -Path $sonarScannerPath

# Run the SonarScanner command
& .\sonar-scanner.bat `
    -Dsonar.projectKey=$projectKey `
    -Dsonar.sources=$sqlFilesPath `
    -Dsonar.language=plsql
