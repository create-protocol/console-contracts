// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @author: 0xsmrpn.eth

import "solmate/utils/ReentrancyGuard.sol";
import "openzeppelin-contracts/contracts/utils/Strings.sol";
import "openzeppelin-contracts/contracts/utils/introspection/ERC165.sol";
import "openzeppelin-contracts/contracts/utils/introspection/ERC165Checker.sol";
import "openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";

import "./ICreatorCore.sol";
import "../extensions/ICreatorExtensionTokenURI.sol";

abstract contract CreatorCore is ReentrancyGuard, ICreatorCore, ERC165 {
    using Strings for uint256;
    using EnumerableSet for EnumerableSet.AddressSet;
}
