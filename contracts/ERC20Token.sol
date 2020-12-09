pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    constructor(uint256 initialSupply) public ERC20("0xYYYY", "0xY") {
        _mint(msg.sender, initialSupply);
    }
}