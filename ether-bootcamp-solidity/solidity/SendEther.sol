// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
 Send Ether:
    - transfer(2300 gas, throws error) 
    - send(2300 gas, returns bool)
    - call(forward all gas or set gas, returns bool)
 Receive Ether:
    - A contract receiving Ether must have a least one of the functions below
        'receive() external payable'
        'fallback() external payable'
    - 'receive()' is called if 'msg.data' is empty, otherwise 'fallback()' is called.
 'call' in combination with re-entrancy guard is the recommended method to use.
 Guard against re-entrancy by
    - making all state changes before calling other contracts
    - using re-entrancy guard modifier
 */

contract ReceiveEther {
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable _to) public payable {
        // This function is NO longer recommended for sending Ether
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is NOT recommended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable {
        // Returns a boolean value indicating success or failure.
        // RECOMMENDED method to use
        (bool sent,) = _to.call{value: msg.value}("");
        // (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}