# DegenToken Smart Contract

## Overview
DegenToken is an ERC20 token contract built on the Ethereum blockchain using OpenZeppelin's ERC20 and Ownable contracts. The token's name is "Degen" (symbol: DGN), and it is primarily used within a marketplace that allows users to redeem exclusive Rohit Sharma-themed items, including NFTs and experiences.

## Key Features
- **Minting & Burning**: The contract owner can mint new tokens. Users can burn tokens to reduce their balance.
- **Transfer of Tokens**: Users can transfer their Degen tokens to other addresses.
- **Redeemable Items**: Users can redeem tokens for exclusive items like NFTs or special experiences.
- **Store Listing**: A store displays items users can redeem.

## Contract Details

### Prerequisites
- **Solidity Version**: 0.8.20
- **Dependencies**: OpenZeppelin Contracts

### Constructor
```solidity
constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner)
```
- Initializes the contract with the token name "Degen" and symbol "DGN".
- The contract owner is set as the initial owner.
- A pre-defined list of redeemable items is created.

### Functions
- `mint(address to, uint256 amount)`: Allows the owner to mint new tokens to a specified address.
- `burn(uint256 amount)`: Allows users to burn their tokens.
- `transferToken(address receiver, uint256 amount)`: Users can transfer tokens to another address.
- `redeem(uint256 item)`: Users can redeem specific items from the store by burning the required number of tokens.
- `showStore()`: Returns the list of items available in the store along with their costs.
- `getPlayerItems(address player)`: Returns the list of items that a specific player has redeemed.

### Redeemable Items
The following items are available for redemption:
1. **Rohit Sharma Autographed Bat NFT** (10,000 tokens)
2. **Rohit Sharma Limited Edition Jersey NFT** (5,000 tokens)
3. **Rohit Sharma Cap NFT** (2,000 tokens)
4. **Rohit Sharma Meet-up** (1,000 tokens)

## Contract Deployment with MetaMask
The DegenToken smart contract was deployed on the Ethereum blockchain using a MetaMask wallet. MetaMask allows users to manage Ethereum accounts and perform blockchain transactions securely.

### Deployment Process:
1. **MetaMask Installation**: Ensure you have the MetaMask browser extension installed and configured.
2. **Ethereum Network**: Switch MetaMask to the appropriate Ethereum network (e.g., Mainnet, Goerli, or any other test network) before deploying the contract.
3. **Deployment**: The contract was deployed by connecting the MetaMask wallet to the deployment tool (such as Remix or Truffle) and signing the deployment transaction.
4. **Gas Fees**: During deployment, MetaMask automatically estimated the gas fees required for the transaction. Ensure you have sufficient Ether in your MetaMask wallet to cover these fees.

### Post-Deployment Interaction:
- **Contract Owner**: The MetaMask address used during deployment is the initial owner of the contract. The owner can mint tokens and manage the contract using this MetaMask account.
- **Token Transactions**: All token transactions, including transfers, minting, burning, and redeeming, can be conducted by connecting to the contract using MetaMask.

## Usage

1. **Minting Tokens**: The contract owner can mint tokens by calling the `mint` function.
2. **Burning Tokens**: Users can burn their tokens using the `burn` function to reduce their balance.
3. **Transferring Tokens**: Users can transfer their tokens to other addresses using the `transferToken` function.
4. **Redeeming Items**: Users can redeem items by calling the `redeem` function and specifying the item number. The corresponding tokens will be burned, and the item will be added to the user's redeemed list.
5. **Viewing the Store**: Users can call the `showStore` function to view the list of available items and their token costs.
6. **Viewing Redeemed Items**: Users can call the `getPlayerItems` function to view the items they've redeemed.

## Requirements
- **Solidity**: 0.8.20
- **OpenZeppelin Contracts**: For ERC20 and Ownable functionality
- **MetaMask**: For managing accounts and transactions

## License
This project is licensed under the MIT License.

## Author
Sayyed Murthuza
