// SPDX-License-Identifier: MIT
// The above line indicates that the license for this Solidity code is MIT.

// The following line specifies that the Solidity compiler should only be used from version v0.8.13 to v0.9.0.
pragma solidity ^0.8.13;

contract tranferEther {

    address public admin = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    function deposit() public payable {

    }

    function depositOne() public {

    }

    function transfer(address payable _to, uint _amount) public {
        require()
    }

}