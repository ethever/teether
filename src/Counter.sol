// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number;

    address dev = address(0x01);

    address owner = address(0x00);

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function aaaaa(address [] memory path) public {
        if (path[1] == address(0x00)) {
        owner = msg.sender;
        }
    }

    function hh() public {
        if (msg.sender == owner) {
        selfdestruct(payable(address(msg.sender)));
        }
        revert("Jajaj");
    }
}
