//pragma solidity ^0.6.6;

/**
* @title IFlashLoanReceiver interface
* @notice Interface for the Aave fee IFlashLoanReceiver.
* @author Aave
* @dev implement this interface to develop a flashloan-compatible flashLoanReceiver contract
**/
/*interface IFlashLoanReceiver {
    function executeOperation(address _reserve, uint256 _amount, uint256 _fee, bytes calldata _params) external;
}  */

// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

//import {ILendingPoolAddressesProvider} from '../../interfaces/ILendingPoolAddressesProvider.sol';
import {ILendingPoolAddressesProvider} from "./ILendingPoolAddressesProvider.sol";

//import {ILendingPool} from '../../interfaces/ILendingPool.sol';
import {ILendingPool} from "./ILendingPool.sol";

/**
 * @title IFlashLoanReceiver interface
 * @notice Interface for the Aave fee IFlashLoanReceiver.
 * @author Aave
 * @dev implement this interface to develop a flashloan-compatible flashLoanReceiver contract
 **/
interface IFlashLoanReceiver {
  function executeOperation(
    address[] calldata assets,
    uint256[] calldata amounts,
    uint256[] calldata premiums,
    address initiator,
    bytes calldata params
  ) external returns (bool);

  //function ADDRESSES_PROVIDER() external view returns (ILendingPoolAddressesProvider);
  function ADDRESSES_PROVIDER() external view returns (address);

  //function LENDING_POOL() external view returns (ILendingPool);
  function LENDING_POOL() external view returns (address);
}





