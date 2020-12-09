pragma solidity ^0.6.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    constructor(uint256 initialSupply) public ERC20("TD-ERC20", "TDE") {
        _mint(msg.sender, initialSupply);
    }
}