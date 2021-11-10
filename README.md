# blockchain-developer-bootcamp-final-project
//REFER TO 'PromptSolidityScaffolding.md for the updated info sent for Chapter 3; the Functions mapped out are current

 Repo for bootcamp final project

Initial idea for final project:
NFT ReSelling Profit and Loss Tracker

Purpose: Using data availible on the blockchain and in users' wallets, the interface will dynamically update cost + fees of purchases and project profits or losses at current and future market value

Problems solved: 
    1. Currently the process is very manual to track NFT purchase costs + gas fees paid and estimate the resell price to break even or achieve a target profit, factoring in current gas and royalties
    2. The interface could provide projected profits based on current gas prices and similar sales or floor price of the NFT.
    3. Ideally, the dApp could also 'alert' resellers when certain market conditions are ideal (e.g. floor price over x, gas price under y, etc.)

Example Workflow:
    1. Users would create an account on the app, 
    2. Link account with wallet address (e.g MetaMask)
    3. dApp would use API to pull from the blockchain (Etherscan or similar)  the sale price + fees of any NFT added to the wallet, based on the NFT contract
    4. dApp would recalculate the P&L on the user's portfolio based on the API's returned data
    5. on some fixed interval, or when prompted by the user, the dApp's API would update NFT prices, gas, etc
    6. At the same time, the dApp would need to re-scan the MetaMask wallet to update for any additions or removals to the user's wallet, so their portfolio in the dApp would reflect changes
    7. Depending on how often the API would pull new data from the blockchain, it might be possible to re-calculate the P&L (basically re-do steps 3 and 4), but then create an alert to the user when a certain user-provided threshold is met
       1. floor price over X
       2. Gas price under y
