.PHONY: help install build test deploy clean

help:
	@echo "Scroll Workshop - Makefile Commands"
	@echo ""
	@echo "Available commands:"
	@echo "  make install    - Install dependencies"
	@echo "  make build      - Build the project"
	@echo "  make test       - Run tests"
	@echo "  make deploy     - Deploy to Scroll Sepolia"
	@echo "  make clean      - Clean build artifacts"

install:
	@echo "Installing OpenZeppelin contracts..."
	forge install OpenZeppelin/openzeppelin-contracts --no-commit

build:
	@echo "Building project..."
	forge build

test:
	@echo "Running tests..."
	forge test -vvv

test-gas:
	@echo "Running tests with gas report..."
	forge test --gas-report

deploy:
	@echo "Deploying to Scroll Sepolia..."
	forge script script/Deploy.s.sol --rpc-url scroll_sepolia --broadcast --verify -vvvv

deploy-dry:
	@echo "Dry run deployment..."
	forge script script/Deploy.s.sol --rpc-url scroll_sepolia

clean:
	@echo "Cleaning build artifacts..."
	forge clean
	rm -rf cache out

fmt:
	@echo "Formatting code..."
	forge fmt

