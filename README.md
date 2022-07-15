
# Fei Protocol Vulnerability Exploit Using Flash Loan

I have executed the PoC as given [here](https://medium.com/immunefi/fei-protocol-flashloan-vulnerability-postmortem-7c5dc001affb). The attack logic is encoded in Allocator.sol and Exploit.sol files. The required imports had to be collected from the repositories of Uniswap-V2, Aave and OpenZepplin.

You will need 
1. Hardhat to fork the mainnet at a certain block number
2. Alchemy API Key to access archived Ethereum node

Note : This is for learning how DeFi attacks can be recreated. PoC code is given in the linked article.
