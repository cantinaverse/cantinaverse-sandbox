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

    // Storage
    Certificate[] public certificates;
    mapping(uint256 => bool) public certificateExists;
    mapping(address => uint256[]) public issuerCertificates;
    mapping(address => uint256[]) public recipientCertificates;
    mapping(address => bool) public authorizedIssuers;

    // Stats
    uint256 public totalCertificates;
    uint256 private nextCertificateId;

    // Admin
    address public admin;

    event CertificateIssued(
        uint256 indexed certificateId, address indexed issuer, address indexed recipient, string title
    );
    event CertificateRevoked(uint256 indexed certificateId, address indexed issuer, uint256 revokedAt);
    event IssuerAuthorized(address indexed issuer);
    event IssuerRevoked(address indexed issuer);

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    modifier onlyAuthorizedIssuer() {
        require(authorizedIssuers[msg.sender], "Not an authorized issuer");
        _;
    }

    modifier validCertificate(uint256 _certificateId) {
        require(certificateExists[_certificateId], "Certificate does not exist");
        _;
    }

    constructor() {
        admin = msg.sender;
        authorizedIssuers[msg.sender] = true; // Admin is automatically an authorized issuer
    }

    /**
     * @dev Authorize an address to issue certificates
     * @param _issuer Address to authorize
     */
    function authorizeIssuer(address _issuer) external {
        require(_issuer != address(0), "Invalid issuer address");

        authorizedIssuers[_issuer] = true;
        emit IssuerAuthorized(_issuer);
    }

    /**
     * @dev Revoke issuer authorization
     * @param _issuer Address to revoke
     */
    function revokeIssuer(address _issuer) external onlyAdmin {
        require(authorizedIssuers[_issuer], "Issuer not authorized");
        require(_issuer != admin, "Cannot revoke admin");

        authorizedIssuers[_issuer] = false;
        emit IssuerRevoked(_issuer);
    }

    /**
     * @dev Issue a new certificate
     * @param _recipient Address of the certificate recipient
     * @param _title Certificate title
     * @param _description Certificate description
     * @param _metadataHash IPFS hash or metadata reference
     * @param _expiresAt Expiration timestamp (0 for non-expiring)
     */
    function issueCertificate(
        address _recipient,
        string memory _title,
        string memory _description,
        string memory _metadataHash,
        uint256 _expiresAt
    ) external onlyAuthorizedIssuer {
        require(_recipient != address(0), "Invalid recipient address");
        require(bytes(_title).length > 0, "Title cannot be empty");
        require(_expiresAt == 0 || _expiresAt > block.timestamp, "Invalid expiration date");

        uint256 certificateId = nextCertificateId;
        nextCertificateId++;

        Certificate memory newCertificate = Certificate({
            id: certificateId,
            issuer: msg.sender,
            recipient: _recipient,
            title: _title,
            description: _description,
            metadataHash: _metadataHash,
            issuedAt: block.timestamp,
            expiresAt: _expiresAt,
            revoked: false,
            revokedAt: 0
        });

        certificates.push(newCertificate);
        certificateExists[certificateId] = true;
        issuerCertificates[msg.sender].push(certificateId);
        recipientCertificates[_recipient].push(certificateId);
        totalCertificates++;

        emit CertificateIssued(certificateId, msg.sender, _recipient, _title);
    }

    /**
     * @dev Revoke a certificate (only by original issuer)
     * @param _certificateId ID of the certificate to revoke
     */
    function revokeCertificate(uint256 _certificateId) external validCertificate(_certificateId) {
        Certificate storage cert = certificates[_certificateId];
        require(cert.issuer == msg.sender, "Only issuer can revoke certificate");
        require(!cert.revoked, "Certificate already revoked");

        cert.revoked = true;
        cert.revokedAt = block.timestamp;

        emit CertificateRevoked(_certificateId, msg.sender, block.timestamp);
    }

    /**
     * @dev Get certificate details
     * @param _certificateId Certificate ID
     * @return Certificate struct
     */
    function getCertificate(uint256 _certificateId)
        external
        view
        validCertificate(_certificateId)
        returns (Certificate memory)
    {
        return certificates[_certificateId];
    }

    /**
     * @dev Verify if a certificate is valid (exists, not revoked, not expired)
     * @param _certificateId Certificate ID
     * @return bool indicating validity
     */
    function verifyCertificate(uint256 _certificateId) external view returns (bool) {
        if (!certificateExists[_certificateId]) {
            return false;
        }

        Certificate memory cert = certificates[_certificateId];

        // Check if revoked
        if (cert.revoked) {
            return false;
        }

        // Check if expired
        if (cert.expiresAt != 0 && cert.expiresAt <= block.timestamp) {
            return false;
        }

        return true;
    }

    /**
     * @dev Get all certificates issued by a specific issuer
     * @param _issuer Issuer address
     * @return Array of certificate IDs
     */
    function getCertificatesByIssuer(address _issuer) external view returns (uint256[] memory) {
        return issuerCertificates[_issuer];
    }

    /**
     * @dev Get all certificates received by a specific recipient
     * @param _recipient Recipient address
     * @return Array of certificate IDs
     */
    function getCertificatesByRecipient(address _recipient) external view returns (uint256[] memory) {
        return recipientCertificates[_recipient];
    }

    /**
     * @dev Get certificate count for an issuer
     * @param _issuer Issuer address
     * @return Number of certificates issued
     */
    function getIssuerCertificateCount(address _issuer) external view returns (uint256) {
        return issuerCertificates[_issuer].length;
    }

    /**
     * @dev Get certificate count for a recipient
     * @param _recipient Recipient address
     * @return Number of certificates received
     */
    function getRecipientCertificateCount(address _recipient) external view returns (uint256) {
        return recipientCertificates[_recipient].length;
    }

    /**
     * @dev Check if an address is an authorized issuer
     * @param _issuer Address to check
     * @return bool indicating authorization status
     */
    function isAuthorizedIssuer(address _issuer) external view returns (bool) {
        return authorizedIssuers[_issuer];
    }

    /**
     * @dev Get total number of certificates in the system
     * @return Total certificate count
     */
    function getTotalCertificates() external view returns (uint256) {
        return totalCertificates;
    }

    /**
     * @dev Check if certificate is expired
     * @param _certificateId Certificate ID
     * @return bool indicating if expired
     */
    function isCertificateExpired(uint256 _certificateId)
        external
        view
        validCertificate(_certificateId)
        returns (bool)
    {
        Certificate memory cert = certificates[_certificateId];
        return cert.expiresAt != 0 && cert.expiresAt <= block.timestamp;
    }
}
