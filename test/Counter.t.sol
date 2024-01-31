// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_IncrementFor() public {
        counter.incrementFor();
        assertEq(counter.number(), 10);
    }

    function test_IncrementDoWhile() public {
        counter.incrementDoWhile();
        assertEq(counter.number(), 10);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
