 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

import "./Simplestorage.sol"; 


contract ExtraStorage is SimpleStorage {
    //+5
    //virtual override
    function store(uint256 _favoriteNumber) public override  { 
        favoriteNumber = _favoriteNumber +5;
    }
}