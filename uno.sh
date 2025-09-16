# ה-WebHook של Discord
$webhook = "https://discord.com/api/webhooks/XXXXXXXXX/XXXXXXXX"

# מביא IP חיצונית מהשירות ipify
$publicIP = (Invoke-RestMethod -Uri "https://api.ipify.org?format=json").ip

# הגוף לשליחה
$body = @{
    content = "ה-IP החיצונית של המחשב: $publicIP"
} | ConvertTo-Json

# שליחה ל-Discord
Invoke-RestMethod -Uri $webhook -Method Post -Body $body -ContentType "application/json"
