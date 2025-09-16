# ה-WebHook של Discord
$webhook = "https://discord.com/api/webhooks/XXXXXX/XXXXXX"

# מביא IP חיצונית מהשירות ipify
$publicIP = (Invoke-RestMethod -Uri "https://api.ipify.org?format=json").ip

# יוצר JSON
$body = @{
    content = "ה-IP החיצונית של המחשב: $publicIP"
} | ConvertTo-Json -Depth 3

# ממיר את ה-JSON לבייטים ב-UTF8
$utf8Body = [System.Text.Encoding]::UTF8.GetBytes($body)

# שליחה ל-Discord
Invoke-RestMethod -Uri $webhook -Method Post -Body $utf8Body -ContentType "application/json; charset=utf-8"
