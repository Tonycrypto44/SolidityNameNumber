 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; 

//this storagefactory contract allows us to create multiple simplestorage contratcs, 
//it stays it to the simkplestorage array, which we can then call diffrent functions on
//we can store and read values from our storage factory contract for any of the storage contracts we created

import "./Simplestorage.sol"; //paste the link of the other contract to this file here

contract StorageFactory{


     SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {

        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
     
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //Adress
        //ABI- Aplication Binary Interface, tells the code how it can interact with the contract
         simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);

    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
      return simpleStorageArray[_simpleStorageIndex].retrieve();
  
    }
}