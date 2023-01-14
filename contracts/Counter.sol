/**
 * Copied for deployment testing purposes from existing Counter.sol contract:
 * https://goerli.etherscan.io/address/0x5F91eCd82b662D645b15Fd7D2e20E5e5701CCB7A
 */

// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Counter {
    uint256 public count;

    // Function to get the current count
    function get() public view returns (uint256) {
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
