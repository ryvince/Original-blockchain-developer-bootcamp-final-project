pragma solidity ^0.8.9;

contract SimpleStorage {
    uint public storedData;

    address public caller;

    function set(uint x) public {
        caller = msg.sender;
        storedData = x;
    }
}