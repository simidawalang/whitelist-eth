// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.10;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;
    uint8 public numAddressesWhitelisted;
    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(!whitelistedAddresses[msg.sender], "You have already been whitelisted.");
        require(numAddressesWhitelisted < maxWhitelistedAddresses);

        whitelistedAddresses[msg.sender] = true;

        numAddressesWhitelisted++;
    }
}