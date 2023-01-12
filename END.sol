/*
Say hello to EARN Network DAO (END) token version 001!
This is a simple mintable and burnable token contract created by @MrKawdy.
**/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract EARNNetworkDAOv1 is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor()
        ERC20("EARN Network DAO", "END")
        ERC20Permit("EARN Network DAO")
    {
        _mint(msg.sender, 7000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}