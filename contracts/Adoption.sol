pragma solidity ^0.5.0;

contract Adoption {

    address[16] public adopters;


    // adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        adopters[petId] = msg.sender; // The address of the person or smart contract who called this function is denoted by
        return petId;
    }

    // retrieving the adopters
    function getAdopters() public view returns(address[16] memory) { // memory gives the data location for the variable.
        return adopters;
    }
}