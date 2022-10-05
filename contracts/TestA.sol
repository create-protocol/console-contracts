//SPDX-License-Identifier: MIT License
pragma solidity ^0.8.0;

import "./ERC721Creator.sol";

contract TestA is ERC721Creator {
    constructor() ERC721Creator("Create", "CR8") {}
}
