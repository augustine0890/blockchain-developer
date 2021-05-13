// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
Fixed or dynamically sized
Removing elements create gaps
    to keep the array compact, move last element into the index to delete
*/

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Should be avoided for arrays by grow indefinitely in length
    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Append to array
        arr.push(i);
    }

    function pop() public {
        // Remove last element from array
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value, in this case 0
        delete arr[index];
    }
}

contract CompactArray {
    uint[] public arr;

    // Deleting an element creates a gap in the array.
    // To keep the array compact is to move the last element into the place to delete.
    function remove(uint index) public {
        // Move the last element into the place to delete
        arr[index] = arr[arr.length - 1];
        // Remove the last element
        arr.pop();
    }

    function test() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);
        // [1, 2, 3, 4]

        remove(1);
        // [1, 4, 3]

        remove(2);
        // [1, 4]
    }
}