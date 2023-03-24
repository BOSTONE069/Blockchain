// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;


contract helloWorld {

    string public greet_world = "Hello world!";

    uint8 public totalTokens = 100; // uint8 to uint256
    int public tokens = 100; // int8 to int256
    
    bool public boo = true; // this is for boolean

   //Address initialization
    address public contractA = 0xd8b934580fcE35a11B58C6D73aDeE468a2833fa8;
}

// This contracts use the intergers 
contract currentCount {
    // getters and setters

    uint public count;

    //This is the increment function
    function increment() public{
        count += 1;
    }

    // This function derement the values
    function decrement() public {
        count -= 1;
    }
    /*
    this function gets the current count
    */
    function getCurrentCount() public view returns (uint){
        return count;
    }
}

