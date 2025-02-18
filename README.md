# Foundry FundMe Project

**Foundry FundMe** is a project that demonstrates the use of Foundry, a blazing fast, portable, and modular toolkit for Ethereum application development written in Rust.

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

For more information, visit the [Foundry Documentation](https://book.getfoundry.sh/).


## Project Structure

- **src/**: Contains the main Solidity contracts.
  - `FundMe.sol`: The main contract that allows users to fund and withdraw funds.
- **script/**: Contains deployment and interaction scripts.
  - `DeployFundMe.s.sol`: Script to deploy the `FundMe` contract.
  - `Interactions.s.sol`: Scripts to interact with the deployed `FundMe` contract (funding and withdrawing).
- **test/**: Contains test files for the contracts.
  - `InteractionsTest.t.sol`: Integration tests for the `FundMe` contract.

## Functionality

### FundMe Contract

The `FundMe` contract allows users to fund the contract with a minimum amount of ETH. Only the owner of the contract can withdraw the funds. The contract includes the following functionalities:

- **fund**: Allows users to send ETH to the contract.
- **withdraw**: Allows the owner to withdraw all the funds from the contract.

### Deployment and Interaction Scripts

- **DeployFundMe.s.sol**: Deploys the `FundMe` contract to the blockchain.
- **Interactions.s.sol**:
  - `FundFundMe`: Script to fund the `FundMe` contract with a specified amount of ETH.
  - `WithdrawFundMe`: Script to withdraw funds from the `FundMe` contract.

### Tests

- **InteractionsTest.t.sol**: Contains integration tests to ensure the `FundMe` contract works as expected. Tests include:
  - Funding the contract.
  - Ensuring only the owner can withdraw funds.

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
