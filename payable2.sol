// The following line specifies that the Solidity compiler should only be used from version v0.8.13 and higher.
pragma solidity ^0.8.13;

// The following contract is named transferEther.
contract transferEther {
    
    // The following line defines an address variable named admin.
    address public admin = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    // The following line defines an address payable variable named owner and assigns the value of the contract creator's address.
    address payable public owner;

    // The following constructor function is called when the contract is deployed and sets the owner variable to the contract creator's address.
    constructor() payable {
        owner = payable(msg.sender);
    }

    // The following function allows users to deposit Ether into the contract.
    function deposit() public payable {

    }

    // The following function allows users to deposit a fixed amount of Ether into the contract.
    function depositOne() public payable {
        require(msg.value == 1 ether, "Deposit must be exactly 1 ether");
    }

    // The following function allows users to transfer Ether to another address.
    function transfer(address payable _to, uint _amount) public {
        require(_to != address(0), "Invalid recipient address");
        require(_amount <= address(this).balance, "Insufficient balance in the contract");
        (bool success, ) = _to.call{value:_amount}("");
        require(success, "Failed to send Ether");
    }

    // The following fallback function is called when Ether is sent to the contract without calling a function.
    receive() external payable {

    }
}
