// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;

/**
Allow logging to the Ethereum blockchain: 
    listening for events and updating user interface
    a cheap form of storage
Three parameters can be indexed
Using web3.js
    get past events
    subscribe to incoming events
*/
contract Event {
    // Up to 3 parameters can be indexed
    // Indexed parameters helps you filter the logs by the indexed parameter
    event Log(address indexed sender, string message);
    event AnotherLog();

    function fireEvents() public {
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello EVM");
        emit AnotherLog();
    }
}