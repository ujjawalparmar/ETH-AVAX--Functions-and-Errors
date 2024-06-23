// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;
contract SimpleContract {
    uint public balance;
    constructor() {
        balance = 100; 
    }
    function deposit(uint amount) public {
        require(amount > 0, "amount deposited ");
        balance += amount;
    }
    function withdraw(uint amount) public {
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }
    function testAssert() public view {
        assert(balance >= 0); 
    }
    function forceRevert() public pure {
        revert(" revert is forced");       
    }
    }
   
