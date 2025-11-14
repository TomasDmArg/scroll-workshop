# Quick Start Guide / Guía Rápida

## English Version

### Prerequisites
1. Foundry installed (see: https://book.getfoundry.sh/getting-started/installation)
2. Scroll Sepolia testnet ETH:
   - **Add to MetaMask & Bridge**: [Scroll Portal](https://sepolia.scroll.io/portal) - Bridge Ethereum Sepolia ETH
   - **Faucets**:
     - https://faucet.tdm.ar/
     - https://www.l2faucet.com/scroll
     - https://faucet.quicknode.com/scroll/sepolia
3. Etherscan API key: https://etherscan.io/myapikey (works for all chains via [API V2](https://docs.etherscan.io/v2-migration))

### Installation (3 minutes)

```bash
# 1. Install dependencies
forge install foundry-rs/forge-std
forge install OpenZeppelin/openzeppelin-contracts

# 2. Create .env file and add your keys
# Copy the content from the template below

# 3. Build
forge build

# 4. Test
forge test

# 5. Deploy
forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast --verify -vvvv
```

### .env Template

```env
PRIVATE_KEY=your_wallet_private_key_without_0x
SCROLL_SEPOLIA_RPC_URL=https://sepolia-rpc.scroll.io/
ETHERSCAN_API_KEY=your_etherscan_api_key
TOKEN_NAME="My Token"
TOKEN_SYMBOL="MTK"
INITIAL_SUPPLY=1000000
```

---

## Versión en Español

### Requisitos Previos
1. Foundry instalado (ver: https://book.getfoundry.sh/getting-started/installation)
2. ETH de Scroll Sepolia:
   - **Agregar a MetaMask & Bridge**: [Scroll Portal](https://sepolia.scroll.io/portal) - Bridge Ethereum Sepolia ETH
   - **Faucets**:
     - https://faucet.tdm.ar/
     - https://www.l2faucet.com/scroll
     - https://faucet.quicknode.com/scroll/sepolia
3. API key de Etherscan: https://etherscan.io/myapikey (funciona para todas las cadenas vía [API V2](https://docs.etherscan.io/v2-migration))

### Instalación (3 minutos)

```bash
# 1. Instalar dependencias
forge install foundry-rs/forge-std
forge install OpenZeppelin/openzeppelin-contracts

# 2. Crear archivo .env y agregar tus claves
# Copia el contenido de la plantilla de abajo

# 3. Compilar
forge build

# 4. Probar
forge test

# 5. Desplegar
forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast --verify -vvvv
```

### Plantilla .env

```env
PRIVATE_KEY=tu_clave_privada_sin_0x
SCROLL_SEPOLIA_RPC_URL=https://sepolia-rpc.scroll.io/
ETHERSCAN_API_KEY=tu_api_key_de_etherscan
TOKEN_NAME="Mi Token"
TOKEN_SYMBOL="MTK"
INITIAL_SUPPLY=1000000
```

---

## Common Commands / Comandos Comunes

```bash
forge build              # Compile / Compilar
forge test               # Test / Probar
forge test -vvv          # Test verbose / Probar (verbose)
forge fmt                # Format code / Formatear código
forge clean              # Clean artifacts / Limpiar artefactos
```

## Useful Links / Enlaces Útiles

- 📖 Foundry Book: https://book.getfoundry.sh/
- 🌉 Scroll Portal: https://sepolia.scroll.io/portal (Add to MetaMask & Bridge)
- 🌊 Scroll Sepolia Faucets:
  - https://faucet.tdm.ar/
  - https://www.l2faucet.com/scroll
  - https://faucet.quicknode.com/scroll/sepolia
- 🔍 Scroll Sepolia Explorer: https://sepolia.scrollscan.com/
- 📝 OpenZeppelin Contracts: https://docs.openzeppelin.com/contracts/

