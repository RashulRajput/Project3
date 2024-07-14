// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    address public owner;
    uint public highestBid;
    address public highestBidder;

    constructor() {
        owner = msg.sender;
        highestBid = 0;
    }

    function placeBid(uint _bid) public {
        require(_bid > highestBid, "Bid must be higher than the current highest bid");
        highestBid = _bid;
        highestBidder = msg.sender;
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw the highest bid");
        require(highestBid > 0, "No bids have been placed");
        payable(owner).transfer(highestBid);
        highestBid = 0;
    }

    function cancelAuction() public view {
        require(msg.sender == owner, "Only the owner can cancel the auction");
        assert(highestBid > 0);
        revert("Auction cancelled");
    }
}
