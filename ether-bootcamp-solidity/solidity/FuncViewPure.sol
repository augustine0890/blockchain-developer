// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;

/**
'View' functions do not modify state
'Pure' functions
    - do not modify state
    - do not read state
*/

contract ViewAndPur {
    uint public x = 1;

    // Promise not to modify the state
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from the state
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}