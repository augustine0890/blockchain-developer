pragma solidity ^0.5.1;
 
contract Bank {
    mapping(address => uint) public accounts;
    
    function deposit(uint money) public payable {
        if (accounts[msg.sender] + money <= accounts[msg.sender]) {
            revert("Overflow error");
        }
        accounts[msg.sender] += money;
    }
    
    function withdraw(uint money) public {
        if (accounts[msg.sender] <= money) {
            revert("Couldn't make the withdraw");
        }
        accounts[msg.sender] -= money;
    }
}