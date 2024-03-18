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

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyERC20.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract MyERC20 is ERC20 {
    address public owner;

    constructor () ERC20 ("NEODEE", "NEO") {
        owner = msg.sender;
    }

    function mint(address _receiver, uint _amount) public {
        require(msg.sender == owner, "only owner can mint tokens");
        _mint(_receiver, _amount);
    }
    
    function burn(uint _amount) public {
        _burn(msg.sender, _amount);
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.20" (or another compatible version), and then click on the "Compile MyERC20.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyERC20" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the sayHello function. Click on the "MyERC20" contract in the left-hand sidebar, and then supply the arguments to the mint and burn function to test their functionality. Finally, click on the "transact" button to execute the function.

## Authors

BenFaruna  
[@Neodynamics](https://twitter.com/Neodynamics)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
