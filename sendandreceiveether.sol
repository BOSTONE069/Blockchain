// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;


contract sendReceiveEther {

    address payable public owner;

    constructor (){
        owner = payable(msg.sender);
    }

  function sendEther(address payable _recipient, uint _value) external payable{
    require(msg.value <= address(this).balance, "Insufficient balance");
    _recipient.transfer(_value);
  }

  //function is a fallback function that is automatically called when the contract receives ether. It simply accepts the ether and does nothing else.
  receive() external payable {}
}
