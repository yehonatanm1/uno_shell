$webhook = "https://discord.com/api/webhooks/1380222529209241680/jOwJW5pI3_hLmcpsOVjSLsS3rZyYGiRDS49oKPa0myTKTAnRJ_vwqNhaFggDyJOfhji-"
$body = @{ content = "הודעת מבחן מ-PowerShell" } | ConvertTo-Json
Invoke-RestMethod -Uri $webhook -Method Post -Body $body -ContentType "application/json"
