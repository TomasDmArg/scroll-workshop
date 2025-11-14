// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract DeployScript is Script {
    function run() external {
        // Read private key - handle both formats (with or without 0x prefix)
        string memory pkStr = vm.envString("PRIVATE_KEY");
        uint256 deployerPrivateKey;
        
        // Check if it starts with 0x
        bytes memory pkBytes = bytes(pkStr);
        if (pkBytes.length >= 2 && pkBytes[0] == 0x30 && pkBytes[1] == 0x78) { // '0' and 'x' in hex
            // Has 0x prefix, use directly
            deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        } else {
            // No 0x prefix, need to add it for vm.envUint
            // We'll parse it manually
            bytes memory hexChars = bytes(pkStr);
            require(hexChars.length == 64, "Invalid private key length");
            
            uint256 result = 0;
            for (uint256 i = 0; i < hexChars.length; i++) {
                uint256 char = uint256(uint8(hexChars[i]));
                uint256 value;
                
                if (char >= 48 && char <= 57) { // 0-9
                    value = char - 48;
                } else if (char >= 97 && char <= 102) { // a-f
                    value = char - 87;
                } else if (char >= 65 && char <= 70) { // A-F
                    value = char - 55;
                } else {
                    revert("Invalid hex character");
                }
                
                result = result * 16 + value;
            }
            deployerPrivateKey = result;
        }
        
        string memory tokenName = vm.envOr("TOKEN_NAME", string("My Token"));
        string memory tokenSymbol = vm.envOr("TOKEN_SYMBOL", string("MTK"));
        uint256 initialSupply = vm.envOr("INITIAL_SUPPLY", uint256(1000000));
        
        vm.startBroadcast(deployerPrivateKey);

        MyToken token = new MyToken(
            tokenName,
            tokenSymbol,
            initialSupply,
            18 // decimals
        );

        vm.stopBroadcast();

        console.log("Token deployed at:", address(token));
        console.log("Token name:", tokenName);
        console.log("Token symbol:", tokenSymbol);
        console.log("Initial supply:", initialSupply);
    }
}

