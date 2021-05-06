# Inbox Project Structure Directory
- BEFORE running the tests or using the command "node compile.js": Open the ".env" file and replace the values:

- `RPC_URL`: Get it for the testnet you want to use from your infura.io account.
- `ACCOUNT`: Open Metamask and by clicking on e.g. "Account 1", you will copy the value to the clipboard.
- `PRIVATE_KEY`: Open Metamask, click the 3 dots next to "Account 1" -> Account details -> Export Private Key. You will get your key after typing your password. Paste it in this field in .env but prefix the copied value with "0x", e.g. "0xbe1e21dasd21ds...."

- Contract Source --> Solidity Compiler --> ABI, Contract Bytecode --> Network (Rinkeby)
- Bytecode -deploy-> Contract Instance - Ganache/TestRPC (Local Test Network).
- ABI --> Web3 --> Contract Instance - Ganache/TestRPC (Local Test Network).

## Ganache
- Ganache is used for setting up a personal Ethereum Blockchain for testing your Solidity contracts.
## Web3
- `web3.js` is a collection of libraries that allow you to interact with a local or remote ethereum node using HTTP, IPC or WebSocket.
- `v0.x.x` primtive interface - only callbacks for async code.
- `v1.x.x` support for promises + async/await.
- Ganache --> Provider --> web3 instance <-- Web3.
## Mocha
- Mocha is a testing library for Node.js, created to be a simple, extensible, and fast.
- Mocha Functions:
    - `it`: run test and make an assertion.
    - `describe`: groups together `it` functions.
    - `beforeEach`: execute some general setup code
- Mocha Structure:
    - `Macho Starts --> Deploy a new contract (before Each) --> Manipulate the contract (it) --> Make an assertion about the contract (it)`

## Deployment with Infura
- Ribkeby Network (Infura Node <-> Node -> Node <-> Infura Node) --> Infura API --> Provider --> web3 <-- Web3
