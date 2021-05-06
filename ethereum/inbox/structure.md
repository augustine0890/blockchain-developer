# Inbox Project Structure Directory

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