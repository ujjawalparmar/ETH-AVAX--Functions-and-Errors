// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MYsmartContract {
    uint public mass = 10;
    uint public volume = 5; // Assuming a volume value for the correction
    address public owner;

    constructor() {
        owner = msg.sender;
    }
    function Weight(uint _density) public view returns (uint) {
    require(owner == msg.sender, "You are not the owner");
    assert(volume > 0);
        if ((_density * volume) == 0) {
            revert("Weight of the object cannot be zero");
        }

        return _density * volume;
    }
}
