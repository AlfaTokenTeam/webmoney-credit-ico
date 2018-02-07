pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract WebmoneyCredit is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function WebmoneyCredit(address _owner)  UpgradeableToken(_owner) {
    name = "WebmoneyCredit";
    symbol = "WMCR";
    totalSupply = 50000000000;
    decimals = 3;

    balances[_owner] = totalSupply;
  }
}