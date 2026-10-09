// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ALFEToken is ERC20 {
    constructor() ERC20("ALFE Token", "ALFE") {
        _mint(msg.sender, 10000000 * 10 ** decimals());
    }
}

// Recovered from the original project source file in October 2026.
// The source has not yet been bytecode-verified against the deployed contract.
