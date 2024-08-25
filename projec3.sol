// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Auction {
    address public own;
    uint public chbid;
    address public topbidder;

    constructor() {
        own = msg.sender;
        chbid = 0;
    }

    function submitbid(uint _newBid) public {
        require(_newBid > chbid, "Bid must be higher than the current highest bid");
        chbid = _newBid;
        topbidder = msg.sender;
    }

    function withdrawFunds() public {
        require(msg.sender == own, "Only the owner can withdraw the highest bid");
        require(chbid > 0, "No bids have been placed");
        payable(own).transfer(chbid);
        chbid = 0;
    }

    function auctionabort() public view {
        require(msg.sender == own, "Only the owner can cancel the auction");
        assert(chbid > 0);
        revert("Auction cancelled");
    }
}
