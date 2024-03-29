pragma solidity ^0.6.0;

//import "../bondingcurve/IBondingCurve.sol";
import "./IBondingCurve.sol";

contract Allocator {
    constructor(IBondingCurve bondingCurve) public {
        // We run this call from a constructor
        // to bypass the non-contract check of `allocate()`
        bondingCurve.allocate();
    }
}
