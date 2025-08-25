// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract NameRegistry {
    mapping(bytes32 => address) public nameToAddress;
    mapping(address => bytes32) public addressToName;

    function registerName(bytes32 name) external {
        require(nameToAddress[name] == address(0), "Name taken");

        nameToAddress[name] = msg.sender;
        addressToName[msg.sender] = name;
    }

    function getName(address user) external view returns (bytes32) {
        return addressToName[user];
    }
}
