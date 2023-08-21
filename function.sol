 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract menty {
    // The contract name is "menty"

    // The function name is "add", and it takes two input arguments: x and y of type uint (unsigned integer)
    // The "pure" keyword indicates that this function does not modify the contract's state and only returns a value
    // The "external" keyword indicates that this function can be called externally, not from within the contract
    function add(uint x, uint y) external pure returns (uint) {
        // The function returns the sum of x and y
        return x + y;
    }

     function add( ) external pure returns (uint) {
         uint age = 4;
         uint mendy = 44;
         uint adddd = age + mendy;
         return adddd;
     }
}
