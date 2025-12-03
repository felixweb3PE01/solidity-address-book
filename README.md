#  On-Chain Address Book (Solidity)

A simple **on-chain address book** smart contract built as part of my smart contract development learning journey.  
This contract lets users store a name and a corresponding wallet address on the blockchain.

---

##  Features
- Add new contacts with a **name** and **wallet address**  
- Store contacts using a **struct + array**  
- Quick lookup using a **mapping**  
- Retrieve all saved contacts

---

##  Tech Stack
- **Solidity ^0.8.30**
- Tested on **Remix IDE**
- Deployed on any **EVM-compatible testnet**

---

##  Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract addressBook {
    struct Address {
        string name;
        address wallet;
    }

    Address[] public walletAddress;
    mapping(string => address) public addressSearch;

    function addContact(string memory P_name, address walletAdd) public {
        walletAddress.push(Address(P_name, walletAdd));
        addressSearch[P_name] = walletAdd;
    }

    function retrieveAll() public view returns (Address[] memory) {
        return walletAddress;
    }
}
