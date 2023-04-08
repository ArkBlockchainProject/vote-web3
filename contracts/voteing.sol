pragma solidity ^0.4.18;
//请根据solidity版本来更改此选项
contract Voting {
  /*
  mapping：称为映射或者字典，一种键值对的映射关系存储结构
  mapping的key：存储类型为bytes32，存储的是候选人名字
  mapping的value：存储类型为uint8的无符号整型，
  bytes32类型：能存储32个字节，即32*8=256位的二进制内容
  uint8类型：能存储8个字节，即8*8=64位的二进制内容
  */
  mapping (bytes32 => uint8) public votesReceived;
  //public是solidity最新引入的一项功能，是为了防止用户将函数设置为私有函数所导致的安全问题，此处不可将public更改为其他选项。
  /*
  Solidity目前不允许字符串数组，这里使用bytes32类型的数组来存储候选人名字
  */
  bytes32[] public candidateList;

  /*
  构造函数，传入bytes32类型的数组，初始化所有候选人名字
  */
  constructor(bytes32[] candidateNames) public {
    candidateList = candidateNames;
  }

  /*
    查询指定候选人的总票数
  */
  function totalVotesFor(bytes32 candidate) constant public returns (uint8) {
    /*
    require像其他语言中的断言(assert)，用于条件检查。
    条件满足时继续执行，条件不满足则抛出异常。
    */
    require(validCandidate(candidate));
    return votesReceived[candidate];
  }

  /*
    对指定候选人进行投票
  */
  function voteForCandidate(bytes32 candidate) public {
    // 投票前判断是否为候选人名字
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
  }

  /*
    检查投票名字的有效性，即判断投票名字是否在候选人名字里面
  */
  function validCandidate(bytes32 candidate) constant public returns (bool) {
    // 循环遍历候选人列表
    for(uint i = 0; i < candidateList.length; i++) {
      // 判断投票名字是否为候选人
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
  }
}
