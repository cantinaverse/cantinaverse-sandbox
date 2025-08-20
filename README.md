# Smart Contract Sandbox 🚀

A comprehensive collection of educational smart contracts built with Solidity and Foundry, designed for learning, experimentation, and demonstrating various blockchain development concepts.

## 📋 Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Weekly Breakdown](#weekly-breakdown)
- [Running Tests](#running-tests)
- [Deployment](#deployment)
- [Contract Descriptions](#contract-descriptions)
- [Contributing](#contributing)
- [Resources](#resources)
- [License](#license)

## 🎯 Overview

This repository serves as a hands-on learning environment for smart contract development, progressing from basic concepts to advanced patterns. Each week introduces new concepts and complexity levels, making it perfect for developers at any stage of their blockchain journey.

**Key Learning Objectives:**
- Master Solidity fundamentals and advanced patterns
- Understand gas optimization techniques
- Learn security best practices
- Explore different contract architectures
- Practice testing and deployment workflows

## 🛠 Prerequisites

Before getting started, ensure you have the following installed:

- [Foundry](https://getfoundry.sh/) - Fast, portable, and modular toolkit for Ethereum development
- [Git](https://git-scm.com/) - Version control system

## 🚀 Installation

1. **Clone the repository:**
```bash
git clone https://github.com/yourusername/smart-contract-sandbox.git
cd smart-contract-sandbox
```

2. **Install Foundry dependencies:**
```bash
forge install
```

3. **Install additional dependencies (if any):**
```bash
npm install
```

4. **Set up environment variables:**
```bash
cp .env.example .env
# Edit .env with your configuration
```

## 📁 Project Structure
```
smart-contract-sandbox/
├── src/
│   ├── Week1/          # Basic contracts and data structures
│   ├── Week2/          # Intermediate patterns and state management
│   ├── Week3/          # Advanced patterns and security
│   └── Week4/          # Complex applications and token standards
├── test/
│   ├── Week1/          # Tests for Week 1 contracts
│   ├── Week2/          # Tests for Week 2 contracts
│   ├── Week3/          # Tests for Week 3 contracts
│   └── Week4/          # Tests for Week 4 contracts
├── script/
│   ├── Week1/          # Deployment scripts and contract interactions for each contract
│   ├── Week2/          # Deployment scripts and contract interactions for each contract
│   ├── Week3/          # Deployment scripts and contract interactions for each contract
│   └── Week4/          # Deployment scripts and contract interactions for each contract
├── lib/                # Foundry dependencies
├── foundry.toml        # Foundry configuration
└── README.md
```


## 📚 Weekly Breakdown

### Week 1: Foundations & Data Structures
**Focus:** Basic Solidity syntax, storage patterns, and simple interactions

- **CertificateStorage.sol** - Digital certificate issuance and verification
- **EventRSVP.sol** - Event management with RSVP functionality
- **GuestBook.sol** - Simple message storage and retrieval
- **NameRegistry.sol** - Name-to-address mapping system
- **PersonalRegistry.sol** - Personal information storage
- **ReputationSystem.sol** - Basic reputation scoring mechanism
- **StatusBoard.sol** - Public status update system
- **VotingSystem.sol** - Simple voting mechanism


### Week 2: Intermediate Patterns
**Focus:** State management, counters, and user interactions

- **AttendanceTracker.sol** - Track attendance with timestamps
- **GlobalCounter.sol** - Shared counter with access controls
- **MessageWall.sol** - Public message board with moderation
- **SimplePoll.sol** - Poll creation and voting system


### Week 3: Advanced Patterns & Security
**Focus:** Access control, time-based logic, and security patterns

- **AccessControl.sol** - Role-based permission system
- **Counter.sol** - Advanced counter with multiple features
- **NumberGuesser.sol** - Game with randomness and rewards
- **SimpleStaking.sol** - Token staking with rewards
- **SubscriptionManager.sol** - Subscription-based service management
- **TimeLock.sol** - Time-delayed execution mechanism

### Week 4: Complex Applications
**Focus:** Token standards, DeFi patterns, and advanced applications

- **AuctionHouse.sol** - English auction implementation
- **EscrowContract.sol** - Secure escrow service
- **LotteryContract.sol** - Lottery system with random selection
- **SimpleNFT.sol** - ERC-721 NFT implementation
- **TaskBounty.sol** - Bounty system for task completion
- **TokenCreation.sol** - ERC-20 token factory
- **TokenVault.sol** - Secure token storage system

## 🧪 Running Tests

Run all tests:
```bash
forge test
```

Run tests for a specific week:
```bash
forge test --match-path test/Week1/*
```

Run tests with verbose output:
```bash
forge test -vvv
```

Run tests with gas reporting:
```bash
forge test --gas-report
```

## 🚀 Deployment

Each contract has its own deployment script in the `script/deploy/` directory.

### Local Deployment (Anvil)

1. **Start local blockchain:**
```bash
anvil
```

2. **Deploy a specific contract:**
```bash
forge script script/deploy/Week1/DeployCertificateStorage.s.sol --rpc-url http://localhost:8545 --broadcast
```

### Testnet Deployment

1. **Set up your `.env` file:**
```bash
SEPOLIA_RPC_URL=https://sepolia.infura.io/v3/YOUR_PROJECT_ID
PRIVATE_KEY=your_private_key_here
ETHERSCAN_API_KEY=your_etherscan_api_key
```

2. **Deploy to Sepolia:**
```bash
forge script script/deploy/Week1/DeployCertificateStorage.s.sol --rpc-url $SEPOLIA_RPC_URL --broadcast --verify
```

## 📝 Contract Descriptions

### Week 1 Contracts

#### CertificateStorage.sol
A digital certificate management system that allows authorized issuers to create certificates and users to verify their authenticity.

**Key Features:**
- Certificate issuance with metadata
- Verification system
- Issuer authorization
- Event logging

#### EventRSVP.sol
An event management contract that handles event creation, RSVP tracking, and attendance confirmation.

**Key Features:**
- Event creation with details
- RSVP functionality
- Attendance tracking
- Capacity management

#### GuestBook.sol
A simple guest book where users can leave messages with timestamps.

**Key Features:**
- Message storage
- Timestamp tracking
- Message retrieval
- User interaction history

#### NameRegistry.sol
A name registration system that maps human-readable names to Ethereum addresses.

**Key Features:**
- Name registration
- Address resolution
- Transfer functionality
- Expiration handling

#### PersonalRegistry.sol
A personal information storage system with privacy controls.

**Key Features:**
- Personal data storage
- Privacy settings
- Access control
- Data verification

#### ReputationSystem.sol
A reputation scoring system that tracks user credibility based on community feedback.

**Key Features:**
- Reputation scoring
- Feedback system
- Score calculation
- Reputation history

#### StatusBoard.sol
A public status board where users can post updates and view others' statuses.

**Key Features:**
- Status updates
- Public viewing
- Timestamp tracking
- User profiles

#### VotingSystem.sol
A simple voting system for proposals with basic governance features.

**Key Features:**
- Proposal creation
- Voting mechanism
- Vote counting
- Result determination

### Week 2 Contracts

#### AttendanceTracker.sol
Tracks attendance for events or meetings with timestamp verification.
**Key Features:**
- Check-in/check-out system
- Timestamp verification
- Attendance reports
- Event management

#### GlobalCounter.sol
A shared counter that multiple users can increment/decrement with access controls.
**Key Features:**
- Global state management
- Access control
- Counter operations
- Event logging

#### MessageWall.sol
A public message wall with moderation capabilities and user interactions.
**Key Features:**
- Message posting
- Moderation tools
- User interactions
- Content filtering

#### SimplePoll.sol
A polling system that allows creation of polls with multiple options and voting.
**Key Features:**
- Poll creation
- Multiple choice options
- Voting mechanism
- Results display

### Week 3 Contracts

#### AccessControl.sol
A comprehensive role-based access control system.
**Key Features:**
- Role management
- Permission system
- Admin functions
- Role hierarchy

#### Counter.sol
An advanced counter with multiple features and access patterns.
**Key Features:**
- Multiple counter types
- Access patterns
- State management
- Event tracking

#### NumberGuesser.sol
A number guessing game with rewards and randomness.
**Key Features:**
- Random number generation
- Guessing mechanism
- Reward system
- Game state management

#### SimpleStaking.sol
A token staking contract with rewards and time-based unlocking.
**Key Features:**
- Token staking
- Reward calculation
- Time-based unlocking
- Yield farming

#### SubscriptionManager.sol
Manages subscription-based services with payment handling.
**Key Features:**
- Subscription creation
- Payment processing
- Renewal system
- Service access

#### TimeLock.sol
A time-delayed execution mechanism for secure operations.
**Key Features:**
- Time-delayed execution
- Transaction queuing
- Security mechanisms
- Admin controls

### Week 4 Contracts

#### AuctionHouse.sol
An English auction implementation with bidding and settlement.
**Key Features:**
- Auction creation
- Bidding mechanism
- Settlement system
- Reserve prices

#### EscrowContract.sol
A secure escrow service for safe transactions between parties.
**Key Features:**
- Escrow creation
- Dispute resolution
- Fund management
- Multi-party support

#### LotteryContract.sol
A lottery system with random winner selection and prize distribution.
**Key Features:**
- Ticket purchasing
- Random selection
- Prize distribution
- Multiple rounds

#### SimpleNFT.sol
An ERC-721 compliant NFT contract with minting and metadata.
**Key Features:**
- NFT minting
- Metadata management
- Transfer functionality
- Ownership tracking

#### TaskBounty.sol
A bounty system for task completion with escrow and verification.
**Key Features:**
- Bounty creation
- Task submission
- Verification system
- Payment distribution

#### TokenCreation.sol
An ERC-20 token factory for creating custom tokens.
**Key Features:**
- Token creation
- Custom parameters
- Factory pattern
- Token registry

#### TokenVault.sol
A secure vault for storing and managing tokens with time locks.
**Key Features:**
- Token storage
- Time-based unlocking
- Multi-token support
- Security features

## 🤝 Contributing

Contributions are welcome! Please follow these steps:
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Guidelines

- Follow Solidity style guidelines
- Write comprehensive tests for new contracts
- Include detailed comments and documentation
- Ensure all tests pass before submitting
- Add deployment scripts for new contracts

## 📚 Resources

### Learning Resources
- [Solidity Documentation](https://docs.soliditylang.org/)
- [Foundry Book](https://book.getfoundry.sh/)
- [OpenZeppelin Contracts](https://docs.openzeppelin.com/contracts/)
- [Ethereum Development Documentation](https://ethereum.org/en/developers/)

### Tools & Frameworks
- [Foundry](https://getfoundry.sh/) - Development framework
- [OpenZeppelin](https://openzeppelin.com/) - Security libraries
- [Etherscan](https://etherscan.io/) - Blockchain explorer
- [Remix IDE](https://remix.ethereum.org/) - Online IDE

### Security Resources
- [ConsenSys Security Best Practices](https://consensys.github.io/smart-contract-best-practices/)
- [SWC Registry](https://swcregistry.io/) - Smart contract vulnerabilities
- [Slither](https://github.com/crytic/slither) - Static analysis tool

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- OpenZeppelin for security patterns and implementations
- Foundry team for the excellent development framework
- Ethereum community for continuous innovation
- All contributors and educators in the blockchain space
