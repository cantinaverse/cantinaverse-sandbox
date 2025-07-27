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
