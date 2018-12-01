
/**
 * Copyright (c) 2018-present, Leap DAO (leapdao.org)
 *
 * This source code is licensed under the Mozilla Public License, version 2,
 * found in the LICENSE file in the root directory of this source tree.
 */

pragma solidity 0.4.24;

import "./UpgradeableOwnable.sol";

contract Operator is UpgradeableOwnable {
  uint256 public minGasPrice;
  uint256 public epochLength;
  uint256 public parentBlockInterval;

  function setMinGasPrice(uint256 _minGasPrice) public onlyOwner {
    minGasPrice = _minGasPrice;
  }

  function setEpochLength(uint256 _epochLength) public onlyOwner {
    epochLength = _epochLength;
  }

  function setParentBlockInterval(uint256 _parentBlockInterval) public onlyOwner {
    parentBlockInterval = _parentBlockInterval;
  }

}