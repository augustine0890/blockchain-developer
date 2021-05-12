// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
/**
Function that is going to be overridden by a child contract must be declared as 'virtual'.
Function that is going to override a parent function must use the keyword 'override'
    - Do not re-declare in the child contract
    - Instead re-assign it
You have to list the parent contracts in the order from "most base-like" to "most derived".
*/

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E
*/

contract A {
    event Log(string message);
    function foo() public virtual returns (string memory) {
        emit Log("A.foo was called");
        return "A";
    }
}

contract B is A {
    // Override A.foo()
    function foo() public virtual override returns (string memory) {
        emit Log("B.foo was called");
        return "B";
    }
}

contract C is A {
    // Override A.foo()
    function foo() public virtual override returns (string memory) {
        emit Log("C.foo was called");
        return "C";
    }
}

// When a function is called that is defined multiple times in different contracts,
// parent contracts are searched from right to left, and depth-first manner.
contract D is B, C {
    // D.foo() return "C" since C is the right most parent contract with function foo()
    function foo() public override(B, C) returns (string memory) {
        emit Log("D.foo was called");
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B" since B is the right most parent contract with function foo()
    function foo() public override(C, B) returns (string memory) {
        emit Log("E.foo was called");
        return super.foo();
    }
}

// Inheritance must be ordered from “most base-like” to “most derived”.
// Swapping the order of A and B will throw a compilation error.
contract F is A, B {
    function foo() public override(A, B) returns (string memory) {
        emit Log("F.foo was called");
        return super.foo();
    }
}