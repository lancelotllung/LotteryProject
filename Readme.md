# Decentralized Lottery DApp

## Overview
This project is a decentralized lottery application built using an Ethereum smart contract and a web-based front-end. Users participate by sending exactly 0.01 ETH to the lottery. Once at least three players have joined, the lottery manager can pick a random winner, transferring the contract balance to the winner. The contract also allows the manager to restart the lottery after it ends.

## Project Contents
All files are located in the root folder of this repository:
- **Lottery.sol**: Solidity smart contract that implements the lottery logic.
- **index.html**: Front-end HTML file that interacts with the smart contract using MetaMask and web3.js.
- **README.md**: This documentation file.
- **Report.pdf**: A PDF report detailing the app’s functionality, testing process, screenshots, and logs.

## Deployment Details
- **Ethereum Testnet**: The contract is deployed on the Goerli testnet. *(Update if you are using a different testnet.)*
- **Live Demo**: The front-end is hosted using GitHub Pages. You can access your live demo at:  
  [https://lancelotllung.github.io/LotteryProject/](https://lancelotllung.github.io/LotteryProject/)

## Setup Instructions

1. **Deploy the Smart Contract:**
   - Use Remix, Hardhat, or your preferred Ethereum development environment.
   - Compile and deploy `Lottery.sol` on the chosen Ethereum testnet.
   - Note down the deployed contract address.

2. **Configure the Front-End:**
   - Open `index.html` in a text editor.
   - Replace the placeholder `"YOUR_CONTRACT_ADDRESS_HERE"` with the actual contract address obtained after deployment.
   - Save the changes and commit them to the repository.

3. **Using the DApp:**
   - Visit the live GitHub Pages URL in a browser with MetaMask installed.
   - Connect your MetaMask wallet and switch to the appropriate testnet.
   - Interact with the app to enter the lottery, view current players, and (if you are the manager) pick a winner or restart the lottery.

## Testing
Detailed testing procedures, including screenshots and logs, are documented in `Report.pdf`.

## Future Enhancements
- **Improve Security:**  
  Consider integrating Chainlink VRF for secure randomness.
- **UI Enhancements:**  
  Add features such as displaying the current lottery balance or more detailed notifications.
- **Multi-Network Support:**  
  Explore deploying the contract on multiple networks and updating the front-end accordingly.

---

Feel free to customize this README as your project evolves. This document should help reviewers understand both the live demo and the complete source code provided in this repository.
