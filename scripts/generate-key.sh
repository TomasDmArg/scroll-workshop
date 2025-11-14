#!/bin/bash
# Generate Ethereum Private Key (Bash)
# Usage: bash scripts/generate-key.sh

echo "============================================================"
echo "Generated Private Key (FOR TESTING ONLY!)"
echo "============================================================"

# Check if openssl is available
if command -v openssl &> /dev/null; then
    PRIVATE_KEY="0x$(openssl rand -hex 32)"
elif command -v node &> /dev/null; then
    PRIVATE_KEY=$(node -e "const crypto = require('crypto'); console.log('0x' + crypto.randomBytes(32).toString('hex'));")
else
    echo "Error: Need openssl or node.js to generate key"
    exit 1
fi

echo "$PRIVATE_KEY"
echo "============================================================"
echo ""
echo "⚠️  SECURITY WARNINGS:"
echo "  - This is for TESTNET/DEVELOPMENT only!"
echo "  - NEVER use this for mainnet!"
echo "  - NEVER share this key!"
echo "  - Store it securely in your .env file"
echo "  - Remove the '0x' prefix when adding to .env"
echo ""
echo "Example .env entry:"
echo "PRIVATE_KEY=${PRIVATE_KEY#0x}"
echo "============================================================"

