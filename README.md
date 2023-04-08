# 项目简介

部署在以太坊区块链上的投票系统

# 安全性

由于一切交互由测试网来完成，并且Ganache创建的测试账户中包含一百枚以太坊代币用于测试需求，故不会对实际资产造成影响

# 环境搭建

所需框架

- Node.js
- Truffle
- Ganache CLI

## 安装Truffle

```shell
npm install -g truffle
```

## 安装Ganache CLI

```shell
npm install -g ganache-cli	
```

## 通过Truffle创建项目

```shell
truffle unbox react-box
```

# 项目结构

- contrcts/：存放智能合约Solidity代码的文件夹
- migrations/：存放部署智能合约脚本的文件夹
- src/：存放前端Web代码的文件夹，这里集成了React
- tests/：存放用于智能合约测试用例的文件夹
- package.json：定义了项目所需要的各个模块，项目的配置信息（比如名称、版本、许可证等数据）
- truffle.js：Truffle默认的配置文件

# 编译和部署

## 编译

1. 输入"ganache-cli"命令启动：看到启动后自动建立了10个帐号（Accounts），每个帐号中都有100个测试用的以太币（Ether），还有每个帐号对应的私钥（Private Key）。可以用私钥来导入账号进行测试。
2. 然后打开新的终端，确认在当前项目的根目录，输入"truffle compile"命令进行编译。

## 部署

最后，执行"truffle migrate"命令部署智能合约，部署成功后，可以进行测试。

# 交互

如果智能合约部署成功的话，可以通过truffle控制台进行交互，比如投票和投票统计操作。如果想要更好的体验可以部署到Remix IDE来获取更直观的界面。

# 注意
- 请不要随意更改truffle.js内的配置，如果更改请同步更改他们所关联的文件。
- 永远都不要将这个项目部署到公共网络，因为它会产生实际的资产损耗。
- 如果您要更改candidateList，请确保您已经同步更改到所有的位置，因为计算机并不会帮助您完成这项工作。
- validCandidate中的默认内容是'User0', 'User1', 'User2', 'User3'，为了便于区分，请您保持开头字母为大写
- 由于区块链的特性，您需要在做出实际修改前重新提交您的代码，并且由于POW机制，其历史内容将无法篡改。