// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.19;

contract SimpleStorage {

    uint256 myFavouriteNumber; // byDefault access modifier is interal

    People[] public listOfPeople;

    struct People{
        string name;
        uint256 favouriteNumber;
    } 
    
    mapping(string => uint256) public nameToFavourite;

    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber = _favouriteNumber;
    }
  
    // pure , view  these function cannot change the state
    function retrieve()public view returns(uint256){
        return myFavouriteNumber;
    }

    function addPeople(string memory _name , uint256 _favouriteNumber) public {
        listOfPeople.push(People(_name,_favouriteNumber));
        nameToFavourite[_name] = _favouriteNumber;
    }
}