// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20 {
    address public owner;

    constructor() ERC20("NEODEE", "NEO") {
        owner = msg.sender;
    }

    function mint(address _receiver, uint _amount) public {
        require(msg.sender == owner, "only owner can mint tokens");
        _mint(_receiver, _amount);
    }

    function burn(uint _amount) public {
        _burn(msg.sender, _amount);
    }

    function transfer(address _receiver, uint _amount) public override returns (bool) {
        require(_receiver != address(0), "ERC20: transfer to the zero address");
        require(_amount > 0, "ERC20: transfer amount must be greater than zero");
        require(balanceOf(msg.sender) >= _amount, "ERC20: transfer amount exceeds balance");

        _transfer(msg.sender, _receiver, _amount);
        return true;
    }
}
