// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ErrorHandling {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "Only owner can set new owner");
        assert(newOwner != address(0));

        owner = newOwner;
    }

    receive() external payable {
        revert("contract does not accept deposit");
    }
}
