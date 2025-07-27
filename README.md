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

