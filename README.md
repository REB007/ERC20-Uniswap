
## Create a truffle project and configure it on Infura

```console
$ truffle init
```

https://infura.io/dashboard/ethereum -> Create New Project

## Import Uniswap and Open Zeppelin libraries

```console
$ yarn add @uniswap/lib
$ npm install @openzeppelin/contracts
```

```solidity
import '@uniswap/lib/contracts/libraries/Babylonian.sol';
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
```

## Claim tokens from token 0xc7FfF638Ea11817CA05533F4Ec497632cfE07eC5

Txn Hash : `0x302021a4fd29210e0b95523b15b2886c7d7120bc36c1bc0f040502eddd7637bc`

## Buy token 0xc7FfF638Ea11817CA05533F4Ec497632cfE07eC5 on Uniswap 

Txn Hash : `0x36e7483e5900dabf8b1f346ce9d41849bf4da93d4c960357f683484255c509d4`

## Provide liquidity to token 0xc7FfF638Ea11817CA05533F4Ec497632cfE07eC5

Txn Hash : `0x9e28659822a4ced9ef5b57f9d8c34638f033f90d5f85b7cfe8fd6daed47cba7a`

## Deploy an ERC20 Token (0xYYYY)

./contracts/ERC20Token.sol
```solidity
pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    constructor(uint256 initialSupply) public ERC20("0xYYYY", "0xY") {
        _mint(msg.sender, initialSupply);
    }
}
```

./migrations/4_deploy_contracts.js
```javascript
const ERC20 = artifacts.require("ERC20Token");

const initialSupply = 1000000;

module.exports = function(deployer) {
    deployer.deploy(ERC20, initialSupply, {from: accounts[0]})
};
```
```console
$ truffle migrate --network rinkeby
```

## Create a liquidity pool for your token 0xYYYY

Not enough funds rn on Rinkeby for the rest of TD

