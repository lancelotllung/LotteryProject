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

    function enter() public payable {
        require(!lotteryEnded, "Lottery has ended");
        require(msg.value == 0.01 ether, "Entry fee must be exactly 0.01 ETH");
        players.push(msg.sender);
    }

    function getPlayers() public view returns (address[] memory) {
        return players;
    }

    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.prevrandao, block.timestamp, players)));
    }

    function pickWinner() public {
        require(players.length >= 1, "Need at least 1 players to pick a winner");
        uint index = random() % players.length;
        address payable winner = payable(players[index]);
        winner.transfer(address(this).balance);
        lotteryEnded = true;
    }

    function restartLottery() public {
        require(lotteryEnded, "Lottery is still active");
        players = new address[](0);
        lotteryEnded = false;
    }
}
