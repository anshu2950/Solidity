// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Account {
    address public bank;
    address public owner;

    constructor(address _owner) payable {
        bank = msg.sender;
        owner = _owner;
    }
}

contract AccountFactory {
    Account[] public accounts;

    function createAccount(address _owner) external payable {
        Account account = new Account{value: 1111}(_owner);
        accounts.push(account);
    }
}