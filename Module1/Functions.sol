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