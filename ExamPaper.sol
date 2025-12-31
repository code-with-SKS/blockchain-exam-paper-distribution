// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExamPaperDistribution {
 address public admin;

admin = msg.sender;
}
struct ExamPaper {
string ipfsHash;
uint releaseTime;
 bool exists;
 }
 mapping(string => ExamPaper) private papers;
 modifier onlyAdmin() {
  require(msg.sender == admin, "Only admin allowed");
  _;
  }
  // Upload exam paper (before exam)
  function uploadPaper(
    string memory examCode,
    string memory ipfsHash,
    releaseTime: releaseTime,
    exists: true
    });
    }
     // Get exam paper (after release time)
     function getPaper(string memory examCode)
       public
       view
         returns (string memory)
        {
        require(papers[examCode].exists, "Paper not found");
         require(block.timestamp >= papers[examCode].releaseTime, "Paper not released yet");
         return papers[examCode].ipfsHash;
         }
}
