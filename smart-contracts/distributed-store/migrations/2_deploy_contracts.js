var Storage = artifacts.require("./Drive.sol");

module.exports = function(deployer) {
  deployer.deploy(Storage);
};
