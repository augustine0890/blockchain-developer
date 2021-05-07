pragma solidity ^0.5.1;
 
contract Bank {
    struct Account {
        address addr;
        uint amount;
    }
    
    Account public acc = Account({
        addr: 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a,
        amount: 55
    });
    
    Account public accReceive = Account({
        addr: 0x0A39384D0bb4CCb4BBea83EC03fe4E635110b6A2,
        amount: 89
    });

    function addAmount(uint _addMoney) public {
        acc.amount += _addMoney;
    }
    
    function withdraw(uint _withdrawMoney) public {
        acc.amount -= _withdrawMoney;
    }
    
    function transfer(uint256 value) public {
        require(acc.amount >= value);
        require(accReceive.amount + value >= accReceive.amount);
        acc.amount -= value;
        accReceive.amount += value;
    }
}