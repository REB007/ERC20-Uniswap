const ERC20 = artifacts.require("ERC20Token");

const initialSupply = 1000000;

module.exports = function(deployer) {
    deployer.deploy(ERC20, initialSupply, {from: accounts[0]})
};
