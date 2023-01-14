# Alchemy University Hardhat Practice

This project practices:

1. Setting up a bare bones Hardhat Javascript project
2. Creating and deploying a Smart Contract on the Goerli testnet

**Added the following run scripts:**

- `npm run deploy_local`

  - deploys the contract locally

- `npm run deploy_goerli`

  - deploys the contract on the Ethereum Goerli testnet using the Alchemy RPC
    and test wallet info set in `.env`

## Example Contract

Using the [`Counter.sol`](https://goerli.etherscan.io/address/0x5F91eCd82b662D645b15Fd7D2e20E5e5701CCB7A)
example contract from previous week 4 projects:

```sol
/**
 *Submitted for verification at Etherscan.io on 2022-12-15
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Counter {
    uint public count;

    // Function to get the current count
    function get() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
```

### Goerli Deployed Contract

My 1st ever Ethereum smart contract deployment:

https://goerli.etherscan.io/address/0x079dC3Bd6B61c335Ac40317fe3dB033703760ceD

## Sample Hardhat Project

> The following was generated from `npx hardhat`

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
