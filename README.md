# 🏷️ Auction Smart Contract

Welcome to the Auction Smart Contract repository! This Solidity-based contract on the Ethereum blockchain allows users to participate in an auction by placing bids. The highest bid can be withdrawn by the contract owner.

## ✨ Features

- 🏆 **Place Bid**: Users can place a bid higher than the current highest bid.
- 💸 **Withdraw Bid**: The owner can withdraw the highest bid.
- ❌ **Cancel Auction**: The owner can cancel the auction if there are bids.

## 📜 Contract Details

### Variables

- 👤 **Owner**: The address of the contract owner.
- 💰 **Highest Bid**: The current highest bid.
- 👥 **Highest Bidder**: The address of the highest bidder.

### Constructor

The constructor sets the contract deployer as the owner and initializes the highest bid to zero.

### Functions

#### 📈 `placeBid`

Allows users to place a bid that must be higher than the current highest bid.

#### 💼 `withdraw`

Allows the owner to withdraw the highest bid. This function can only be called by the owner and only if there are bids.

#### 🛑 `cancelAuction`

Allows the owner to cancel the auction. This function can only be called by the owner and will revert if there are no bids.

## 🚀 Usage

1. **Deploy the contract**: Deploy the `Auction` contract on the Ethereum blockchain.
2. **Place bids**: Users can place bids using the `placeBid` function.
3. **Withdraw the highest bid**: The owner can withdraw the highest bid using the `withdraw` function.
4. **Cancel the auction**: The owner can cancel the auction using the `cancelAuction` function.

## 📄 License

This project is licensed under the MIT License.

## 👨‍💻 Author

- Rashul Rajput

Feel free to contribute to this project or report any issues. Happy bidding! 🎉
