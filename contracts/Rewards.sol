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

    struct Streamer {
        address addy;
        string username;
        uint rewards_gen;
    }

    struct tempStreamer {
        address addy;
        string username;
        uint rewards_gen;
        uint startTime;
        uint endTime;
    }

    struct User {
        address addy;
        string username;
        uint rewards_claimed;
    }

    // need to initialize with GG token address
    function initializeinitialize() public initializer {

    }
    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }
    event RewardsClaimed(address claimee, uint amount, string username);
    event DailyRewardsCalculated(uint amount);
    event StreamerAdded(address streamer, string username);
    event StreamerModified(address streamer, string username, string modType);
    event TempStreamerAdded(address streamer, string username);
    event TempStreamerModified(address streamer, string username, string modType);
    event UserAdded(address streamer, string username);
    event UserModified(address streamer, string username, string modType);
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
    /**
        Streamer functions
     */
    function addStreamer (address streamer, string calldata username) external {

    }

    function setStreamerAddress (address newAddress) external {

    }

    function setStreamerUsername (string calldata newUsername) external {

    }

    /**
        TempStreamer functions
     */
    function addTempStreamer (address streamer, string calldata username, uint start, uint end) external {

    }

    function setTempStreamerAddress (address newAddress) external {

    }

    function setTempStreamerUsername (string calldata newUsername) external {

    }

    /**
        Temporary streamers are not tracked indefinitely. On expiration, they are removed from the rewards service.
     */
    function removeTempStreamer (address tStreamer, string calldata user) internal {

    }

    function checkStreamerExpiry(uint start, uint end) internal {

    }
    /**
        User functions
     */
    function addUser (address user, string calldata username) external {

    }

    function setUserAddress (address newAddress) external {

    }

    function setUserUsername (string calldata newUsername) external {

    }
}