// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

contract Mapping {

  mapping (address => uint) public myMap;

  function setMap(address _adress, uint _value) public {
    myMap[_adress] = _value;
  }

  function getMap(address _address) public view returns (uint) {
    return myMap[_address];
  }

  function removeAddress(address _address) public{
    delete myMap[_address];
  }
}

contract nestedMapping{

  mapping (address => mapping(uint => bool)) public nested;

  function setMap(address _address, uint _value, bool _boo) public{
    nested[_address][_value] = _boo;
  }

  function getMap(address _address, uint _value) public view returns (uint){
    return nested[_address][_value];
  }
}