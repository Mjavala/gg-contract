// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

contract Rewards is Initializable, OwnableUpgradeable, PausableUpgradeable {
    //IERC20Upgradeable public token;
    /**
        Contract deployment and projected end time used to calculate available daily rewards
     */
    uint public startTime;
    uint public endTime;

    // need to initialize with GG token address
    function initialize() public initializer {
        __Ownable_init();
    }
    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
    event RewardsClaimed(address claimee, uint amount, string username);
    event DailyRewardsCalculated(uint amount);
    /**
        Params:
            -   Merkle root
            -   Merkle proof
        Functionality:
            -   Validates merkle proof
            -   Rewards tokens to user
            -   Emits RewardsClaimed Event
                -   Flags off chain persistance
     */
    function claimTokens() public {

    }
    /**
        Params:
            -   GG token amount in contract
            -   End time
     */
    function calculateDailyRewards(uint amount, uint end) external returns (uint){

    }
}