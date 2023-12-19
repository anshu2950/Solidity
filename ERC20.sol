// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

interface IERC20 {
    function totalSupply() external view returns (uint);
    function balance(address account) external view returns (uint);
    function transfer(address receipt, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);
    function aprove(address spender, uint amount) external returns (bool);
    function transferFrom(address spender, address recipient, uint amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint amount);
    event aproval(address indexed owner, address indexed spender, uint amount);

}

contract ERC20 is IERC20 {
    uint public totalSupply;
    mapping(address => uint) public balanceOf;
    mapping(address => mapping(address => uint)) public allowance;
    string public name = "Test";
    string public symbol = "TEST";
    uint8 public decimals = 18;
    

}