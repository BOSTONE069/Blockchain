// SPDX-License-Identifier: MIT
// The above line indicates that the license for this Solidity code is MIT.

// The following line specifies that the Solidity compiler should only be used from version v0.8.13 to v0.9.0.
pragma solidity ^0.8.13;

// The following line imports the SafeMath library from the OpenZeppelin smart contract library.
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "@openzeppelin/contracts/access/Ownable.sol";



// The following contract is named web3ClubsToken.
contract web3ClubsToken {

    // The following line specifies that the SafeMath library should be used for uint256 data types in this contract.
    using SafeMath for uint256;

    //global var
    uint public totalSupply = 1000000 * decimalFactor;
    string public tokenName = "web3ClubsToken";
    string public symbol = "WCT";
    uint public decimals = 18; //decimal numbers
    uint public decimalFactor = 10 ** uint256(decimals);


    event Transfer(address indexed _from, address indexed _to, uint256 _amount);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    //mapping
    mapping (address => uint256) public balancesOf;
    mapping(address => mapping(address => uint256)) public allowance;

    constructor() {
        balancesOf[msg.sender] = totalSupply;

    }


    function transfer() public view {

    }

    function transferFrom() public view {
        
    }

    function approve(address _spender, uint _value) public returns (bool success){
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return success;
    }

    function mintToken(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);

    }

    


}