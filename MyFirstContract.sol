pragma solidity ^0.4.0;


contract Regulator {
    function checkValue(uint amount) public returns (bool);
    function eligibleForLoan() public returns (bool);
}


contract Bank is Regulator {
    uint private value;

    function Bank(uint amount) public {
        value = amount;
    }

    function deposit(uint amount) public {
        value += amount;
    }

    function withdraw(uint amount) public {
        value -= amount;
    }

    function balance() public returns (uint) {
        return value;
    }

    function checkValue(uint amount) public returns (bool) {
        return value >= amount;
    }

    function eligibleForLoan() public returns (bool) {
        return value > 0;
    }
}


contract MyFirstContract is Bank {
    string private name;
    uint private age;

    function setName(string newName) public {
        name = newName;
    }

    function getName() public returns (string) {
        return name;
    }

    function setAge(uint newAge) public {
        age = newAge;
    }

    function getAge() public returns (uint) {
        return age;
    }
}