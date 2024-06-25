# MYsmartContract.sol

This Solidity program is a simple "MYsmartContract" program that demonstrates the basic syntax and functionality of the Solidity programming language. This program implements the use of require(), assert(), and revert() statements.

## Description

This program is a simple contract written in Solidity, a programming language for developing smart contracts on the Ethereum blockchain. This contract is designed to calculate the weight of an object based on its density, mass, and volume.

Which  includes a function called `Weight` that performs this calculation. This contract also implements the use of require(), assert(), and revert() statements which ensure that all calculations are accurate, and only the owner can access it all. This program uses the concept of Functions and Error handling. 

## Getting Started

### Executing program

You can use Remix, an online Solidity IDE to run this program. To get started, go to the Remix website at https://remix.ethereum.org/.

Once on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MYsmartContract.sol). Copy and paste the following code into the file:

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set heigher to "0.8.1" (or another compatible version), and then click on the "Compile MYsmartContract.sol" button.
```
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

```
Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MYsmartContract" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Weight function to set the value and perform a value variable check to check the value of the variable that is public so we can check. Finally, click on the "transact" button to execute the function and retrieve the values and messages.

## Authors

Metacrafter Chris  
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
