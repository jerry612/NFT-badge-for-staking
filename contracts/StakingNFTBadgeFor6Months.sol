// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

contract StakingNFTBadgeFor6Months is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() public ERC721("Staking NFT Badge for 6 months", "SNB-6M") {}

    function mintBadge(address to) public returns (uint256) {
        _tokenIds.increment();

        uint256 newBadgeId = _tokenIds.current();
        _mint(to, newBadgeId);
        //_setTokenURI(newBadgeId, tokenURI);

        return newBadgeId;
    }

    function getCurrentTokenId() public view returns (uint _currentTokenId) {
        return _tokenIds._value;
    }
}
