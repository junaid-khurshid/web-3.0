//

require('@nomiclabs/hardhat-waffle')

module.exports = {
  solidity: '0.8.0',
  networks: {
    ropsten: {
      url:
        'https://eth-ropsten.alchemyapi.io/v2/q-ErZWiMOsqCW5L0uf5bZ5Kky-alBbGm',
      accounts: [
        '8d038b72c4dec0eeaa835ee5a36a329ef4506cff525c30a08b8e1894fbff80ca',
      ],
    },
  },
}
