// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Lottery {
    address public manager;
    address[] public players;
    bool public lotteryEnded;

    constructor() {
        manager = msg.sender;
        lotteryEnded = false;
    }

    // Enter the lottery by sending exactly 0.01 ETH
    function enter() public payable {
        require(!lotteryEnded, "Lottery has ended");
        require(msg.value == 0.01 ether, "Entry fee must be exactly 0.01 ETH");
        players.push(msg.sender);
    }

    // Retrieve the list of players
    function getPlayers() public view returns (address[] memory) {
        return players;
    }

    // Insecure pseudo-random generator - for demonstration only!
    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players)));
    }

    // Manager picks the winner; requires at least 3 players to enter
    function pickWinner() public onlyManager {
        require(players.length >= 3, "Need at least 3 players to pick a winner");
        uint index = random() % players.length;
        address payable winner = payable(players[index]);
        winner.transfer(address(this).balance);
        lotteryEnded = true;
    }

    // Only the manager can call certain functions
    modifier onlyManager() {
        require(msg.sender == manager, "Only manager can call this function");
        _;
    }

    // Restart the lottery. This function clears the player list and resets the lottery state 
    function restartLottery() public onlyManager {
        require(lotteryEnded, "Lottery is still active");
        players = new address[](0);
        lotteryEnded = false;
    }
}
