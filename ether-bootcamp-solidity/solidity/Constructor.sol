// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

// A constructor is an optional function that is executed upon contract creation
contract Contract {
    address public owner;
    uint public createAt;

    constructor() {
        owner = msg.sender;
        createAt = block.timestamp;
    }
}

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract C is X, Y {
    // Pass the parameters here in the constructor
    constructor(string memory _name, string memory _text) X(_name) Y(_name) {

    }
}

// Parent constructors are always called in the order of inheritance regardless of 
// the order of parent contracts listed in the constructor of the child contract.
// Order: Y -> X -> E
contract E is X, Y {
    constructor() X("X was called") Y("Y was called") {
    }
}

// Order: X -> Y -> D
contract D is X, Y {
    constructor() Y("Y was called") X("X was called") {
    }
}
