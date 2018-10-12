var Car = artifacts.require("Car");
module.exports= function(deployer) {
let ownerAddress= web3.eth.accounts[0];
deployer.deploy(Car , ownerAddress);
};