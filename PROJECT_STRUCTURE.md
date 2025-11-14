# Project Structure / Estructura del Proyecto

```
scroll-workshop/
│
├── src/
│   └── MyToken.sol              # ERC20 token contract
│
├── script/
│   ├── Deploy.s.sol             # Deployment script
│   └── Verify.s.sol             # Verification script
│
├── test/
│   └── MyToken.t.sol            # Test suite with 8 tests
│
├── foundry.toml                 # Foundry configuration
├── remappings.txt               # Import remappings
├── .gitignore                   # Git ignore rules
│
├── README.md                    # Main documentation
├── QUICK_START.md               # Quick reference guide
├── LICENSE                      # MIT License
│
└── Makefile                     # Make commands (optional)

## Files You Need to Create / Archivos que Debes Crear

### .env (IMPORTANT!)

Create this file manually with your private information:

```env
PRIVATE_KEY=your_private_key_without_0x_prefix
SCROLL_SEPOLIA_RPC_URL=https://sepolia-rpc.scroll.io/
ETHERSCAN_API_KEY=your_etherscan_api_key
TOKEN_NAME="My Token"
TOKEN_SYMBOL="MTK"
INITIAL_SUPPLY=1000000
```

⚠️ **NEVER commit this file to git!** / **¡NUNCA subas este archivo a git!**
```

## Contract Features / Características del Contrato

- ✅ Standard ERC20 (OpenZeppelin)
- ✅ Mintable (only owner)
- ✅ Burnable
- ✅ Ownable
- ✅ 18 decimals (standard)
- ✅ Configurable initial supply

## Test Coverage / Cobertura de Tests

The test suite includes:
- ✅ Initial supply verification
- ✅ Token metadata (name, symbol, decimals)
- ✅ Transfer functionality
- ✅ Mint (with access control)
- ✅ Burn
- ✅ Approve and TransferFrom

## Getting Started / Comenzando

1. **Install Dependencies** / **Instalar Dependencias**
   ```bash
   forge install OpenZeppelin/openzeppelin-contracts --no-commit
   ```

2. **Create .env file** / **Crear archivo .env**
   - Add your private key / Agregar tu clave privada
   - Add Etherscan API key / Agregar API key de Etherscan (works for all chains via [API V2](https://docs.etherscan.io/v2-migration))

3. **Get Testnet ETH** / **Obtener ETH de Testnet**
   - **Add to MetaMask & Bridge**: [Scroll Portal](https://sepolia.scroll.io/portal) - Bridge Ethereum Sepolia ETH
   - **Faucets**:
     - https://faucet.tdm.ar/
     - https://www.l2faucet.com/scroll
     - https://faucet.quicknode.com/scroll/sepolia

4. **Build & Test** / **Compilar y Probar**
   ```bash
   forge build
   forge test -vvv
   ```

5. **Deploy** / **Desplegar**
   ```bash
   forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast --verify -vvvv
   ```

## Customization / Personalización

### Change Token Name and Symbol / Cambiar Nombre y Símbolo

Edit `.env`:
```env
TOKEN_NAME="My Custom Token"
TOKEN_SYMBOL="MCT"
INITIAL_SUPPLY=5000000
```

### Modify Contract / Modificar Contrato

Edit `src/MyToken.sol` to add custom features:
- Add pausing functionality
- Add transfer fees
- Add whitelist/blacklist
- Add time locks
- etc.

## Security Checklist / Lista de Seguridad

- [ ] Use a test wallet for testnets
- [ ] Never share your private key
- [ ] Never commit .env to git
- [ ] Audit contract before mainnet
- [ ] Test thoroughly on testnet first
- [ ] Use hardware wallet for mainnet
- [ ] Enable 2FA on all accounts

## Support / Soporte

- Foundry Docs: https://book.getfoundry.sh/
- OpenZeppelin: https://docs.openzeppelin.com/
- Scroll Docs: https://docs.scroll.io/
- Scroll Discord: https://discord.gg/scroll

