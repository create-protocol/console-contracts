# console contracts

## The Create Console Creator Core Contracts

**A library for extendible creator contracts.**

 * Implementation for ERC721
 * Implementation for ERC1155

The Console Creator Core contracts provide creators with the ability to deploy an ERC721/ERC1155 NFT smart contract with basic minting functionality, on-chain royalties and permissioning.  Additionally, they provide a framework for extending the functionality of the smart contract by installing extension applications.

This enables creators to use the same underlying Manifold Creator Core contract to continue creating new and innovative NFT's and experiences.

## Overview

### Installation

```console
$ git clone https://github.com/create-protocol/console-contracts
```

### Usage

Once installed, you can use the contracts by creating a new file in the `contracts` folder.

```solidity
pragma solidity ^0.8.0;

import "./ERC721Creator.sol";

contract MyContract is ERC721Creator  {
    constructor() ERC721Creator ("MyContract", "MC") {
    }
}
```
And deploy this file on any EVM chain, a sample transaction looks like - https://goerli.etherscan.io/tx/0x5ce0afa84bfcce4530245d901bbdf97edb1a500ad345db4c6f57ec551fefdc5d

The available contracts are:

 * ERC721Creator
 * ERC1155Creator

### Extension Applications

The most powerful aspect of Manifold Creator Core contracts is the ability to extend the functionality of your smart contract by adding new Extension Applications (Apps). Apps have the ability to override the following functionality for any token created by that App:

**ERC721**
 * mint
 * tokenURI
 * transferFrom/safeTransferFrom pre-transfer check
 * burn pre-burn check

**ERC1155**
 * mint
 * uri
 * safeTransferFrom pre-transfer check
 * burn pre-burn check

In order to create an app, you'll need to implmenet one or more interfaces within contracts/extensions, deploy the new app and register it to the main Creator Core contract using the registerExtension function (which is only accesible to the contract owner or admins).
