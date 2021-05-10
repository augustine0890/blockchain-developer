# Solidity Smart Contracts
- Build DApps In Ethereum Blockchain
## Solidity

```js
function functionName(<parameter types>) {public|private|etc.} [pure|view|payable] [returns (<return types>)] {
    <function code>
}
```
### Modifiers
- Modifiers can be used to easily change the behaviour of functions.
- They can automatically check a condition prior to executing the function.
- Modifiers are inheritable properties of contracts and may be overridden by derived contracts.

### Interfaces
- Cannot inherit other contracts or interfaces.
- Cannot have functions with implementation.
- Cannot define constructor.
- Cannot define variables.
- Cannot define structs.
- Cannot define enums.

## Install NVM
- Run the NVM installer
    - `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash`
- Tried `~/.bashrc, ~/.bash_profile, ~/.zshrc, and ~/.profile`.
    ```
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    ```

## Truffle - Ganache
- Add `USER` to the owner of `/local/lib`
    - `sudo chown -R $USER /usr/local/lib`
    - `sudo chown -R $USER /usr/local/lib/node_modules`
- Install [`Truffle`](https://www.trufflesuite.com/docs/truffle/overview)
    - `npm install truffle -g`
- Create a bare Truffle project with no smart contracts included
    - `truffle init`
    - [Quickstart](https://www.trufflesuite.com/docs/truffle/quickstart)
- Compile contract source file
    - `truffle compile`
    - Only compile contracts that have changed since the last compile
- Execute build pipeline (if configuration present)
    - `truffle build`
- Run migrations to deploy contracts
    - `truffle migrate`
        - `--reset`: Run all migrations from the beginning, instead of running from the last completed migration.
- Truffle [Commands](https://www.trufflesuite.com/docs/truffle/reference/truffle-commands#migrate)

### Truffle Boxes
- The boilerplates that contain helpful modules, Solidity contracts & libraries, front-end views and more.
- Example: [React](https://www.trufflesuite.com/boxes/react) Box.

### Project: Pet-Shop
- `truffle unbox pet-shop`
- Create `Adoption` contract
    - `truffle create contract Adoption`
- `truffle create migration DeployContract`
- `truffle deploy`
- Create the `test`
    - `truffle create test Adoption`
Reference [here](https://www.trufflesuite.com/tutorial)

## ERC Token Standards
- ERCs (Ethereum Request for Comments) are technical documents used by smart contract developers at Ethereum.
- They define a set of rules required to implement tokens for the Ethereum ecosystem.
## ERC-20 Tokens
- Your contract needs to include six manadatory functions:
    - `totalSupply`, `balanceOf`, `transfer`, `transferFrom`, `approve`, and `allowance`.
- To define an ERC-20 token you need:
    - The address of the contract
    - The number of tokens available
- Optional functions: `name`, `symbol`, `decimal` (how much you can divide to token. You can chose from 0 to 18 decimal values)
- Two types of events:
    - `Transfer()`: triggered when tokens are transferred
    - `Approve()`: used for every successful call of the `approve()`
## ERC-721 Tokens
- To standardize non-fungible or unique tokens.
- Two non-fungible tokens are not interchangeable. The data or information stored within NFTs are make them differently.
- Each NFT is identified through an `uint256` ID. They may be transferred through two different functions:
    - A safe transfer function `safeTransferFrom()` which verifies that the `msg.sender`. The user that triggered the function, is the owner of the token or an authorized user allowed to transfer the token.
    - A non-secure transfer `transferFrom()`, where there is no preliminary authorization veification. The token developer is responsible for implementing a piece of code in this function that verifies that the responsible for calling the function is authorized. The user calling it must also verify that the receiver is entitle for receiving the token
- ERC-721 tokens must implement the proposed ERC165 interface. This standard allows the detection of the interfaces implemented by a contract.