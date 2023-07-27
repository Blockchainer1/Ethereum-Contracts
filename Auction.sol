//SPDX-License-Identifier: MIT

/**
 *Submitted for verification at Etherscan.io on 2022-02-18
 */

pragma solidity 0.8.10;

contract SimpleAuction {
    // parameters of the SimpleAuction
    address payable public beneficiary;
    uint256 public auctionEndTime;

    // current state of auctionEndTime
    address public highestBidder;
    uint256 public highestBid;

    mapping(address => uint256) public pendingReturns;

    bool ended = false;

    event HighestBidIncrease(address bidder, uint256 amount);
    event AuctionEnded(address winner, uint256 amount);

    constructor(uint256 _biddingTime, address payable _beneficiary) {
        beneficiary = _beneficiary;
        auctionEndTime = block.timestamp + _biddingTime;
    }

    function bid() public payable {
        if (block.timestamp > auctionEndTime) {
            revert("the auction has already ended");
        }

        if (msg.value <= highestBid) {
            revert("there is already a higher or equal bid");
        }

        if (highestBid != 0) {
            pendingReturns[highestBidder] += highestBid;
        }

        highestBidder = msg.sender;
        highestBid = msg.value;
        emit HighestBidIncrease(msg.sender, msg.value);
    }

    //admin interaction
    //only owner
    //payable
    function withdraw() public returns (bool) {
        uint256 amount = pendingReturns[msg.sender];

        if (amount > 0) {
            pendingReturns[msg.sender] = 0;

            if (!payable(msg.sender).send(amount)) {
                pendingReturns[msg.sender] = amount;
                return false;
            }
        }
        return true;
    }

    function auctionEnd() public {
        if (block.timestamp < auctionEndTime) {
            revert("the auction is not ended yet");
        }

        if (ended) {
            revert("the function auctionEnded has already been called");
        }

        ended = true;
        emit AuctionEnded(highestBidder, highestBid);

        beneficiary.transfer(highestBid);
    }
}
