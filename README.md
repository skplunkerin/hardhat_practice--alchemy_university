# Alchemy University Hardhat Practice

This project practices:

1. Setting up a bare bones Hardhat Javascript project
2. Creating and deploying a Smart Contract on the Goerli testnet

## Alchemy University Hardhat Flow

Want to get up and running with a Hardhat project? 🏇 Just follow this flow:

_(This flow has been modified by me.)_

1. In a terminal setup your new project folder:

   ```sh
   mkdir au-hardhat-practice && cd au-hardhat-practice
   npm init -y
   git init
   ```

2. Install your packages:

   ```sh
   npm i dotenv ethers
   npm i --save-dev hardhat // chai mocha
   ```

3. Initialize your Hardhat project structure:

   - `npx hardhat` _(which will initialize a brand new Hardhat project)_

     **We recommend the following flow:**

     1. **Select:** `Create a JavaScript project`
     2. Choose the current root
     3. `YES` to the `.gitignore`

        _(**NOTE:** this will add many things, such as `.env`.)_

     4. `YES` to install the sample project's dependencies
        - This installs the devDependency `@nomicfoundation/hardhat-toolbox`

4. Setup your `.env` files:

   1. `touch .env-sample`

      - Add the following starter ENV variables:

        ```conf
        TESTNET_ALCHEMY_RPC_URL=alchemy_rpc_url
        TESTNET_WALLET_PRIVATE_KEY=your_test_wallet_private_key
        ```

   2. Now create the `.env` version:

      ```sh
      cp .env-sample .env
      // add your values
      ```

5. Update `hardhat.config.js`:

   ```js
   require("dotenv").config();
   require("@nomicfoundation/hardhat-toolbox");

   /** @type import('hardhat/config').HardhatUserConfig */
   module.exports = {
     solidity: "0.8.17",
     networks: {
       goerli: {
         url: process.env.TESTNET_ALCHEMY_RPC_URL,
         accounts: [process.env.TESTNET_WALLET_PRIVATE_KEY],
       },
     },
   };
   ```

6. Update your `package.json` scripts to include:

   ```json
   "scripts": {
     "compile": "npx hardhat compile",
     "deploy_local": "npx hardhat run scripts/deploy.js",
     "deploy_goerli": "npx hardhat run scripts/deploy.js --network goerli",
     "test": "npx hardhat test"
   },
   ```

7. You're now ready to go!
   - Set up your `scripts/`, `tests/`, and `contracts/`...

## Added the following run scripts

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
