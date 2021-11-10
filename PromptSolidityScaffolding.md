Refer to initFlowExercise.sol for the Functions in a Sol File

For reference this file added to respond to prompt on Chapter 3: Project's Solidity Scaffolding


//0. Fallback 
    // Fallback function - Called if other functions don't match call or
    // sent ether without data
    // Typically, called when invalid data is sent
    // Added so ether sent to this contract is reverted if the contract fails
    // otherwise, the sender's money is transferred to contract
    
	function fallback() external payable {
        revert();
    }
//1. Get balance of the user wallet
    /// @notice Get balance
    /// @return The balance of the user
    // DONE
    function getBalance() public view returns (uint) {
      return balances[msg.sender];
      // 1. A SPECIAL KEYWORD prevents function from editing state variables;
      //    allows function to run locally/off blockchain
      // 2. Get the balance of the sender of this transaction
    }

// 2. User Must be enrolled to use app
    /// @notice Enroll a customer with the App
    /// @return The users enrolled status
    // Emit the appropriate event
    // DONE
    function enroll() public returns (bool){
      enrolled[msg.sender] = true;
      emit LogEnrolled(msg.sender);
      // 1. enroll of the sender of this transaction
    }

//3. User will receive an initial free snaphot of their wallet

function firstTimeIsFree

	//Read user wallet balance (see above for example)
	//Return user wallet balance 
	//update counter timesRun +1
//Done


//4. User will be prompted to purchase lifetime subscription
    //Once user deposits small amount of Eth to their balance, add wallet to whitelist
	//From SimpleBank Exercise


	/// @notice Deposit ether into bank
    /// @return The balance of the user after the deposit is made

    function deposit() public payable returns (uint) {
      require (enrolled[msg.sender] == true);
      balances[msg.sender] = balances[msg.sender] + msg.value;
      emit LogDepositMade(msg.sender, msg.value);
      return balances[msg.sender];
	   //Step 6. - see below : add wallet address to whitelist
	   		//Call function or event to store wallet address from msg.sender
			   //this address value would remain whitelisted forever, or until some other event in the future
		
		//STANDARD EXER - DONE IN CODE ABOVE
      // 1. Add the appropriate keyword so that this function can receive ether
      // 2. Users should be enrolled before they can make deposits
      // 3. Add the amount to the user's balance. Hint: the amount can be
      //    accessed from of the global variable `msg`
      // 4. Emit the appropriate event associated with this function
      // 5. return the balance of sndr of this transaction

		//ADDED
	  // 6. FUNTION addWallet 
	  		//add wallet address to whitelist for continued access (lifetime)
	  		///Call function or event to store wallet address from msg.sender
			   //this address value would remain whitelisted forever, or until some other event in the future (SEE BELOW, Function n+1)
    }

Function newSnapshot()
	//This function would be called after address added to whitelist
	//onClick from  user, or app refresh - call from the end of Function 
	//Need to add to this function and the wallet call above the specific types of tokens to query (based on contract addresses or ERC-721)
	//Basically want to return all of certain types of data from the msg.sender wallet 

	/// @notice Get balance
    /// @return The balance of the user
    
    function getBalance() public view returns (uint) {
      return balances[msg.sender];


//Function withdrawFunds(unit withdrawAmount) 
 //This step would allow a user to withdraw their funds (minus a transaction fee as a percent, for example)
    /// @notice Withdraw ether from bank
    /// @dev This does not return any excess ether sent to it
    /// @param withdrawAmount amount you want to withdraw
	/// @param feePercent amount that will be kept by contract owner as a fee on withdraw //added this one
    /// @return The balance remaining for the user
    function withdraw(uint withdrawAmount) public returns (uint) {

      require (balances[msg.sender] >= withdrawAmount);
      msg.sender.transfer(withdrawAmount--(withdrawAmount**feePercent));  //changed to keep a portion of the withdraw amount
      balances[msg.sender] = balances[msg.sender] - withdrawAmount;
      emit LogWithdrawal(msg.sender, withdrawAmount, balances[msg.sender]);
      return balances[msg.sender];


//Nov 9 updates
*/
  make function giveTokens (unit TknXy) early in registration of msg.sender address
    emit 10 TknXy to msg.sender
    //these 10 would be the governance / voting token that could be used to 'vote' on the contract polls

    Function monthlyTokens (uint TknXy)
      emit 7 TknXy // monthly distro of tokens to all NFT holders

    Function registerVote() public State

      //Register 
  /*

//Examples from Bootcamp:

/*
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
    */