# Blockchain-Based Textiles Fiber Traceability System

This project implements a blockchain-based system for tracking and verifying the entire lifecycle of textile fibers using Clarity smart contracts on the Stacks blockchain.

## Overview

The system consists of five main smart contracts that work together to provide comprehensive traceability for textile fibers:

1. **Fiber Producer Verification**: Validates and registers fiber producers
2. **Origin Tracking**: Tracks the origin and initial properties of fiber batches
3. **Processing Documentation**: Records all processing steps applied to fibers
4. **Quality Certification**: Manages quality certifications for fiber batches
5. **Sustainability Verification**: Tracks and verifies sustainability metrics

## Smart Contracts

### Fiber Producer Verification

This contract handles the registration and verification of fiber producers. Features include:

- Producer registration with name, location, and license information
- Official verification of producers by the contract owner
- Lookup functionality for producer information

### Origin Tracking

This contract tracks the origin of fiber batches. Features include:

- Registration of new fiber batches with producer ID, type, harvest date, location, and quantity
- Lookup functionality for batch information

### Processing Documentation

This contract documents all processing steps applied to fibers. Features include:

- Recording of processing steps with processor name, process type, date, chemicals used, and output quality
- Lookup functionality for processing records
- Batch processing history tracking

### Quality Certification

This contract manages quality certifications for fiber batches. Features include:

- Quality certification with certifier, date, grade, and test results
- Certification revocation by the contract owner
- Lookup functionality for certification information

### Sustainability Verification

This contract tracks and verifies sustainability metrics for fiber batches. Features include:

- Sustainability verification with metrics like water usage, carbon footprint, and chemical usage
- Support for certification standards
- Lookup functionality for sustainability information

## Testing

The project includes comprehensive tests for all contracts using Vitest. Tests cover:

- Basic functionality of all contract functions
- Access control for privileged operations
- Error handling for invalid inputs and operations

## Getting Started

### Prerequisites

- [Clarinet](https://github.com/hirosystems/clarinet) for local Clarity development
- Node.js and npm for running tests

### Installation

1. Clone the repository
2. Install dependencie
