// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract X {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

    function baz() public pure returns (string memory) {
        return "A";
    }
}

contract Y is X {
    function foo() public pure virtual override returns (string memory) {
        return "Y";
    }

    function bar() public pure virtual override returns (string memory) {
        return "Y";
    }
    function y() public pure returns (string memory) {
        return "Y";
    }
}

contract Z is X,Y {
    function foo() public pure override(X,Y) returns (string memory) {
        return "Z";
    }

    function bar() public pure override(X,Y) returns (string memory) {
        return "Z";
    }
}