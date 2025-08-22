// script/DeployRouter.sol
// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.5.0;

import "forge-std/Script.sol";
import "../src/UniswapV2Factory.sol";

contract DeployFactory is Script {
    function run() external {
        address feeToSetter = 0x59F95EEA882655010f5cd29d5EC616597f5C7DC4;
        
        vm.startBroadcast();
        
        UniswapV2Factory factory = new UniswapV2Factory(feeToSetter);
        
        vm.stopBroadcast();
        
        console.log("UniswapV2Factory deployed at:", address(factory));
    }
}