// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken public token;
    address public owner;
    address public user1;
    address public user2;

    function setUp() public {
        owner = address(this);
        user1 = address(0x1);
        user2 = address(0x2);

        token = new MyToken("My Token", "MTK", 1000000, 18);
    }

    function testInitialSupply() public {
        assertEq(token.totalSupply(), 1000000 * 10 ** 18);
        assertEq(token.balanceOf(owner), 1000000 * 10 ** 18);
    }

    function testName() public {
        assertEq(token.name(), "My Token");
    }

    function testSymbol() public {
        assertEq(token.symbol(), "MTK");
    }

    function testDecimals() public {
        assertEq(token.decimals(), 18);
    }

    function testTransfer() public {
        uint256 amount = 100 * 10 ** 18;
        token.transfer(user1, amount);
        
        assertEq(token.balanceOf(user1), amount);
        assertEq(token.balanceOf(owner), 1000000 * 10 ** 18 - amount);
    }

    function testMint() public {
        uint256 amount = 1000 * 10 ** 18;
        token.mint(user1, amount);
        
        assertEq(token.balanceOf(user1), amount);
        assertEq(token.totalSupply(), 1000000 * 10 ** 18 + amount);
    }

    function testMintOnlyOwner() public {
        vm.prank(user1);
        vm.expectRevert();
        token.mint(user2, 100 * 10 ** 18);
    }

    function testBurn() public {
        uint256 amount = 100 * 10 ** 18;
        token.burn(amount);
        
        assertEq(token.totalSupply(), 1000000 * 10 ** 18 - amount);
        assertEq(token.balanceOf(owner), 1000000 * 10 ** 18 - amount);
    }

    function testApproveAndTransferFrom() public {
        uint256 amount = 100 * 10 ** 18;
        
        token.approve(user1, amount);
        assertEq(token.allowance(owner, user1), amount);
        
        vm.prank(user1);
        token.transferFrom(owner, user2, amount);
        
        assertEq(token.balanceOf(user2), amount);
        assertEq(token.balanceOf(owner), 1000000 * 10 ** 18 - amount);
    }
}

