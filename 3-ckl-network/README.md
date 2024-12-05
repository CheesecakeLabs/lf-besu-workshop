## Setting Up the Besu Network

### Pre-requisites

Before you begin, ensure you have the following installed:

- [Hyperledger Besu](https://besu.hyperledger.org/private-networks/get-started/install/binary-distribution)

1. Set execution permissions for the scripts:

```bash
chmod +x start.sh
```

2. Start the first node:

```bash
./start.sh
```

To know more about the network setup, refer to the [Hyperledger Besu documentation](https://besu.hyperledger.org/private-networks/tutorials/clique).

### Genesis file explanation

The genesis file `cliqueGenesis.json` is used to configure the network. The file contains the following parameters:

```json
{
  "config": {
    // Configuration for the blockchain network
    "chainId": 1337, // Unique identifier for the blockchain network to prevent cross-chain transactions.
    "berlinBlock": 0, // Block number at which the Berlin hard fork features are activated.
    "clique": {
      // Clique is a proof-of-authority consensus protocol configuration
      "blockperiodseconds": 15, // The time (in seconds) between blocks.
      "epochlength": 30000 // The number of blocks after which the signer list is refreshed.
    }
  },
  "coinbase": "0x0000000000000000000000000000000000000000",
  // Address that receives mining rewards (not applicable for proof-of-authority).

  "difficulty": "0x1",
  // Initial difficulty level. A low value is set for proof-of-authority since mining is not resource-intensive.

  "extraData": "0x0000000000000000000000000000000000000000000000000000000000000000eef141b3c3e920320b34e14a38b9995b7c9bcac60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
  // Additional data for the genesis block. Typically includes initial signers for a proof-of-authority chain.

  "gasLimit": "0xa00000",
  // Maximum gas allowed per block. This determines the computational limit for transactions within a block.

  "mixHash": "0x0000000000000000000000000000000000000000000000000000000000000000",
  // Fixed value for proof-of-authority networks, where mining computation is unnecessary.

  "nonce": "0x0",
  // A field used in proof-of-work chains to demonstrate mining effort. Set to 0 for proof-of-authority.

  "timestamp": "0x5c51a607",
  // The timestamp of the genesis block, typically set to the creation time.

  "alloc": {
    // Pre-allocated accounts with their initial balances
    "fe3b557e8fb62b89f4916b721be55ceb828dbd73": {
      "privateKey": "8f2a55949038a9610f50fb23b5883af3b4ecb3c3bb792cbcefbd1542c692be63",
      "comment": "private key and this comment are ignored.  In a real chain, the private key should NOT be stored",
      "balance": "0xad78ebc5ac6200000"
      // Initial balance in Wei for this account (1 ETH = 10^18 Wei).
    },
    "627306090abaB3A6e1400e9345bC60c78a8BEf57": {
      "privateKey": "c87509a1c067bbde78beb793e6fa76530b6382a4c0241e5e4a9ec0a0f44dc0d3",
      "comment": "private key and this comment are ignored.  In a real chain, the private key should NOT be stored",
      "balance": "90000000000000000000000"
      // Balance in Wei (90,000 ETH).
    },
    "f17f52151EbEF6C7334FAD080c5704D77216b732": {
      "privateKey": "ae6ae8e5ccbfb04590405997ee2d52d2b330726137b875053c36d94e974d162f",
      "comment": "private key and this comment are ignored.  In a real chain, the private key should NOT be stored",
      "balance": "90000000000000000000000"
      // Balance in Wei (90,000 ETH).
    }
  }
}
```
