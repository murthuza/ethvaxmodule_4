# DegenToken Smart Contract

## Overview

`DegenToken` is an ERC20 token contract built on the Ethereum blockchain, using OpenZeppelin's ERC20 and Ownable contracts. The token's name is "Degen" (symbol: DGN), and it is primarily used within a marketplace that allows users to redeem exclusive Rohit Sharma-themed items, including NFTs and experiences.

## Key Features

- **Minting & Burning:** The contract owner can mint new tokens. Users can burn tokens to reduce their balance.
- **Transfer of Tokens:** Users can transfer their Degen tokens to other addresses.
- **Redeemable Items:** Users can redeem tokens for exclusive items like NFTs or special experiences.
- **Store Listing:** A store is available that displays items users can redeem.

## Contract Details

### Prerequisites

- Solidity `0.8.20`
- OpenZeppelin Contracts

### Constructor

```solidity
constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner)
```
- Initializes the contract with the token name "Degen" and symbol "DGN".
- The contract owner is set as the initial owner.
- A pre-defined list of redeemable items is created.

### Functions

- **mint(address to, uint256 amount)**: Allows the owner to mint new tokens to a specified address.
- **burn(uint256 amount)**: Allows users to burn their tokens.
- **transferToken(address receiver, uint256 amount)**: Users can transfer tokens to another address.
- **redeem(uint256 item)**: Users can redeem specific items from the store by burning the required number of tokens.
- **showStore()**: Returns the list of items available in the store along with their costs.
- **getPlayerItems(address player)**: Returns the list of items that a specific player has redeemed.

### Redeemable Items

The following items are available for redemption:

1. Rohit Sharma Autographed Bat NFT (10000 tokens)
2. Rohit Sharma Limited Edition Jersey NFT (5000 tokens)
3. Rohit Sharma Cap NFT (2000 tokens)
4. Rohit Sharma Meet-up (1000 tokens)

## Usage

1. **Minting Tokens**: The contract owner can mint tokens by calling the `mint` function.
2. **Burning Tokens**: Users can burn their tokens using the `burn` function to reduce their balance.
3. **Transferring Tokens**: Users can transfer their tokens to other addresses using the `transferToken` function.
4. **Redeeming Items**: Users can redeem items by calling the `redeem` function and specifying the item number. The corresponding tokens will be burned, and the item will be added to the user's redeemed list.
5. **Viewing the Store**: Users can call the `showStore` function to view the list of available items and their token costs.
6. **Viewing Redeemed Items**: Users can call the `getPlayerItems` function to view the items they've redeemed.

## Requirements

- **Solidity 0.8.20**
- **OpenZeppelin Contracts** for ERC20 and Ownable functionality

## License

This project is licensed under the MIT License.

## Author
Sayyed Murthuza
