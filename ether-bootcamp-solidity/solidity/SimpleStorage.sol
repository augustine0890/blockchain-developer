// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
To write or update a state variable you need to send a transaction.
You can read state variables (free) without any transaction fee. 
*/
contract SimpleStore {
    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint) {
        return num;
    }
}