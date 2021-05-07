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