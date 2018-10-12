module.exports = function(deployer) {
  // Use deployer to state migration tasks.
  var Proof = artifacts.require("Proof");
let ownerAddress= web3.eth.accounts[0];
deployer.deploy(Proof , ownerAddress);
};