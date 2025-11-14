#!/usr/bin/env node
/**
 * Generate a cryptographically secure Ethereum private key
 * Usage: node scripts/generate-key.js
 */

const crypto = require('crypto');

// Generate 32 random bytes (256 bits)
const privateKey = '0x' + crypto.randomBytes(32).toString('hex');

console.log('='.repeat(60));
console.log('Generated Private Key (FOR TESTING ONLY!)');
console.log('='.repeat(60));
console.log(privateKey);
console.log('='.repeat(60));
console.log('\n⚠️  SECURITY WARNINGS:');
console.log('  - This is for TESTNET/DEVELOPMENT only!');
console.log('  - NEVER use this for mainnet!');
console.log('  - NEVER share this key!');
console.log('  - Store it securely in your .env file');
console.log('  - Remove the "0x" prefix when adding to .env');
console.log('\nExample .env entry:');
console.log(`PRIVATE_KEY=${privateKey.substring(2)}`);
console.log('='.repeat(60));

