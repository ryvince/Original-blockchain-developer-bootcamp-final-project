/*
 * See the latest Solidity updates at
 * https://solidity.readthedocs.io/en/latest/080-breaking-changes.html
 */
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9;



//1. Users will have to register themselves somehow on the contract

function registerVoter(address _voter) {

	// registers voter

}

//2. They have to identify which campaign their voting on

function registerVote(uint campaignID) {

	// registers the vote of the voter

}
	
//3. They'll have to submit a vote for that campaign but 4. they can't vote twice for a single campaign.

modifier onlyVoteOnce() { 
	// checks the vote hasn't voted before 
	_ 
}

/*
Again, you don't have to write the internal logic quite yet (although you can). The point is to have to start to think about the user's behaviors in terms of discrete actions and what those actions require. You can see in the example above how we already start to have a sense of some global variables the contract will require to execute these functions. That's the point of this exercise, to start understanding the general contours of how a user will interact with your smart contract code.



2. Once you have a four to five functions sketched out, commit and push the change to your existing final project Github repo. Once you've pushed to the repo, submit your link again in the input below.

Remember, The link you submit below should look like this:

https://github.com/YOUR_GITHUB_USERNAME_HERE/blockchain-developer-bootcamp-final-project
*\
