// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MYsmartContract {
    uint public mass = 100;
    uint public volume = 50;
    address public owner;

    constructor() {
        owner = msg.sender;

    }

    function Weight(uint _density) public view returns (uint) {
    require(owner == msg.sender, "You are not the owner of this");
    assert(volume > 0);
        if ((_density * volume) == 0) {
            revert("Weight of the object can't be zero");
        }

        return _density * volume;
    }
}
