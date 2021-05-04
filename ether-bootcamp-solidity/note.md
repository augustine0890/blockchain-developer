# Ethereum Blockchain Developer Bootcamp with Solidity

## Basic Terminologies
### Transactions
- Peer to peer transfer, without a middlemen
    - Possession <-> Ownership
- Tracked is a simple Ledger
    - Ownership != Possession
    - Double Spending Problem
    - Someone can potentially manipulate the ledger
- Ownership can be recorded on a ledger
- Blockchains solve the double-spending problem

### Blockchain (Bitcoin)
- Public Ledger of all bitcoin transactions

### MetaMask-Wallet
```
MetaMask <-> Infura <-> Blockchain Node <-> Blockchain <-> Blockchain Node <-> Backend <-> Browser
                    EtherScan <-> Blockchain Node <-> Blockchain <-> Other Nodes
```
- You need a blockchain node to interact with the Blockchain
- The Blockchain is the single source of truth.

### Ethereum Transaction
- Transaction Signatures ensure authenticity of transactions.
- Private Key -ECDSA-> Public Key --> Ethereum Account: Keccak Hash of the last 20 bytes of the public key.
- Transaction + Private Key --> Signed Transaction
- Signatures are generated from Pravate Keys
- Public Keys and Addresses are generated from Private Keys

### Cryptographic Hashing
- The same inpute always results in the same hash
- It's quick to compute the hash value for any given message
- Infeasible to generate a message from its hash value
- Small change to a message should change the hash value
- Infeasible to find two different messages with the same hash value

## Solidity