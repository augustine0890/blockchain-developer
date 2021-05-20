# Blockchain (BC)
- BC provides 2 features: distributed and trustless.
- Public blockchain systems are hard to scale -> not a silver bullet. BC cn be scaled by off-chain solutions.
- Each block is made of two parts: header and data.
    - Block header (metadata): block number, timestamp, block hash, and nonce.
    - Block data (payload): block <-- hundred of such pieces --> each piece is transaction  (sender address, recipient address, amount of transaction, and fee)

__Double-spending__
- A digital cash system where the same funds are spent to two recipients at the same time.

__Nonce__
- A number or value that can only be used once.
- The nonce is just a random number that miners use to iterate the output of their hash calculation.
- Miners employ a trial and error approach, in which every calculation takes a new nonce value.

__Proof-of-Work (PoW)__
- Adding new block is usually callaed __mining__. The first miner who finds the correct hash becomes the creator of a new block.
- Hash rate: the combined computing power of all miners.
- The difficulty of mining based on the hash rate. The difficulty tells users how many hashes miners should find to get a correct one. The higher the difficulty, the more hashes is required.
- In bitcoin, the difficulty readjusts every 2016 blocks takes about 2 weeks.
- Ethereum transactions are processed into blocks. Each block has a:
    - block difficulty – for example: 3,324,092,183,262,715
    - mixHash – for example: `0x44bca881b07a6a09f83b130798072441705d9a665c5ac8bdf2f39a3cdf3bee29`
    - nonce – for example: `0xd3ee432b4fb3d26b`
- The miners to go through an intense race of trial and error to find the nonce for a block.
- The miner will repeatedly put a dataset, through a mathematical function. This is to generate a mixHash that is below a target nonce, as dictated by the block difficulty.

__Proof-of-Stake__
- Block producers are selected based on how many coins they have. This selection can be made randomly or by choosing those who get the most votes, based on a combination of factors that could include the staking age, randomization, and node's wealth.
- It requires producers to stake thier coins (crypto) to become a validator in the network.
- The validators don't need to use significant amounts of computational power because they're selected at random and aren't competing.
- They don't need to mine blocks --> just need to create blocks when chosen and validate proposed blocks when they're not.
- Ethereum 2.0: the PoS consensus mechanism will require validators to stake 32 ETH to run a validator node on the network.


## Scalability
- The main goal of scalability is to increase transaction speed and trasaction throughput (hig transactoins per second)

__mainnet__
- "Main network", the main public Ethereum blockchain. Real ETH, real value, and real consequences (layer 1).

__testnet__
- "Test network", a network used to simulate the behavior of the main Ethereum network.

### On-chain Scaling
- Requires changes to the Ethereum protocol (layer 1)
- Sharding: the process of splitting a database horizontally to spread the load. Sharding will reduce network congestion and increase transactions per second by creating new chains, known as "shards".

### Off-chain Scaling
- Implemented separately from layer 1 mainet.
- Some use-cases, like blockchain games, make no sense with current transaction times.
- It can be unnecessarily expensive to use blockchain applications.
- Any updates to scalability should not be at the expense of decentralization or security - layer 2 builds on top of Ethereum.
- Some solutions (layer 2) derive their security directly from layer 1 Ethereum consensus. Other solutions involve the creation of new chains in various forms that derive their security separately from mainet (sidechains or plasma chains).
- Sidechains:
    - An independent EVM-compatible blockchain which runs in parallel to mainet.
    - These are compatible with Ethereum via two-way bridges, and run under their own chosen rules of consensus, and block parameters.
- Plasma:
    - A chain is a separate blockchain that is anchored to the main Ethereum chain, and uses fraud proofs to arbitrate disputes.
- Rollups
    - The transaction execution outside the main Ethereum chain (layer 1), but post transaction data on layer 1.
    - Rollups is to be secured by layer 1. Inheriting the security properties of layer 1, while performing execution outside of layer 1.
    - Data or proof of transactions is on layer 1
    - A rollup smart contract in layer 1 that can enforce correct transaction execution on layer 2 by using the transaction data on layer 1.
__Plasma__
- Layer 2 technology built on top of the Ethereum protocol using a combination of smart contracts and cryptopraphic verification.
- Plasma chains have a consensus mechanism that creates blocks. The "root" of each plasma chain block is published to Ethereum.
- Block "root" are basically little pieces of information that users can use to prove things about the contents of those blocks.