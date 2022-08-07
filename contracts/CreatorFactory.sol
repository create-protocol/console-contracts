//SPDX-License-Identifier: MIT License
pragma solidity ^0.8.15;

import "./ERC721Creator.sol";

contract CreatorFactory is ERC721Creator {
    ERC721Creator[] public CreatorArray;

    constructor(
        string memory _name,
        string memory _symbol,
        address _owner
    ) ERC721Creator(_name, _symbol, _owner) {}

    // function createNFT(string memory name, string memory symbol, address _sender) public returns (address contractAddress) {

    //     bytes memory bytecode = type(ERC721Creator).creationCode;
    //     bytes32 salt= keccak256(abi.encode(name, symbol, _sender);
    //     assembly {
    //         contractAddress := create2(0, add(bytecode, 32), mload(bytecode), salt)
    //     }
    // }

    function creator(string memory _name, string memory _symbol) public {
        ERC721Creator creator = new ERC721Creator(_name, _symbol, msg.sender);
        CreatorArray.push(creator);
    }
}
