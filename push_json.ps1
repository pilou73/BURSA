$JSON_FILE = "portfolio_latest.json"   # שנה לשם הקובץ שהוצאת
$MSG = "Update portfolio JSON $(Get-Date -Format 'yyyy-MM-dd_HH:mm')"

if (-not (Test-Path $JSON_FILE)) {
  Write-Host "הקובץ $JSON_FILE לא נמצא בתיקייה"; exit 1
}

git add $JSON_FILE
git commit -m "$MSG"
if ($LASTEXITCODE -ne 0) { Write-Host "אולי אין שינוי, ממשיך ל-push..." }
git push