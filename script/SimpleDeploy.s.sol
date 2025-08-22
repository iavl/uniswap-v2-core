// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity =0.5.16;

import "../src/UniswapV2Factory.sol";

contract SimpleDeploy {
    function deployFactory(address feeToSetter) external returns (address factory) {
        factory = address(new UniswapV2Factory(feeToSetter));
    }
}
