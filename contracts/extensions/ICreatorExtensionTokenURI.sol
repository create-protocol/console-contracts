// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/// @author: 0xsmrpn.eth

import "openzeppelin-contracts/contracts/utils/introspection/IERC165.sol";

/**
 * @dev For overloadable URIs
 */

interface ICreatorExtensionTokenURI is IERC165 {
    /**
     * Get the URI for a given NFT
     */
    function tokenURI(address creator, uint256 tokenId) external view returns (string memory);
}
