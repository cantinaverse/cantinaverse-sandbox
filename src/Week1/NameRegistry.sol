// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract NameRegistry {
    mapping(bytes32 => address) public nameToAddress;
    mapping(address => bytes32) public addressToName;

}
