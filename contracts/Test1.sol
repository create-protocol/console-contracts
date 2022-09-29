//SPDX-License-Identifier: MIT License
pragma solidity ^0.8.0;

import "./ERC721Creator.sol";

contract Test1 is ERC721Creator {
    constructor() ERC721Creator("Create", "CR8") {}
}
