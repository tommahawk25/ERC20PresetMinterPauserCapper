// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "../node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20Capped, Ownable {

    constructor(uint256 toMint, uint256 supplyCap) ERC20("MyToken", "MTKN") ERC20Capped(supplyCap) onlyOwner {
        require(toMint <= supplyCap, "Cap exceeded");
        ERC20._mint(msg.sender, toMint);
    }



}