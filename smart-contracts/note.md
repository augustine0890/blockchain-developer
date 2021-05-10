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