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
    function assertFunction() public pure {
        uint result = div(20, 10);

        // Assert that the result is equal to 2, else the transaction will fail
        assert(result == 2);
    }

    // function demonstrating the use of revert statement
    function revertFunction() public pure {
        uint result = div(20, 5);

        // Revert the transaction if the result is less than 5
        if (result < 5) {
            revert("Reverting due to result less 5");
        }
    }
}