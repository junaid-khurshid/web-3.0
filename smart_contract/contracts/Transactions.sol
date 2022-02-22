//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions{
    uint256 transactionCount;

    event Transfer(address from, address receiver,uint256 amount, string message, uint256 timeStamp, string keyWord);

    struct TransferStruct{
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timeStamp;
        string keyWord;
    }
     
     TransferStruct[] transactions;

     function addToBlockChain(address payable receiver, uint amount, string memory message, string memory keyWord) public {
            transactionCount += 1 ;
            //msg is default , will get who calls the method
            transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyWord));

            emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyWord);
     }

     function getAllTransaction() public view returns (TransferStruct[] memory) {
         return transactions;
     }

     function getTranstionCount() public view returns (uint256) {
         return transactionCount;
     } 
}