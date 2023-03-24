// SPDX-License-Identifier: MIT
// Tells the Solidity compiler to compile only from v0.8.13 to v0.9.0
pragma solidity ^0.8.13;

contract logicalOperations {
    bool public a = true;
    bool public b = false;

    function logicalOps() public view returns(bool, bool, bool, bool) {
        bool andResult = a && b;
        bool orResult = a || b;
        bool notAResult = !a;
        bool notBResult = !b;
        
        return (andResult, orResult, notAResult, notBResult);
    }
}
