// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
You pay 'gas spent' * 'gas price' amount of ether
    gas is a unit of compuation
    gas spent is the total amount of gas used in a transaction
    gas price is how much ether you are willing to pay per gas
Transaction with higher gas price have higher priority to be included in a block
Unspent gas will be refuned
*/

contract Gas {
    function testGasRefund() public view returns (uint) {
        return tx.gasprice;
    }
    
    uint public i = 0;
    
    function forever() public {
        while (true) {
            i += 1;
        }
    }
}