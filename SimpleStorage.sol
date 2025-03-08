//SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //  solidity version

contract SimpleStorage {
    uint256  myFavoriteNumber; 

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array
    Person[] public listOfPeople;

    //static array
    // Person[3] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns (uint256){
        return myFavoriteNumber;
    }
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber,_name));
    }
}