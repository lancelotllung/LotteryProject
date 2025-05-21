# Decentralized Lottery DApp

- **Live Demo**: The front-end is hosted via GitHub Pages. Access the live demo here:  
  [https://lancelotllung.github.io/LotteryProject/](https://lancelotllung.github.io/LotteryProject/)
  
## Overview
This project is a **fully decentralized** lottery application built using an Ethereum smart contract and a web-based front-end. Users participate by sending **exactly 0.01 ETH** to the lottery. Once at least **one players** have joined, **anyone** can pick a random winner, transferring the contract balance to the winner. The contract also allows **any user** to restart the lottery after it ends.

## Project Contents
All files are located in the root folder of this repository:
- **Lottery.sol**: Solidity smart contract implementing the lottery logic.
- **index.html**: Front-end HTML file that interacts with the smart contract using MetaMask and Web3.js.
- **README.md**: This documentation file.
- **Report.pdf**: A PDF report detailing the app’s functionality, testing process, screenshots, and logs.

## Deployment Details
- **Ethereum Testnet**: The contract is deployed on the **Sepolia** testnet. *(Update if using a different testnet.)*

## Setup Instructions

### **1. Deploy the Smart Contract**
- Use **Remix**, **Hardhat**, or any Ethereum development tool.
- Compile and deploy `Lottery.sol` on **Sepolia Testnet**.
- Note down the deployed **contract address**.

### **2. Configure the Front-End**
- Open `index.html` in a text editor.
- Replace contract address with the **actual deployed contract address**.
- Save the changes and commit them to the repository.

### **3. Using the DApp**
- Open the **GitHub Pages live URL** in a browser with **MetaMask installed**.
- Connect your MetaMask wallet and switch to **Sepolia testnet**.
- Interact with the app to:
  - **Enter the lottery** by sending 0.01 ETH.
  - **View current players** in the lottery.
  - **Pick a winner** (any user can do this after 3+ players join).
  - **Restart the lottery** once it ends.

## Testing
Detailed testing procedures, including **screenshots, logs, and edge cases**, are documented in `Report.pdf`.

---
