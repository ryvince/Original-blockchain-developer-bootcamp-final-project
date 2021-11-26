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

//modifier onlyVoteOnce() { 
	// checks the vote hasn't voted before 
//	_ 
//}
//
