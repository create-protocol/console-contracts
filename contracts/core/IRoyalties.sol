// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;

/**
 * @dev Royalty interface for creator core classes
 */
interface IRoyalties {
    /**
     * @dev Get royalites of a token.  Returns list of receivers and basisPoints
     */
    function getRoyalties(uint256 tokenId) external view returns (address payable[] memory, uint256[] memory);
}
