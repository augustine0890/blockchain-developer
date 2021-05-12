// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;

/**
An error will undo all changes made to the state during a transaction.
You can throw an error by calling 'require', 'revert', 'assert'
require - is used to validate inputs and conditions before execution (does not use up all gas).
revert - simillar to require but for complex situations.
assert - is used to check for code that should never be false. Failing assertion probably means that there is a bug (uses up all gas).
*/

contract Error {
    function testRequire(uint _i) public pure {
        // Require should be used to validate conditions:
        // inputs, conditions before execution, return values from calls to other functions
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        // Revert is useful when the condition to check is complex
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        // Assert should only be used to test for internal errors, and to check invariants
        // num is always equal to 0 since it is impossible to update the value of num
        assert(num == 0);
    }
}

contract Account {
    uint public balance;
    uint public constant MAX_UINT = 2 ** 56 - 1;
    
    function deposit(uint _amount) public payable {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public payable {
        uint oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;
        
        assert(balance <= oldBalance);
    }
}