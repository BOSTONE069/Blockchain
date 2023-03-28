// SPDX-License-Identifier: MIT
// The above line indicates that the license for this Solidity code is MIT.

// The following line specifies that the Solidity compiler should only be used from version v0.8.13 to v0.9.0.
pragma solidity ^0.8.13;

import "./inheritance.sol";


// The following contract defines a Child contract that extends the Parent contract and overrides the parent function with a new implementation that returns a different string.
contract Child2 is Parent{
    function parent() public pure virtual override returns (string memory){
        return "child";
    }
}