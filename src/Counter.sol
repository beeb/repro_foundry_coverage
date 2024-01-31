// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function incrementFor() public {
        for (uint256 i = 0; i < 10; i++) {
            number++;
            if (number > 20) {
                number -= 2;
            }
        }
    }

    function incrementDoWhile() public {
        uint256 i = 0;
        do {
            number++;
            if (number > 20) {
                number -= 2;
            }
        } while (++i < 10);
    }
}
