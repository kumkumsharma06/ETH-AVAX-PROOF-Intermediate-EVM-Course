// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MyToken {
    address private owner;
    constructor() {
        owner = msg.sender;
    }
    function withdraw(uint amount) public {
// Using require statement
        require(amount > 0, "Amount must be more than zero"); 
        uint balance = address(this).balance;
        require(balance >= amount, "Insufficient balance"); 
// Using assert statement
        (bool Done, ) = msg.sender.call{value: amount}("");
        assert(Done); 
// Using revert statement
        revert("Unsuccesful"); 
    }
    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}
