var TruffleContract = artifacts.require('./TruffleContract.sol');
module.exports = function(_deployer) {
  // Use deployer to state migration tasks.
  _deployer.deploy(TruffleContract);
};
