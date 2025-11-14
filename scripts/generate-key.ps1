# Generate Ethereum Private Key (PowerShell)
# Usage: .\scripts\generate-key.ps1

Write-Host "=" -NoNewline -ForegroundColor Cyan
Write-Host ("=" * 59) -ForegroundColor Cyan
Write-Host "Generated Private Key (FOR TESTING ONLY!)" -ForegroundColor Yellow
Write-Host "=" -NoNewline -ForegroundColor Cyan
Write-Host ("=" * 59) -ForegroundColor Cyan

# Generate 32 random bytes using .NET cryptography
$bytes = New-Object byte[] 32
$rng = [System.Security.Cryptography.RNGCryptoServiceProvider]::Create()
$rng.GetBytes($bytes)
$privateKey = "0x" + ($bytes | ForEach-Object { $_.ToString("x2") }) -join ""

Write-Host $privateKey -ForegroundColor Green
Write-Host "=" -NoNewline -ForegroundColor Cyan
Write-Host ("=" * 59) -ForegroundColor Cyan
Write-Host ""
Write-Host "⚠️  SECURITY WARNINGS:" -ForegroundColor Red
Write-Host "  - This is for TESTNET/DEVELOPMENT only!"
Write-Host "  - NEVER use this for mainnet!"
Write-Host "  - NEVER share this key!"
Write-Host "  - Store it securely in your .env file"
Write-Host "  - Remove the '0x' prefix when adding to .env"
Write-Host ""
Write-Host "Example .env entry:" -ForegroundColor Cyan
Write-Host "PRIVATE_KEY=$($privateKey.Substring(2))" -ForegroundColor Green
Write-Host "=" -NoNewline -ForegroundColor Cyan
Write-Host ("=" * 59) -ForegroundColor Cyan

