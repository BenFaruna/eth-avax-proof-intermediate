# Error Handling Project

This is the first project in Avalanche Intermediate, it contains a smart contract that implements the require(), assert() and revert() statements.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix IDE](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the code into the file.

```js
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Functions {

    // divide 'num2' from 'num1' with a require statement
    function div(uint num1, uint num2) public pure returns (uint) {
        // Ensure that 'num2' is not zero to avoid division by zero
        require(num2 > 0, "Zero division error");

        // Perform the subtraction and return the result
        return num1 / num2;
    }

    // function demonstrating the use of assert statement
    function assertFunction(uint a, uint b) public pure {
        uint result = div(a, b);

        // Assert that the result is greater than or equal to 2, else the transaction will fail
        assert(result >= 2);
    }

    // function demonstrating the use of revert statement
    function revertFunction(uint a, uint b) public pure {
        uint result = div(a, b);

        // Revert the transaction if the result is less than 5
        if (result < 5) {
            revert("Reverting due to result less 5");
        }
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the div, assertFunction and revertFunction function. All functions accept two integer parameters, you can add parameters in the input box seperated by comma (e.g. 10, 5). Click on the "ErrorHandling" contract in the left-hand sidebar, add the parameters to the div input box and then click on the "div" function. Finally, click on the "transact" button to execute the function and retrieve the result of the function.

## Authors

[BenFaruna](https://github.com/BenFaruna/)

## License

This project is licensed under the MIT License. For details, see the [LICENSE](LICENSE) file.