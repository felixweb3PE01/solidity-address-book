// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
contract  addressBook{
    struct Address {
        string name;
        address wallet;
    }

    Address[] public walletAddress;

    mapping ( string=> address) public addressSearch;

    function addContact(string memory P_name , address walletAdd) public{
        walletAddress.push(Address(P_name,walletAdd));
        addressSearch[P_name]= walletAdd;

    }
    function retrieveAll() public view returns(Address[] memory){
        return walletAddress;
    }
    

}