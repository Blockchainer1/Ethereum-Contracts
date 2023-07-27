ERC721 NFT MarketPlace 

Deployed Contract:

https://rinkeby.etherscan.io/address/0x6776f41f7b916ae8649b5053bb012fd497cc18e2#code

Documentation:

https://docs.google.com/document/d/1gEjNnheQ8ovIqv9BZpw6vToV99rW3PPW_fPrBLYmL_Y/edit


Total 0.00855014 ETH $16.23 USD

NFT:
NFT stands for "non-fungible token." At a basic level, an NFT is a digital asset that links ownership to unique physical or digital items, such as works of art, real estate, music, or videos. NFTs can be considered modern-day collectibles.


NFT MarketPlace INTRO:

An NFT marketplace is simply an online marketplace where you can buy, sell or trade NFT tokens. It gives creators a direct way to sell their non-fungible assets such as artwork, and customers can purchase these assets by using a cryptocurrency.
Anyone can sign up to an NFT marketplace and from here you can link your crypto wallet with the marketplace and start trading. The marketplace will commonly feature listings of all of the different kinds of NFTs such as art, collectibles, domain names, music, photography, sports trading cards and so on.


Features for users:

Mint your ERC721 NFT/s
Put your NFT on sale 
Buy NFT with Fixed price
Start Auction 
Buy NFT with biding 
Claim/Get  your NFT 

Flow of All Functions:

Step 01: First Deploy Your NFTMarketplace Contract

Step 02: User will allow to mint a single NFT in “mint” function or mint the multiple NFTs inside “mint” function.

Step 03: users can put nft on sale with id of NFT and price of NFT using putOnSale function

Step 04: users can buy NFT with fixed price by using BuyFixedPriceNFT function

Step 05: Users can start Auction by using the startAuction function by providing these parameters  _biddingStartTime , _biddingendtime , _beneficiary , tokenId .

Step 06: Users can place a bid on the specific NFT and Buy this NFT by bidding using bid function.

Step 07: Highest bidder can Claim NFT by using claimNft function.
.

Read & Write Functions:


Mint: 
owner will give it’s address in account parameter and token uri string. The tokenId starts from zero so the user can mint many times, the tokenId will increase accordingly. You can use this tokenuri for sample.

Tokenuri: https://piqsol.mypinata.cloud/ipfs/QmaDmwipDrZwntrgxkyzSFaGfLVS6fKWXbCh6MMAZExQqE

balanceOf:
User can check its balance by passing its address, balanceOf function will return one.

putOnSale: 
Owner will give tokenid 0 and price for example 10 to list the NFT.

BuyFixedPriceNft: 
Now buyer from different address come and will not be able to buy it until and unless Owner approve the buyer.

Go to approve function and paste the address of buyer and tokenid which is zero and approve it from the owner.

startAuction:  Current Owner will be able to Start the Auction by providing these parameters  _biddingStartTime , _biddingendtime , _beneficiary , tokenId .
For Testing purpose, The values can be dummy.

bid:  Now a different bidder comes and bid on it with 2 Ether price. The bid successfully execute. Similarly Bid process will start from here.

auctionEnd: Here only current current highest bid owner will be able to end the auction.
 
claimNFT: Now when the auction will end the current highest bidder can claim it’s NFT. Meanwhile the NFT Royalty will also be transfer to the Product Owner and NFT minter address. 


Deployment And Reusability:
Step #01: 
Select your compiler version, in our case it is 0.8.15, it will compile successfully.

Step #02:


After compilation deploy the smart contract by passing your _NAME and _SYMBOL
we deployed the contract by passing two fields:
_name: “Marketplace”
_symbol: “MP”
User can change it according to its requirements. 
