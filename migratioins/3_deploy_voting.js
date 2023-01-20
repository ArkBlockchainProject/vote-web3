var Voting = artifacts.require("./Voting.sol");

module.exports = function(deployer) {
  deployer.deploy(Voting, ['User', 'User1', 'User2', 'User3'], {
    gas: 6700000
  });
};
 
