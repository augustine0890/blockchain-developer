pragma solidity ^0.5.1;
 
contract Bank {
    mapping(address => uint) public accounts;
    
    function deposit(uint money) public {
        accounts[msg.sender] += money;
    }
    
    function withdraw(uint money) public {
        accounts[msg.sender] -= money;
    }
}