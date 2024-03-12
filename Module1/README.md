# Error Handling Project

This is the first project in Avalanche Intermediate, it contains a smart contract that implements the require(), assert() and revert() statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix IDE](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the code into the file.

```js
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ErrorHandling {
    address public owner;

    constructor () {
        owner =msg.sender;
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the `changeOwner` function. The function uses `require` to ensure the caller is the owner of the address and `assert` for sanity check (zero address call). The contract also uses the `revert` function to ensure ether is not sent to the contract.

## Authors

[BenFaruna](https://github.com/BenFaruna/)

## License

This project is licensed under the MIT License. For details, see the [LICENSE](LICENSE) file.