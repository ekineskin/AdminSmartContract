// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdminContract {

    struct Account{
        string name;
    }

    Account[] public admins;

    function getAllAdmins() public view returns(Account[] memory){
        require(admins.length > 0, "No admins are defined.");
        Account[] memory _admins = new Account[](admins.length);
        for (uint256 i = 0; i < admins.length; i++) {
            _admins[i]= admins[i];
        }
        return _admins;
    }
}



