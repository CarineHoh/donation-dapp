# Blockchain-Based Donation Platform 🌟

A decentralized application (DApp) for transparent donation management on the Ethereum blockchain. This project enables organizations to manage donations in a transparent and traceable manner.

## 🚀 Features

- Receive donations in Ether
- Transparent tracking of all transactions
- Storage of donor addresses and amounts
- IPFS integration for detailed donation information
- User-friendly Web3 interface
- Total donation amount tracking
- Individual donor history
- Immutable transaction records

## 🛠 Technology Stack

- **Smart Contracts**: Solidity
- **Blockchain Development**: Truffle Framework
- **Frontend**: React.js
- **Blockchain Interaction**: Web3.js
- **Decentralized Storage**: IPFS
- **Testing**: Mocha & Chai
- **Local Blockchain**: Ganache

## 📋 Prerequisites

- Node.js (v14.0.0 or higher)
- NPM (v6.0.0 or higher)
- Ganache
- MetaMask Browser Extension
- Git

## 💻 Installation

1. **Clone the repository**
```bash
git clone https://github.com/CarineHoh/donation-dapp.git
cd donation-dapp
```

2. **Install dependencies**
```bash
# Install root dependencies
npm install

# Install client dependencies
cd client
npm install
```

3. **Deploy Smart Contract**
```bash
# Start Ganache (in a separate terminal)
ganache-cli

# Compile and deploy contracts
truffle compile
truffle migrate
```

4. **Start the application**
```bash
# In the client directory
npm start
```

## 🔧 Configuration

1. **Set up MetaMask**
   - Install MetaMask browser extension
   - Connect to Ganache network (for local development)
   - Import private keys from Ganache

2. **Create .env file**
```
REACT_APP_INFURA_ID=your_infura_id
REACT_APP_NETWORK_ID=5777
```

## 📝 Smart Contract Functions

### DonationContract.sol

- `donate(string memory _ipfsHash)` - Make a donation
- `getDonorHistory(address _donor)` - Retrieve donor history
- `getTotalDonations()` - Get total donation amount

## 🧪 Testing

```bash
# Run smart contract tests
truffle test

# Run frontend tests
cd client
npm test
```

## 📁 Project Structure

```
donation-dapp/
├── contracts/            # Smart Contracts
│   ├── DonationContract.sol
│   └── migrations/
├── client/              # Frontend Application
│   ├── public/
│   │   ├── index.html
│   │   └── assets/
│   ├── src/
│   │   ├── components/
│   │   ├── utils/
│   │   ├── App.js
│   │   └── index.js
│   └── package.json
├── test/                # Contract Tests
├── truffle-config.js
└── package.json
```

## 🚀 Deployment

### Local Development
```bash
truffle migrate --network development
```

### Testnet Deployment
```bash
truffle migrate --network sepolia
```

### Mainnet Deployment
```bash
truffle migrate --network mainnet
```

## 🔐 Security

- Smart contract audited for security vulnerabilities
- Implementation of access control
- Use of SafeMath for arithmetic operations
- Regular security audits recommended
- Gas optimization implemented

## 🌐 IPFS Integration

The application uses IPFS for storing detailed donation information:
- Donor details
- Project information
- Donation timestamps
- Additional metadata

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 🐛 Known Issues

Please check the [Issues](https://github.com/CarineHoh/donation-dapp/issues) page for current known issues.

## 📈 Future Improvements

- Multi-token support
- Enhanced analytics dashboard
- Mobile application
- Multiple organization support
- Automated reporting system

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📞 Support

For support, please create an issue in the GitHub repository or contact the development team.

## ✨ Acknowledgments

- OpenZeppelin for smart contract libraries
- Ethereum community
- IPFS team
- All contributors and testers

## 🔄 Version History

- 1.0.0
  - Initial Release
  - Basic donation functionality
  - IPFS integration
  - Web3 interface

## 📚 Documentation

For detailed documentation about the smart contract functions and frontend components, please visit the [Wiki](https://github.com/CarineHoh/donation-dapp/wiki) page.

## ⚠️ Important Notes

- Always test thoroughly on testnets before mainnet deployment
- Keep private keys secure
- Regular backups of IPFS data recommended
- Monitor gas prices for optimal transaction timing