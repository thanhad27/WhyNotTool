# Run this after build to push files and manifest to GitHub
$branch = "main"
$repo = "youruser/yourrepo"
$token = "your_github_token"  # Store securely!

Write-Host "Generating manifest..."
Start-Process -NoNewWindow -Wait -FilePath "ManifestGenerator.exe"

Write-Host "Uploading files to GitHub..."
git add .
git commit -m "Update version and files"
git push origin $branch

Write-Host "Upload complete."