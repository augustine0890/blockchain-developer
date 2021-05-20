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
