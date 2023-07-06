// SPDX-License-Identifier: MIT
pragma solidity >=0.8.5;

contract BankToken {

    mapping(address=>uint)public balance;
    

    function deposit(address _to,uint _value)public payable returns(uint) {
        assert(_value<20000);
        balance[_to]+= _value;
        return balance[_to];
    }

    function withdraw(address _from, uint _value)public payable {
        require(balance[_from]>=_value,"You are not have enough balance to withdraw.");
        balance[_from]-=_value;
    }

    function transfer(address payable _from , address payable _to , uint _value )public payable {
        if (balance[_from]<_value){revert("have some money in your account first");}
        balance[_from]-= _value;
        balance[_to] += _value;  
    }


}
