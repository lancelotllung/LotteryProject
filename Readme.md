# Decentralized Lottery DApp

## Overview
This project is a decentralized lottery application built using an Ethereum smart contract and a web-based front-end. Users can participate in the lottery by sending exactly 0.01 ETH. Once a minimum of three players have joined, the lottery manager can pick a winner at random (using a pseudo‑random mechanism, for demonstration only) and transfer the entire contract balance to the winner. The manager can also restart the lottery after it has ended.

## Contents
- **contracts/Lottery.sol**: Solidity source code for the lottery smart contract.
- **src/index.html**: Front-end HTML/JavaScript file that connects to the contract via MetaMask using web3.js.
- **README.md**: This documentation file.
- **Report.pdf**: A PDF report that includes a summary of the app’s functionality, testing screenshots, logs, and interactions (please ensure you attach your personal testing documentation).

## Ethereum Testnet
- The contract is deployed on the Goerli testnet. (Make sure to update this if you use a different testnet.)

## Live Demonstration
- The front-end is hosted on GitHub Pages at: [https://yourusername.github.io/yourproject](https://yourusername.github.io/yourproject)

## Setup Instructions
1. **Deploy the Contract:**
   - Compile and deploy `Lottery.sol` using Remix or your preferred development environment on the chosen Ethereum testnet.
   - Note down the deployed contract address.

2. **Configure the Front-End:**
   - Open `src/index.html` in a text editor.
   - Replace `"YOUR_CONTRACT_ADDRESS_HERE"` with your deployed contract address.
   - Commit and push the changes to your GitHub repository hosting the front-end.

3. **Usage:**
   - Open the deployed GitHub Pages link in a browser with MetaMask installed.
   - Connect your wallet, view the current players, enter the lottery, and, if you are the manager, pick a winner or restart the lottery.

## Testing
- Detailed testing procedures, screenshots, and logs are documented in `Report.pdf`.
