// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Error {
    uint public num = 5;

    function testRequire(uint _i) public {
        require(_i == 5, "The value must be equal to 5");
        num += 1;
    }

    function testAssert(uint _i) public {
        assert(_i == 0);
        num += 1;
    }

    function testCustomError(uint _withdrawAmount, address _userAdress) public {
        uint bal = _userAdress.balance;
        if (bal < _withdrawAmount) {
            revert("Insufficient balance");
        }
        num += 1;
    }
}
