// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
Modifier are code that can be run before and or after a function call (Reusable code).
Modifier can be used to:
    - Restrict access
    - Validate inputs
    - Guard agains reentrancy hack
*/

contract FunctionModifier {
    address public owner;

    constructor() {
        // Set the transaction sender as the owner of the contract
        owner = msg.sender;
    }

    // Modifier to check that the caller is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        // Underscore is a special character only used inside a function modifier and it tells Solidity to execute the rest of the code
        _;
    }

    // Modifier checks that the address passed in is not the zero address
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    uint public x = 10;
    bool public locked;

    // Modifiers can be called before and/or after a function.
    // This modifier prevents a function from being called while it is sitll executing
    modifier noReentrancy() {
        require(!locked, "No reentrancy");
        
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}