pragma solidity ^0.7.3;

import "./node_modules/@openzeppelin/contracts/ERC20/ERC20.sol";
import "./node_modules/@openzeppelin/contracts/access/Ownable.sol";

contract GovernanceToken is ERC20, Ownable {
	constructor() ERC20("Governance Token", "GTK") Ownable() {}

	function mint(address to, uint amount) external onlyOwner() {
		_mint(to, amount);
	}
}