# Ethereum and Solidity: Build Web Apps with Ethereum

## Blockchain Developer Roadmap
- Basic Ethereum:
    - Cryptographic hashes, Ether address, wallets, transactions, smart contracts, gas.
    - Ethereum accounts: EOA vs contracts.
    - Ethereum networks: local, public testnets and mainet.
- Dev Tools: remix, nodejs & npm, web3.js, ganache, truffle, matamask, infura, etherscan.
- Smart Contracts and Solidity.
- Projects:
    - Multisig Wallet
    - Decentralized Exchange for ERC20 tokens
    - Crypto-kittes game (ERC721)
    - Reference: `Dapp 30`

## Ethereum
- Ethereum networks are used to transfer money and store data
- There are many different Ethereum networks
- Networks are formed by one or more nodes.
- Each node is a machine running an ethereum client
- Anyone can run a node
- Each node can contain a full copy of the blockchain
- The blockchain is a database that stores a record of every transaction that has ever taken place

### Metamask
- (Account + Public Key + Private Key) <-- MetaMask Account
- One account for all ethereum networks (main, ropsten, kovan, rinkeby, goerli)

### Transaction
- Transactions are crytographically signed instructions from accounts. An account will initiate a transaction to update the state of the Ethereum network.
- `nonce`: how many times the sender has sent a transaction
- `to`: address of account this money is going to
- `gasPrice`: amount of ether the sender is willing to pay per unit gas to get this transaction processed
- `startGas/gasLimit`: units of gas that this transaction can consume
- `v, r, s`: crytographic pieces of data that can be used to generate the senders account address. Generated from the sender's private key.

### Smart Contract
- A smart contract is simply a program that runs on the Ethereum blockchain. It's a collection of code (its functions) and data (its state) that resides at a specific address on the Ethereum blockchain.
- An account controlled by code
- `balance`: amount of ether this account owns
- `storage`: data storage for this contract
- `code`: raw machine code for this contract

### Solidity Programming
- Contract Deinition (Solidity) --> Solidity Compiler --> Byte code ready for deployment, Application Binary Interface (ABI).
- JS Code <--> ABI --> Bytecode
- `'Calling' a Function`: cannot modify the contract's data, can return data, runs instantly, free to do.
- `Sending a Transaction to a Function`: can modify a contract's data, takes time to execute, returns the transaction hash, costs money.
- `gasPrice`: amount of Wei the sender is willing to pay per unit gas to get this transaction processed.
- Each Ethereum transaction requires computational resources to execute, each transaction requires a fee. Gas refers to the fee required to successfully conduct a transaction on Ethereum.

## Smart Contracts
### Truffle
- Development environment that integrates complilation, testing, and deployment of Smart Contracts.
- Custom Node Project: Contract Creation + Local Testing + Deployment -deploying-> Network (Rinbeky)

## web3.js
- An open source JS library built by the Ethereum Foundation.
- Included functions to communicate with an Ethereum node via the JSON - Remote Procedure Call (JSON-RPC) protocol.
### web3-eth
- The functions are able to interact with smart contracts, externally-owned accounts, nodes, mined blocks, and transactions.
- _web3.eth.getBalance_ allows you to get the ETH balance of an address at a given block
- _web3.eth.signTransaction_ allows you to sign a transaction
- _web3.eth.sendSignedTransaction_ allows you to send a signed transaction to the Ethereum blockchain.
### web3-utils
- The utility functions that convert numbers, verify if a value meets a certain condition, and search datasets.
- _web3.utils.toWei_ converts Ether to Wei
- _web3.utils.hexToNumberString_ converts a hexadecimal value to a string _web3.utils.isAddress_ checks if a given string is a valid Ethereum address.

## ethers.js
- JS library is to interact with the Ethereum blockchain.
- Four modules: `Ethers.provider`, `Ethers.contract`, `Ethers.utils`, `Ethers.wallets`.
### Ethers.provider
- _ethers.providers.InfuraProvider_ allows you to connect to the Infura hosted network of Ethereum nodes.
- _ethers.provider.getBalance_ will get you the ETH balance of an address or a block in the blockchain.
- _ethers.provider.resolve_ will resolve an Ethereum Name Service (ENS) name passed in to an Ethereum address.
### Ethers.contract
- Allow to deploy and interact with smart contracts.
- Listen for events emitted from a smart contract, call functions provided by a smart contract, get information about smart contracts, and deploy smart contracts.
- _ethers.ContractFactory.fromSolidity_ creates a factory for deployment of a smart contract from compiler output of the Solidity compiler or from the Truffle generated JSON file.
- _ethers.Contract_ allows to interact with a smart contract once it has been deployed.
### Ethers.wallets
- Connect to an existing wallet (an Ethereum address), create a new wallet, and sign transactions.
- _ethers.wallet.createRandom_ will create a random new account.
- _ethers.wallet.sign_ will sign a transaction and returns the signed transaction as a hex string
- _ethers.wallet.getBalance_ will give us the ETH balance of a wallet address.