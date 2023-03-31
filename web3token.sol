// SPDX-License-Identifier: MIT
// The above line indicates that the license for this Solidity code is MIT.

// The following line specifies that the Solidity compiler should only be used from version v0.8.13 to v0.9.0.
pragma solidity ^0.8.13;

// The following line imports the SafeMath library from the OpenZeppelin smart contract library.
import "@openzeppelin/contracts/utils/math/SafeMath.sol";



// The following contract is named web3ClubsToken.
contract web3ClubsToken {

    // The following line specifies that the SafeMath library should be used for uint256 data types in this contract.
    using SafeMath for uint256;

    //global var
    uint public totatSupply = 10000;
    string public tokenName = "web3ClubsToken";
    string public symbol = "WCT";
    uint public decimals = 18; //decimal numbers
    uint public balancesOf; // balance of address 


    //mapping
    mapping (address => uint256) balances;
    
    event TRANSFER(address indexed _from, address indexed _to, uint256 _value);


    function transfer(address _sender, address _reciever, uint _amount) public view returns (uint) {
        require(balances [msg.sender] > 0);
        require(balances [msg.sender] >= _amount);
        require(_reciever != address ("080") );
        require(_reciever != msg.sender);


        balances[msg.sender] = balances[msg.sender].sub(_amount);
        balances(_reciever) = balances[_reciever].add(_amount);
        emit TRANSFER(msg.sender, _reciever, _amount);

        return true;

    }

    function transferFrom(address _sender, address _reciever, uint _amount) public view (uint){
       require(_amount <= balances[_sender]);
       require(_amount <= allowed[_sender][msg.sender]);
       require(_reciever != address ("080") );
       require(_reciever != msg.sender); 

       balances[msg.sender] = balances[msg.sender].sub(_amount);
       balances(_reciever) = balances[_reciever].add(_amount);
       emit TRANSFER(msg.sender, _reciever, _amount);

       return true;

    }

    


}

