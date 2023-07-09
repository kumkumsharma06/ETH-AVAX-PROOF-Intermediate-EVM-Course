// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorContract {
    function requireCondition(uint _stock) public pure returns (string memory) {
        uint availableStock = 70;
        require(_stock <= availableStock, "Insufficient stock is available");
        return "Product is added to cart. Proceed further here to checkout.";

    }

    function assertCondition(uint _num2) public pure returns (string memory) {
        uint currentBid = 300;
        assert(_num2 > currentBid);
        return "Bid is accepted.And you are the highest in number.";
    }

    function revertCondit(uint _age) public pure {
        uint minimumAge = 18;
        if (_age < minimumAge) {
            revert("You must be at least 18 years old to have access this content");
        }
    }
}
    


}
