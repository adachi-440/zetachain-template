// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@zetachain/protocol-contracts/contracts/zevm/SystemContract.sol";
import "@zetachain/protocol-contracts/contracts/zevm/interfaces/zContract.sol";

// @notice This contract is deployed on Zetachain
contract MyContract is zContract {
    SystemContract public immutable systemContract;

    constructor(address systemContractAddress) {
        systemContract = SystemContract(systemContractAddress);
    }

    function onCrossChainCall(
        address zrc20,
        uint256 amount,
        bytes calldata message
    ) external virtual override {
        // TODO: implement the logic
    }
}
