// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    SimpleStorage[] public SimpleStorageList;

    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage1 = new SimpleStorage();
        SimpleStorageList.push(simpleStorage1);
        vm.stopBroadcast();
        return simpleStorage1;
    }
}
