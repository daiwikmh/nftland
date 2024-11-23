// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"";
import "@openzeppelin/contracts/utils/structs/DoubleEndedQueue.sol";

contract NFT is ERC720URISTORAGE  {
    uint _tokenId;
    address contractAddress;

    constructor(address marketplaceAddress) ERC720("Momos", "MO") {
        contractAddress = marketplaceAddress;
    }

    function createToken(string memory tokenURI) public returns (uint) {
        _tokenId++;
        uint 256 newItemId = _tokenId
    
        _mint(msg.sender, _tokenId);
        _setTokenURI(newItemId, tokenURI);
        setApprovalForALL(contractAddress, true);
        return newItemId;
    }
}