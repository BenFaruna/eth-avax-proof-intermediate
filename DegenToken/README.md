# Degen Token

This project delivers a smart contract for an ERC20 token designed to function as in-game currency. Players can earn these tokens through gameplay and utilize them for various purposes within your game's ecosystem.


## Description

### Benefits:

- Earning & Spending: Players can acquire tokens through gameplay and spend them on exciting rewards in your in-game store.
- Trading & Growth: The ability to trade tokens between players fosters a dynamic in-game economy, allowing players to expand their options and strategize for growth.
- Endless Possibilities: This system opens doors for diverse game mechanics and a thriving player-driven marketplace within your game!

### Technical Specifications:

- ERC20 Standard: Ensures seamless integration with existing Ethereum wallets and applications.
- Minting Functionality: Allows you to control the issuance of tokens based on your game's reward structure.

## Usage
### Deployment and Verification on Snowtrace
To use the project, downdload the code or clone the repository, run the following command:

```
npm install.
```

Deploy the contract to Avalanche Fuji network by running the following command:

```
npx hardhat run scripts/deploy.js --network fuji
```

To verify the smart contract, run the following command:

```
npx hardhat verify 'your-contract-address' --network fuji
```

### Testing on Remix
- Deploy the DegenToken contract to the Fuju testnet network.

- Use a wallet to interact with the contract's functions:

    - Mint new tokens using the mint function, accessible only by the owner.
    - Transfer tokens using the standard ERC20 transfer function.
    - Redeem tokens using the redeemTokens function with a specified amount.
    - Get balance of user by calling the getBalance function.
    - Burn tokens using the burn function, accessible by token holders.
    - Explore the emitted events to track transfers, redemptions, and burns.


## Authors

BenFaruna
[@BenFaruna](https://twitter.com/neodynamics)


## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
