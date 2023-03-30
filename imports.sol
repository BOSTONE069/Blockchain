// SPDX-License-Identifier: MIT
// The above line indicates that the license for this Solidity code is MIT.

// The following line specifies that the Solidity compiler should only be used from version v0.8.13 to v0.9.0.
pragma solidity ^0.8.13;

// The following line imports the SafeMath library from the OpenZeppelin smart contract library.
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "@openzeppelin/contracts/utils/math/SignedMath.sol";

// The following contract is named web3ClubsToken.
contract web3ClubsToken {

    // The following line specifies that the SafeMath library should be used for uint256 data types in this contract.
    using SafeMath for uint256;

    using SignedMath for uint256;

    // The following two lines define two uint256 variables named num1 and num2.
    uint256 num1 = 10;
    uint256 num2 = 20;

    // The following function is named addnumber and returns the sum of num1 and num2 using the SafeMath add function.
    function addnumber() public view returns (uint256) {
        return SafeMath.add(num1, num2);
    }


    function subnumber() public view returns (uint256) {
        return SafeMath.sub(num2, num1); 
    }

    function averagenumber() public view returns (uint256) {
        return SignedMath.average(num1, num2);
    }
}