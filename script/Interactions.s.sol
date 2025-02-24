// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {DevOpsTools} from "foundry-devops/src/DevOpsTools.sol";
import {Script, console} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundFundMe is Script {
    uint256 constant SEND_VALUE = 0.1 ether;

    function fundFundMe(address _fundMeAddress) public {
        vm.startBroadcast();
        FundMe(payable(_fundMeAddress)).fund{value: SEND_VALUE}();
        vm.stopBroadcast();
        console.log("Funded FundMe with %s", SEND_VALUE);
    }

    function run() external {
        address recentDeployedAddress = DevOpsTools.get_most_recent_deployment("FundMe", block.chainid);
        vm.startBroadcast();
        fundFundMe(recentDeployedAddress);
        vm.stopBroadcast();
    }
}

contract WithdrawFundMe is Script {
    function withdrawFundMe(address _fundMeAddress) public {
        vm.startBroadcast();
        FundMe(payable(_fundMeAddress)).withdraw();
        vm.stopBroadcast();
        console.log("Funds have Withdrawen!!");
    }

    function run() external {
        address recentDeployedAddress = DevOpsTools.get_most_recent_deployment("FundMe", block.chainid);

        withdrawFundMe(recentDeployedAddress);
    }
}
