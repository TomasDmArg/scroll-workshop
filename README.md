# ERC20 Token - Scroll Sepolia

A basic ERC20 token implementation using Foundry, ready for deployment on Scroll Sepolia testnet.

## Features

- ✅ Standard ERC20 implementation (OpenZeppelin)
- ✅ Minting capability (owner only)
- ✅ Burning capability
- ✅ Configurable via environment variables
- ✅ Full test suite
- ✅ Deployment & verification scripts

## Prerequisites

- [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Git

## Quick Start

### 1. Install Dependencies

```bash
forge install OpenZeppelin/openzeppelin-contracts --no-commit
```

### 2. Setup Environment

Copy `.env.example` to `.env` and fill in your values:

```bash
cp .env.example .env
```

Edit `.env` with:
- `PRIVATE_KEY`: Your wallet private key (without 0x)
- `ETHERSCAN_API_KEY`: Get it from [Etherscan](https://etherscan.io/myapikey) - works for all chains via [API V2](https://docs.etherscan.io/v2-migration)
- Token configuration (optional)

### 3. Run Tests

```bash
forge test -vvv
```

### 4. Deploy to Scroll Sepolia

```bash
forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast --verify -vvvv
```

Or using environment variable:

```bash
forge script script/Deploy.s.sol --rpc-url $SCROLL_SEPOLIA_RPC_URL --broadcast --verify -vvvv
```

## Project Structure

```
.
├── src/
│   └── MyToken.sol          # ERC20 token contract
├── script/
│   └── Deploy.s.sol         # Deployment script
├── test/
│   └── MyToken.t.sol        # Test suite
├── foundry.toml             # Foundry configuration
└── .env.example             # Environment template
```

## Token Configuration

Customize your token via `.env`:

- `TOKEN_NAME`: Token name (default: "My Token")
- `TOKEN_SYMBOL`: Token symbol (default: "MTK")
- `INITIAL_SUPPLY`: Initial supply without decimals (default: 1000000)

## Useful Commands

```bash
# Build
forge build

# Test
forge test

# Test with gas report
forge test --gas-report

# Format code
forge fmt

# Deploy (without verification)
forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast

# Verify contract (if deployed separately)
forge verify-contract <CONTRACT_ADDRESS> src/MyToken.sol:MyToken --chain-id 534351 --watch
```

## Network Info

- **Scroll Sepolia Chain ID**: 534351
- **RPC URL**: https://sepolia-rpc.scroll.io/
- **Explorer**: https://sepolia.scrollscan.com/
- **Add to MetaMask & Bridge**: [Scroll Portal](https://sepolia.scroll.io/portal) - Bridge Ethereum Sepolia ETH
- **Faucets**:
  - https://faucet.tdm.ar/
  - https://www.l2faucet.com/scroll
  - https://faucet.quicknode.com/scroll/sepolia
- **API**: Using [Etherscan API V2](https://docs.etherscan.io/v2-migration) - unified multichain API

## Security Notes

- ⚠️ Never commit your `.env` file
- ⚠️ Never share your private key
- ⚠️ Use a test wallet for testnets
- ⚠️ Audit your code before mainnet deployment

## License

MIT

---

# ERC20 Token - Scroll Sepolia (Español)

Un token ERC20 básico usando Foundry, listo para desplegar en la testnet Scroll Sepolia.

## Inicio Rápido

### 1. Instalar Dependencias

```bash
forge install OpenZeppelin/openzeppelin-contracts --no-commit
```

### 2. Configurar Entorno

```bash
cp .env.example .env
```

Edita `.env` con tus valores.

### 3. Ejecutar Tests

```bash
forge test -vvv
```

### 4. Desplegar en Scroll Sepolia

```bash
forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast --verify -vvvv
```

## Comandos Útiles

```bash
forge build          # Compilar
forge test           # Testear
forge fmt            # Formatear código
```

## Información de Red

- **Chain ID**: 534351
- **RPC**: https://sepolia-rpc.scroll.io/
- **Explorer**: https://sepolia.scrollscan.com/
- **Agregar a MetaMask & Bridge**: [Scroll Portal](https://sepolia.scroll.io/portal) - Bridge Ethereum Sepolia ETH
- **Faucets**:
  - https://faucet.tdm.ar/
  - https://www.l2faucet.com/scroll
  - https://faucet.quicknode.com/scroll/sepolia

