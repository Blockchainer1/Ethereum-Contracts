


NFT STAKING WITH ERC721

ERC - 721

-USAGE

NFTStaking721: https://rinkeby.etherscan.io/address/0x3eba20126f2ec4ed2319928f4b6194e47ea7511d#code

RewardToken: https://rinkeby.etherscan.io/address/0x9f5587d9325d092a0f84755ed480644f201768a6#code

NFTToken: https://rinkeby.etherscan.io/address/0x1a9f8bd27efd185c6cfefb0e86c44c75aeeb0d3a#code

ERC-721 Staking Documentation:

NFTToken: Total Gas Fee 0.00661085 ETH

RewardToken: Total Gas Fee 0.00372354 ETH

NFTStaking721: Total Gas Fee 0.00491524 ETH

NFT STAKING INTRO: NFT staking refers to locking up non-fungible tokens on a platform or protocol in exchange for staking rewards and other benefits. We can do Staking with ERC-721 and ERC-1155.

TOKENS:

ERC-721 Token:

This is NFTToken in which the User mint an NFT by passing the address inside the “mint” function, the token Id automatically increments and will mint 6 Nft’s.

ERC-20 Token:

This is a RewardToken in which the User will Receive a Reward in RewardToken.

ERC-721 NFT Staking Token:

This is a StakingToken in which a User will Stake and unstake an NFT, and will claim Reward which will transfer into RewardToken.

Features For users:

Deposit/Mint your ERC721 NFT/s Deposit/stake your NFT or NFT’s Withdraw/Unstake your ERC721 NFT or NFT/s. Claim your NFT & Reward calculation is happening hour-wise . Rewards will transfer in RewardToken.

Flow of All Functions:

Step 01: First Deploy Your NFTToken and RewardToken then Deploy your Staking Token by passing the NFTToken and RewardToken Contract Address

Step 02: Inside NFTToken, in which User will allow to mint a single NFT in “mint” function or mint the multiple NFTs inside “mintBatch” function.

Step 03: Inside NFTToken, Pass Staking Contract Address in “setApprovalForAll” function and approve it to True.

Step 04: Inside StakingToken, Stake a single NFT or Batch NFT’s by passing tokenId and amount in “stakeNFTs” function.

Step 05: Inside the StakingToken, Unstake a single NFT or Batch NFT in “UnstakeNFTs” function.

Step 06: Now user can claim the reward. To claim the rewards, the user will need to approve the StakingToken Contract inside the RewardToken “Approve” function from the owner address.

Read & Write Functions:

Mint:

User will give its address in SafeMint function to mint it. The tokenId starting from one so user can mint many times, the tokenId will increase accordingly

balanceOf:

User can check its balance by passing its address, balanceOf function will return one.

totalSupply:

User can check the totalSupply, it will return one.

setApprovalForAll:

User will not be able to do the staking until and unless User passes the staking Contract Address in it and will set it to true.

stakeNFTs:

User can stake the specific tokenId’s and amount which he wants to stake.

UnstakeNFTs:

User can unstake the specific tokenId’s and amount which he wants to Unstake.

availableRewards:

It will calculate the total rewards of specific addresses who have done staking. It will continuously change with respect to time.

Stakers:

It’s a mapping of Struct in which user will be able to see the amountstaked, timeofLastupdate and unclaimedRewards. The unclaimedRewards will set to zero at initial, when user will unstake then it will show and amounstaked counter will decrement.

claimRewards:

User will claim Rewards after unstaking it’s tokenId. To claim the Reward user will need to approve the StakingContract address in RewardToken approve function from owner The reward will be given in RewardToken (ERC20).

Deployment And Reusability:

Step #01:

Select your compiler version, in my case it is v0.8.7 in all the three tokens, After that it will compile successfully.

Step #02:

NFTToken:

    After compilation, deploy the smart contract by passing

Token Name:

”NFTToken” & Token symbol: "NTK" which are already set in the constructor. RewardToken:

    After compilation, deploy the smart contract by passing the _NAME and _SYMBOL according to it’s need and requirements. In my case I set it “RewardToken” & “RT”

NFTStakingToken:

    After compilation, deploy the smart contract by passing the “_NFTToken” address and “_RewardToken” address.

My deployed addresses are : _NFTToken = “0x949e29B83A158d70D47822D82fC93fe81f7fc4Aa” _RewardToken = “0x8f430973c85B3a02Ccf75488adE064e42f5a9E1
