// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

import "./EnumDeclaration.sol";

contract Enum {
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to it's first value, 0
    function reset() public {
        delete status;
    }
}