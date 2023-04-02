// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// This is are impoert from openzeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";


// contract for the ERC20 token
contract Web3Token is ERC20, AccessControl {
    constructor() ERC20("web3Token", "WCT") {
        _mint(msg.sender, 100000 * 10 ** decimals());
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
}
