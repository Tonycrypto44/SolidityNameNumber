 //SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //this is not the latest version but is considered to be more stable,^ any version or above

contract   SimpleStorage {           // a class

// boolean( t/f) ,unit (pos/neg number), int (any number), address, bytes

uint256 public  favoriteNumber; //8 bits is a byte // gets intialized to zero


mapping(string => uint256) public nameToFavoriteNumber;

// struct is a way to have a user defined data type
//people public person = people({favoriteNumber: 2, name: "Tony"});
// unit256[] public FavoriteNumbersList;

struct people{ 
    uint256 favoriteNumber;
    string name;
}
people[] public people2; // if you add a number in the bracket you can limit the size of the array
// functions or methods execute a subset of code when called
function  store(uint256 _favoriteNumber) public virtual { //need virtual for a function to be overideable
    favoriteNumber = _favoriteNumber ;
    //uint256 testVar =5;
}
//view, pure  view means we are just going to read state from contract, you cant update the blockchain at all
//no gas spent
function retrieve() public view returns(uint256) { // returns means that when we call retrieve the fucntion will give us a number {
    return favoriteNumber;
}
function add() public pure returns(uint256){
 return(9+1);
}
//calldata,memory,storage; 
//storage variables exsist even outside the function executing. unit256 data type fucntions in global scope for ex.
//memory are temperary variabloes that can be modified
//calldata are temporary variables that cant be modified

//storage are perminant variables that can be modified
function addPerson(string memory _name, uint256 _favoriteNumber) public  {  //ask for a name and number
    people2.push(people( _favoriteNumber,_name)); //push is the equivalent of adding, this is how we push people2 into the people2 array
    nameToFavoriteNumber[_name] =_favoriteNumber;
}

}