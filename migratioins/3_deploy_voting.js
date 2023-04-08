var Voting = artifacts.require("./Voting.sol");    //your project

module.exports = function(deployer) {
  deployer.deploy(Voting, ['User0', 'User1', 'User2', 'User3'], {
    gas: 6700000           //ethereum testnet
  });
};
 