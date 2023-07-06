# ETH-AVAX-PROOF-Intermediate-EVM-Course
## BankToken Contract
This is a Solidity smart contract that demonstrates different error handling techniques using assert, revert, and require functions.

## License
This contract is using the MIT License.

## version
Solidity ^0.8.5
## Contract Details
The BankToken contract provides the following functions:

### deposit(address _to,uint _value)
This function demonstrates the usage of the assert function.
It takes a num parameter and checks if it is not equal to zero using the assert statement.
If the condition fails, it triggers an "Internal error" and aborts the execution.
### withdraw(address _from, uint _value)
This function demonstrates the usage of the require function.
It takes _from and _value parameters and performs division.
If the _from is more than _value, it reverts the transaction with a custom error message stating that You are not have enough balance to withdraw.
If the condition is met, it returns the result of the withdrwal.
### transfer(address payable _from , address payable _to , uint _value)
This function demonstrates the usage of the revert function.
It takes an a parameter and performs transfer of amount.
It first checks if value is greater than balance using the revert statement.
If the condition fails, it reverts the transaction with a custom error message stating that have some money in your account first
If the condition is met, it returns the result of the transfer of balance.
## Usage
Make sure you have Solidity ^0.8.5 installed.
Compile and deploy the BankToken contract to a supported Ethereum network.
Interact with the deployed contract by calling the available functions and providing the required parameters.
# Video Walkthrough 

