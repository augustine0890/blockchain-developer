// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
1 Gwei = 10^9 Wei
Tx fee = gas used * gas price (Gwei)
*/
contract EtherUnits {
    // 1 wei is equal to 1
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    // 1 ether is equal to 10^18
    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;
    
    function testOneWei() public pure returns (bool) {
        return 1 wei == 1;
    }
    
    function testOneEther() public pure returns (bool) {
        return 1 ether == 1e18 wei;
    }
}