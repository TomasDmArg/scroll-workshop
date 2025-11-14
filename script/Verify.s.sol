// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

/**
 * @title Verify Script
 * @dev Script to verify an already deployed contract
 * Usage: forge script script/Verify.s.sol --rpc-url scroll_sepolia --verify -vvvv
 */
contract VerifyScript is Script {
    function run() external view {
        // Add your deployed contract address here
        address deployedAddress = address(0); // REPLACE WITH YOUR CONTRACT ADDRESS
        
        require(deployedAddress != address(0), "Please set the deployed contract address");
        
        MyToken token = MyToken(deployedAddress);
        
        console.log("=== Contract Verification ===");
        console.log("Address:", deployedAddress);
        console.log("Name:", token.name());
        console.log("Symbol:", token.symbol());
        console.log("Decimals:", token.decimals());
        console.log("Total Supply:", token.totalSupply());
        console.log("Owner:", token.owner());
        console.log("===========================");
    }
}

