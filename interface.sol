// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface ICounter {
    function count() external view returns (uint);
    function inc() external;
}


contract CallInterface {
    uint public count;
    function example(address _counter) external {
    ICounter(_counter).inc();
    count = ICounter(_counter).count();
    }
}