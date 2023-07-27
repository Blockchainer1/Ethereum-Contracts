

NFT STAKING WITH ERC1155

ERC - 1155

-USAGE

NFTToken: https://rinkeby.etherscan.io/address/0x57eb29cbbce4f061a1e2bda56905c75c2763158c#code

RewardToken: https://rinkeby.etherscan.io/address/0xa2b242133f020cd0a63f92e452eddb2a58102f55#code

Staking1155: https://rinkeby.etherscan.io/address/0xf8bf0b877fac47eeae6f81893a807941d2691406#code

NFTToken : 0.00858334 RinkebyETH

RewardToken : 0.00428706 RinkebyETH

Staking1155 : 0.00587294 RinkebyETH

NFT STAKING INTRO:

NFT staking refers to locking up non-fungible tokens on a platform or protocol in exchange for staking rewards and other benefits. We can do Staking with ERC-721 and ERC-1155.

TOKENS:

ERC-1155 Token: Actually this contract is our NFTCollection contract. This is NFTToken in which User will be allowed to mint a single NFT in the “mint” function or mint the multiple NFTs inside “mintBatch” function.

ERC-20 Token: This is RewardToken in which User will Receive Reward in RewardToken. ERC-1155 NFT Staking Token: This is a StakingToken in which User will Stake and unstake an NFT, and will claim Reward which will transfer in RewardToken.

Features for users: Mint your ERC1155 NFT or NFT/s Deposit/stake your NFT or NFT’s Withdraw/Unstake your ERC1155 NFT/s. Reward calculating Hour wise. Reward will transfer to RewardToken.

Flow Of All Functions: Step 01: First Deploy Your NFTToken and RewardToken then Deploy your Staking Token by passing the NFTToken and RewardToken Contract Address

Step 02: Inside NFTToken, in which User will allow to mint a single NFT in “mint” function or mint the multiple NFTs inside “mintBatch” function.

Step 03: Inside NFTToken, Pass Staking Contract Address in “setApprovalForAll” function and approve it to True.

Step 04: Inside StakingToken, Stake a single NFT or Batch NFT’s by passing tokenId and amount in “stakeNFTs” function.

Step 05: Inside the StakingToken, Unstake a single NFT or Batch NFT in “UnstakeNFTs” function.

Step 06: Now users can claim the reward. To claim the rewards, the user will need to approve the StakingToken Contract inside the RewardToken “Approve” function from the owner address.

Read & Write Functions:

Mint: User will give the TokenId, amount of copies in the “mint” function to mint it. Users can mint a single NFT or multiple NFT’s. The tokenId starting from one so user can mint many times, the tokenId will increase accordingly. balanceOf: User can check its balance by passing its address and tokenId, balanceOf function will return an amount of copies.

setApprovalForAll: User will not be able to do the staking until and unless User passes the staking Contract Address in it and will set it to true.

stakeNFTs: User can stake the specific tokenId’s and amount which he wants to stake.

UnstakeNFTs: User can unstake the specific tokenId’s and amount which he wants to Unstake.

availableRewards: It will calculate the total rewards of specific address who have done staking. It will continuously change with respect to time.

Stakers: It’s a mapping of Struct in which user will be able to see the amountstaked, timeofLastupdate and unclaimedRewards. The unclaimedRewards will set to zero at initial, when user will unstake then it will show and amounstaked counter will decrement.

claimRewards: User will claim Rewards after unstaking its tokenId. To claim the Reward user will need to approve the StakingContract address in RewardToken approve function from owner The reward will be given in RewardToken (ERC20).

Deployment And Reusability:

Step #01: Select your compiler version, in my case it is v0.8.6 in all the three tokens, After that it will compile successfully. Step #02:

NFTToken:

    After compilation, deploy the smart contract by writing Token Name:”NFTToken” & Token symbol: "NTK" which is already set in the constructor.

RewardToken: This token will ask the deployer to add _NAME and _SYMBOL according to it’s need and requirements. In my case I set it “RewardToken” & “RT”

NFTStakingToken:

    This token will ask the deployer to add your “_NFTToken” address and “_RewardToken” address.

_NFTToken = “0x32268a332F68A46DA687Cb32aef8E87ee51041F4” _RewardToken = “0xa9D39a860Dfd28648b9cE6bbd1AcAD99fB546a6e”
