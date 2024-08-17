// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract DegenToken is ERC20, Ownable 
{
    using Strings for uint256;

    struct Item 
    {
        string name_of_brands;
        uint256 cost_of_brands;
    }

    mapping(uint256 => Item) public items;
    mapping(address => string[]) public playerItems;

    constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner)
    {
        items[1] = Item("Rohit Sharma Autographed Bat NFT", 10000);
        items[2] = Item("Rohit Sharma Limited Edition Jersey NFT", 5000);
        items[3] = Item("Rohit Sharma Cap NFT", 2000);
        items[4] = Item("Rohit Sharma Meet up ", 1000);
    }

    function mint(address to, uint256 amount) public onlyOwner 
    {
        _mint(to, amount);
    }

    function burn(uint256 amount) public 
    {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
    }
    
    function transferToken(address receiver, uint256 amount) external 
    {
        require(balanceOf(msg.sender) >= amount, "Sorry, not enough Degen tokens available");
        transfer(receiver, amount);
    }
        
    function redeem(uint256 item) external 
    {
        Item storage selectedItem = items[item];
        require(bytes(selectedItem.name_of_brands).length > 0, "Invalid redeem item");
        require(balanceOf(msg.sender) >= selectedItem.cost_of_brands, "Insufficient balance to redeem");

        _burn(msg.sender, selectedItem.cost_of_brands);
        
        playerItems[msg.sender].push(selectedItem.name_of_brands);
        delete items[item];
    }

    function showStore() external pure returns (string memory) 
    {
        return "1. Rohit Sharma Autographed Bat NFT (10000 tokens) 2. Rohit Sharma Limited Edition Jersey NFT (5000 tokens) 3. Rohit Sharma Cap NFT (2000 tokens) 4. Rohit Sharma Meet up (1000 tokens)";
    }

    function getPlayerItems(address player) external view returns (string[] memory) 
    {
        return playerItems[player];
    }
}
