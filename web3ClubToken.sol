// SPDX-License-Identifier: MIT
// The above line indicates that the license for this Solidity code is MIT.

// The following line specifies that the Solidity compiler should only be used from version v0.8.13 to v0.9.0.
pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";


contract web3ClubsToken {

    // global var

    uint public Totalsupply = 10000;
    string public tokenName = "web3ClubToken";
    uint public balances;
}