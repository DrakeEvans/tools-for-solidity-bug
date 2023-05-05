// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol" as MyCounters;
import * as Constants from "src/Constants.sol";

contract CounterTest is Test {
    MyCounters.Counter public counter;

    function setUp() public {
        counter = new MyCounters.Counter();
        counter.setNumber(0);
        address _someAddress = Constants.Mainnet.FRAX_ERC20;
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
