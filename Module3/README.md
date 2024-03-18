# ERC20 Token

This project implements a custom ERC20 token smart contract on the Ethereum blockchain. You can deploy and interact with the contract using tools like HardHat or Remix.

## Description
This project implements a custom ERC20 token smart contract on the Ethereum blockchain.

Features:
- Minting: The contract owner can mint new tokens and send them to a specified address.
- Burning: Any user can burn their tokens, removing them from circulation.
- Transferring: Users can transfer tokens between addresses.

## Getting Started:

- Choose your deployment tool: HardHat or Remix.
- Deploy the smart contract.
- Interact with the contract functions (mint, burn, transfer) through your chosen tool.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
pragma solidity ^0.8.4;

contract HelloWorld {
    function sayHello() public pure returns (string memory) {
        return "Hello World!";
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "HelloWorld" contract in the left-hand sidebar, and then click on the "sayHello" function. Finally, click on the "transact" button to execute the function and retrieve the "Hello World!" message.

## Authors

Metacrafter Chris  
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
