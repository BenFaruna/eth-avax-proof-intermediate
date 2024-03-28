// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(uint256 => uint256) public redeemablesPrices;
    mapping(uint256 => mapping(address => bool)) public redeemableOwners;

    event ItemRedeemed(address indexed user, uint256 itemId, uint256 amount);

    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }

    function redeem(uint256 itemId, uint256 amount) public {
        require(redeemablesPrices[itemId] > 0, "Item not found");
        require(
            !redeemableOwners[itemId][msg.sender],
            "You already redeemed this item"
        );
        require(redeemablesPrices[itemId] >= amount, "Not enough tokens");
        _burn(msg.sender, amount);
        redeemableOwners[itemId][msg.sender] = true;

        emit ItemRedeemed(msg.sender, itemId, amount);
    }

    function setRedeemablePrice(
        uint256 itemId,
        uint256 price
    ) public onlyOwner {
        redeemablesPrices[itemId] = price;
    }
}
