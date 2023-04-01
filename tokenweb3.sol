// Specifies the Solidity version to use
pragma solidity ^0.8.13;

// Imports the SafeMath library from the OpenZeppelin smart contract library.
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

// The following contract is named web3ClubsToken.
contract web3ClubsToken {

    // The following line specifies that the SafeMath library should be used for uint256 data types in this contract.
    using SafeMath for uint256;

    // Declare the token properties 
    string public tokenName = "web3ClubsToken";
    string public symbol = "WCT";
    uint public decimals = 18;
    uint public decimalFactor = 10 ** uint256(decimals);
    uint public totalSupply = 1000000 * decimalFactor;

    // Declare an event for when tokens are transferred
    event TRANSFER(address indexed _from, address indexed _to, uint256 _value);

    // Declare the mapping of balances to addresses
    mapping (address => uint256) balances;

    // Declare the mapping of allowances for transferring tokens between addresses
    mapping (address => mapping (address => uint256)) allowed;

    // Declare the initial balances for the contract creator
    constructor(uint _totalSupply) public {
        balances[msg.sender] = totalSupply;
        _totalSupply = totalSupply;
    }

    // Declare the transfer function to send tokens from the sender to the receiver
    function transfer(address _receiver, uint _amount) public returns (bool) {
        // Check if the receiver address is not the zero address and not the sender address
        require(_receiver != address(0));
        require(_receiver != msg.sender);
        // Check if the sender has enough tokens to transfer
        require(balances[msg.sender] >= _amount);

        // Subtract the transferred amount from the sender's balance
        balances[msg.sender] = balances[msg.sender].sub(_amount);
        // Add the transferred amount to the receiver's balance
        balances[_receiver] = balances[_receiver].add(_amount);
        // Emit a transfer event
        emit TRANSFER(msg.sender, _receiver, _amount);

        // Return true if the transfer is successful
        return true;
    }

    // Declare the transferFrom function to allow an address to transfer tokens from another address
    function transferFrom(address _sender, address _receiver, uint _amount) public returns (bool) {
        // Check if the sender and receiver addresses are not the zero address
        require(_sender != address(0));
        require(_receiver != address(0));
        // Check if the sender and receiver addresses are not the same
        require(_receiver != _sender);
        // Check if the sender has enough tokens to transfer
        require(balances[_sender] >= _amount);
        // Check if the sender has granted enough allowance to the caller
        require(allowed[_sender][msg.sender] >= _amount);

        // Subtract the transferred amount from the sender's balance
        balances[_sender] = balances[_sender].sub(_amount);
        // Add the transferred amount to the receiver's balance
        balances[_receiver] = balances[_receiver].add(_amount);
        // Subtract the transferred amount from the allowed allowance
        allowed[_sender][msg.sender] = allowed[_sender][msg.sender].sub(_amount);
        // Emit a transfer event
        emit TRANSFER(_sender, _receiver, _amount);

        // Return true if the transfer is successful
        return true;
    }

    

}
