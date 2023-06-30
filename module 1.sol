// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
    uint b=10;
    function testAssert(uint num) public pure{
        assert(num!=0);
    }
    function testRevert(uint _numerator, uint _denomenator) public pure returns (uint){
        if(_numerator<_denomenator){  
            revert("numerator should be greater than denomenator according to condition");        
        }
        return _numerator/_denomenator;
    }
    function testRequire(uint a) public view returns (uint){
        require(a>0,"Value of a is zero , as expecting result should not be zero");
        return a*b;
    }
}
