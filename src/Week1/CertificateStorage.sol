// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title CertificateStorage
 * @dev A decentralized certificate/credential storage system for issuing and verifying certificates
 */
contract CertificateStorage {
        struct Certificate {
        uint256 id;
        address issuer;
        address recipient;
        string title;
        string description;
        string metadataHash; // IPFS hash or other metadata reference
        uint256 issuedAt;
        uint256 expiresAt; // 0 for non-expiring certificates
        bool revoked;
        uint256 revokedAt;
    }
}