// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Error {
    uint public num = 5;
    
    function testRequire(uint _i) public pure {
        require(_i == 5, "The value must be equal to 5");
    }

    function testAssert() public view {
        assert(num == 0);
    }

    function testCustomError(uint _withdrawAmount, address _userAdress) public view {
        uint bal = _userAdress.balance;
        if (bal < _withdrawAmount) {
            revert("Insufficient balance");
        }
    }

}