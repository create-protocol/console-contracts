//SPDX-License-Identifier: MIT License
pragma solidity ^0.8.0;

import "./ERC1155Creator.sol";

contract TestA is ERC1155Creator {
    constructor() ERC1155Creator() {}
}
