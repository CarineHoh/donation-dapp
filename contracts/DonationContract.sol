// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DonationContract {
    struct Donation {
        address donor;
        uint256 amount;
        string ipfsHash;
        uint256 timestamp;
    }
    
    mapping(address => Donation[]) public donorHistory;
    uint256 public totalDonations;
    
    event DonationMade(
        address indexed donor,
        uint256 amount,
        string ipfsHash,
        uint256 timestamp
    );
    
    function donate(string memory _ipfsHash) public payable {
        require(msg.value > 0, "Donation amount must be greater than 0");
        
        donorHistory[msg.sender].push(Donation({
            donor: msg.sender,
            amount: msg.value,
            ipfsHash: _ipfsHash,
            timestamp: block.timestamp
        }));
        
        totalDonations += msg.value;
        
        emit DonationMade(msg.sender, msg.value, _ipfsHash, block.timestamp);
    }
    
    function getDonorHistory(address _donor) public view returns (Donation[] memory) {
        return donorHistory[_donor];
    }
    
    function getTotalDonations() public view returns (uint256) {
        return totalDonations;
    }
}
