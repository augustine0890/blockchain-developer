// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

contract Function {
    // Return multiple values
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    // Return values can be named
    function named() public pure returns (uint x, bool b, uint y) {
        return (1, true, 2);
    }

    // Use destructing assignment when calling another function that returns multiple values
    function destructingAssigments() public pure returns (uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();

        // values can be left out
        (uint x, , uint y) = (4, 5, 6);

        return (i, b, j, x, y);
    }

    // Cannot use map for neither input nor output

    // Use array for input
    function arrayInput(uint[] memory _arr) public {}

    // Can use array for output
    uint[] public arr;
    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }

}