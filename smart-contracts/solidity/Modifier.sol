pragma solidity ^0.5.1;

contract owned {
    address payable owner;
    constructor() public { owner = msg.sender; }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract mortal is owned {
    function close() public onlyOwner {
        selfdestruct(owner);
    }
}