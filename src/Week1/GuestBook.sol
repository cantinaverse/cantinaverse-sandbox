// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title Guestbook
 * @dev A simple messaging/guestbook contract where users can leave public messages
 */
contract GuestBook {
    struct Message {
        address author;
        string content;
        uint256 timestamp;
        uint256 id;
    }
}
