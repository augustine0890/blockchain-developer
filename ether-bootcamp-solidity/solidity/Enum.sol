// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

/**
 Enum - used to model choice and keep track of state
 Can be declared outside of contract
 */
contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element in definition of the type
    Status public status;
    
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // Update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // Delete resets the enum to it's first value, 0
    function reset() public {
        delete status;
    }
}