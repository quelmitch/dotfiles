Write-Host "--- React + Vite Environment Setup ---" -ForegroundColor Cyan

# 1. Check if Node.js is installed
try {
    $nodeVersion = node --version
    Write-Host "Node.js is already installed: $nodeVersion" -ForegroundColor Green
}
catch {
    Write-Host "Node.js not found. Installing..." -ForegroundColor Yellow
    
    # Install Node.js LTS via Winget
    winget install OpenJS.NodeJS.LTS --accept-source-agreements --accept-package-agreements
    
    Write-Host "-------------------------------------------------------"
    Write-Host "Node.js installed successfully." -ForegroundColor Green
    Write-Host "PLEASE RESTART YOUR TERMINAL NOW." -ForegroundColor Red
    Write-Host "   (Close this window and open a new one to use 'npm')" -ForegroundColor Yellow
    Write-Host "-------------------------------------------------------"
    
    Write-Host ""
    Write-Host "Press any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

# 2. Update npm to the latest version (Recommended)
Write-Host "Checking for npm updates..." -ForegroundColor Cyan
try {
    npm install -g npm@latest
    $npmVersion = npm --version
    Write-Host "npm is up to date: $npmVersion" -ForegroundColor Green
}
catch {
    Write-Host "Failed to update npm. You may need to run this as Administrator." -ForegroundColor Red
}

Write-Host "-------------------------------------------------------"
Write-Host "Environment Ready!" -ForegroundColor Green
Write-Host "You can now create React apps anywhere by running:"
Write-Host "   npm create vite@latest" -ForegroundColor Yellow
Write-Host "-------------------------------------------------------"

Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
